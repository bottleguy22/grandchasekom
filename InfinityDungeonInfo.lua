-- 사냥터 기본 스크립트 셋팅 정보
TRUE = 1
FALSE = 0

-- 랭크 Enum
RANK_F = 0
RANK_E = 1
RANK_D = 2
RANK_C = 3
RANK_B = 4
RANK_A = 5
RANK_S = 6
RANK_SS = 7

GUIDE_INFINITY_DUNGEON = { GC_GM_QUEST77, }	-- 해당 던전을 갈 수 있을때 사냥터 가이드가 뜬다.


InfinityDungeonInfo = 
{


-- 엘리아
	{
		DUNGEON_ID = GC_GM_QUEST77,	-- 던전 ID. 엘리아 사냥터 enum = 99
		
		-- 어떤 스테이지를 사용할것인지 설정
		STAGE_INFO = 
		{
			"trialforest_stage_01.lua",
			"templeoffire_stage_06.lua",
			"hell_bridge_stage_11_12.lua",
			"castuloverfloor_stage_11.lua",
			"mesia's_final_stage_06.lua",
			"mesia's_final_stage_01_05.lua",
			"mesia's_final_stage_07.lua",
		},
		
		-- 랭크별 기준점수
		RANK_SCORE_INFO = 
		{
			-- 랭크별, 점수, 유지 시간
			{ 100, 10 }, -- F 
			{ 120, 11 }, -- E
			{ 150, 13 }, -- D
			{ 190, 16 }, -- C
			{ 240, 20 }, -- B
			{ 300, 25 }, -- A
			{ 370, 31 }, -- S
			{ 450, 38 }, -- SS			
			
		},		
		
		BOSS_REGEN_INFO = 
		{
			BOSS_REGEN_RANK = RANK_SS,  -- 보스 몬스터 소환에 필요한 랭크
			REGEN_WAIT_TIME = 1800000, -- 랭크 달성시 보스 몬스터 소환까지 걸리는 시간
			MIN_BOSS_REGEN_TIME = 1200000,	-- 보스 최소 소환 주기
			MAX_BOSS_REGEN_TIME = 2400000, -- 보스 최대 소환 주기 ( 등급과 상관없이 소환되는 시간 )
			--MAX_BOSS_REGEN_TIME = 200, -- 보스 최대 소환 주기 ( 등급과 상관없이 소환되는 시간 )
			
			-- 랭크별 보스 몬스터 그룹 
			-- SS에만 나올 보스는 SS로 지정하면 됨. ( SS등급 으로 인해 소환할때 모든 등급 보스 참조해서 출현한다. )
			-- 랜덤으로 설정하면 설정된 것중에 하나만 나온다, 설정안하면 설정된거 다 나온다.
			BOSS_MONSTER_GROUP = 
			{ 
				{ 
					RANK = RANK_F,
					RNADOM = TRUE, 
					LEVEL = 43,
					BOSS_LIST = { 72, }, -- 오크로드
				},			
				{ 
					RANK = RANK_E,
					RNADOM = TRUE, 
					LEVEL = 45,
					BOSS_LIST = { 71, }, -- 블랙페어리 퀸
				},
				{ 
					RANK = RANK_D,
					RNADOM = TRUE, 
					LEVEL = 47,
					BOSS_LIST = { 62, }, -- 파라돔
				},			
				{ 
					RANK = RANK_C,
					RNADOM = TRUE, 
					LEVEL = 49,
					BOSS_LIST = { 51, }, -- 바실리스크
				},
				{ 
					RANK = RANK_B,
					RNADOM = TRUE, 
					LEVEL = 51,
					BOSS_LIST = { 21, }, -- 카미키
				},
				{ 
					RANK = RANK_A,
					RNADOM = TRUE, 
					LEVEL = 53,
					BOSS_LIST = { 52, }, -- 가도센
				},
				{ 
					RANK = RANK_S,
					RNADOM = TRUE, 
					LEVEL = 55,
					BOSS_LIST = { 53, }, -- 자이언트 스톰골렘
				},
				{ 
					RANK = RANK_SS,
					RNADOM = TRUE, 
					LEVEL = 57,
					BOSS_LIST = { 73, }, -- 다크아몬
				},				
			},	-- 
			
		},			
		
		MONSTER_INFO = 
		{
			MONSTER_REGEN_TIME = 1, -- 몬스터 리젠 속도
			MAX_MONSTER_NUM = { 35, 35, 35, 35, 35, 35 }, -- 파티별 몬스터 최대 갯수		
			
			START_MONSTER_LEVEL = 87,
			START_MONSTER_GROUP = { 208, 208, 208, 208 }, -- 최초 생성될 몬스터 그룹
			
			-- 랭크별 몬스터 소환 리스트
			RANK_MONSTER_INFO = 
			{				
				-- 랭크별 소환그룹 몬스터 및 소환되는 확률
--				{
--					RANK = RANK_F,
--					LEVEL = 41,
--					REGEN_GROUP_RATE = { {RANK_F, 100}, },	-- 소환될 몬스터 랭크 그룹 ( F등급일때 F등급과 E등급이 각각의 확률로 소환된다. )
--					REGEN_MONSTER_GROUP = { 13, 87, },	-- F등급 일때 소환되는 몬스터 리스트
--				},
				{
					RANK = RANK_F,
					LEVEL = 41,
					REGEN_GROUP_RATE = { {RANK_F, 100}, },	
					REGEN_MONSTER_GROUP = { 13, 87, },	-- 아머랍스터, 파라미니미
				},
				{
					RANK = RANK_E,
					LEVEL = 43,
					REGEN_GROUP_RATE = { {RANK_E, 100}, },	
					REGEN_MONSTER_GROUP = { 48, 50, 14, }, -- 어둠의 엔몬정찰병, 어둠의 엔몬문지기, 귀신아귀
				},				
				{
					RANK = RANK_D,
					LEVEL = 45,
					REGEN_GROUP_RATE = { {RANK_D, 100}, },
					REGEN_MONSTER_GROUP = { 47, 69, }, -- 강화된 엔몬정찰병, 광폭한 곤
				},
				{
					RANK = RANK_C,
					LEVEL = 47,
					REGEN_GROUP_RATE = { {RANK_C, 100}, },
					REGEN_MONSTER_GROUP = { 17, 63, }, -- 해골기사대장, 광폭한 고블린
				},
				{
					RANK = RANK_B,
					LEVEL = 49,
					REGEN_GROUP_RATE = { {RANK_B, 100}, },		
					REGEN_MONSTER_GROUP = { 58, 46, 68, },	-- 어둠의 몽반, 미니파이어골렘, 광폭한 드릴몬
				},
				{
					RANK = RANK_A,
					LEVEL = 51,
					REGEN_GROUP_RATE = { {RANK_A, 100}, },		
					REGEN_MONSTER_GROUP = { 66, 64, 45, },	-- 광폭한 오크전사, 광폭한 고블린투척병, 미니아이스골렘
				},
				{
					RANK = RANK_S,
					LEVEL = 53,
					REGEN_GROUP_RATE = { {RANK_S, 90}, {RANK_SS, 10}, },		
					REGEN_MONSTER_GROUP = { 59, 61, },		-- 몽반리더, 파이어골렘
				},				
				{
					RANK = RANK_SS,
					LEVEL = 87,
					REGEN_GROUP_RATE = { {RANK_SS, 100}, },
					REGEN_MONSTER_GROUP = { 208, 208, },	--몽반리더, 리치
				},               
			},
		},
	},
	

-- 제니아	
	{
		DUNGEON_ID = GC_GM_QUEST78,	-- 던전 ID. 제니아 사냥터 enum = 100
		
		-- 어떤 스테이지를 사용할것인지 설정
		STAGE_INFO = 
		{
			"new_world_stage_06.lua",
			"Infinity_NightGorge_01.lua",
			"fire_hell_stage_05.lua",
			"AltarOfHarmony_06.lua",
			"GiantRock_02.lua",
			"Infinity_LifeWoodland_01.lua",
			"Infinity_CastleOfRule_01.lua",
		},
		
		-- 랭크별 기준점수
		RANK_SCORE_INFO = 
		{
			-- 랭크별, 점수, 유지 시간
			{ 100, 10 }, -- F 
			{ 120, 11 }, -- E
			{ 150, 13 }, -- D
			{ 190, 16 }, -- C
			{ 240, 20 }, -- B
			{ 300, 25 }, -- A
			{ 370, 31 }, -- S
			{ 450, 38 }, -- SS			
			
		},		
		
		BOSS_REGEN_INFO = 
		{
			BOSS_REGEN_RANK = RANK_SS,  -- 보스 몬스터 소환에 필요한 랭크
			REGEN_WAIT_TIME = 18, -- 랭크 달성시 보스 몬스터 소환까지 걸리는 시간
			MIN_BOSS_REGEN_TIME = 120,	-- 보스 최소 소환 주기
			MAX_BOSS_REGEN_TIME = 240, -- 보스 최대 소환 주기 ( 등급과 상관없이 소환되는 시간 )
			--MAX_BOSS_REGEN_TIME = 180, -- 보스 최대 소환 주기 ( 등급과 상관없이 소환되는 시간 )
			
			-- 랭크별 보스 몬스터 그룹 
			-- SS에만 나올 보스는 SS로 지정하면 됨. ( SS등급 으로 인해 소환할때 모든 등급 보스 참조해서 출현한다. )
			-- 랜덤으로 설정하면 설정된 것중에 하나만 나온다, 설정안하면 설정된거 다 나온다.
			BOSS_MONSTER_GROUP = 
			{ 
				{ 
					RANK = RANK_F,
					RNADOM = FALSE, 
					LEVEL = 59,
					BOSS_LIST = { 189, }, -- 우덴
				},			
				{ 
					RANK = RANK_E,
					RNADOM = FALSE, 
					LEVEL = 61,
					BOSS_LIST = { 167, }, -- 샤크아론
				},
				{ 
					RANK = RANK_D,
					RNADOM = TRUE, 
					LEVEL = 63,
					BOSS_LIST = { 198, 197, }, -- 퓨리어스 스톰, 다크 스톰
				},			
				{ 
					RANK = RANK_C,
					RNADOM = TRUE, 
					LEVEL = 65,
					BOSS_LIST = { 119, 120, }, -- 레나시엔, 옥투스
				},
				{ 
					RANK = RANK_B,
					RNADOM = TRUE, 
					LEVEL = 67,
					BOSS_LIST = { 144, }, -- 지그
				},
				{ 
					RANK = RANK_A,
					RNADOM = TRUE, 
					LEVEL = 69,
					BOSS_LIST = { 129, }, -- 불타로스
				},
				{ 
					RANK = RANK_S,
					RNADOM = TRUE, 
					LEVEL = 71,
					BOSS_LIST = { 178, }, -- 페리어트
				},
				{ 
					RANK = RANK_SS,
					RNADOM = TRUE, 
					LEVEL = 82,
					BOSS_LIST = { 208, }, -- 타나토스 P3
				},				
			},	-- 
			
		},			
		
		MONSTER_INFO = 
		{
			MONSTER_REGEN_TIME = 19, -- 몬스터 리젠 속도
			MAX_MONSTER_NUM = { 6, 8, 10, 12, 12, 12 }, -- 파티별 몬스터 최대 갯수		
			
			START_MONSTER_LEVEL = 63,
			START_MONSTER_GROUP = { 114, 126, 127, 146 }, -- 최초 생성될 몬스터 그룹
			
			-- 랭크별 몬스터 소환 리스트
			RANK_MONSTER_INFO = 
			{				
				-- 랭크별 소환그룹 몬스터 및 소환되는 확률
				{
					RANK = RANK_F,
					LEVEL = 57,
					REGEN_GROUP_RATE = { {RANK_E, 100}, },	-- 소환될 몬스터 랭크 그룹 ( F등급일때 F등급과 E등급이 각각의 확률로 소환된다. )
					REGEN_MONSTER_GROUP = { 200, 190, },	-- 가고일, DK-MARK2
				},
				{
					RANK = RANK_E,
					LEVEL = 59,
					REGEN_GROUP_RATE = { {RANK_E, 80}, {RANK_D, 20}, },	
					REGEN_MONSTER_GROUP = { 147, 148, 74, 75, },	-- 로쉐, 디코이, 원주민 창병, 원주민 족장
				},				
				{
					RANK = RANK_D,
					LEVEL = 61,
					REGEN_GROUP_RATE = { {RANK_D, 85}, {RANK_C, 15}, },
					REGEN_MONSTER_GROUP = { 146, 165, },	-- 켄크르, 프리징 켄크르
				},
				{
					RANK = RANK_C,
					LEVEL = 63,
					REGEN_GROUP_RATE = { {RANK_C, 85}, {RANK_D, 15}, },
					REGEN_MONSTER_GROUP = { 114,  127, },	-- 광신도승려, 어쌔신순찰자
				},
				{
					RANK = RANK_B,
					LEVEL = 65,
					REGEN_GROUP_RATE = { {RANK_B, 80}, {RANK_C, 20}, },		
					REGEN_MONSTER_GROUP = { 126, 78, 77,  },	-- 어쌔신검술사, 이끼괴수, 변이스켈레톤, 
				},
				{
					RANK = RANK_A,
					LEVEL = 67,
					REGEN_GROUP_RATE = { {RANK_A, 65 }, {RANK_B, 20}, {RANK_C, 10}, {RANK_D, 5}, },		
					REGEN_MONSTER_GROUP = {  76, 164, },	--   비홀더, 프리징세이버투스
				},
				{
					RANK = RANK_S,
					LEVEL = 69,
					REGEN_GROUP_RATE = { {RANK_S, 80}, {RANK_SS, 5}, {RANK_F, 5}, {RANK_A, 10},},		
					REGEN_MONSTER_GROUP = { 166, 150, },	-- 엔다리온, 마그몬
				},				
				{
					RANK = RANK_SS,
					LEVEL = 69,
					REGEN_GROUP_RATE = { {RANK_S, 80}, {RANK_SS, 15}, },
					REGEN_MONSTER_GROUP = { 202, 203, 201, },	-- 상급암흑사제, 헤라, 사타니엘 전사
				},	
			},
		},
	},
	
	
-- 아툼	
	{
		DUNGEON_ID = GC_GM_QUEST79,	-- 던전 ID. 아툼 사냥터 enum = 101
		
		-- 어떤 스테이지를 사용할것인지 설정
		STAGE_INFO = 
		{
			"Infinity_GoblinLaborCamp_01.lua",
			"Infinity_UndergroundTunnel_01.lua",
			"Infinity_KungjiVillage_01.lua",
			"Infinity_MirageDesert_01.lua",
			"Thief_stage_01.lua",
			"PyramidOfSeht_Stage_03.lua",
		},
		
		-- 랭크별 기준점수
		RANK_SCORE_INFO = 
		{
			-- 랭크별, 점수, 유지 시간
			{ 100, 10 }, -- F 
			{ 120, 11 }, -- E
			{ 150, 13 }, -- D
			{ 190, 16 }, -- C
			{ 240, 20 }, -- B
			{ 300, 25 }, -- A
			{ 370, 31 }, -- S
			{ 450, 38 }, -- SS		
			
		},		
		
		BOSS_REGEN_INFO = 
		{
			BOSS_REGEN_RANK = RANK_SS,  -- 보스 몬스터 소환에 필요한 랭크
			REGEN_WAIT_TIME = 15, -- 랭크 달성시 보스 몬스터 소환까지 걸리는 시간
			MIN_BOSS_REGEN_TIME = 120,	-- 보스 최소 소환 주기
			MAX_BOSS_REGEN_TIME = 240, -- 보스 최대 소환 주기 ( 등급과 상관없이 소환되는 시간 )
			--MAX_BOSS_REGEN_TIME = 180, -- 보스 최대 소환 주기 ( 등급과 상관없이 소환되는 시간 )
			
			-- 랭크별 보스 몬스터 그룹 
			-- SS에만 나올 보스는 SS로 지정하면 됨. ( SS등급 으로 인해 소환할때 모든 등급 보스 참조해서 출현한다. )
			-- 랜덤으로 설정하면 설정된 것중에 하나만 나온다, 설정안하면 설정된거 다 나온다.
			BOSS_MONSTER_GROUP = 
			{ 
				{ 
					RANK = RANK_F,
					RNADOM = TRUE, 
					LEVEL = 75,
					BOSS_LIST = { 226, }, -- 가디언 쿵
				},			
				{ 
					RANK = RANK_E,
					RNADOM = TRUE, 
					LEVEL = 76,
					BOSS_LIST = { 647, }, -- 후드스콜피온
				},
				{ 
					RANK = RANK_D,
					RNADOM = FALSE, 
					LEVEL = 77,
					BOSS_LIST = { 245, }, -- 자이언트 프릴자드
				},			
				{ 
					RANK = RANK_C,
					RNADOM = TRUE, 
					LEVEL = 78,
					BOSS_LIST = { 221, }, -- 하셉수트
				},
				{ 
					RANK = RANK_B,
					RNADOM = TRUE, 
					LEVEL = 79,
					BOSS_LIST = { 227, }, -- 엘더 쿵
				},
				{ 
					RANK = RANK_A,
					RNADOM = TRUE, 
					LEVEL = 80,
					BOSS_LIST = { 246, }, -- 샌드룰러
				},
				{ 
					RANK = RANK_S,
					RNADOM = TRUE, 
					LEVEL = 81,
					BOSS_LIST = { 864,  }, -- 카르트
				},
				{ 
					RANK = RANK_SS,
					RNADOM = TRUE, 
					LEVEL = 82,
					BOSS_LIST = { 215, }, -- 세태쉬
				},				
			},	-- 
			
		},			
		
		MONSTER_INFO = 
		{
			MONSTER_REGEN_TIME = 18, -- 몬스터 리젠 속도
			MAX_MONSTER_NUM = { 6, 8, 10, 12, 12, 12 }, -- 파티별 몬스터 최대 갯수		
			
			START_MONSTER_LEVEL = 76,
			START_MONSTER_GROUP = { 212, 218, 211, 217 }, -- 최초 생성될 몬스터 그룹
			
			-- 랭크별 몬스터 소환 리스트
			RANK_MONSTER_INFO = 
			{				
				-- 랭크별 소환그룹 몬스터 및 소환되는 확률
				{
					RANK = RANK_F,
					LEVEL = 73,
					REGEN_GROUP_RATE = { {RANK_F, 100}, },
					REGEN_MONSTER_GROUP = { 219, },	-- 검방이
				},
				{
					RANK = RANK_E,
					LEVEL = 74,
					REGEN_GROUP_RATE = { {RANK_E, 100}, },	
					REGEN_MONSTER_GROUP = { 210, 216, },	-- 조약돌고블린, 일꾼 깨미
				},				
				{
					RANK = RANK_D,
					LEVEL = 75,
					REGEN_GROUP_RATE = { {RANK_D, 100}, },
					REGEN_MONSTER_GROUP = { 211, 217, },	-- 조약돌고블린싸움꾼, 병정깨미
				},
				{
					RANK = RANK_C,
					LEVEL = 76,
					REGEN_GROUP_RATE = { {RANK_C, 100}, },
					REGEN_MONSTER_GROUP = { 212, 218, 644, },	--조약돌고블린노역꾼, 대장깨미, 후드자칼
				},
				{
					RANK = RANK_B,
					LEVEL = 77,
					REGEN_GROUP_RATE = { {RANK_B, 100}, },		
					REGEN_MONSTER_GROUP = { 222, 637, 638, },	-- 쿵지, 사막 검 도적, 사막 도끼 도적
				},
				{
					RANK = RANK_A,
					LEVEL = 78,
					REGEN_GROUP_RATE = { {RANK_A, 90}, {RANK_B, 10}, },
					REGEN_MONSTER_GROUP = { 645, 656, 225, },	-- 후드하운드, 세트 여전사, 빅쿵
				},
				{
					RANK = RANK_S,
					LEVEL = 79,
					REGEN_GROUP_RATE = { {RANK_S, 80}, {RANK_SS, 10}, {RANK_A, 10}, },		
					REGEN_MONSTER_GROUP = { 657, 659, 224,  },	--세트미이라, 아누비스, 매직쿵
				},				
				{
					RANK = RANK_SS,
					LEVEL = 79,
					REGEN_GROUP_RATE = { {RANK_S, 80}, {RANK_SS, 20},},
					REGEN_MONSTER_GROUP = { 244, 220,  },	-- 프릴자드, 스콜피스
				},	
			},
		},
	},
	
	
--아케메디아
	{
		DUNGEON_ID = GC_GM_QUEST80,	-- 던전 ID. 아케메디아 사냥터 enum = 102
		
		-- 어떤 스테이지를 사용할것인지 설정
		STAGE_INFO = 
		{
			"DwarvenBase_01.lua",
			"DwarfSupplyRoute_06.lua",
			"ThunderHammer_07.lua",
			"AncientDebris_02.lua",
			"Karuel_stage01.lua",
			"SlippedLandOfCownat_01.lua",
		},
		
		-- 랭크별 기준점수
		RANK_SCORE_INFO = 
		{
			-- 랭크별, 점수, 유지 시간
			{ 100, 10 }, -- F 
			{ 120, 11 }, -- E
			{ 150, 13 }, -- D
			{ 190, 16 }, -- C
			{ 240, 20 }, -- B
			{ 300, 25 }, -- A
			{ 370, 31 }, -- S
			{ 450, 38 }, -- SS			
			
		},		
		
		BOSS_REGEN_INFO = 
		{
			BOSS_REGEN_RANK = RANK_SS,  -- 보스 몬스터 소환에 필요한 랭크
			REGEN_WAIT_TIME = 18, -- 랭크 달성시 보스 몬스터 소환까지 걸리는 시간
			MIN_BOSS_REGEN_TIME = 120,	-- 보스 최소 소환 주기
			MAX_BOSS_REGEN_TIME = 240, -- 보스 최대 소환 주기 ( 등급과 상관없이 소환되는 시간 )
			--MAX_BOSS_REGEN_TIME = 180, -- 보스 최대 소환 주기 ( 등급과 상관없이 소환되는 시간 )
			
			-- 랭크별 보스 몬스터 그룹 
			-- SS에만 나올 보스는 SS로 지정하면 됨. ( SS등급 으로 인해 소환할때 모든 등급 보스 참조해서 출현한다. )
			-- 랜덤으로 설정하면 설정된 것중에 하나만 나온다, 설정안하면 설정된거 다 나온다.
			BOSS_MONSTER_GROUP = 
			{ 
				{ 
					RANK = RANK_F,
					RNADOM = TRUE, 
					LEVEL = 82,
					BOSS_LIST = { 250, }, -- 파워셔블
				},			
				{ 
					RANK = RANK_E,
					RNADOM = TRUE, 
					LEVEL = 83,
					BOSS_LIST = { 233, }, -- 스파이더 가드머신
				},
				{ 
					RANK = RANK_D,
					RNADOM = TRUE, 
					LEVEL = 84,
					BOSS_LIST = { 251, 252, }, -- 센트리키퍼 1호, 센트리키퍼 2호
				},			
				{ 
					RANK = RANK_C,
					RNADOM = TRUE, 
					LEVEL = 85,
					BOSS_LIST = { 671, 670, }, -- 마군단 흑마대장, 마군단 흑검대장
				},
				{ 
					RANK = RANK_B,
					RNADOM = TRUE, 
					LEVEL = 86,
					BOSS_LIST = { 278, }, -- 아론
				},
				{ 
					RANK = RANK_A,
					RNADOM = TRUE, 
					LEVEL = 87,
					BOSS_LIST = { 307, }, -- 아론, 베른
				},
				{ 
					RANK = RANK_S,
					RNADOM = TRUE, 
					LEVEL = 88,
					BOSS_LIST = { 580, }, -- 달리아 P4
				},
				{ 
					RANK = RANK_SS,
					RNADOM = TRUE, 
					LEVEL = 89,
					BOSS_LIST = { 308, }, -- 드랄
				},				
			},	-- 
			
		},			
		
		MONSTER_INFO = 
		{
			MONSTER_REGEN_TIME = 19, -- 몬스터 리젠 속도
			MAX_MONSTER_NUM = { 6, 8, 10, 12, 12, 12 }, -- 파티별 몬스터 최대 갯수		
			
			START_MONSTER_LEVEL = 83,
			START_MONSTER_GROUP = { 249, 230, 231 }, -- 최초 생성될 몬스터 그룹
			
			-- 랭크별 몬스터 소환 리스트
			RANK_MONSTER_INFO = 
			{				
				-- 랭크별 소환그룹 몬스터 및 소환되는 확률
				{
					RANK = RANK_F,
					LEVEL = 80,
					REGEN_GROUP_RATE = { {RANK_E, 100}, },
					REGEN_MONSTER_GROUP = { 231, 258, 248, 230,  },	-- 불망치 토치맨, 썬더해머소총병, 강철드워프 공병, 불망치 대장장이
				},
				{
					RANK = RANK_E,
					LEVEL = 81,
					REGEN_GROUP_RATE = { {RANK_E, 90}, {RANK_F, 10}, },	
					REGEN_MONSTER_GROUP = { 228,  257, },	-- 암흑숲 정찰자, 테크니컬가드
				},				
				{
					RANK = RANK_D,
					LEVEL = 82,
					REGEN_GROUP_RATE = { {RANK_D, 80},{RANK_F, 10}, {RANK_E, 10}, },
					REGEN_MONSTER_GROUP = { 229, },	--  암흑숲암살자, 
				},
				{
					RANK = RANK_C,
					LEVEL = 83,
					REGEN_GROUP_RATE = { {RANK_C, 50}, {RANK_F, 15},{RANK_D, 35},},
					REGEN_MONSTER_GROUP = { 249,  },	-- 강철드워프 감독관
				},
				{
					RANK = RANK_B,
					LEVEL = 84,
					REGEN_GROUP_RATE = { {RANK_B, 50}, {RANK_C, 15}, {RANK_D, 15}, {RANK_E, 20}, },		
					REGEN_MONSTER_GROUP = { 573,  260, },	-- 다크엘프 척후병, 썬더해머 수호병
				},
				{
					RANK = RANK_A,
					LEVEL = 85,
					REGEN_GROUP_RATE = { {RANK_B, 40}, {RANK_A, 60}, },		
					REGEN_MONSTER_GROUP = { 574,  305, 247, },	-- 다크엘프 암살자, 웨어울프, 불망치드릴러
				},
				{
					RANK = RANK_S,
					LEVEL = 86,
					REGEN_GROUP_RATE = { {RANK_S, 65}, {RANK_SS, 20}, {RANK_A, 15},},		
					REGEN_MONSTER_GROUP = {  306, 590, },	--  웨어울프버서커, 엘프 근위병
				},				
				{
					RANK = RANK_SS,
					LEVEL = 86,
					REGEN_GROUP_RATE = { {RANK_S, 50}, {RANK_SS, 50}, },
					REGEN_MONSTER_GROUP = { 575, 592, 576, },	-- 다크엘프 마법궁수, 골렘, 다크엘프 기마병
				},	
			},
		},
	},
	
}

