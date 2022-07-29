--[[
WoW persists positions for frames that have global names.
However, we use custom meta (size+position) logic because
otherwise each login clears all frame data for disabled addons.
TopLeft origin because GetPoint() uses TopLeft
]]

local GRIP_HEIGHT = 12
local framesMoveable = {}
local framesResizeable = {}

local addFrameMoveable = function(frame)
	if not Quiver_Store.IsLockedFrames then
		frame:EnableMouse(true)
		frame:SetMovable(true)
	end
	tinsert(framesMoveable, frame)
end
local addFrameResizable = function(frame, handle)
	frame.QuiverGripHandle = handle
	if Quiver_Store.IsLockedFrames
	then handle:Hide()
	else frame:SetResizable(true)
	end
	tinsert(framesResizeable, frame)
end

local lockFrames = function()
	for _k, f in framesMoveable do
		f:EnableMouse(false)
		f:SetMovable(false)
	end
	for _k, f in framesResizeable do
		f.QuiverGripHandle:Hide()
		f:SetResizable(false)
	end
	for _k, v in _G.Quiver_Modules do
		if Quiver_Store.ModuleEnabled[v.Id] then v.OnInterfaceLock() end
	end
end
local unlockFrames = function()
	for _k, f in framesMoveable do
		f:EnableMouse(true)
		f:SetMovable(true)
	end
	for _k, f in framesResizeable do
		f.QuiverGripHandle:Show()
		f:SetResizable(true)
	end
	for _k, v in _G.Quiver_Modules do
		if Quiver_Store.ModuleEnabled[v.Id] then v.OnInterfaceUnlock() end
	end
end

Quiver_Event_FrameLock_Set = function(isChecked)
	Quiver_Store.IsLockedFrames = isChecked
	if isChecked then lockFrames() else unlockFrames() end
end

local absClamp = function(vOpt, vMax)
	local fallback = vMax / 2
	if vOpt == nil then return fallback end

	local v = math.abs(vOpt)
	if v > 0 and v < vMax
	then return v
	else return fallback
	end
end

Quiver_Event_FrameLock_MakeMoveable = function(f, meta)
	f:SetWidth(meta.W)
	f:SetHeight(meta.H)
	f:SetMinResize(30, GRIP_HEIGHT)
	f:SetMaxResize(GetScreenWidth()/2, GetScreenHeight()/2)

	local xMax = GetScreenWidth() - meta.W
	local yMax = GetScreenHeight() - meta.H
	local x = absClamp(meta.X, xMax)
	local y = -1 * absClamp(meta.Y, yMax)
	f:SetPoint("TopLeft", nil, "TopLeft", x, y)

	f:SetScript("OnMouseDown", function()
		if not Quiver_Store.IsLockedFrames then f:StartMoving() end
	end)
	f:SetScript("OnMouseUp", function()
		f:StopMovingOrSizing()
		local _, _, _, x, y = f:GetPoint()
		meta.X = math.floor(x)
		meta.Y = math.floor(y)
		f:SetPoint("TopLeft", nil, "TopLeft", meta.X, meta.Y)
	end)

	addFrameMoveable(f)
end

Quiver_Event_FrameLock_MakeResizeable = function(frame, meta, args)
	local margin, onResizeEnd = args.GripMargin, args.OnResizeEnd

	local handle = Quiver_Component_Button({ Parent=frame, Size=GRIP_HEIGHT })
	addFrameResizable(frame, handle)
	handle:SetFrameLevel(100)-- Should be top element
	handle:SetPoint("BottomRight", frame, "BottomRight", -margin, margin)

	local scale = 0.5
	handle.Texture:QuiverSetTexture(scale, QUIVER.Icon.GripHandle)
	handle.HighlightTexture = Quiver_Component_Button_CreateTexture(handle, "OVERLAY")
	handle:SetHighlightTexture(handle.HighlightTexture)
	handle.HighlightTexture:QuiverSetTexture(scale, QUIVER.Icon.GripHandle)

	handle:SetScript("OnMouseDown", function()
		if frame:IsResizable() then frame:StartSizing("BottomRight") end
	end)
	handle:SetScript("OnMouseUp", function()
		frame:StopMovingOrSizing()
		meta.W = math.floor(frame:GetWidth())
		meta.H = math.floor(frame:GetHeight())
		frame:SetWidth(meta.W)
		frame:SetHeight(meta.H)
		if onResizeEnd ~= nil then onResizeEnd() end
	end)
end
