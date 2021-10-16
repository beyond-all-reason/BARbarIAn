--
-- Custom Options Definition Table format
--
-- A detailed example of how this format works can be found
-- in the spring source under:
-- AI/Skirmish/NullAI/data/AIOptions.lua
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local options = {
	{ -- section
		key    = 'performance',
		name   = 'Performance Relevant Settings',
		desc   = 'These settings may be relevant for both CPU usage and AI difficulty.',
		type   = 'section',
	},
	{ -- bool
		key     = 'cheating',
		name    = 'LOS cheating',
		desc    = 'Enable LOS cheating',
		type    = 'bool',
		section = 'performance',
		def     = false,
	},
	{ -- bool
		key     = 'ally_aware',
		name    = 'Alliance awareness',
		desc    = 'Consider allies presence while making expansion desicions',
		type    = 'bool',
		section = 'performance',
		def     = true,
	},
	{ -- bool
		key     = 'comm_merge',
		name    = 'Merge neighbour BARbarIAns',
		desc    = 'Merge spatially close BARbarIAn ally commanders',
		type    = 'bool',
		section = 'performance',
		def     = true,
	},

	{ -- string
		key     = 'disabledunits',
		name    = 'Disabled units',
		desc    = 'Disable usage of specific units.\nSyntax: armwar+armpw+raveparty\nkey: disabledunits',
		type    = 'string',
		def     = '',
	},

	{ -- list
		key     = 'profile',
		name    = 'Difficulty profile',
		desc    = 'Difficulty or play-style of AI (see init.as).\nkey: profile',
		type    = 'list',
		def     = 'flaka',
		items   = {
			{
				key  = 'dev',
				name = 'Bleeding edge testing AI',
				desc = 'Bleeding edge testing config',
			},
			{
				key  = 'flaka',
				name = 'Hard | Balanced',
				desc = 'Difficulty: Hard |Playstyle: Balanced |Made by Flaka',
			},
			{
				key  = 'easy',
				name = 'Easy | Slowpoke',
				desc = 'Difficulty: Easy |Playstyle: Podpivas',
			},
		},
	},
}

return options
