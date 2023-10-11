if GetLocale() == "zhCN" then

QUIVER_T = {
	CombatLog = {
		Consumes = {
			--需要战斗记录字符串匹配
			ManaPotion = "",--"You gain (.*) Mana from Restore Mana.",
			HealthPotion = "",--"Your Healing Potion heals you for (.*).",
			Healthstone = "",--"Your (.*) Healthstone heals you for (.*).",
			Tea = "",--"Your Tea with Sugar heals you for (.*).",
		},
		Tranq = {
			Hit = "你对(%s)施放宁神射击"--"You cast Tranquilizing Shot on (%s).",
			Fail = "你无法施放",--"You fail to dispel", --不确定是否正确
			Miss = "你的宁神射击没有击中.+"--"Your Tranquilizing Shot miss",
			Resist = "你的宁神射击被抵抗了"--"Your Tranquilizing Shot was resisted",
		},
	},
	ModuleName = {
		AspectTracker = "守护追踪",--"Aspect Tracker",
		AutoShotTimer = "自动设计计时器",--"Auto Shot Timer",
		Castbar = "施法条",--"Castbar",
		RangeIndicator = "距离指示器",--"Range Indicator",
		TranqAnnouncer = "宁神射击通知",--"Tranq Shot Announcer",
		TrueshotAuraAlarm = "强击光环警报器",--"Trueshot Aura Alarm",
	},
	ModuleTooltip = {
		Castbar = "显示瞄准射击,多重射击和稳固射击",--"Shows Aimed Shot, Multi-Shot, and Trueshot",
		RangeIndicator = "显示在距离内可用的法术,需要把法术书的技能放在动作条",--"Shows when abilities are in range. Requires spellbook abilities placed somewhere on your action bars.",
		TranqAnnouncer = "在raid频道显示宁神射击的结果.(击中或者丢失)",--"Announces in /Raid chat when your tranquilizing shot hits or misses a target.",
	},
	Range = {
		Melee = "近战范围",--"Melee Range",
		DeadZone = "盲区",--"Dead Zone",
		ScareBeast = "恐吓野兽",--"Scare Beast",
		ScatterShot = "驱散射击",--"Scatter Shot",
		Short = "近距离",--"Short Range",
		Long = "远距离",--"Long Range",
		Mark = "猎人标记距离",--"Hunter's Mark",
		TooFar = "超出射程",--"Out of Range",
	},
	Spellbook = {
		-- Aspect
		Aspect_Beast = "野兽守护",--"Aspect of the Beast",
		Aspect_Cheetah = "猎豹守护",--"Aspect of the Cheetah",
		Aspect_Hawk = "雄鹰守护",--"Aspect of the Hawk",
		Aspect_Monkey = "灵猴守护",--"Aspect of the Monkey",
		Aspect_Pack = "豹群守护",--"Aspect of the Pack",
		Aspect_Wild = "野性守护",--"Aspect of the Wild",
		Aspect_Wolf = "孤狼守护",--"Aspect of the Wolf",
		-- Uses Ammo
		Aimed_Shot = "瞄准射击",--"Aimed Shot",
		Arcane_Shot = "奥术射击",--"Arcane Shot",
		Auto_Shot = "自动射击",--"Auto Shot",
		Concussive_Shot = "震荡射击",--"Concussive Shot",
		Multi_Shot = "多重射击",--"Multi-Shot",
		Scatter_Shot = "驱散射击",--"Scatter Shot",
		Scorpid_Sting = "毒蝎钉刺",--"Scorpid Sting",
		Serpent_Sting = "毒蛇钉刺",--"Serpent Sting",
		Tranquilizing_Shot = "宁神射击",--"Tranquilizing Shot",
		Trueshot = "稳固射击",--"Trueshot",
		Viper_Sting = "蝰蛇钉刺",--"Viper Sting",
		Wyvern_Sting = "翼龙射击",--"Wyvern Sting",
		-- Trap
		Explosive_Trap = "爆炸陷阱",--"Explosive Trap",
		Freezing_Trap = "冰冻陷阱",--"Freezing Trap",
		Frost_Trap = "冰霜陷阱",--"Frost Trap",
		Immolation_Trap = "献祭陷阱",--"Immolation Trap",
		-- Misc
		Call_Pet = "召唤宠物",--"Call Pet",
		Counterattack = "反击",--"Counterattack",
		Deterrence = "威慑",--"Deterrence",
		Feign_Death = "假死",--"Feign Death",
		Flare = "照明弹",--"Flare",
		Quick_Shots = "快速射击",--"Quick Shots",
		Rapid_Fire = "急速射击",--"Rapid Fire",
		Hunters_Mark = "猎人标记",--"Hunter's Mark",
		Scare_Beast = "恐吓野兽",--"Scare Beast",
		TrueshotAura = "强击光环",--"Trueshot Aura",
		Wing_Clip = "摔绊",--"Wing Clip",
	},
	UI = {
		CloseWindowTooltip = "关闭窗口",--"Close Window",
		FrameLockToggleTooltip = "锁定/解锁窗体",--"Lock/Unlock Frames",
		ResetColor = "重置颜色",--"Reset Color",
		ResetFramesTooltip = "重置窗体尺寸和位置",--"Reset Frame Size and Position",
		ResetFramesTooltipAll = "重置所有窗体尺寸和位置",--"Reset All Frame Sizes and Positions",
		SwapColorsLong = "Swap Shoot and Reload Colours",
		SwapColorsShort = "Shoot / Reload",
		WarnUnlocked = "Quiver解锁.输入/qq或者/quiver显示设置窗体.\n设置完成以后点击锁定图标",--"Quiver Unlocked. Show config dialog with /qq or /quiver.\nClick the lock icon when done.",
		WrongClass = "Quvier是猎人专属插件",--"Quiver is for hunters.",
	},
	Tranq = {
		DefaultCast = "施放宁神射击",--"Casting Tranq Shot",
		DefaultMiss = "***宁神射击没有击中目标***","*** MISSED Tranq Shot ***",
		TooltipCast = "重置宁神射击信息设置","Reset Tranq Message to Default",
		TooltipMiss = "重置宁神射击丢失信息",--"Reset Miss Message to Default",
	},
	VersionAvailable = "New version %s available at %s",
	VersionSafeToUpdate = "It's always safe to upgrade Quiver. You won't lose any of your configuration.",
}
