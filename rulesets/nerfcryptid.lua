MP.Ruleset({
	key = "nerfcryptid",
	multiplayer_content = true,
	standard = true,
	banned_jokers = {
		"j_mp_speedrun",
		"j_mp_conjoined_joker",
		"j_hanging_chad",
		"j_cry_canvas",
		"j_cry_googol_play",
		"j_cry_night",
		"j_cry_starfruit",
		"j_cry_pickle",
		"j_cry_universe",
		"j_cry_coin",
		"j_cry_jtron",
		"j_cry_astral_bottle",
		"j_cry_astral_bottle_mainline",
		"j_cry_necromancer",
		"j_cry_pity_prize",
		"j_cry_trick_or_treat",
		"j_cry_sock_and_sock",
		"j_cry_Scalae",
		"j_cry_iterum",
		"j_cry_tenebris",
		"j_cry_universum",
		"j_cry_stella_mortis",
		"j_cry_exponentia",
		"j_cry_speculo",
		"j_cry_crustulum",
		"j_cry_circulus_pistoris",
		"j_cry_primus",
		"j_cry_equilib",
		"j_cry_facile",
		"j_cry_energia",
		"j_cry_duplicare",
		"j_cry_formidiulosus",
		"j_cry_mprime",
		"j_cry_copypaste",
		"j_mp_bloodstone",
		"j_mp_bloodstone2"

	},
	banned_consumables = {
		"c_justice",
		"c_cry_hook",
		"c_cry_revert",
		"c_cry_instability",
		"c_cry_gateway",
		"c_cry_pointer",
		"c_cry_ritual",
		"c_cry_crash"
	},
	banned_vouchers = {},
	banned_enhancements = {
        "m_cry_abstract"
    },
	banned_tags = {
        "tag_cry_astral",
        "tag_cry_gambler"
    },
	banned_blinds = {
        "bl_cry_landlord"
    },
	reworked_jokers = {
		"j_mp_hanging_chad",
	},
	reworked_consumables = {},
	reworked_vouchers = {},
	reworked_enhancements = {
		"m_glass",
	},
	reworked_tags = {},
	reworked_blinds = {},
	create_info_menu = function()
		return {
			{
				n = G.UIT.R,
				config = {
					align = "tm",
				},
				nodes = {
					MP.UI.BackgroundGrouping(localize("k_has_multiplayer_content"), {
						{
							n = G.UIT.T,
							config = {
								text = localize("k_yes"),
								scale = 0.8,
								colour = G.C.GREEN,
							},
						},
					}, { col = true, text_scale = 0.6 }),
					{
						n = G.UIT.C,
						config = {
							minw = 0.1,
							minh = 0.1,
						},
					},
					MP.UI.BackgroundGrouping(localize("k_forces_lobby_options"), {
						{
							n = G.UIT.T,
							config = {
								text = localize("k_no"),
								scale = 0.8,
								colour = G.C.RED,
							},
						},
					}, { col = true, text_scale = 0.6 }),
					{
						n = G.UIT.C,
						config = {
							minw = 0.1,
							minh = 0.1,
						},
					},
					MP.UI.BackgroundGrouping(localize("k_forces_gamemode"), {
						{
							n = G.UIT.T,
							config = {
								text = localize("k_no"),
								scale = 0.8,
								colour = G.C.RED,
							},
						},
					}, { col = true, text_scale = 0.6 }),
				},
			},
			{
				n = G.UIT.R,
				config = {
					minw = 0.05,
					minh = 0.05,
				},
			},
			{
				n = G.UIT.R,
				config = {
					align = "cl",
					padding = 0.1,
				},
				nodes = {
					{
						n = G.UIT.T,
						config = {
							text = localize("k_traditional_description"),
							scale = 0.6,
							colour = G.C.UI.TEXT_LIGHT,
						},
					},
				},
			},
		}
	end,
	force_lobby_options = function(self)
		MP.LOBBY.config.timer = false
		return false
	end,
}):inject()
