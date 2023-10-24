local Common = gFunc.LoadFile('Common.lua')

local profile = {};

profile.Sets = {
    Lockstyle = {
        -- Head = 'Chef\'s Hat',
        -- Body = 'Culinarian\'s Apron',
        -- Hands = 'Dusk Gloves',
        -- Legs = 'Magna M Chausses',
        -- Feet = 'Duelist\'s Boots',
    },
    ClubShield = {
        Main = 'Octave Club',
        Sub = 'Genbu\'s Shield',
    },
    ClubClub = {
        Main = 'Purgatory Mace',
        Sub = 'Octave Club',
    },
    Staff = {
        Main = 'Earth Staff',
    },
    MeleeDamage = {
        Ammo = 'Olibanum Sachet',
        Head = 'Nashira Turban',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Coral Earring',
        Body = 'Noble\'s Tunic',
        Hands = 'Blessed Mitts',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Cheviot Cape',
        Waist = 'Swift Belt',
        Legs = 'Blessed Trousers',
        Feet = 'Blessed Pumps',
    },
    MageTank = {
        Ammo = 'Olibanum Sachet',
        Head = 'Duelist\'s Chapeau',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Coral Earring',
        Body = 'Scorpion Harness',
        Hands = 'Warlock\'s Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Duelist\'s Tights',
        Feet = 'Warlock\'s Boots',
    },
    MeleeSpellTank = {

    },
    MaxMP = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Zenith Crown',
        Neck = 'Holy Phial',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Astral Earring',
        Body = 'Noble\'s Tunic',
        Hands = 'Zenith Mitts',
        Ring1 = 'Astral Ring',
        Ring2 = 'Astral Ring',
        Back = 'Errant Cape',
        Waist = 'Cleric\'s Belt',
        Legs = 'Zenith Slacks',
        Feet = 'Rostrum Pumps'
    },

    -------------------------------

    Resting = {
        Main = 'Dark Staff',
    },
    HealingSkill = {
        Legs = 'Warlock\'s Tights',
        Body = 'Duelist\'s Tabard'
    },
    EnhancingSkill = {
        Feet = 'Cleric\'s Duckbills',
    },
    EnfeeblingSkill = {
        Head = 'Duelist\'s Chapeau',
        Body = 'Healer\'s Bliaut',
    },
    ElementalSkill = {
        Head = 'Warlock\'s Chapeau',
        Legs = 'Duelist\'s Tights',
    },
    DivineSkill = {
        Legs = 'Healer\'s Pantaln.'
    },
    MagicAttack = {
        Ear1 = 'Moldavite Earring',
        Hands = 'Zenith Mitts'
    },
    CurePotency = {

    },
    Mnd = {
        Head = 'Zenith Crown',
        Neck = 'Holy Phial',
        Body = 'Errant Hpl.',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Sapphire Ring',
        Ring2 = 'Sapphire Ring',
        Legs = 'Errant Slops',
        Back = 'Rainbow Cape',
        Feet = 'Mahatma Pigaches',
        Waist = 'Cleric\'s Belt',
    },
    Int = {
        Head = 'Zenith Crown',
        Neck = 'Philomath Stole',
        Body = 'Errant Hpl.',
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
        Hands = 'Errant Cuffs',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Legs = 'Errant Slops',
        Feet = 'Healer\'s Duckbills',
    },
    Hexastrike = {
        Head = 'Voyager Sallet',
        Neck = 'Spike Necklace',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'Blessed Bliaut',
        Hands = 'Healer\'s Mitts',
        Ring1 = 'Ruby Ring',
        Ring2 = 'Ruby Ring',
        Back = 'Amemet Mantle',
        Waist = 'Friar\'s Rope',
        Legs = 'Blessed Trousers',
        Feet = 'Mahatma Pigaches'
    },
    Starlight = {
        Neck = 'Prudence Torque'
    },
    Recast = {
        Head = 'Nashira Turban',
        Ear1 = 'Loquac. Earring',
        Hands = 'Blessed Mitts',
        Waist = 'Swift Belt',
        Legs = 'Blessed Trousers',
        Feet = 'Blessed Pumps'
    },
    Interruption = {
        Feet = 'Healer\'s Duckbills',
    },
    Sneak = {
        Back = 'Skulker\'s Cape',
        Feet = 'Dream Boots +1'
    },
    Invisible = {
        Hands = 'Dream Mittens +1',
        Back = 'Skulker\'s Cape'
    },
    Charm = {
        Main = 'Light Staff',
        Head = 'Noble\'s Ribbon',
        Neck = 'Bird Whistle',
        Ear1 = 'Trimmer\'s Earring',
        Ring1 = 'Angel\'s Ring',
        Ring2 = 'Angel\'s Ring',
        Back = 'Jester\'s Cape +1',
        Waist = 'Corsette +1',
    }
};
profile.SetEquipOrder = {
    HealingSkill = {
        'Legs',     -- Warlock's Tights
    },
    EnhancingSkill = {
        'Hands',    -- Duelist's Gloves
        'Legs',     -- Warlock's Tights
    },
    EnfeeblingSkill = {
        'Feet',     -- Cleric's Duckbills
    },
    DivineSkill = {
        'Legs'      -- Healer\'s Pantaloons'
    },
    MagicAttack = {
        'Ear1',     -- Moldavite Earring
        'Hands',    -- Zenith Mitts
    },
    Mnd = {
        'Waist',     -- Cleric\'s Belt
        'Head',      -- Zenith Crown
        'Neck',      -- Holy Phial
        'Body',      -- Errant Hpl.
        'Feet',      -- Mahatma Pigaches
        'Hands',     -- Devotee's Mitts
        'Legs',      -- Errant Slops
        'Ring1',     -- Sapphire Ring
        'Ring2',     -- Sapphire Ring
        'Back',      -- Rainbow Cape
        'Ear1',      -- Geist Earring
        'Ear2',      -- Geist Earring
    },
    Int = {
        'Back',     -- Rainbow Cape
        'Ear1',     -- Morion Earring
        'Ear2',     -- Morion Earring
        'Neck',     -- Philomath Stole
        'Hands',    -- Errant Cuffs
        'Ring1',    -- Diamond Ring
        'Ring2',    -- Diamond Ring
        'Body',     -- Errant Hpl.
        'Legs',     -- Errant Slops
        'Feet',     -- Wise Pigaches
        'Head',     -- Zenith Crown
    },
    Recast = {
        'Ear1',      -- Loquac. Earring
        'Hands',     -- Blessed Mitts
        'Waist',     -- Swift Belt
        'Head',      -- Nashira Turban
        'Legs',      -- Blessed Trousers
        'Feet',      -- Blessed Pumps
    },
    Interruption = {
        'Feet'      -- Healer's Duckbills
    },
    Sneak = {
        'Back',     -- Skulker's Cape
        'Feet'      -- Dream Boots +1
    },
    Invisible = {
        'Hands',    -- Dream Mittens +1
        'Back'      -- Skulker's Cape
    },
    Charm = {
        'Main',     -- Light Staff'
        'Head',     -- Noble's Ribbon'
        'Body',     -- Warlock's Tabard'
        'Neck',     -- Bird Whistle'
        'Ring1',    -- Loyalty Ring'
        'Ring2',    -- Loyalty Ring'
        'Back',     -- Jester's Cape +1'
        'Waist',    -- Corsette +1
    },
    SwordWeaponskillStr = {

    },
    SwordWeaponskillStrMnd = {

    },
    Starlight = {

    }
}
profile.Stance = 'MaxMP';
profile.WeaponStance = 'Staff';
profile.workingCurrentMissingMp = 0;
profile.workingSet = {};
profile.Packer = {
};

local PreventWeaponSwapStances = T{
    'ClubClub',
    'ClubShield',
};

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    -- gFunc.LockStyle(profile.Sets.Lockstyle)
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    local command = args[1]
    if (command == 'ClubClub' or command == 'ClubShield' or command == 'Staff') then 
        profile.WeaponStance = command;
    end
    if (command == 'MeleeDamage' or command == 'MageTank' or command == 'MageSpellTank' or command == 'MaxMP') then
        profile.Stance = command;
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    if (player.Status == 'Resting') then
        local missingMp = player.MaxMP - player.MP;
        gFunc.EquipSet(profile.Sets.Resting);
        if (profile.Stance == 'MaxMP' and missingMp <= 125) then
            gFunc.EquipSet(profile.Sets.MaxMP);
        end
    else
        profile.workingSet = profile.Sets[profile.WeaponStance];
        Common.CombineSets(profile, profile.Sets[profile.Stance], true);
        gFunc.EquipSet(profile.workingSet);
        profile.workingSet = {};
    end
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    profile.workingCurrentMissingMp = 0;
    profile.workingSet = {};
    local missingMp = gData.GetPlayer().MaxMP - gData.GetPlayer().MP;
    gFunc.EquipSet(profile.workingSet);
    profile.workingCurrentMissingMp = 0;
    profile.workingSet = {};
end

profile.HandleMidcast = function()
    local missingMp = gData.GetPlayer().MaxMP - gData.GetPlayer().MP;
    local action = gData.GetAction();
    local equipPrioritySets = Common.SpellPriorityTypes[Common.SpellTypes[action.Type][action.Name]];
    for key, value in pairs(equipPrioritySets) do
        if (value == 'Staff') then
            if (PreventWeaponSwapStances:contains(profile.WeaponStance)) then goto continue end
            profile.workingSet['Main'] = Common.ElementalStaffTable[action.Element];
            goto continue
        end
        if (profile.Stance == 'MaxMP') then
            Common.BuildMaxMpSet(profile, missingMp, value, false);
        else
            Common.CombineSets(profile, profile.Sets[value], false);
        end
        ::continue::
    end
    gFunc.EquipSet(profile.workingSet);
    profile.workingCurrentMissingMp = 0;
    profile.workingSet = {};
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    if (action.Name == 'Hexastrike') then
        gFunc.EquipSet(profile.Sets.Hexastrike);
    end
end

return profile;