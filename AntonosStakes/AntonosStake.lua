--- STEAMODDED HEADER
--- MOD_NAME: Antonos Stakes
--- MOD_ID: AntonosStake
--- PREFIX: AntonosStake
--- MOD_AUTHOR: [Antonos]
--- MOD_DESCRIPTION: (REQUIRES Talisman) Adds simple stakes that increase ante scaling. Recommended for crazy modpacks. You can change each stake's ante scaling in the AntonosStake.lua
--- BADGE_COLOUR: 990000
--- VERSION: Beta 1.0
--- PRIORITY: -1
--- DEPENDENCIES: [Talisman>=2.0.0-beta5]



SMODS.Atlas({
    key = 'A_stakes',
    path = 'A_chips.png',
    px = '29',
    py = '29'
})

SMODS.Atlas({
    key = 'stickers',
    path = 'A_stickers.png',
    px = 71,
    py = 95
})

SMODS.Stake({
    key = "A_white",
    applied_stakes = {},
    above_stake = 'gold',
    unlocked_stake = "AntonosStake_A_red",
    atlas = 'A_stakes',
    pos = {x = 0, y = 0},
    sticker_pos = {x = 1, y = 0},
    sticker_atlas = 'stickers',
    loc_txt = {
        name = "Antonos White Stake",
        text = {
            "Required score scales",
            "faster for each {C:attention}Ante",
            "{s:0.8,C:inactive}(Vanilla Disabled){}",
        }
    },    

    modifiers = function()
        G.GAME.modifiers.scaling = (G.GAME.modifiers.scaling or 1) + 1
    end,
}
)

SMODS.Stake {
    name = "Antonos Red Stake",
    key = "A_red",
    above_stake = 'AntonosStake_A_white',
    unlocked_stake = "AntonosStake_A_green",
    applied_stakes = { "AntonosStake_A_white" },
    atlas = 'A_stakes',
    sticker_atlas = 'stickers',
    pos = { x = 1, y = 0 },
    sticker_pos = { x = 2, y = 0 },
    modifiers = function()
        G.GAME.modifiers.scaling = (G.GAME.modifiers.scaling or 1) + 1
    end,
    colour = G.C.RED,
    loc_txt = {
        name = "Antonos Red Stake",
        text = {
            "Required score scales",
            "faster for each {C:attention}Ante",
            "{s:0.8,C:inactive}(Vanilla Disabled){}",
        }
    }
}

SMODS.Stake {
    name = "Antonos Green Stake",
    key = "A_green",
    above_stake = 'AntonosStake_A_red',
    unlocked_stake = "AntonosStake_A_black",
    applied_stakes = { "AntonosStake_A_red" },
    atlas = 'A_stakes',
    sticker_atlas = 'stickers',
    pos = { x = 2, y = 0 },
    sticker_pos = { x = 3, y = 0 },
    modifiers = function()
        G.GAME.modifiers.scaling = (G.GAME.modifiers.scaling or 1) + 1
    end,
    colour = G.C.GREEN,
    loc_txt = {
        name = "Antonos Green Stake",
        text = {
            "Required score scales",
            "faster for each {C:attention}Ante",
            "{s:0.8,C:inactive}(Vanilla Disabled){}",
        }
    }
}

SMODS.Stake {
    name = "Antonos Black Stake",
    key = "A_black",
    above_stake = 'AntonosStake_A_green',
    unlocked_stake = "AntonosStake_A_blue",
    applied_stakes = { "AntonosStake_A_green" },
    atlas = 'A_stakes',
    sticker_atlas = 'stickers',
    pos = { x = 4, y = 0 },
    sticker_pos = { x = 0, y = 1 },
    modifiers = function()
        G.GAME.modifiers.scaling = (G.GAME.modifiers.scaling or 1) + 1
    end,
    colour = G.C.BLACK,
    loc_txt = {
        name = "Antonos Black Stake",
        text = {
            "Required score scales",
            "faster for each {C:attention}Ante",
            "{s:0.8,C:inactive}(Vanilla Disabled){}",
        }
    }
}

SMODS.Stake {
    name = "Antonos Blue Stake",
    key = "A_blue",
    above_stake = 'AntonosStake_A_black',
    unlocked_stake = "AntonosStake_A_purple",
    applied_stakes = { "AntonosStake_A_black" },
    atlas = 'A_stakes',
    sticker_atlas = 'stickers',
    pos = { x = 3, y = 0 },
    sticker_pos = { x = 4, y = 0 },
    modifiers = function()
        G.GAME.modifiers.scaling = (G.GAME.modifiers.scaling or 1) + 1
    end,
    colour = G.C.BLUE,
    loc_txt = {
        name = "Antonos Blue Stake",
        text = {
            "Required score scales",
            "faster for each {C:attention}Ante",
            "{s:0.8,C:inactive}(Vanilla Disabled){}",
        }
    }
}

SMODS.Stake {
    name = "Antonos Purple Stake",
    key = "A_purple",
    above_stake = 'AntonosStake_A_blue',
    unlocked_stake = "AntonosStake_A_orange",
    applied_stakes = { "AntonosStake_A_blue" },
    atlas = 'A_stakes',
    sticker_atlas = 'stickers',
    pos = { x = 0, y = 1 },
    sticker_pos = { x = 1, y = 1 },
    modifiers = function()
        G.GAME.modifiers.scaling = (G.GAME.modifiers.scaling or 1) + 1
    end,
    colour = G.C.PURPLE,
    loc_txt = {
        name = "Antonos Purple Stake",
        text = {
            "Required score scales",
            "faster for each {C:attention}Ante",
            "{s:0.8,C:inactive}(Vanilla Disabled){}",
        }
    }
}

SMODS.Stake {
    name = "Antonos Orange Stake",
    key = "A_orange",
    above_stake = 'AntonosStake_A_purple',
    unlocked_stake = "AntonosStake_A_gold",
    applied_stakes = { "AntonosStake_A_purple" },
    atlas = 'A_stakes',
    sticker_atlas = 'stickers',
    pos = { x = 1, y = 1 },
    sticker_pos = { x = 2, y = 1 },
    modifiers = function()
        G.GAME.modifiers.scaling = (G.GAME.modifiers.scaling or 1) + 1
    end,
    colour = G.C.ORANGE,
    loc_txt = {
        name = "Antonos Orange Stake",
        text = {
            "Required score scales",
            "faster for each {C:attention}Ante",
            "{s:0.8,C:inactive}(Vanilla Disabled){}",
        }
    }
}

SMODS.Stake {
    name = "Antonos Gold Stake",
    key = "A_gold",
    above_stake = 'AntonosStake_A_orange',
    unlocked_stake = "AntonosStake_A_death",
    applied_stakes = { "AntonosStake_A_orange" },
    atlas = 'A_stakes',
    sticker_atlas = 'stickers',
    shiny = true,
    pos = { x = 2, y = 1 },
    sticker_pos = { x = 3, y = 1 },
    modifiers = function()
        G.GAME.modifiers.scaling = (G.GAME.modifiers.scaling or 1) + 1
    end,
    colour = G.C.GOLD,
    loc_txt = {
    name = "Antonos Gold Stake",
    text = {
        "Required score scales",
        "faster for each {C:attention}Ante",
        "{s:0.8,C:inactive}(Vanilla Disabled){}",
    }
}
}

SMODS.Stake {
    name = "Antonos Death Stake",
    key = "A_death",
    above_stake = 'AntonosStake_A_gold',
    applied_stakes = { "AntonosStake_A_gold" },
    atlas = 'A_stakes',
    sticker_atlas = 'stickers',
    shiny = true,
    pos = { x = 4, y = 1 },
    sticker_pos = { x = 4, y = 1 },
    modifiers = function()
        G.GAME.modifiers.scaling = (G.GAME.modifiers.scaling or 1) + 5
    end,
    colour = G.C.GOLD,
    loc_txt = {
    name = "Antonos Death Stake",
    text = {
        "Required score scales",
        "faster for each {C:attention}Ante",
        "{s:0.8,C:inactive}(Vanilla Disabled){}",
    }
}
}
