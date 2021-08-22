-- ����� �⺻ ��ũ��Ʈ ���� ����
TRUE = 1
FALSE = 0

-- ��ũ Enum
RANK_F = 0
RANK_E = 1
RANK_D = 2
RANK_C = 3
RANK_B = 4
RANK_A = 5
RANK_S = 6
RANK_SS = 7

GUIDE_INFINITY_DUNGEON = { GC_GM_QUEST77, }	-- �ش� ������ �� �� ������ ����� ���̵尡 ���.


InfinityDungeonInfo = 
{


-- ������
	{
		DUNGEON_ID = GC_GM_QUEST77,	-- ���� ID. ������ ����� enum = 99
		
		-- � ���������� ����Ұ����� ����
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
		
		-- ��ũ�� ��������
		RANK_SCORE_INFO = 
		{
			-- ��ũ��, ����, ���� �ð�
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
			BOSS_REGEN_RANK = RANK_SS,  -- ���� ���� ��ȯ�� �ʿ��� ��ũ
			REGEN_WAIT_TIME = 1800000, -- ��ũ �޼��� ���� ���� ��ȯ���� �ɸ��� �ð�
			MIN_BOSS_REGEN_TIME = 1200000,	-- ���� �ּ� ��ȯ �ֱ�
			MAX_BOSS_REGEN_TIME = 2400000, -- ���� �ִ� ��ȯ �ֱ� ( ��ް� ������� ��ȯ�Ǵ� �ð� )
			--MAX_BOSS_REGEN_TIME = 200, -- ���� �ִ� ��ȯ �ֱ� ( ��ް� ������� ��ȯ�Ǵ� �ð� )
			
			-- ��ũ�� ���� ���� �׷� 
			-- SS���� ���� ������ SS�� �����ϸ� ��. ( SS��� ���� ���� ��ȯ�Ҷ� ��� ��� ���� �����ؼ� �����Ѵ�. )
			-- �������� �����ϸ� ������ ���߿� �ϳ��� ���´�, �������ϸ� �����Ȱ� �� ���´�.
			BOSS_MONSTER_GROUP = 
			{ 
				{ 
					RANK = RANK_F,
					RNADOM = TRUE, 
					LEVEL = 43,
					BOSS_LIST = { 72, }, -- ��ũ�ε�
				},			
				{ 
					RANK = RANK_E,
					RNADOM = TRUE, 
					LEVEL = 45,
					BOSS_LIST = { 71, }, -- ���� ��
				},
				{ 
					RANK = RANK_D,
					RNADOM = TRUE, 
					LEVEL = 47,
					BOSS_LIST = { 62, }, -- �Ķ�
				},			
				{ 
					RANK = RANK_C,
					RNADOM = TRUE, 
					LEVEL = 49,
					BOSS_LIST = { 51, }, -- �ٽǸ���ũ
				},
				{ 
					RANK = RANK_B,
					RNADOM = TRUE, 
					LEVEL = 51,
					BOSS_LIST = { 21, }, -- ī��Ű
				},
				{ 
					RANK = RANK_A,
					RNADOM = TRUE, 
					LEVEL = 53,
					BOSS_LIST = { 52, }, -- ������
				},
				{ 
					RANK = RANK_S,
					RNADOM = TRUE, 
					LEVEL = 55,
					BOSS_LIST = { 53, }, -- ���̾�Ʈ �����
				},
				{ 
					RANK = RANK_SS,
					RNADOM = TRUE, 
					LEVEL = 57,
					BOSS_LIST = { 73, }, -- ��ũ�Ƹ�
				},				
			},	-- 
			
		},			
		
		MONSTER_INFO = 
		{
			MONSTER_REGEN_TIME = 1, -- ���� ���� �ӵ�
			MAX_MONSTER_NUM = { 35, 35, 35, 35, 35, 35 }, -- ��Ƽ�� ���� �ִ� ����		
			
			START_MONSTER_LEVEL = 87,
			START_MONSTER_GROUP = { 208, 208, 208, 208 }, -- ���� ������ ���� �׷�
			
			-- ��ũ�� ���� ��ȯ ����Ʈ
			RANK_MONSTER_INFO = 
			{				
				-- ��ũ�� ��ȯ�׷� ���� �� ��ȯ�Ǵ� Ȯ��
--				{
--					RANK = RANK_F,
--					LEVEL = 41,
--					REGEN_GROUP_RATE = { {RANK_F, 100}, },	-- ��ȯ�� ���� ��ũ �׷� ( F����϶� F��ް� E����� ������ Ȯ���� ��ȯ�ȴ�. )
--					REGEN_MONSTER_GROUP = { 13, 87, },	-- F��� �϶� ��ȯ�Ǵ� ���� ����Ʈ
--				},
				{
					RANK = RANK_F,
					LEVEL = 41,
					REGEN_GROUP_RATE = { {RANK_F, 100}, },	
					REGEN_MONSTER_GROUP = { 13, 87, },	-- �ƸӶ�����, �Ķ�̴Ϲ�
				},
				{
					RANK = RANK_E,
					LEVEL = 43,
					REGEN_GROUP_RATE = { {RANK_E, 100}, },	
					REGEN_MONSTER_GROUP = { 48, 50, 14, }, -- ����� ����������, ����� ��������, �ͽžƱ�
				},				
				{
					RANK = RANK_D,
					LEVEL = 45,
					REGEN_GROUP_RATE = { {RANK_D, 100}, },
					REGEN_MONSTER_GROUP = { 47, 69, }, -- ��ȭ�� ����������, ������ ��
				},
				{
					RANK = RANK_C,
					LEVEL = 47,
					REGEN_GROUP_RATE = { {RANK_C, 100}, },
					REGEN_MONSTER_GROUP = { 17, 63, }, -- �ذ������, ������ ���
				},
				{
					RANK = RANK_B,
					LEVEL = 49,
					REGEN_GROUP_RATE = { {RANK_B, 100}, },		
					REGEN_MONSTER_GROUP = { 58, 46, 68, },	-- ����� ����, �̴����̾��, ������ �帱��
				},
				{
					RANK = RANK_A,
					LEVEL = 51,
					REGEN_GROUP_RATE = { {RANK_A, 100}, },		
					REGEN_MONSTER_GROUP = { 66, 64, 45, },	-- ������ ��ũ����, ������ �����ô��, �̴Ͼ��̽���
				},
				{
					RANK = RANK_S,
					LEVEL = 53,
					REGEN_GROUP_RATE = { {RANK_S, 90}, {RANK_SS, 10}, },		
					REGEN_MONSTER_GROUP = { 59, 61, },		-- ���ݸ���, ���̾��
				},				
				{
					RANK = RANK_SS,
					LEVEL = 87,
					REGEN_GROUP_RATE = { {RANK_SS, 100}, },
					REGEN_MONSTER_GROUP = { 208, 208, },	--���ݸ���, ��ġ
				},               
			},
		},
	},
	

-- ���Ͼ�	
	{
		DUNGEON_ID = GC_GM_QUEST78,	-- ���� ID. ���Ͼ� ����� enum = 100
		
		-- � ���������� ����Ұ����� ����
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
		
		-- ��ũ�� ��������
		RANK_SCORE_INFO = 
		{
			-- ��ũ��, ����, ���� �ð�
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
			BOSS_REGEN_RANK = RANK_SS,  -- ���� ���� ��ȯ�� �ʿ��� ��ũ
			REGEN_WAIT_TIME = 18, -- ��ũ �޼��� ���� ���� ��ȯ���� �ɸ��� �ð�
			MIN_BOSS_REGEN_TIME = 120,	-- ���� �ּ� ��ȯ �ֱ�
			MAX_BOSS_REGEN_TIME = 240, -- ���� �ִ� ��ȯ �ֱ� ( ��ް� ������� ��ȯ�Ǵ� �ð� )
			--MAX_BOSS_REGEN_TIME = 180, -- ���� �ִ� ��ȯ �ֱ� ( ��ް� ������� ��ȯ�Ǵ� �ð� )
			
			-- ��ũ�� ���� ���� �׷� 
			-- SS���� ���� ������ SS�� �����ϸ� ��. ( SS��� ���� ���� ��ȯ�Ҷ� ��� ��� ���� �����ؼ� �����Ѵ�. )
			-- �������� �����ϸ� ������ ���߿� �ϳ��� ���´�, �������ϸ� �����Ȱ� �� ���´�.
			BOSS_MONSTER_GROUP = 
			{ 
				{ 
					RANK = RANK_F,
					RNADOM = FALSE, 
					LEVEL = 59,
					BOSS_LIST = { 189, }, -- �쵧
				},			
				{ 
					RANK = RANK_E,
					RNADOM = FALSE, 
					LEVEL = 61,
					BOSS_LIST = { 167, }, -- ��ũ�Ʒ�
				},
				{ 
					RANK = RANK_D,
					RNADOM = TRUE, 
					LEVEL = 63,
					BOSS_LIST = { 198, 197, }, -- ǻ��� ����, ��ũ ����
				},			
				{ 
					RANK = RANK_C,
					RNADOM = TRUE, 
					LEVEL = 65,
					BOSS_LIST = { 119, 120, }, -- �����ÿ�, ������
				},
				{ 
					RANK = RANK_B,
					RNADOM = TRUE, 
					LEVEL = 67,
					BOSS_LIST = { 144, }, -- ����
				},
				{ 
					RANK = RANK_A,
					RNADOM = TRUE, 
					LEVEL = 69,
					BOSS_LIST = { 129, }, -- ��Ÿ�ν�
				},
				{ 
					RANK = RANK_S,
					RNADOM = TRUE, 
					LEVEL = 71,
					BOSS_LIST = { 178, }, -- �丮��Ʈ
				},
				{ 
					RANK = RANK_SS,
					RNADOM = TRUE, 
					LEVEL = 82,
					BOSS_LIST = { 208, }, -- Ÿ���佺 P3
				},				
			},	-- 
			
		},			
		
		MONSTER_INFO = 
		{
			MONSTER_REGEN_TIME = 19, -- ���� ���� �ӵ�
			MAX_MONSTER_NUM = { 6, 8, 10, 12, 12, 12 }, -- ��Ƽ�� ���� �ִ� ����		
			
			START_MONSTER_LEVEL = 63,
			START_MONSTER_GROUP = { 114, 126, 127, 146 }, -- ���� ������ ���� �׷�
			
			-- ��ũ�� ���� ��ȯ ����Ʈ
			RANK_MONSTER_INFO = 
			{				
				-- ��ũ�� ��ȯ�׷� ���� �� ��ȯ�Ǵ� Ȯ��
				{
					RANK = RANK_F,
					LEVEL = 57,
					REGEN_GROUP_RATE = { {RANK_E, 100}, },	-- ��ȯ�� ���� ��ũ �׷� ( F����϶� F��ް� E����� ������ Ȯ���� ��ȯ�ȴ�. )
					REGEN_MONSTER_GROUP = { 200, 190, },	-- ������, DK-MARK2
				},
				{
					RANK = RANK_E,
					LEVEL = 59,
					REGEN_GROUP_RATE = { {RANK_E, 80}, {RANK_D, 20}, },	
					REGEN_MONSTER_GROUP = { 147, 148, 74, 75, },	-- �ν�, ������, ���ֹ� â��, ���ֹ� ����
				},				
				{
					RANK = RANK_D,
					LEVEL = 61,
					REGEN_GROUP_RATE = { {RANK_D, 85}, {RANK_C, 15}, },
					REGEN_MONSTER_GROUP = { 146, 165, },	-- ��ũ��, ����¡ ��ũ��
				},
				{
					RANK = RANK_C,
					LEVEL = 63,
					REGEN_GROUP_RATE = { {RANK_C, 85}, {RANK_D, 15}, },
					REGEN_MONSTER_GROUP = { 114,  127, },	-- ���ŵ��·�, ��ؽż�����
				},
				{
					RANK = RANK_B,
					LEVEL = 65,
					REGEN_GROUP_RATE = { {RANK_B, 80}, {RANK_C, 20}, },		
					REGEN_MONSTER_GROUP = { 126, 78, 77,  },	-- ��ؽŰ˼���, �̳�����, ���̽��̷���, 
				},
				{
					RANK = RANK_A,
					LEVEL = 67,
					REGEN_GROUP_RATE = { {RANK_A, 65 }, {RANK_B, 20}, {RANK_C, 10}, {RANK_D, 5}, },		
					REGEN_MONSTER_GROUP = {  76, 164, },	--   ��Ȧ��, ����¡���̹�����
				},
				{
					RANK = RANK_S,
					LEVEL = 69,
					REGEN_GROUP_RATE = { {RANK_S, 80}, {RANK_SS, 5}, {RANK_F, 5}, {RANK_A, 10},},		
					REGEN_MONSTER_GROUP = { 166, 150, },	-- ���ٸ���, ���׸�
				},				
				{
					RANK = RANK_SS,
					LEVEL = 69,
					REGEN_GROUP_RATE = { {RANK_S, 80}, {RANK_SS, 15}, },
					REGEN_MONSTER_GROUP = { 202, 203, 201, },	-- ��޾������, ���, ��Ÿ�Ͽ� ����
				},	
			},
		},
	},
	
	
-- ����	
	{
		DUNGEON_ID = GC_GM_QUEST79,	-- ���� ID. ���� ����� enum = 101
		
		-- � ���������� ����Ұ����� ����
		STAGE_INFO = 
		{
			"Infinity_GoblinLaborCamp_01.lua",
			"Infinity_UndergroundTunnel_01.lua",
			"Infinity_KungjiVillage_01.lua",
			"Infinity_MirageDesert_01.lua",
			"Thief_stage_01.lua",
			"PyramidOfSeht_Stage_03.lua",
		},
		
		-- ��ũ�� ��������
		RANK_SCORE_INFO = 
		{
			-- ��ũ��, ����, ���� �ð�
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
			BOSS_REGEN_RANK = RANK_SS,  -- ���� ���� ��ȯ�� �ʿ��� ��ũ
			REGEN_WAIT_TIME = 15, -- ��ũ �޼��� ���� ���� ��ȯ���� �ɸ��� �ð�
			MIN_BOSS_REGEN_TIME = 120,	-- ���� �ּ� ��ȯ �ֱ�
			MAX_BOSS_REGEN_TIME = 240, -- ���� �ִ� ��ȯ �ֱ� ( ��ް� ������� ��ȯ�Ǵ� �ð� )
			--MAX_BOSS_REGEN_TIME = 180, -- ���� �ִ� ��ȯ �ֱ� ( ��ް� ������� ��ȯ�Ǵ� �ð� )
			
			-- ��ũ�� ���� ���� �׷� 
			-- SS���� ���� ������ SS�� �����ϸ� ��. ( SS��� ���� ���� ��ȯ�Ҷ� ��� ��� ���� �����ؼ� �����Ѵ�. )
			-- �������� �����ϸ� ������ ���߿� �ϳ��� ���´�, �������ϸ� �����Ȱ� �� ���´�.
			BOSS_MONSTER_GROUP = 
			{ 
				{ 
					RANK = RANK_F,
					RNADOM = TRUE, 
					LEVEL = 75,
					BOSS_LIST = { 226, }, -- ����� ��
				},			
				{ 
					RANK = RANK_E,
					RNADOM = TRUE, 
					LEVEL = 76,
					BOSS_LIST = { 647, }, -- �ĵ彺���ǿ�
				},
				{ 
					RANK = RANK_D,
					RNADOM = FALSE, 
					LEVEL = 77,
					BOSS_LIST = { 245, }, -- ���̾�Ʈ �����ڵ�
				},			
				{ 
					RANK = RANK_C,
					RNADOM = TRUE, 
					LEVEL = 78,
					BOSS_LIST = { 221, }, -- �ϼ���Ʈ
				},
				{ 
					RANK = RANK_B,
					RNADOM = TRUE, 
					LEVEL = 79,
					BOSS_LIST = { 227, }, -- ���� ��
				},
				{ 
					RANK = RANK_A,
					RNADOM = TRUE, 
					LEVEL = 80,
					BOSS_LIST = { 246, }, -- ����귯
				},
				{ 
					RANK = RANK_S,
					RNADOM = TRUE, 
					LEVEL = 81,
					BOSS_LIST = { 864,  }, -- ī��Ʈ
				},
				{ 
					RANK = RANK_SS,
					RNADOM = TRUE, 
					LEVEL = 82,
					BOSS_LIST = { 215, }, -- ���½�
				},				
			},	-- 
			
		},			
		
		MONSTER_INFO = 
		{
			MONSTER_REGEN_TIME = 18, -- ���� ���� �ӵ�
			MAX_MONSTER_NUM = { 6, 8, 10, 12, 12, 12 }, -- ��Ƽ�� ���� �ִ� ����		
			
			START_MONSTER_LEVEL = 76,
			START_MONSTER_GROUP = { 212, 218, 211, 217 }, -- ���� ������ ���� �׷�
			
			-- ��ũ�� ���� ��ȯ ����Ʈ
			RANK_MONSTER_INFO = 
			{				
				-- ��ũ�� ��ȯ�׷� ���� �� ��ȯ�Ǵ� Ȯ��
				{
					RANK = RANK_F,
					LEVEL = 73,
					REGEN_GROUP_RATE = { {RANK_F, 100}, },
					REGEN_MONSTER_GROUP = { 219, },	-- �˹���
				},
				{
					RANK = RANK_E,
					LEVEL = 74,
					REGEN_GROUP_RATE = { {RANK_E, 100}, },	
					REGEN_MONSTER_GROUP = { 210, 216, },	-- ���൹���, �ϲ� ����
				},				
				{
					RANK = RANK_D,
					LEVEL = 75,
					REGEN_GROUP_RATE = { {RANK_D, 100}, },
					REGEN_MONSTER_GROUP = { 211, 217, },	-- ���൹����ο��, ��������
				},
				{
					RANK = RANK_C,
					LEVEL = 76,
					REGEN_GROUP_RATE = { {RANK_C, 100}, },
					REGEN_MONSTER_GROUP = { 212, 218, 644, },	--���൹����뿪��, �������, �ĵ���Į
				},
				{
					RANK = RANK_B,
					LEVEL = 77,
					REGEN_GROUP_RATE = { {RANK_B, 100}, },		
					REGEN_MONSTER_GROUP = { 222, 637, 638, },	-- ����, �縷 �� ����, �縷 ���� ����
				},
				{
					RANK = RANK_A,
					LEVEL = 78,
					REGEN_GROUP_RATE = { {RANK_A, 90}, {RANK_B, 10}, },
					REGEN_MONSTER_GROUP = { 645, 656, 225, },	-- �ĵ��Ͽ��, ��Ʈ ������, ����
				},
				{
					RANK = RANK_S,
					LEVEL = 79,
					REGEN_GROUP_RATE = { {RANK_S, 80}, {RANK_SS, 10}, {RANK_A, 10}, },		
					REGEN_MONSTER_GROUP = { 657, 659, 224,  },	--��Ʈ���̶�, �ƴ���, ������
				},				
				{
					RANK = RANK_SS,
					LEVEL = 79,
					REGEN_GROUP_RATE = { {RANK_S, 80}, {RANK_SS, 20},},
					REGEN_MONSTER_GROUP = { 244, 220,  },	-- �����ڵ�, �����ǽ�
				},	
			},
		},
	},
	
	
--���ɸ޵��
	{
		DUNGEON_ID = GC_GM_QUEST80,	-- ���� ID. ���ɸ޵�� ����� enum = 102
		
		-- � ���������� ����Ұ����� ����
		STAGE_INFO = 
		{
			"DwarvenBase_01.lua",
			"DwarfSupplyRoute_06.lua",
			"ThunderHammer_07.lua",
			"AncientDebris_02.lua",
			"Karuel_stage01.lua",
			"SlippedLandOfCownat_01.lua",
		},
		
		-- ��ũ�� ��������
		RANK_SCORE_INFO = 
		{
			-- ��ũ��, ����, ���� �ð�
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
			BOSS_REGEN_RANK = RANK_SS,  -- ���� ���� ��ȯ�� �ʿ��� ��ũ
			REGEN_WAIT_TIME = 18, -- ��ũ �޼��� ���� ���� ��ȯ���� �ɸ��� �ð�
			MIN_BOSS_REGEN_TIME = 120,	-- ���� �ּ� ��ȯ �ֱ�
			MAX_BOSS_REGEN_TIME = 240, -- ���� �ִ� ��ȯ �ֱ� ( ��ް� ������� ��ȯ�Ǵ� �ð� )
			--MAX_BOSS_REGEN_TIME = 180, -- ���� �ִ� ��ȯ �ֱ� ( ��ް� ������� ��ȯ�Ǵ� �ð� )
			
			-- ��ũ�� ���� ���� �׷� 
			-- SS���� ���� ������ SS�� �����ϸ� ��. ( SS��� ���� ���� ��ȯ�Ҷ� ��� ��� ���� �����ؼ� �����Ѵ�. )
			-- �������� �����ϸ� ������ ���߿� �ϳ��� ���´�, �������ϸ� �����Ȱ� �� ���´�.
			BOSS_MONSTER_GROUP = 
			{ 
				{ 
					RANK = RANK_F,
					RNADOM = TRUE, 
					LEVEL = 82,
					BOSS_LIST = { 250, }, -- �Ŀ��ź�
				},			
				{ 
					RANK = RANK_E,
					RNADOM = TRUE, 
					LEVEL = 83,
					BOSS_LIST = { 233, }, -- �����̴� ����ӽ�
				},
				{ 
					RANK = RANK_D,
					RNADOM = TRUE, 
					LEVEL = 84,
					BOSS_LIST = { 251, 252, }, -- ��Ʈ��Ű�� 1ȣ, ��Ʈ��Ű�� 2ȣ
				},			
				{ 
					RANK = RANK_C,
					RNADOM = TRUE, 
					LEVEL = 85,
					BOSS_LIST = { 671, 670, }, -- ������ �渶����, ������ ��˴���
				},
				{ 
					RANK = RANK_B,
					RNADOM = TRUE, 
					LEVEL = 86,
					BOSS_LIST = { 278, }, -- �Ʒ�
				},
				{ 
					RANK = RANK_A,
					RNADOM = TRUE, 
					LEVEL = 87,
					BOSS_LIST = { 307, }, -- �Ʒ�, ����
				},
				{ 
					RANK = RANK_S,
					RNADOM = TRUE, 
					LEVEL = 88,
					BOSS_LIST = { 580, }, -- �޸��� P4
				},
				{ 
					RANK = RANK_SS,
					RNADOM = TRUE, 
					LEVEL = 89,
					BOSS_LIST = { 308, }, -- ���
				},				
			},	-- 
			
		},			
		
		MONSTER_INFO = 
		{
			MONSTER_REGEN_TIME = 19, -- ���� ���� �ӵ�
			MAX_MONSTER_NUM = { 6, 8, 10, 12, 12, 12 }, -- ��Ƽ�� ���� �ִ� ����		
			
			START_MONSTER_LEVEL = 83,
			START_MONSTER_GROUP = { 249, 230, 231 }, -- ���� ������ ���� �׷�
			
			-- ��ũ�� ���� ��ȯ ����Ʈ
			RANK_MONSTER_INFO = 
			{				
				-- ��ũ�� ��ȯ�׷� ���� �� ��ȯ�Ǵ� Ȯ��
				{
					RANK = RANK_F,
					LEVEL = 80,
					REGEN_GROUP_RATE = { {RANK_E, 100}, },
					REGEN_MONSTER_GROUP = { 231, 258, 248, 230,  },	-- �Ҹ�ġ ��ġ��, ����ظӼ��Ѻ�, ��ö����� ����, �Ҹ�ġ ��������
				},
				{
					RANK = RANK_E,
					LEVEL = 81,
					REGEN_GROUP_RATE = { {RANK_E, 90}, {RANK_F, 10}, },	
					REGEN_MONSTER_GROUP = { 228,  257, },	-- ���潣 ������, ��ũ���ð���
				},				
				{
					RANK = RANK_D,
					LEVEL = 82,
					REGEN_GROUP_RATE = { {RANK_D, 80},{RANK_F, 10}, {RANK_E, 10}, },
					REGEN_MONSTER_GROUP = { 229, },	--  ���潣�ϻ���, 
				},
				{
					RANK = RANK_C,
					LEVEL = 83,
					REGEN_GROUP_RATE = { {RANK_C, 50}, {RANK_F, 15},{RANK_D, 35},},
					REGEN_MONSTER_GROUP = { 249,  },	-- ��ö����� ������
				},
				{
					RANK = RANK_B,
					LEVEL = 84,
					REGEN_GROUP_RATE = { {RANK_B, 50}, {RANK_C, 15}, {RANK_D, 15}, {RANK_E, 20}, },		
					REGEN_MONSTER_GROUP = { 573,  260, },	-- ��ũ���� ô�ĺ�, ����ظ� ��ȣ��
				},
				{
					RANK = RANK_A,
					LEVEL = 85,
					REGEN_GROUP_RATE = { {RANK_B, 40}, {RANK_A, 60}, },		
					REGEN_MONSTER_GROUP = { 574,  305, 247, },	-- ��ũ���� �ϻ���, �������, �Ҹ�ġ�帱��
				},
				{
					RANK = RANK_S,
					LEVEL = 86,
					REGEN_GROUP_RATE = { {RANK_S, 65}, {RANK_SS, 20}, {RANK_A, 15},},		
					REGEN_MONSTER_GROUP = {  306, 590, },	--  �����������Ŀ, ���� ������
				},				
				{
					RANK = RANK_SS,
					LEVEL = 86,
					REGEN_GROUP_RATE = { {RANK_S, 50}, {RANK_SS, 50}, },
					REGEN_MONSTER_GROUP = { 575, 592, 576, },	-- ��ũ���� �����ü�, ��, ��ũ���� �⸶��
				},	
			},
		},
	},
	
}

