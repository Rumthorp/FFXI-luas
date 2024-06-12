local Common = gFunc.LoadFile('Common.lua');
local profile = {};
profile.Sets = {
    Lockstyle = {
        Head = 'Voyager Sallet',
        Body = 'Cleric\'s Bliaut',
        Hands = 'Nashira Gages',
        Legs = 'Cleric\'s Pantaln.',
        Feet = 'Duelist\'s Boots',
    },
    Staff = {
        Main = 'Terra\'s Staff',
    },
    ClubShield = {
        Main = 'Octave Club',
        Sub = 'Genbu\'s Shield',
    },
    ClubClub = {
        Main = 'Purgatory Mace',
        Sub = 'Octave Club',
    },
    WarpStaff = {
        Main = 'Treat Staff II'
    },
    WarpClub = {
        Main = 'Warp Cudgel'
    },
    MaxMP = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Zenith Crown',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Astral Earring',
        Body = 'Noble\'s Tunic',
        Hands = 'Wood Gauntlets',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Forest Rope',
        Legs = 'Zenith Slacks',
        Feet = 'Rostrum Pumps'
    },
    Defense = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Zenith Crown',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Astral Earring',
        Body = 'Noble\'s Tunic',
        Hands = 'Wood Gauntlets',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Forest Rope',
        Legs = 'Zenith Slacks',
        Feet = 'Rostrum Pumps'
    },
    IdleDefense = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Emperor Hairpin',
        Neck = 'Evasion Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Hydra Doublet',
        Hands = 'Hydra Gloves',
        Ring1 = 'Coral Ring',
        Ring2 = 'Jelly Ring',
        Back = 'Boxer Mantle',
        Waist = 'Scouter\'s Rope',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters'
    },
    Interruption = {
        Main = 'Eremite\'s Wand',
        Sub = 'Genbu\'s Shield',
        Head = 'Nashira Turban',
        Waist = 'Druid\'s Rope',
        Feet = 'Healer\'s Duckbills',
    },
    Resting = {
        Main = 'Pluto\'s Staff',
        Head = 'Hydra Beret',
        Body = 'Errant Hpl.',
        Hands = 'Hydra Gloves',
        Waist = 'Cleric\'s Belt',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters'
    },
    EnmityMinus = {
        Head = 'Nashira Turban',
        Ear2 = 'Novia Earring',
        Body = 'Hydra Doublet',
        Hands = 'Healer\'s Mitts',
        Ring1 = 'Tamas Ring',
        Back = 'Errant Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Blessed Trousers',
        Feet = 'Blessed Pumps'
    },
    HealingSkill = {
        Legs = 'Cleric\'s Pantaln.',
        Hands = 'Healer\'s Mitts'
    },
    EnhancingSkill = {
        Feet = 'Cleric\'s Duckbills',
    },
    WHMBar = {
        Body = 'Blessed Bliaut',
        Legs = 'Cleric\'s Pantaln.'
    },
    EnfeeblingSkill = {
        Hands = 'Cleric\'s Mitts',
        Body = 'Healer\'s Bliaut',
    },
    DivineSkill = {
        Legs = 'Healer\'s Pantaln.'
    },
    MagicAttack = {
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring',
        Hands = 'Zenith Mitts'
    },
    CurePotency = {
        Body = 'Noble\'s Tunic'
    },
    CurePrecast = {
        Main = 'Rucke\'s Rung',
        Feet = 'Cure Clogs'
    },
    RegenPotency = {
        Main = 'Rucke\'s Rung',
        Body = 'Cleric\'s Bliaut'
    },
    Mnd = {
        Head = 'Healer\'s Cap',
        Neck = 'Faith Torque',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'Errant Hpl.',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Sapphire Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Rainbow Cape',
        Waist = 'Cleric\'s Belt',
        Legs = 'Errant Slops',
        Feet = 'Mahatma Pigaches',
    },
    Int = {
        Head = 'Zenith Crown',
        Neck = 'Prudence Torque',
        Ear1 = 'Morion Earring +1',
        Ear2 = 'Morion Earring +1',
        Body = 'Errant Hpl.',
        Hands = 'Errant Cuffs',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Rostrum Pumps',
    },
    Recast = {
        Head = 'Nashira Turban',
        Ear1 = 'Loquac. Earring',
        Body = 'Nashira Manteel',
        Hands = 'Blessed Mitts',
        Waist = 'Swift Belt',
        Legs = 'Blessed Trousers',
        Feet = 'Blessed Pumps'
    },
    UggPendant = {
        Neck = 'Uggalepih Pendant'
    },
    RepublicCirclet = {
        Head = 'Republic Circlet'
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
    ClubShield = {
        'Main',
        'Sub'
    },
    ClubClub = {
        'Main',
        'Sub'
    },
    Staff = {
        'Main'
    },
    IdleDefense = {
        'Body',
        'Back',
        'Neck',
        'Ear1',
        'Head',
        'Legs',
        'Waist',
        'Feet',
        'Hands',
        'Ear2',
        'Ring1',
        'Ring2'
    },
    Interruption = {
        'Main',
        'Sub',
        'Feet',
        'Head',
        'Waist',
    },
    EnmityMinus = {
        'Head',
        'Ear2',
        'Body',
        'Hands',
        'Back',
        'Legs',
        'Feet'
    },
    HealingSkill = {
        'Legs',
        'Hands'
    },
    EnhancingSkill = {
        'Hands',
        'Legs'
    },
    EnfeeblingSkill = {
        'Hands',
        'Body'
    },
    WHMBar = {
        'Legs',
        'Body'
    },
    DivineSkill = {
        'Legs'
    },
    MagicAttack = {
        'Ear1',
        'Ear2',
        'Hands',
    },
    RegenPotency = {
        'Main',
        'Body'
    },
    CurePrecast = {
        'Feet',
        'Main'
    },
    Mnd = {
        'Waist',
        'Neck',
        'Body',
        'Legs',
        'Feet',
        'Head',
        'Hands',
        'Ring1',
        'Ring2',
        'Back',
        'Ear1',
        'Ear2'
    },
    Int = {
        'Body',
        'Neck',
        'Legs',
        'Hands',
        'Back',
        'Head',
        'Feet',
        'Ear1',
        'Ear2',
        'Waist',
        'Ring1',
        'Ring2'
    },
    Recast = {
        'Hands',
        'Waist',
        'Body',
        'Legs',
        'Head',
        'Feet',
        'Ear1'
    },
    UggPendant = {
        Neck
    },
    RepublicCirclet = {
        Head
    },
    Sneak = {
        'Back',
        'Feet'
    },
    Invisible = {
        'Hands',
        'Back'
    }
};
profile.EngagedSetsWithDusk = T{};
profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    gFunc.LockStyle(profile.Sets.Lockstyle);
    Common.CreateDefaultData(
        profile, 
        { 'MaxMP', 'Haste', 'Accuracy', 'Defense' }, 
        { 'Staff', 'ClubShield', 'ClubClub', 'WarpStaff', 'WarpClub' }, 
        {  }, 
        { 'MaxMP', 'IdleDefense', 'MagicDefense' }, 
        {  },
        675,
        825
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

end

return profile;