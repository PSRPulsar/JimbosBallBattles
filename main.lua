
local suits = {'hearts', 'clubs', 'diamonds', 'spades'}
local ranks = {'Jack', 'Queen', "King"}

SMODS.Atlas{  
    key = 'jbb_atlas_lc',
    px = 71,
    py = 95,
    path = 'hbb_lc.png'
}

SMODS.Atlas{  
    key = 'jbb_atlas_hc',
    px = 71,
    py = 95,
    path = 'hbb_hc.png'
}

SMODS.Atlas{  
    key = 'jbb_atlas_ball_lc',
    px = 71,
    py = 95,
    path = 'hbbball_lc.png'
}

SMODS.Atlas{  
    key = 'jbb_atlas_ball_hc',
    px = 71,
    py = 95,
    path = 'hbbball_hc.png'
}

for _, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_jbb_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = 'jbb_atlas_lc',
        hc_atlas = 'jbb_atlas_hc',
        loc_txt = {
            ['en-us'] = "Ham's Ball Battles"
        },
        posStyle = 'deck'
    }
end

for _, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_jbb_ball_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = 'jbb_atlas_ball_lc',
        hc_atlas = 'jbb_atlas_ball_hc',
        loc_txt = {
            ['en-us'] = "Ham's Ball Battles (Weaponballs)"
        },
        posStyle = 'deck'
    }
end