-------------------------------------------------------------------------------------------------------------------------------------------------
-- FRONTLINE AI
-------------------------------------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------
-- RESEARCH
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.RESEARCH_DAYS_BETWEEN_WEIGHT_UPDATE = 1

NDefines.NAI.RESEARCH_AHEAD_BONUS_FACTOR = 50.0

NDefines.NAI.MAX_AHEAD_RESEARCH_PENALTY = 7
NDefines.NAI.RESEARCH_BONUS_FACTOR = 50 				                       		-- To which extent AI should care about bonuses to research
NDefines.NAI.XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 3.0		-- AI will at least need this amount of xp compared to cost of a tech to reserch it with XP			
NDefines.NAI.RESEARCH_WITH_XP_AI_WEIGHT_MULT = 1.5 				-- AI will bump score of a research with this mult if it can use XP

NDefines.NAI.RESEARCH_NAVAL_DOCTRINE_NEED_GAIN_FACTOR = 0.075 -- Multiplies value based on relative naval industry size / country size.

NDefines.NAI.RESEARCH_NEW_WEIGHT_FACTOR = 0.5 			-- Impact of previously unexplored tech weights. Higher means more random exploration.
NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 1.5 		-- To which extent AI should care about ahead of time penalties to research
NDefines.NAI.RESEARCH_BASE_DAYS = 60					-- AI adds a base number of days when weighting completion time for techs to ensure it doesn't only research quick techs

NDefines.NAI.RESEARCH_YEARS_BEHIND_FACTOR = 0.3 -- (was 0.2) --To which extent AI should care about not falling behind (i.e. increase weight for old tech)

NDefines.NAI.RESEARCH_LAND_DOCTRINE_NEED_GAIN_FACTOR = 0.12 -- Multiplies value based on relative military industry size / country size.


--------------------------------------------------------------------------------------------------------------
-- LAND AI
--------------------------------------------------------------------------------------------------------------


NDefines.NAI.ASSIGN_TANKS_TO_WAR_FRONT = 10.0 -- Vanilla 6.0
NDefines.NAI.ASSIGN_TANKS_TO_NON_WAR_FRONT = 0.1 -- Vanilla 0.4

NDefines.NAI.UPDATE_SUPPLY_MOTORIZATION_FREQUENCY_HOURS = 20 				-- Vanilla is 52  Check if activating motorization would improve supply situation this often.

NDefines.NAI.CANCEL_COMBAT_DISADVANTAGE_RATIO = 1.2	-- Vanilla 1.5                     -- If the enemy's advantage ratio over us during (normal) combat is more than <value>, allow canceling the attack
NDefines.NAI.CANCEL_COMBAT_MIN_DURATION_HOURS = 24	-- Vanilla 48 						-- Only allow canceling (normal) combat if at least <value> hours have passed
NDefines.NAI.CANCEL_INVASION_COMBAT_DISADVANTAGE_RATIO = 2.8	-- Vanilla 3.5 			-- If the enemy's advantage ratio over us during invasion combat is more than <value>, allow canceling the attack
NDefines.NAI.CANCEL_INVASION_COMBAT_MIN_DURATION_HOURS = 72	-- Vanilla 120			-- Only allow canceling invasion combat if at least <value> hours have passed

NDefines.NAI.MAX_MICRO_ATTACKS_PER_ORDER = 40				                    -- AI goes through its orders and checks if there are situations to take advantage of
NDefines.NAI.MICRO_POCKET_SIZE = 4					-- Pockets with a size equal to or lower than this will be mocroed by the AI, for efficiency.

NDefines.NAI.FRONT_CUTOFF_MIN_EDGE_PROXIMITY = 1

NDefines.NMilitary.PLAN_MIN_AUTOMATED_EMPTY_POCKET_SIZE = 20	-- Vanilla 2 -- The battle plan system will only automatically attack provinces in pockets that has no resistance and are no bigger than these many provinces

NDefines.NAI.MIN_AI_UNITS_PER_TILE_FOR_STANDARD_COHESION = 2.0
NDefines.NAI.MIN_FRONT_SIZE_TO_CONSIDER_STANDARD_COHESION = 2000 -- So the AI moves units properly

NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = 0.15

NDefines.NAI.UNIT_ASSIGNMENT_TERRAIN_IMPORTANCE = 14.0

NDefines.NSupply.AI_FRONT_DIVISIONS_PER_SUPPLY_POINT = 0.85
NDefines.NAITheatre.AI_THEATRE_SUPPLY_CRISIS_LIMIT = 0.20

--------------------------------------------------------------------------------------------------------------
-- NAVY AI
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.ESTIMATED_CONVOYS_PER_DIVISION = 18			-- Not always correct, but mainly used to make sure AI does not go crazy vanilla 6
NDefines.NAI.NAVAL_MISSION_INVASION_BASE = 30000					-- Base score for region with naval invasion (modified dynamically by prioritizing orders)

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING = 0.10 -- maximum ratio of screens forces to be used in mine sweeping

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO_MAX_MINES = 250 -- highest mines for highest prio for mine missions

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_LAYING = 0.05 -- maximum ratio of screens forces to be used in mine laying

NDefines.NAI.NAVY_PREFERED_MAX_SIZE = 50										-- AI will generally attempt to merge fleets into this size but as a soft limit.



NDefines.NAI.CAPITAL_TASKFORCE_MAX_CAPITAL_COUNT = 6 		-- optimum capital count for capital taskforces

NDefines.NAI.ENEMY_NAVY_STRENGTH_DONT_BOTHER = 1.5;
NDefines.NAI.SHIPS_PRODUCTION_BASE_COST = 25000;
NDefines.NAI.PRODUCTION_MAX_PROGRESS_TO_SWITCH_NAVAL = 0;
NDefines.NAI.PRODUCTION_WAIT_TO_FINISH_IF_EXPENSIVE = 0.02;
NDefines.NAI.CARRIER_TASKFORCE_MAX_CARRIER_COUNT = 6;
NDefines.NAI.REPAIR_TASKFORCE_SIZE = 8;
NDefines.NAI.WANTED_CARRIER_PLANES_PER_CARRIER_CAPACITY_FACTOR = 2;
NDefines.NAI.WANTED_CARRIER_PLANES_PER_CARRIER_CAPACITY_IN_PRODUCTION_FACTOR = 1.5;
NDefines.NAI.AI_WANTED_CARRIER_BASED_PLANES_FACTOR = 1.5;
NDefines.NAI.MAX_ALLOWED_NAVAL_DANGER = 100;
NDefines.NAI.CONVOY_ESCORT_SCORE_FROM_CONVOYS = 25;

NDefines.NAI.MIN_NAVAL_MISSION_PRIO_TO_ASSIGN = {
		0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
		100, -- PATROL
		200, -- STRIKE FORCE
		200, -- CONVOY RAIDING
		200, -- CONVOY ESCORT
		200, -- MINES PLANTING
		100, -- MINES SWEEPING
		0, -- TRAIN
		0, -- RESERVE_FLEET
		100, -- NAVAL INVASION SUPPORT
	}

NDefines.NAI.HIGH_PRIO_NAVAL_MISSION_SCORES = {
		0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
		2000, -- PATROL
		1000, -- STRIKE FORCE
		1500, -- CONVOY RAIDING
		2000, -- CONVOY ESCORT
		-1, -- MINES PLANTING
		300, -- MINES SWEEPING
		0, -- TRAIN
		0, -- RESERVE_FLEET
		1000, -- NAVAL INVASION SUPPORT
	}

NDefines.NNavy.MISSION_FUEL_COSTS = {  -- fuel cost for each mission
		0.0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
		1.0, -- PATROL
		1.0, -- STRIKE FORCE (does not cost fuel at base, and uses IN_COMBAT_FUEL_COST in combat. this is just for the movement in between)
		1.0, -- CONVOY RAIDING
		1.0, -- CONVOY ESCORT
		1.0, -- MINES PLANTING
		1.0, -- MINES SWEEPING
		0.4, -- TRAIN
		0.0, -- RESERVE_FLEET (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
		1.0, -- NAVAL_INVASION_SUPPORT (does not cost fuel at base, only costs while doing bombardment and escorting units)
	}

NDefines.NAI.SEA_PATH_LENGTH_SCORE_BASE = 0

NDefines.NNavy.REPAIR_AND_RETURN_AMOUNT_SHIPS_LOW = 0.1
NDefines.NNavy.REPAIR_AND_RETURN_AMOUNT_SHIPS_MEDIUM = 0.2
NDefines.NNavy.REPAIR_AND_RETURN_AMOUNT_SHIPS_HIGH = 0.3
NDefines.NNavy.REPAIR_AND_RETURN_UNIT_DYING_STR = 0.15
NDefines.NNavy.REPAIR_AND_RETURN_PRIO_MEDIUM_COMBAT = 0.2
NDefines.NNavy.REPAIR_AND_RETURN_PRIO_LOW_COMBAT = 0.3




NDefines.NAI.DOCKYARDS_PER_NAVAL_DESIRE_EFFECT = -20.0
NDefines.NAI.MIN_CAPITALS_FOR_CARRIER_TASKFORCE = 12
NDefines.NAI.CAPITALS_TO_CARRIER_RATIO = 3
NDefines.NAI.SCREENS_TO_CAPITAL_RATIO = 4.0
NDefines.NAI.SUB_TASKFORCE_MAX_SHIP_COUNT = 6
NDefines.NAI.SCREEN_TASKFORCE_MAX_SHIP_COUNT = 5
NDefines.NAI.MAX_PATROL_TO_STRIKE_FORCE_RATIO = 4.0
NDefines.NNavy.SUPREMACY_PER_SHIP_PER_MANPOWER = 0.15
NDefines.NNavy.SUPREMACY_PER_SHIP_PER_IC = 0.04

NDefines.NAI.REGION_THREAT_PER_SUNK_CONVOY = 25
NDefines.NAI.REGION_THREAT_LEVEL_TO_BLOCK_REGION = 25 * 400
NDefines.NAI.REGION_CONVOY_DANGER_DAILY_DECAY = 10

-------------------------
-- naval invasions
-------------------------

NDefines.NAI.MIN_INVASION_AREA_SIZE_FOR_FLOATING_HARBORS = 1   -- AI will consider using floating harbors for naval invasion if invasion area is larger than this many provinces
NDefines.NAI.MAX_DISTANCE_NAVAL_INVASION = 400.0				-- AI is extremely unwilling to plan naval invasions above this naval distance limit.

NDefines.NAI.INVASION_TARGET_DISTANCE_DENOMINATOR = 500	-- Vanilla 1000            -- When selecting invasion target, divide this with (pixel) distance to get distance score factor. (Doesn't really affect the relative scoring, but it affects the linearity of the score function.)
NDefines.NAI.INVASION_TARGET_NO_PORT_FACTOR = 0.1	-- Vanilla 0.3                   -- When selecting invasion target, multiply score with this if the target has no port
NDefines.NAI.INVASION_TARGET_TRUNCATION_SELECT_THRESHOLD = 0.8	-- Vanilla 0.6      -- When selecting invasion target, use this threshold for truncation selection. (1.0 means select highest scored target, 0.0 means select randomly from all possible target, 0.5 means select randomly from all targets with more than 50 % of highest score)
NDefines.NAI.INVASION_TARGET_PRIO_NOT_ENEMY_FACTOR = 0.15	-- Vanilla 0.17           -- When calculating priority for an invasion, factor the score with this if the target is not an actual enemy.

NDefines.NAI.FAILED_INVASION_AREA_PRIO_FACTOR = 0.25 ---for every failed invasion on an area, factor that area's invasion prio with this value	
NDefines.NAI.FAILED_INVASION_PORT_PRIO_FACTOR = 0.33 ---for every failed invasion on a target port (province), factor the chance that we try to invade that same port again (relative to other ports)

NDefines.NAI.MIN_INVASION_PLAN_VALUE_TO_EXECUTE = 0.3				-- ai will only activate invasions if it is above this
NDefines.NAI.MIN_INVASION_ORG_FACTOR_TO_EXECUTE = 0.8				-- ai will only activate invasions if average org factor is above this

NDefines.NAI.MAX_UNIT_RATIO_FOR_INVASIONS = 0.35									-- countries won't use armies more than this ratio of total units for invasions
NDefines.NAI.MAX_INVASION_FRONT_SCORE = 2400										-- max score for naval invasion front scores
NDefines.NAI.MIN_FRONT_SCORE_FOR_AFTER_INVASION_AREAS = 1800						-- min score for army fronts that are created on recently invaded regions
NDefines.NAI.INVASION_COASTAL_PROVS_PER_ORDER = 28									-- AI will consider one extra invasion per number of provinces stated here (num orders = total coast / this)
NDefines.NAI.NAVAL_INVADED_AREA_PRIO_DURATION = 270									-- after successful invasion, AI will prio the enemy area for this number of days
NDefines.NAI.NAVAL_INVADED_AREA_PRIO_MULT = 2.0										-- fronts that belongs to recent invasions gets more prio
NDefines.NAI.MIN_NUM_CONQUERED_PROVINCES_TO_DEPRIO_NAVAL_INVADED_FRONTS = 50		-- if you conquer this amount of provinces after a naval invasion, it will lose its prio status and will act as a regular front
NDefines.NAI.MAX_INVASION_SIZE = 24	
NDefines.NNavy.BEST_CAPITALS_TO_SCREENS_RATIO = 0.20
NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.4									-- Factor for max number of units to assign to naval invasion orders
NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.4								-- Factor for desired number of units to assign to naval invasion orders
NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 1.2	

-------------------------
-- convoy escorts
-------------------------


NDefines.NAI.CONVOY_ESCORT_MUL_FROM_NO_CONVOYS = 0 -- score multiplier when no convoys are around

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MIN = 0.40 --0.20 -- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys).
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX = 0.6 --0.70 -- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys).
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX_CONVOY_THREAT = 500 -- 1500 -- AI will increase screen assignment for escort missions as threate increases

-------------------------
-- convoy raiding
-------------------------

NDefines.NAI.CONVOY_RAID_SCORE_FROM_CONVOY_INTELLIGENCE = 5  --2.5			 -- each convoy intelligenge will incease raid score by this	

--------------------------------------------------------------------------------------------------------------
-- AIR AI
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_AIR_TRAINING = 50

NDefines.NAI.DAYS_BETWEEN_AIR_PRIORITIES_UPDATE = 2                              -- [4]    -- Amount of days between air ai updates priorities for air wings ( from 1 to N )
NDefines.NAI.AIR_SCORE_DISTANCE_IMPACT = 0.5					-- Effect of distance applied to the score calculations
NDefines.NAir.AI_ALLOWED_PLANES_KEPT_IN_RESERVE = 0.0								--AI allowed planes is reduced by this percentage. Overflow will be distributed to the next valid order. Worst case, this will result in this % of planes no being assigned any order.
NDefines.NAir.AI_ALLOWED_PLANES_KEPT_IN_RESERVE = 0.0
NDefines.NAI.LAND_DEFENSE_INTERCEPTORS_PER_BOMBERS = 1.4
NDefines.NAI.LAND_COMBAT_OUR_COMBATS_AIR_IMPORTANCE = 192
NDefines.NAI.AI_FRACTION_OF_FIGHTERS_RESERVED_FOR_INTERCEPTION = 0
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_AIR_MAX_CONSUMPTION  = 15
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_AIR_TRAINING = 3.00
NDefines.NAI.BUILDING_TARGETS_BUILDING_PRIORITIES = {
		'nuclear_reactor',
		'nuclear_reactor_heavy_water',
		'synthetic_refinery',
		'dockyard',
		'industrial_complex',
	}


-------------------------
-- Land combat
-------------------------

NDefines.NAI.LAND_COMBAT_OUR_COMBATS_AIR_IMPORTANCE = 1000		-- Strategic importance of our armies in the combats
NDefines.NAI.LAND_COMBAT_FIGHTERS_PER_PLANE = 2
NDefines.NAI.LAND_COMBAT_CAS_PER_COMBAT = 120
NDefines.NAI.LAND_COMBAT_CAS_PER_ENEMY_ARMY = 60
NDefines.NAI.LAND_COMBAT_ANTI_LOGISTICS_PER_ENEMY_ARMY = 0.10
NDefines.NAI.FRONT_EVAL_UNIT_AIR_SUP_IMPACT = 2.0

NDefines.NAI.AIFC_TARGET_SUPPLY_HUB_BASE_SCORE = 35.0
NDefines.NAI.AIFC_TARGET_NAVAL_BASE_BASE_SCORE = 15.0
NDefines.NAI.AIFC_TARGET_NAVAL_BASE_SCORE_PER_LEVEL = 2.0
NDefines.NAI.AIFC_REFRESH_NEED_PER_DAY = 2.0
NDefines.NAI.AIFC_REFRESH_NEED_SUPPLY_FACTOR_PER_DAY = 1.50
NDefines.NAI.AIFC_PATH_COST_TRN_MOUNTAINS = 3.0
NDefines.NAI.AIFC_PATH_COST_TRN_MARSH = 3.0
NDefines.NAI.AIFC_PATH_COST_TRN_PLAINS = 1.15
NDefines.NAI.AIFC_PATH_COST_TRN_FOREST = 1.15
NDefines.NAI.AIFC_PATH_COST_TRN_URBAN = 0.80
NDefines.NAI.AIFC_PATH_COST_ADJ_RIVER = 1.5
NDefines.NAI.AIFC_PATH_COST_ADJ_RIVER_LARGE = 2.3
NDefines.NAI.AIFC_FRESHNESS_ADD_ON_PROGRESS = 35.0
NDefines.NAI.AIFC_PATH_COST_RAILWAY_CONNECTION = 0.75
NDefines.NAI.AIFC_PATH_COST_HAS_SUPPLY_HUB = 0.50
NDefines.NAI.AIFC_TARGET_SHORT_PATH_PENALTY_FACTOR = 0.0

-------------------------
-- Defense
-------------------------



	
-------------------------
-- Naval air
-------------------------

NDefines.NAI.NAVAL_SHIP_AIR_IMPORTANCE = 10000 --2.0					-- Naval ship air importance

NDefines.NAI.NAVAL_IMPORTANCE_SCALE = 2 --0.65						-- Naval total importance scale (every naval score get's multiplied by it)

NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_PATROLLING = 20 --10.0		-- Amount of naval patrol planes per ship on a patrol mission
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_RAIDING = 40 --10.0		-- Amount of naval patrol planes per ship on a convoy raid mission
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_ESCORTING = 20 --10.0		-- Amount of naval patrol planes per ship on a convoy escort mission

--------------------------------------------------------------------------------------------------------------
-- AI SUPPLY/LOGISTICS DEFINES 
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.MAX_DIST_PORT_RUSH = 40.0	--default 20.0			-- If a unit is in enemy territory with no supply it will consider nearby ports within this distance.

NDefines.NAI.AVERAGE_SUPPLY_USE_PESSIMISM = 2.0  -- Increased multiplier to reflect realistic supply usage.

NDefines.NAITheatre.FRONT_EVAL_UNIT_SUPPLY_AND_ORG_LACK_IMPACT = 1.5	-- Vanilla 1.0; scale how painful the AI thinks a combined lack of supply and organization is for units	

NDefines.NAI.MAX_SUPPLY_DIVISOR = 1.25  -- Vanilla 1.75						-- To make sure the AI does not overdeploy divisions. Higher number means more supply per unit. van 2.0


NDefines.NAI.CONSTRUCTION_PRIO_SUPPLY_BUILDING = 3.50
NDefines.NAI.CONSTRUCTION_PRIO_RAILWAY = 20.0
NDefines.NAI.CONSTRUCTION_PRIO_FACTOR_OWNED_CORE = 5.0
NDefines.NAI.CONSTRUCTION_PRIO_FACTOR_OWNED_NONCORE = 2.5
NDefines.NAI.CONSTRUCTION_PRIO_INFRASTRUCTURE = 0.30

NDefines.NAI.RAIDS_CREATE_FREQUENCY_DAYS = 20
NDefines.NAI.RAIDS_COMMAND_POWER_CAP_TO_CREATE = 150.0 
NDefines.NAI.COMMAND_POWER_BEFORE_SPEND_ON_TRAITS = 50.0
NDefines.NAI.ARMY_LEADER_ASSIGN_NR_TRAITS = 0
-----------------
---- LAND AI ----
-----------------

--NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.80				            -- Minimum org % for a unit to actively attack an enemy unit when executing a plan
--NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.80 --0.4			        -- Minimum strength for a unit to actively attack an enemy unit when executing a plan

--NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.70							-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
--NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.70

NDefines.NAI.PLAN_FACTION_STRONG_TO_EXECUTE = 0.80 --0.80	--0.60		        -- % or more of units in an order to consider ececuting the plan
NDefines.NAI.PLAN_FACTION_NORMAL_TO_EXECUTE = 0.60  --0.50
NDefines.NAI.PLAN_FACTION_WEAK_TO_ABORT = 0.50  --0.35 		0.65		        -- % or more of units in an order to consider ececuting the plan
NDefines.NAI.PLAN_VALUE_TO_EXECUTE = -0.2      -- Vanilla -0.5                                     -- AI will typically avoid carrying out a plan it below this value (0.0 is considered balanced).
NDefines.NAI.PLAN_AVG_PREPARATION_TO_EXECUTE = 0.6				            -- % or more average plan preparation before executing


NDefines.NAI.AIFC_ACTIVATE_IN_POSITION_RATIO_THRESHOLD = 0.6
NDefines.NAI.AIFC_TARGET_SUPPLY_HUB_BASE_SCORE = 35.0
NDefines.NAI.AIFC_TARGET_NAVAL_BASE_BASE_SCORE = 15.0
NDefines.NAI.AIFC_TARGET_NAVAL_BASE_SCORE_PER_LEVEL = 2.0
NDefines.NAI.AIFC_REFRESH_NEED_PER_DAY = 2.0
NDefines.NAI.AIFC_REFRESH_NEED_SUPPLY_FACTOR_PER_DAY = 1.50
NDefines.NAI.AIFC_PATH_COST_TRN_MOUNTAINS = 3.0
NDefines.NAI.AIFC_PATH_COST_TRN_MARSH = 3.0
NDefines.NAI.AIFC_PATH_COST_TRN_PLAINS = 1.15
NDefines.NAI.AIFC_PATH_COST_TRN_FOREST = 1.15
NDefines.NAI.AIFC_PATH_COST_TRN_URBAN = 0.80
NDefines.NAI.AIFC_PATH_COST_ADJ_RIVER = 1.5
NDefines.NAI.AIFC_PATH_COST_ADJ_RIVER_LARGE = 2.3
NDefines.NAI.AIFC_FRESHNESS_ADD_ON_PROGRESS = 35.0
NDefines.NAI.AIFC_PATH_COST_RAILWAY_CONNECTION = 0.75
NDefines.NAI.AIFC_PATH_COST_HAS_SUPPLY_HUB = 0.50
NDefines.NSupply.MIN_DIFF_FOR_AUTO_UPDATING_EXISTING_RAILWAYS = 2

NDefines.NAI.FALLBACK_LOSING_FACTOR = 0.0
NDefines.NAI.DIVISION_SUPPLY_RATIO_TO_MOTORIZE = 1.5
NDefines.NAI.ENTRENCHMENT_WEIGHT = 4.0

NDefines.NAI.MIN_FIELD_STRENGTH_TO_BUILD_UNITS = 0.80
NDefines.NMilitary.PLAN_MIN_AUTOMATED_EMPTY_POCKET_SIZE = 50
NDefines.NMilitary.FRONTLINE_EXPANSION_FACTOR = 0.4

NDefines.NAI.AGGRESSIVENESS_CHECK_BASE = 2.0
NDefines.NAI.AGGRESSIVENESS_CHECK_EASY_TARGET = -0.5
NDefines.NAI.AGGRESSIVENESS_CHECK_CAREFUL = 1.0	

NDefines.NAI.ASSIGN_TANKS_TO_MOUNTAINS = -15
NDefines.NAI.ASSIGN_TANKS_TO_JUNGLE = -20

NDefines.NAI.RESERVE_TO_COMMITTED_BALANCE = 0.3

NDefines.NAI.FRONT_EVAL_UNIT_AIR_SUP_IMPACT = 2.0
NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.10


NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HARDNESS = 800.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_EXPERIENCE = 500.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ARMOR = 80.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_SOFT_ATTACK = 12.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HARD_ATTACK = 16.0
NDefines.NAI.AIFC_UNIT_NUDGE_FREQUENCY_DAYS = 10.0
--------------------------------------
------ Changing Careful AI -----------
--------------------------------------
-- So I don't know a single person who actually uses the careful attack plan. Therefore i'm gonna heavily change it for the AI use.

NDefines.NAI.PLAN_EXECUTE_CAREFUL_LIMIT = 8                -- When looking for an attack target, this score limit is required in the battle plan to consider province for attack
NDefines.NAI.PLAN_EXECUTE_CAREFUL_MAX_FORT = 7				-- If execution mode is set to careful, units will not attack provinces with fort levels greater than or equal to this
NDefines.NAI.PLAN_EXECUTE_SUPPLY_CHECK = { 0.5, 0.4, 0.7, 1.0, 0.6 }
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.85		-- Minimum org % for a unit to actively attack an enemy unit when executing a plan
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.75	-- Minimum strength for a unit to actively attack an enemy unit when executing a plan