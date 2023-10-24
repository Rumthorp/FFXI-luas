local Common = gFunc.LoadFile('Common.lua')

local profile = {};

profile.Sets = {
    Lockstyle = {
        Head = 'Duelist\'s Chapeau',
        Body = 'Culinarian\'s Apron',
        Hands = 'Dusk Gloves',
        Legs = 'Zenith Slacks',
        Feet = 'Duelist\'s Boots',
    },
    SwordClub = {
        Main = 'Enhancing Sword',
        Sub = 'Octave Club',
    },
    DaggerClub = {
        
    },
    ClubSword = {
        Main = 'Octave Club',
        Sub = 'Enhancing Sword',
    },
    ClubShield = {
        Main = 'Octave Club',
        Sub = 'Genbu\'s Shield',
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
        Body = 'Scorpion Harness',
        Hands = 'Ogre Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Fencer\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Duelist\'s Tights',
        Feet = 'Ogre Ledelsens',
    },
    MageDefense = {
        Ammo = 'Olibanum Sachet',
        Head = 'Duelist\'s Chapeau',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Coral Earring',
        Body = 'Scorpion Harness',
        Hands = 'Duelist\'s Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Duelist\'s Tights',
        Feet = 'Warlock\'s Boots',
    },
    MeleeTank = {
        Ammo = 'Olibanum Sachet',
        Head = 'Darksteel Cap +1',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Drone Earring',
        Body = 'Dst. Harness +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Sattva Ring',
        Ring2 = 'Jelly Ring',
        Back = 'Cheviot Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Dst. Subligar +1',
        Feet = 'Dst. Leggings +1',
    },
    MageTank = {

    },
    MaxMP = {
        Ammo = 'Hedgehog Bomb',
        Neck = 'Holy Phial',
        Head = 'Duelist\'s Chapeau',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Astral Earring',
        Body = 'Blue Cotehardie',
        Hands = 'Zenith Mitts',
        Ring1 = 'Astral Ring',
        Ring2 = 'Astral Ring',
        Back = 'Errant Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Zenith Slacks',
        Feet = 'Mahatma Pigaches',
    },
    SpellAcc = {
        -- Ammo = 'Hedgehog Bomb',
        -- Neck = 'Holy Phial',
        -- Head = 'Duelist\'s Chapeau',
        -- Ear1 = 'Loquac. Earring',
        -- Ear2 = 'Astral Earring',
        -- Body = 'Blue Cotehardie',
        -- Hands = 'Zenith Mitts',
        -- Ring1 = 'Astral Ring',
        -- Ring2 = 'Astral Ring',
        -- Back = 'Errant Cape',
        -- Waist = 'Hierarch Belt',
        -- Legs = 'Zenith Slacks',
        -- Feet = 'Mahatma Pigaches',
    },
    YellowHP = {
        Head = 'Zenith Crown',
        Neck = 'Evasion Torque',
        Ear2 = 'Astral Earring',
        Body = 'Blue Cotehardie',
        Hands = 'Zenith Mitts',
        Ring1 = 'Astral Ring',
        Ring2 = 'Astral Ring',
        Back = 'Rainbow Cape',
        Legs = 'Zenith Slacks',
        Feet = 'Mahatma Pigaches',
    },
    Resting = {
        Main = 'Dark Staff',
        Body = 'Errant Hpl.',
    },
    IdleStationary = {
        Hands = 'Dusk Gloves',
    },

    -------------------------------

    FastCast = {
        Head = 'Warlock\'s Chapeau',
        Ear1 = 'Loquac. Earring',
        Body = 'Duelist\'s Tabard'        
    },
    Resting = {
        Main = 'Dark Staff',
        Body = 'Errant Hpl.',
    },
    HealingSkill = {
        Legs = 'Warlock\'s Tights',
        Body = 'Duelist\'s Tabard'
    },
    EnhancingSkill = {
        Hands = 'Duelist\'s Gloves',
        Legs = 'Warlock\'s Tights',
    },
    EnfeeblingSkill = {
        Head = 'Duelist\'s Chapeau',
        Body = 'Warlock\'s Tabard',
    },
    ElementalSkill = {
        Head = 'Warlock\'s Chapeau',
        Legs = 'Duelist\'s Tights',
    },
    DarkSkill = {

    },
    MagicAttack = {
        Ear1 = 'Moldavite Earring',
        Hands = 'Zenith Mitts',
        Feet = 'Duelist\'s Boots',
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
        Waist = 'Friar\'s Rope',
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
        Feet = 'Wise Pigaches',
    },
    Str = {
        Head = 'Voyager Sallet',
        Neck = 'Spike Necklace',
        Ear1 = 'Spike Earring',
        Ear2 = 'Coral Earring',
        Body = 'Blue Cotehardie',
        Hands = 'Ogre Gloves',
        Ring1 = 'Ruby Ring',
        Ring2 = 'Ruby Ring',
        Back = 'Amemet Mantle',
        Waist = 'Warwolf Belt',
        Feet = 'Ogre Ledelsens'
    },
    Recast = {
        Head = 'Warlock\'s Chapeau',
        Body = 'Duelist\'s Tabard',
        Hands = 'Dusk Gloves',
        Waist = 'Swift Belt',
    },
    Interruption = {
        Body = 'Warlock\'s Tabard',
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
        Body = 'Warlock\'s Tabard',
        Neck = 'Bird Whistle',
        Ring1 = 'Angel\'s Ring',
        Ring2 = 'Angel\'s Ring',
        Back = 'Jester\'s Cape +1',
        Waist = 'Corsette +1',
    }
};
profile.SetEquipOrder = {
    FastCast = {
        'Body',     -- Duelist's Tabard  
        'Head',     -- Warlock's Chapeau
        'Ear1',     -- Loquacious Earring
    },
    HealingSkill = {
        'Legs',     -- Warlock's Tights
    },
    EnhancingSkill = {
        'Hands',    -- Duelist's Gloves
        'Legs',     -- Warlock's Tights
    },
    EnfeeblingSkill = {
        'Head',     -- Duelist's Chapeau
        'Body',     -- Warlock's Tabard
    },
    ElementalSkill = {
        'Head',     -- Warlock's Chapeau
        'Legs',     -- Duelist's Tights
    },
    DarkSkill = {

    },
    MagicAttack = {
        'Ear1',     -- Moldavite Earring
        'Feet',     -- Duelist\'s Boots
        'Hands',    -- Zenith Mitts
    },
    Mnd = {
        'Feet',     -- Mahatma Pigaches
        'Back',     -- Rainbow Cape
        'Ear1',     -- Geist Earring
        'Ear2',     -- Geist Earring
        'Neck',     -- Holy Phial
        'Hands',    -- Devotee's Mitts
        'Body',     -- Errant Hpl.
        'Legs',     -- Errant Slops
        'Ring1',    -- Sapphire Ring
        'Ring2',    -- Sapphire Ring
        'Head',     -- Zenith Crown
        'Waist',    -- Friar's Rope
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
        'Head',     -- Warlock's Chapeau
        'Hands',    -- Dusk Gloves
        'Waist',    -- Swift Belt
    },
    Interruption = {
        'Body',     -- Warlock's Tabard
    },
    IntWeapon = {

    },
    MndWeapon = {

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
    'SwordClub',
    'DaggerClub',
    'ClubSword',
    'ClubShield',
};

local SetsThatIdleInDusk = T{
    'MeleeDamage',
    'MageDefense'
}

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    gFunc.LockStyle(profile.Sets.Lockstyle)
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    local command = args[1]
    if (command == 'SwordClub' or command == 'DaggerClub' or command == 'ClubSword' or command == 'ClubShield' or command == 'Staff') then 
        profile.WeaponStance = command;
    end
    if (command == 'MeleeDamage' or command == 'MageDefense' or command == 'MeleeTank' or command == 'MageTank' or command == 'SpellAcc' or command == 'MaxMP' or command == 'YellowHP') then
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
        if (player.IsMoving == false and player.Status == 'Engaged' and SetsThatIdleInDusk:contains(profile.Stance)) then
            Common.CombineSets(profile, profile.Sets.IdleStationary, true); 
        end
        gFunc.EquipSet(profile.workingSet);
        profile.workingSet = {};
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if (action.Name == 'Charm') then
        gFunc.EquipSet(profile.Sets.Charm);
    elseif (action.Name == 'Reward') then
        gFunc.EquipSet(profile.Sets.Mnd);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    profile.workingCurrentMissingMp = 0;
    profile.workingSet = {};
    local missingMp = gData.GetPlayer().MaxMP - gData.GetPlayer().MP;
    if (profile.Stance == 'MaxMP') then
        Common.BuildMaxMpSet(profile, missingMp, 'FastCast', false);
    else 
        Common.CombineSets(profile, profile.Sets.FastCast, false);
    end
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
    if (action.Name == 'Vorpal Blade' or action.Name == 'Savage Blade') then
        gFunc.EquipSet(profile.Sets.Str);
    end
end

return profile;