QUIVER_T = {
	CombatLog = {
		Consumes = {
			ManaPotion = "You gain (.*) Mana from Restore Mana.",
			HealthPotion = "Your Healing Potion heals you for (.*).",
			Healthstone = "Your (.*) Healthstone heals you for (.*).",
			Tea = "Your Tea with Sugar heals you for (.*).",
		},
		Tranq = {
			Cast = "You cast Tranquilizing Shot",
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
		ResetFramesTooltip = "Reset Frames",
		WarnUnlocked = "Quiver Unlocked. Show config dialog with /qq or /quiver.\nClick the lock icon when done.",
		WrongClass = "Quiver is for hunters.",
	},
	Tranq = {
		DefaultHit = "*** Tranq Shot Hit ***",
		DefaultMiss = "*** MISSED Tranq Shot ***",
		TooltipHit = "Reset Hit Message to Default",
		TooltipMiss = "Reset Miss Message to Default",
	},
}
