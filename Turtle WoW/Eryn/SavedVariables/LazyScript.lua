
lsConf = {
	["confVersion"] = 1,
	["interruptExceptionCriteria"] = {
		[1] = "-ifTargetIsCasting=^Shoot$",
		[2] = "# The following almost always works great, but",
		[3] = "# Reportedly some mobs in Winterspring may have",
		[4] = "# 0 mana but can still cast.",
		[5] = "-ifTarget=0mana-ifTargetNPC",
		[6] = "# example of possibile options",
		[7] = "#-ifTargetClass=Warrior",
		[8] = "# the following is an example for a weird boss that",
		[9] = "# behaves differently under 50% hp (no kicks)",
		[10] = "#-ifTargetNamed=Some%sMajor%sBoss-ifTarget<50%hp",
	},
	["perPlayer"] = {
		["Turtle WoW"] = {
			["Eryn"] = {
				["clearHistoryAfterCombat"] = false,
				["initiateAutoAttack"] = true,
				["showActionAlways"] = true,
				["biteTracker"] = {
					[1] = {
						[1] = 0,
						[2] = 0,
					},
					[2] = {
						[1] = 0,
						[2] = 0,
					},
					[3] = {
						[1] = 0,
						[2] = 0,
					},
					[4] = {
						[1] = 0,
						[2] = 0,
					},
					[5] = {
						[1] = 0,
						[2] = 0,
					},
				},
				["minionIsVisible"] = true,
				["showReasonForTargetCCd"] = false,
				["BoundFormsTable"] = {
				},
				["deathMinionHidesOutOfCombat"] = false,
				["loadedDefaultForms"] = true,
				["useBiteTracking"] = true,
				["debug"] = false,
				["biteSample"] = 25,
				["healthHistorySize"] = 5,
				["mmIsVisible"] = true,
				["Immunities"] = {
				},
				["showTargetCasts"] = false,
				["showGankMessage"] = false,
				["autoTarget"] = true,
				["deathMinionIsVisible"] = false,
				["minimapButtonPos"] = 0,
				["minionHidesOutOfCombat"] = false,
				["trackBiteCrits"] = false,
				["forms"] = {
					["allPurpose"] = {
						[1] = "-- Uncomment to use feral faerie fire if you have it",
						[2] = "--feralFire-ifTargetInMeleeRange-ifNotTargetHasDebuff=faerieFire",
						[3] = "stopAll-ifTargetIs=CCd",
						[4] = "-- Cat Form",
						[5] = "bite-ifLastChance-ifInGroup",
						[6] = "bite-ifKillShot",
						[7] = "cower-ifTargetOfTarget",
						[8] = "rake-ifNotTargetHasDebuff=rake",
						[9] = "rip-=3cp-ifNotTargetHasDebuff=rip",
						[10] = "bite-5cp",
						[11] = "claw",
						[12] = "-- Bear Form",
						[13] = "-- Hold down shift for tank mode",
						[14] = "--charge-ifNotTargetInMeleeRange-ifShiftDown",
						[15] = "growl-ifShiftDown",
						[16] = "demoralize-ifNotTargetHasDebuff=demoralize",
						[17] = "swipe-ifShiftDown",
						[18] = "maul",
					},
					["Tank"] = {
						[1] = "-- Uncomment to use feral faerie fire if you have it",
						[2] = "--feralFire-ifTargetInMeleeRange-ifNotTargetHasDebuff=faerieFire",
						[3] = "stopAll-ifTargetIs=CCd",
						[4] = "-- Bear Form",
						[5] = "-- Hold down shift for tank mode",
						[6] = "--charge-ifNotTargetInMeleeRange-ifShiftDown",
						[7] = "growl",
						[8] = "demoralize-ifNotTargetHasDebuff=demoralize",
						[9] = "swipe-if>20rage-ifShiftDown",
						[10] = "maul",
					},
					["SpellAttack"] = {
						[1] = "autoAttack",
						[2] = "rejuv@self-echo=Rejuvenation Self-ifPlayer>25mana-ifNotPlayerHasBuff=rejuv-ifPlayer>32hpDeficit",
						[3] = "healingTouch@self-sayInSay=Half health! Healing Touch Self-ifPlayer>25mana-ifPlayer<50%hp",
						[4] = "moonfire-echo=Deathstimator Moonfire-ifPlayer>25mana-ifNotTargetHasDebuff=moonfire-ifTimeToDeath>9s",
						[5] = "# See calc in WoW spreadsheet Eryn tab ",
						[6] = "# Can cast 5.3 Wraths in the 9 seconds of Moonfire duration",
						[7] = "# for total of 143 hp damage (Rank 2)",
						[8] = "moonfire-echo=Moonfire-ifPlayer>25mana-ifNotTargetHasDebuff=moonfire-ifTarget>143hp",
						[9] = "wrath-echo=Wrath-ifPlayer>20mana",
					},
					["Buff"] = {
						[1] = "motw-echo=target motw-ifHaveTarget-ifNotTargetHasBuff=motw",
						[2] = "motw-echo=target motw renewed-ifHaveTarget-ifBuffDuration<30s=motw",
						[3] = "thorns-echo=target thorns-ifHaveTarget-ifNotTargetHasBuff=thorns",
						[4] = "thorns-echo=target thorns renewed-ifHaveTarget-ifBuffDuration<30s=thorns",
						[5] = "motw@self-echo=self motw-ifNotHasBuff=motw",
						[6] = "motw@self-echo=self motw renewed-ifBuffDuration<30s=motw",
						[7] = "thorns@self-echo=self thorns-ifNotHasBuff=thorns",
						[8] = "thorns@self-echo=self thorns renewed-ifBuffDuration<30s=thorns",
						[9] = "#targetByName=Zendra",
						[10] = "#motw@Zendra-ifNotHasBuff=motw",
						[11] = "#thorns@Zendra-ifNotHasBuff=thorns",
					},
					["MsSmolderweb"] = {
						[1] = "starfire-ifTarget=100%hp",
						[2] = "-- Network/server lag delays the debuff appearing on the mob",
						[3] = "-- Let's use the history instead",
						[4] = "hibernate-ifHistory=1=starfire",
						[5] = "starfire-ifTargetIs=CCd",
						[6] = "-- Onoes! Hibernate broke early",
						[7] = "hibernate",
					},
				},
				["useImmunities"] = true,
			},
		},
	},
}