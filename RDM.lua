local Common = gFunc.LoadFile('Common.lua')
local profile = {};

profile.Sets = {
    Lockstyle = {
        Head = 'Duelist\'s Chapeau',
        Body = 'Nashira Manteel',
        Hands = 'Nashira Gages',
        Legs = 'Nashira Seraweels',
        Feet = 'Nashira Crackows',
    },
    SwordClub = {
        Main = 'Enhancing Sword',
        Sub = 'Octave Club',
        Ear2 = 'Stealth Earring'
    },
    DaggerClub = {
        Main = 'Blau Dolch',
        Sub = 'Octave Club',
        Ear2 = 'Stealth Earring'
    },
    ClubSword = {
        Main = 'Octave Club',
        Sub = 'Enhancing Sword',
        Ear2 = 'Stealth Earring'
    },
    ClubDagger = {
        Main = 'Octave Club',
        Sub = 'Blau Dolch',
        Ear2 = 'Stealth Earring'
    },
    ClubShield = {
        Main = 'Octave Club',
        Sub = 'Genbu\'s Shield',
    },
    EarthStaff = {
        Main = 'Terra\'s Staff',
    },
    WindStaff = {
        Main = 'Auster\'s Staff'
    },
    Damage = {
        Ammo = 'Olibanum Sachet',
        Head = 'Nashira Turban',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Coral Earring',
        Body = 'Nashira Manteel',
        Hands = 'Dusk Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Fencer\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Nashira Seraweels',
        Feet = 'Hydra Gaiters',
    },
    Accuracy = {
        Ammo = 'Olibanum Sachet',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Coral Earring',
        Body = 'Hydra Doublet',
        Hands = 'Hydra Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters',
    },
    Evasion = {
        Ammo = 'Olibanum Sachet',
        Head = 'Optical Hat',
        Neck = 'Evasion Torque',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Novia Earring',
        Body = 'Hydra Doublet',
        Hands = 'Hydra Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Scouter\'s Rope',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters',
    },
    PDT = {
        Ammo = 'Olibanum Sachet',
        Head = 'Darksteel Cap +1',
        Neck = 'Evasion Torque',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Novia Earring',
        Body = 'Dst. Harness +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Jelly Ring',
        Back = 'Cheviot Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Dst. Subligar +1',
        Feet = 'Dst. Leggings +1',
    },
    DamageBalanced = {
        Ammo = 'Olibanum Sachet',
        Head = 'Duelist\'s Chapeau',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Coral Earring',
        Body = 'Nashira Manteel',
        Hands = 'Dusk Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Fencer\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters',
    },
    EvasionBalanced = {
        Ammo = 'Olibanum Sachet',
        Head = 'Duelist\'s Chapeau',
        Neck = 'Evasion Torque',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Novia Earring',
        Body = 'Hydra Doublet',
        Hands = 'Hydra Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Scouter\'s Rope',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters',
    },
    PDTBalanced = {
        Ammo = 'Olibanum Sachet',
        Head = 'Duelist\'s Chapeau',
        Neck = 'Evasion Torque',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Novia Earring',
        Body = 'Dst. Harness +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Sattva Ring',
        Ring2 = 'Jelly Ring',
        Back = 'Cheviot Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Dst. Subligar +1',
        Feet = 'Dst. Leggings +1',
    },
    MaxEvasion = {
        Ammo = 'Olibanum Sachet',
        Head = 'Optical Hat',
        Neck = 'Evasion Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Hydra Doublet',
        Hands = 'Hydra Gloves',
        Ring1 = 'Emerald Ring',
        Ring2 = 'Emerald Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Scouter\'s Rope',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters',
    },
    MaxPDT = {
        Ammo = 'Olibanum Sachet',
        Head = 'Darksteel Cap +1',
        Neck = 'Evasion Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Dst. Harness +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Emerald Ring',
        Ring2 = 'Jelly Ring',
        Back = 'Cheviot Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Dst. Subligar +1',
        Feet = 'Dst. Leggings +1',
    },
    DuskMovement = {
        Hands = 'Hydra Gloves',
    },
    MaxMP = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Duelist\'s Chapeau',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Astral Earring',
        Body = 'Hydra Doublet',
        Hands = 'Wood Gauntlets',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Forest Rope',
        Legs = 'Zenith Slacks',
        Feet = 'Wood M Ledelsens',
    },
    EnmityMinus = {
        Head = 'Hydra Beret',
        Ear2 = 'Novia Earring',
        Body = 'Hydra Doublet',
        Hands = 'Hydra Gloves',
        Ring2 = 'Tamas Ring',
        Back = 'Errant Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters'
    },
    SacHP = {
        Head = 'Zenith Crown',
        Ear2 = 'Astral Earring',
        Body = 'Blue Cotehardie',
        Hands = 'Zenith Mitts',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Serket Ring',
        Waist = 'Scouter\'s Rope',
        Legs = 'Zenith Slacks',
        Feet = 'Mahatma Pigaches',
    },
    Resting = {
        Main = 'Pluto\'s Staff',
        Head = 'Hydra Beret',
        Body = 'Errant Hpl.',
        Hands = 'Hydra Gloves',
        Waist = 'Duelist\'s Belt',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters'
    },
    FastCast = {
        Head = 'Warlock\'s Chapeau',
        Ear1 = 'Loquac. Earring',
        Body = 'Duelist\'s Tabard'
    },
    HealingSkill = {
        Legs = 'Warlock\'s Tights',
        Body = 'Duelist\'s Tabard'
    },
    EnhancingSkill = {
        Neck = 'Enfeebling Torque',
        Hands = 'Duelist\'s Gloves',
        Legs = 'Warlock\'s Tights',
    },
    EnfeeblingSkill = {
        Head = 'Duelist\'s Chapeau',
        Neck = 'Enfeebling Torque',
        Body = 'Warlock\'s Tabard',
        Legs = 'Nashira Seraweels'
    },
    ElementalSkill = {
        Head = 'Warlock\'s Chapeau',
        Legs = 'Duelist\'s Tights',
        Feet = 'Nashira Crackows'
    },
    DarkSkill = {
        Body = 'Nashira Manteel'
    },
    MagicAccuracy = {
        Head = 'Nashira Turban',
        Body = 'Nashira Manteel',
        Hands = 'Nashira Gages',
        Ring2 = 'Tamas Ring',
        Legs = 'Nashira Seaweels',
        Feet = 'Nashira Crackows'
    },
    MagicAttack = {
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring',
        Hands = 'Zenith Mitts',
        Feet = 'Duelist\'s Boots',
    },
    Mnd = {
        Main = 'Mythic Wand +1',
        Head = 'Zenith Crown',
        Neck = 'Faith Torque',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'Errant Hpl.',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Sapphire Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Mahatma Pigaches',
    },
    Int = {
        Main = 'Mythic Wand +1',
        Head = 'Zenith Crown',
        Neck = 'Prudence Torque',
        Ear1 = 'Morion Earring +1',
        Ear2 = 'Morion Earring +1',
        Body = 'Errant Hpl.',
        Hands = 'Errant Cuffs',
        Ring1 = 'Snow Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Wise Pigaches',
    },
    Recast = {
        Head = 'Warlock\'s Chapeau',
        Ear1 = 'Loquac. Earring',
        Body = 'Duelist\'s Tabard',
        Hands = 'Dusk Gloves',
        Waist = 'Swift Belt',
        Legs = 'Nashira Seraweels',
        Feet = 'Nashira Crackows'
    },
    Interruption = {
        Head = 'Nashira Turban',
        Body = 'Warlock\'s Tabard',
        Waist = 'Druid\'s Rope'
    },
    Sneak = {
        Back = 'Skulker\'s Cape',
        Feet = 'Dream Boots +1'
    },
    Invisible = {
        Hands = 'Dream Mittens +1',
        Back = 'Skulker\'s Cape'
    }
};
profile.SetEquipOrder = {
    EnmityMinus = {
        'Back',
        'Body',
        'Ring2',
        'Ear2',
        'Head',
        'Legs',
        'Feet',
        'Hands',
        'Waist'
    },
    SacHP = {
        'Head',
        'Hands',
        'Legs',
        'Ring1',
        'Ring2',
        'Ear2',
        'Body',
        'Waist',
        'Feet'
    },
    DuskMovement = {
        'Hands'
    },
    FastCast = {
        'Ear1',
        'Head',
        'Body'
    },
    HealingSkill = {
        'Body',
        'Legs'
    },
    EnhancingSkill = {
        'Neck',
        'Hands',
        'Legs'
    },
    EnfeeblingSkill = {
        'Head',
        'Body',
        'Neck',
        'Legs'
    },
    ElementalSkill = {
        'Head',
        'Feet',
        'Legs'
    },
    DarkSkill = {
        'Body'
    },
    MagicAccuracy = {
        'Body',
        'Head',
        'Ring2',
        'Legs',
        'Hands',
        'Feet'
    },
    MagicAttack = {
        'Hands',
        'Ear1',
        'Ear2',
        'Feet'
    },
    Mnd = {
        'Main',
        'Head',
        'Ring2',
        'Feet',
        'Hands',
        'Body',
        'Legs',
        'Neck',
        'Back',
        'Ring1',
        'Waist',
        'Ear2',
        'Ear1'
    },
    Int = {
        'Main',
        'Head',
        'Ring2',
        'Neck',
        'Hands',
        'Back',
        'Body',
        'Legs',
        'Ear1',
        'Ear2',
        'Ring1',
        'Waist',
        'Feet'
    },
    Recast = {
        'Ear1',
        'Head',
        'Body',
        'Hands',
        'Waist',
        'Legs',
        'Feet'
    },
    Interruption = {
        'Body',
        'Head',
        'Waist'
    },
    Sneak = {
        'Back',
        'Feet'
    },
    Invisible = {
        'Back',
        'Hands'
    }
};
profile.EngagedSetsWithDusk = T{
    'Damage',
    'DamageBalanced'
};
profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    gFunc.LockStyle(profile.Sets.Lockstyle);
    Common.CreateDefaultData(
        profile, 
        { 'Damage', 'Accuracy', 'Evasion', 'PDT', 'DamageBalanced', 'EvasionBalanced', 'PDTBalanced' }, 
        { 'EarthStaff', 'WindStaff', 'SwordClub', 'DaggerClub', 'ClubSword', 'ClubDagger', 'ClubShield' }, 
        {  }, 
        { 'MaxEvasion', 'MaxPDT' }, 
        {  },
        525,
        725
    );
    Common.SetDefaultStances(profile, 1, 1, 0, 1, 0);
    Common.SetDefaultModes(profile, 1, 1, 1, 1, 2, 3, 1, 3);
    Common.LoadDefaultKeybinds();
end

profile.OnUnload = function()
    Common.UnloadDefaultKeybinds();
end

profile.HandleCommand = function(args)
    Common.DefaultCommandHandles(profile, args);
end

profile.HandleDefault = function()
    Common.HandleDefault(profile);
end

profile.HandleAbility = function()
    Common.HandleAbility(profile);
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    Common.HandlePrecast(profile);
end

profile.HandleMidcast = function()
    Common.HandleMidcast(profile);
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    Common.HandleWeaponskill(profile);
end

return profile;