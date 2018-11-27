
// Team Numbers

TEAM_ARMY = 1
TEAM_BANDOLIERS = 2
TEAM_EXODUS = 3
TEAM_LONER = 4

// Team Names

GM.BandoliersTeamName = "Bandoliers"
GM.ArmyTeamName = "Western Military Alliance"
GM.ExodusTeamName = "Exodus"

// Trader NPC Names

GM.TraderNames = {}
GM.TraderNames[ TEAM_ARMY ] = "Bishop"
GM.TraderNames[ TEAM_BANDOLIERS ] = "Grigorovich"
GM.TraderNames[ TEAM_EXODUS ] = "Professor Ozersky"
GM.TraderNames[ TEAM_LONER ] = "Transmission Received"

// Team Leader Models

GM.TeamLeaderModels = {}
GM.TeamLeaderModels[ TEAM_ARMY ] = "models/player/leet.mdl"
GM.TeamLeaderModels[ TEAM_EXODUS ] = "models/player/police.mdl"
GM.TeamLeaderModels[ TEAM_BANDOLIERS ] = "models/player/guerilla.mdl"
GM.TeamLeaderModels[ TEAM_LONER ] = "models/player/eli.mdl"

// Team Player Models

GM.TeamPlayerModels = {}
GM.TeamPlayerModels[ TEAM_ARMY ] = { "models/player/phoenix.mdl" }
GM.TeamPlayerModels[ TEAM_EXODUS ] = { "models/player/gasmask.mdl" }
GM.TeamPlayerModels[ TEAM_BANDOLIERS ] = { "models/player/Group03/male_01.mdl", 
											"models/player/Group03/male_02.mdl", 
											"models/player/Group03/male_03.mdl", 
											"models/player/Group03/male_04.mdl", 
											"models/player/Group03/male_05.mdl", 
											"models/player/Group03/male_06.mdl",
											"models/player/Group03/male_07.mdl",
											"models/player/Group03/male_08.mdl",
											"models/player/Group03/male_09.mdl" }

GM.TeamPlayerModels[ TEAM_LONER ] = { "models/player/Group01/male_01.mdl", 
										"models/player/Group01/male_02.mdl", 
										"models/player/Group01/male_03.mdl", 
										"models/player/Group01/male_04.mdl", 
										"models/player/Group01/male_05.mdl", 
										"models/player/Group01/male_06.mdl",
										"models/player/Group01/male_07.mdl",
										"models/player/Group01/male_08.mdl",
										"models/player/Group01/male_09.mdl",
										"models/player/eli.mdl",
										"models/player/odessa.mdl" }
					
// Chat Modes (RP Shit)

GM.ChatModes = {}
GM.ChatModes.OOC = ""
GM.ChatModes.LocalMe = "/me"
GM.ChatModes.Whisper = "//"
GM.ChatModes.Radio = "/."
GM.ChatModes.Local = "/"

// Chat Params (RP Shit)

GM.HushDist = 400  // Maximum whisper distance
GM.LocalDist = 800 // Maximum local chat distance
	
// Chat Auto-Emotes

GM.ChatEmotes = {}
GM.ChatEmotes[ "Drunk" ] = { "vomits",
"hiccups",
"burps",
"mumbles something completely unintelligible",
"staggers to the left",
"staggers to the right",
"has a stomach ache"}

GM.ChatEmotes[ "Radiation" ] = { "is nauseous from radiation poisoning",
"feels weak",
"is fatigued",
"has an unhealthy radioactive glow",
"vomits up blood",
"has a headache from radiation poisoning"}

GM.ChatEmotes[ "Bleeding" ] = { "feels weak from blood loss",
"has lost a lot of blood",
"needs some bandages",
"is covered in blood",
"feels lightheaded"}

GM.ChatEmotes[ "Pain" ] = { "moans in pain",
"requires first aid",
"is in a lot of pain",
"is severely injured",
"is hurt badly"}

// Player poses (for hand SWEP) - uses Lua Player Animations

GM.PoseList = { { Name = "Normal Pose" },
{ Name = "Hostage Pose", Pose = "hostage" },
{ Name = "Hands Up Pose", Pose = "handsup" },
{ Name = "Handcuffed Pose", Pose = "cuffed" },
{ Name = "Military Salute", Pose = "salute" },
{ Name = "Halt", Pose = "stop" },
{ Name = "Wave", Pose = "wave" },
{ Name = "Point", Pose = "point" } }
	
// Weight Limits (lbs)

GM.OptimalWeight = 15 // If your weight is less than this then you gain stamina faster.
GM.MaxWeight = 35     // If your weight is higher than this then you run slower. 
GM.WeightCap = 50     // If your weight is higher than this then you run at a snail's pace.

if CLIENT then return end

// Artifact rarities (Percentages)

GM.ArtifactRarity = {}
GM.ArtifactRarity[ "point_radiation" ] = 0.01         // Chance that a tainted moss will spawn
GM.ArtifactRarity[ "biganomaly_deathfog" ] = 0.90     // Chance that a bitter coral will spawn (when a death fog spawns)
GM.ArtifactRarity[ "anomaly_electro" ] = 0.02         // Chance that a porcupine will spawn
GM.ArtifactRarity[ "anomaly_cooker" ] = 0.01          // Chance that a scaldstone will spawn
GM.ArtifactRarity[ "anomaly_warp" ] = 0.02            // Chance that a blink will spawn
GM.ArtifactRarity[ "anomaly_stormpearl" ] = 0.05      // Chance that a bead will spawn
GM.ArtifactRarity[ "anomaly_hoverstone" ] = 0.01      // Chance that a pet rock will spawn

// Event delays (seconds)

GM.MinEventDelay = 60 * 5  // The minimum possible time, in seconds, between random events
GM.MaxEventDelay = 60 * 25 // The maximum possible time, in seconds, between random events

// Server entity limits

GM.RadiationAmount = 0.6   // How much of the radiation on the map should be disabled on map startup? ( Scalar - 0.6 means 60% will be disabled )
GM.MaxLoot = 0.05          // Maximum amount of loot to be generated ( Scalar - 0.05 means 5% of the info_lootspawns will have loot at them. )
GM.MaxZombiesScale = 0.75  // Scalar for amount of zombies to spawn per player - 1.0 means spawning 1 zombie per player, 2.0 means 2 per player, etc.
GM.MaxRoguesScale = 0.50   // Scalar for amount of rogues to spawn per player - 1.0 means spawning 1 rogue per player, 2.0 means 2 per player, etc.

