if ( GetLocale() == "zhCN" ) then
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
				Hit = "你对(%s)施放了宁神射击"--"You cast Tranquilizing Shot on (%s).",
				--Fail = "你施展神射击失败",--"You fail to dispel", --不确定是否正确
				--Miss = "你的宁神射击没有击中.+"--"Your Tranquilizing Shot miss",
				--Resist = "你的宁神射击被抵抗了"--"Your Tranquilizing Shot was resisted",
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
			Hunters_Mark = "猎人印记",--"Hunter's Mark",
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
	else
	QUIVER_T = {
		CombatLog = {
			Consumes = {
				ManaPotion = "You gain (.*) Mana from Restore Mana.",
				HealthPotion = "Your Healing Potion heals you for (.*).",
				Healthstone = "Your (.*) Healthstone heals you for (.*).",
				Tea = "Your Tea with Sugar heals you for (.*).",
			},
			Tranq = {
				Hit = "You cast Tranquilizing Shot on (%s).",
				Fail = "You fail to dispel",
				Miss = "Your Tranquilizing Shot miss",
				Resist = "Your Tranquilizing Shot was resisted",
			},
		},
		ModuleName = {
			AspectTracker = "Aspect Tracker",
			AutoShotTimer = "Auto Shot Timer",
			Castbar = "Castbar",
			RangeIndicator = "Range Indicator",
			TranqAnnouncer = "Tranq Shot Announcer",
			TrueshotAuraAlarm = "Trueshot Aura Alarm",
		},
		ModuleTooltip = {
			Castbar = "Shows Aimed Shot, Multi-Shot, and Trueshot",
			RangeIndicator = "Shows when abilities are in range. Requires spellbook abilities placed somewhere on your action bars.",
			TranqAnnouncer = "Announces in /Raid chat when your tranquilizing shot hits or misses a target.",
		},
		Range = {
			Melee = "Melee Range",
			DeadZone = "Dead Zone",
			ScareBeast = "Scare Beast",
			ScatterShot = "Scatter Shot",
			Short = "Short Range",
			Long = "Long Range",
			Mark = "Hunter's Mark",
			TooFar = "Out of Range",
		},
		Spellbook = {
			-- Aspect
			Aspect_Beast = "Aspect of the Beast",
			Aspect_Cheetah = "Aspect of the Cheetah",
			Aspect_Hawk = "Aspect of the Hawk",
			Aspect_Monkey = "Aspect of the Monkey",
			Aspect_Pack = "Aspect of the Pack",
			Aspect_Wild = "Aspect of the Wild",
			Aspect_Wolf = "Aspect of the Wolf",
			-- Uses Ammo
			Aimed_Shot = "Aimed Shot",
			Arcane_Shot = "Arcane Shot",
			Auto_Shot = "Auto Shot",
			Concussive_Shot = "Concussive Shot",
			Multi_Shot = "Multi-Shot",
			Scatter_Shot = "Scatter Shot",
			Scorpid_Sting = "Scorpid Sting",
			Serpent_Sting = "Serpent Sting",
			Tranquilizing_Shot = "Tranquilizing Shot",
			Trueshot = "Trueshot",
			Viper_Sting = "Viper Sting",
			Wyvern_Sting = "Wyvern Sting",
			-- Trap
			Explosive_Trap = "Explosive Trap",
			Freezing_Trap = "Freezing Trap",
			Frost_Trap = "Frost Trap",
			Immolation_Trap = "Immolation Trap",
			-- Misc
			Call_Pet = "Call Pet",
			Counterattack = "Counterattack",
			Deterrence = "Deterrence",
			Feign_Death = "Feign Death",
			Flare = "Flare",
			Quick_Shots = "Quick Shots",
			Rapid_Fire = "Rapid Fire",
			Hunters_Mark = "Hunter's Mark",
			Scare_Beast = "Scare Beast",
			TrueshotAura = "Trueshot Aura",
			Wing_Clip = "Wing Clip",
		},
		UI = {
			CloseWindowTooltip = "Close Window",
			FrameLockToggleTooltip ="Lock/Unlock Frames",
			ResetColor = "Reset Color",
			ResetFramesTooltip = "Reset Frame Size and Position",
			ResetFramesTooltipAll = "Reset All Frame Sizes and Positions",
			SwapColorsLong = "Swap Shoot and Reload Colours",
			SwapColorsShort = "Shoot / Reload",
			WarnUnlocked = "Quiver Unlocked. Show config dialog with /qq or /quiver.\nClick the lock icon when done.",
			WrongClass = "Quiver is for hunters.",
		},
		Tranq = {
			DefaultCast = "Casting Tranq Shot",
			DefaultMiss = "*** MISSED Tranq Shot ***",
			TooltipCast = "Reset Tranq Message to Default",
			TooltipMiss = "Reset Miss Message to Default",
		},
		VersionAvailable = "New version %s available at %s",
		VersionSafeToUpdate = "It's always safe to upgrade Quiver. You won't lose any of your configuration.",
	}
	end
