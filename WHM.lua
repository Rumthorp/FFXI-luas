local Common = gFunc.LoadFile('Common.lua');
local profile = {};
profile.Sets = {
    Lockstyle = {
        Head = 'Voyager Sallet',
        Body = 'Cleric\'s Bliaut',
        Hands = 'Nashira Gages',
        Legs = 'Cleric\'s Pantaln.',
        Feet = 'Cleric\'s Duckbills',
    },
    Staff = {
        Main = 'Terra\'s Staff',
    },
    MPClubClub = {
        Main = 'Martial Wand',
        Sub = 'Octave Club',
        DualWield = true
    },
    DPSClubClub = {
        Main = 'Purgatory Mace',
        Sub = 'Octave Club',
        DualWield = true
    },
    ClubShield = {
        Main = 'Octave Club',
        Sub = 'Genbu\'s Shield',
    },
    WarpStaff = {
        Main = 'Treat Staff II'
    },
    WarpClub = {
        Main = 'Warp Cudgel'
    },
    HasteEngaged = {
        Ammo = 'Olibanum Sachet',
        Head = 'Nashira Turban',
        Neck = 'Prudence Torque',
        Ear1 = 'Coral Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Nashira Manteel',
        Hands = 'Blessed Mitts',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Cheviot Cape',
        Waist = 'Swift Belt',
        Legs = 'Blessed Trousers',
        Feet = 'Blessed Pumps',
        AltGear = {
            Ear2 = {
                { Condition = 'IsDualWielding', Name = 'Stealth Earring' }
            },
        }
    },
    AccuracyEngaged = {
        Ammo = 'Olibanum Sachet',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Coral Earring',
        Body = 'Hydra Doublet',
        Hands = 'Hydra Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Cheviot Cape',
        Waist = 'Swift Belt',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters',
        AltGear = {
            Ear2 = {
                { Condition = 'IsDualWielding', Name = 'Stealth Earring' }
            },
        }
    },
    EvasionEngaged = {
        Ammo = 'Olibanum Sachet',
        Head = 'Optical Hat',
        Neck = 'Evasion Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Hydra Doublet',
        Hands = 'Hydra Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Scouter\'s Rope',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters'
    },
    MaxMP = {
        Ammo = 'Hedgehog Bomb',             -- 30
        Head = 'Zenith Crown',              -- 50
        Neck = 'Uggalepih Pendant',         -- 20
        Ear1 = 'Loquac. Earring',           -- 30
        Ear2 = 'Astral Earring',            -- 25
        Body = 'Noble\'s Tunic',            -- 17
        Hands = 'Wood Gauntlets',           -- 55
        Ring1 = 'Vivian Ring',              -- 50
        Ring2 = 'Serket Ring',              -- 50
        Back = 'Errant Cape',               -- 30
        Waist = 'Forest Rope',              -- 60
        Legs = 'Zenith Slacks',             -- 50
        Feet = 'Rostrum Pumps'              -- 30
    },
    EvasionIdle = {
        Ammo = 'Hedgehog Bomb',         
        Head = 'Emperor Hairpin',
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
        EquipOrder = {
            { Slot = 'Body', MPValue = .59 },
            { Slot = 'Neck', MPValue = .35 },
            { Slot = 'Back', MPValue = .33 },
            { Slot = 'Ear1', MPValue = .23 },
            { Slot = 'Legs', MPValue = .2 },
            { Slot = 'Head', MPValue = .2 },
            { Slot = 'Ear2', MPValue = .2 },
            { Slot = 'Waist', MPValue = .17 },
            { Slot = 'Hands', MPValue = .12 },
            { Slot = 'Feet', MPValue = .12 },
            { Slot = 'Ring2', MPValue = .04 },
            { Slot = 'Ring1', MPValue = .04 },
            { Slot = 'Ammo', MPValue = 0 },
        }
    },
    Interruption = {
        Main = 'Eremite\'s Wand',
        Sub = 'Genbu\'s Shield',
        Head = 'Nashira Turban',
        Waist = 'Druid\'s Rope',
        Feet = 'Healer\'s Duckbills',
        EquipOrder = {
            { Slot = 'Feet', MPValue = 2 },
            { Slot = 'Main', MPValue = 25 },
            { Slot = 'Head', MPValue = .2 },
            { Slot = 'Waist', MPValue = .17 },
            { Slot = 'Sub', MPValue = 0 },
        }
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
        Ammo = 'Hedgehog Bomb',         -- 1
        Head = 'Hydra Beret',           -- 8
        Ear2 = 'Novia Earring',         -- 7
        Body = 'Hydra Doublet',         -- 9
        Hands = 'Hydra Gloves',         -- 5
        Ring2 = 'Tamas Ring',           -- 5
        Back = 'Errant Cape',           -- 5
        Waist = 'Penitent\'s Rope',     -- 3
        Legs = 'Hydra Brais',           -- 6
        Feet = 'Hydra Gaiters',         -- 5
        EquipOrder = {
            { Slot = 'Ammo', MPValue = 1 },
            { Slot = 'Head', MPValue = .16 },
            { Slot = 'Ear2', MPValue = .28 },
            { Slot = 'Body', MPValue = .53 },
            { Slot = 'Hands', MPValue = .09 },
            { Slot = 'Ring2', MPValue = .25 },
            { Slot = 'Back', MPValue = 5 },
            { Slot = 'Waist', MPValue = .05 },
            { Slot = 'Legs', MPValue = .12 },
            { Slot = 'Feet', MPValue = .17 },
        }
    },
    HealingSkill = {
        Legs = 'Cleric\'s Pantaln.',
        Hands = 'Healer\'s Mitts',
        EquipOrder = {
            { Slot = 'Legs', MPValue = .45 },
            { Slot = 'Hands', MPValue = .38 },
        }
    },
    EnhancingSkill = {
        Neck = 'Enhancing Torque',
        Feet = 'Cleric\'s Duckbills',
        EquipOrder = {
            { Slot = 'Neck', MPValue = .35 },
            { Slot = 'Feet', MPValue = .83 },
        }
    },
    WHMBar = {
        Body = 'Blessed Bliaut',
        Legs = 'Cleric\'s Pantaln.',
        EquipOrder = {
            { Slot = 'Body', MPValue = 2 },
            { Slot = 'Legs', MPValue = 1 },
        }
    },
    EnfeeblingSkill = {
        Neck = 'Enfeebling Torque',
        Hands = 'Cleric\'s Mitts',
        Body = 'Healer\'s Bliaut',
        EquipOrder = {
            { Slot = 'Body', MPValue = 10 },
            { Slot = 'Hands', MPValue = .5 },
            { Slot = 'Neck', MPValue = .35 },
        }
    },
    DivineSkill = {
        Legs = 'Healer\'s Pantaln.',
        EquipOrder = {
            { Slot = 'Legs', MPValue = .43 },
        }
    },
    MagicAccuracy = {
        Head = 'Nashira Turban',
        Body = 'Nashira Manteel',
        Hands = 'Nashira Gages',
        Ring2 = 'Tamas Ring',
        Legs = 'Nashira Seraweels',
        Feet = 'Nashira Crackows',
        EquipOrder = {
            { Slot = 'Ring2', MPValue = .25 },
            { Slot = 'Body', MPValue = .15 },
            { Slot = 'Head', MPValue = .1 },
            { Slot = 'Feet', MPValue = .07 },
            { Slot = 'Hands', MPValue = .06 },
            { Slot = 'Legs', MPValue = .06 },
        }
    },
    MagicAttack = {
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring',
        Hands = 'Zenith Mitts',
        AltGear = {
            Head = {
                { Condition = 'IsInsideControl', Name = 'Republic Circlet', MPValue = .1 }
            },
            Neck = {
                { Condition = 'ShouldWearUggPendant', Name = 'Uggalepih Pendant', MPValue = 8 }
            }
        },
        EquipOrder = {
            { Slot = 'Hands', MPValue = 5 },
            { Slot = 'Ear1', MPValue = .23 },
            { Slot = 'Ear2', MPValue = .2 },
        }
    },
    CurePotency = {
        Body = 'Noble\'s Tunic',
        AltGear = {
            Ring1 = {
                { Condition = 'ShouldWear50ClassRing', Name = 'Medicine Ring', MPValue = .2 }
            },
        },
        EquipOrder = {
            { Slot = 'Body', MPValue = 10 },
        }
    },
    CurePrecast = {
        Main = 'Rucke\'s Rung',
        Feet = 'Cure Clogs',
        EquipOrder = {
            { Slot = 'Main', MPValue = 10 },
            { Slot = 'Feet', MPValue = .5 },
        }
    },
    RegenPotency = {
        Main = 'Rucke\'s Rung',
        Body = 'Cleric\'s Bliaut',
        EquipOrder = {
            { Slot = 'Body', MPValue = 3 },
            { Slot = 'Main', MPValue = 3 },
        }
    },
    Mnd = {
        Main = 'Kirin\'s Pole',
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
        EquipOrder = {
            { Slot = 'Main', MPValue = 10 },
            { Slot = 'Feet', MPValue = 1.2 },
            { Slot = 'Body', MPValue = .59 },
            { Slot = 'Waist', MPValue = .3 },
            { Slot = 'Neck', MPValue = .25 },
            { Slot = 'Ring2', MPValue = .25 },
            { Slot = 'Back', MPValue = .14 },
            { Slot = 'Legs', MPValue = .14 },
            { Slot = 'Hands', MPValue = .12 },
            { Slot = 'Head', MPValue = .11 },
            { Slot = 'Ring1', MPValue = .08 },
            { Slot = 'Ear2', MPValue = .05 },
            { Slot = 'Ear1', MPValue = .04 },
        }
    },
    Int = {
        Main = 'Kirin\'s Pole',
        Ammo = 'Phtm. Tathlum',
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
        Feet = 'Rostrum Pumps',
        EquipOrder = {
            { Slot = 'Main', MPValue = 10 },
            { Slot = 'Feet', MPValue = 3 },
            { Slot = 'Head', MPValue = 3 },
            { Slot = 'Body', MPValue = .59 },
            { Slot = 'Neck', MPValue = .25 },
            { Slot = 'Ring2', MPValue = .25 },
            { Slot = 'Hands', MPValue = .17 },
            { Slot = 'Legs', MPValue = .14 },
            { Slot = 'Back', MPValue = .14 },
            { Slot = 'Ammo', MPValue = .1 },
            { Slot = 'Ear2', MPValue = .1 },
            { Slot = 'Ring1', MPValue = .1 },
            { Slot = 'Waist', MPValue = .08 },
            { Slot = 'Ear1', MPValue = .08 },
        }
    },
    Recast = {
        Head = 'Nashira Turban',
        Ear1 = 'Loquac. Earring',
        Body = 'Nashira Manteel',
        Hands = 'Blessed Mitts',
        Waist = 'Swift Belt',
        Legs = 'Blessed Trousers',
        Feet = 'Blessed Pumps',
        EquipOrder = {
            { Slot = 'Head', MPValue = .04 },
            { Slot = 'Ear1', MPValue = .03 },
            { Slot = 'Body', MPValue = .18 },
            { Slot = 'Hands', MPValue = .14 },
            { Slot = 'Waist', MPValue = .07 },
            { Slot = 'Legs', MPValue = .12 },
            { Slot = 'Feet', MPValue = .15 },
        }
    },
    Sneak = {
        Back = 'Skulker\'s Cape',
        Feet = 'Dream Boots +1',
        EquipOrder = {
            { Slot = 'Back', MPValue = 2 },
            { Slot = 'Feet', MPValue = 1 },
        }
    },
    Invisible = {
        Hands = 'Dream Mittens +1',
        Back = 'Skulker\'s Cape',
        EquipOrder = {
            { Slot = 'Back', MPValue = 2 },
            { Hands = 'Feet', MPValue = 1 },
        }
    },
    ClubMPWSPotency = {
        Neck = 'Prudence Torque'
    },
    TrueStrikePotency = {

    },
    JudgmentPotency = {

    },
    HexaStrikePotency = {
        Ammo = 'Olibanum Sachet',
        Head = 'Voyager Sallet',
        Neck = 'Spike Necklace',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Coral Earring',
        Body = 'Blessed Bliaut',
        Hands = 'Healer\'s Mitts',
        Ring1 = 'Ruby Ring',
        Ring2 = 'Ruby Ring',
        Back = 'Rainbow Cape',
        Waist = 'Cleric\'s Belt',
        Legs = 'Blessed Trousers',
        Feet = 'Mahatma Pigaches'
    },
    BlackHaloPotency = {

    }
};
profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    gFunc.LockStyle(profile.Sets.Lockstyle);
    Common.CreateDefaultData(
        profile, 
        { 'HasteEngaged', 'AccuracyEngaged', 'EvasionEngaged' }, 
        { 'Staff', 'MPClubClub', 'DPSClubClub', 'ClubShield' }, 
        {  }, 
        { 'EvasionIdle' }, 
        {  },
        675,
        825
    );
    Common.SetDefaultStances(profile, 1, 1, 0, 1, 0);
    Common.SetDefaultModes(profile, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1);
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