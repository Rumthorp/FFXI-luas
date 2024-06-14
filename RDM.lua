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
        DualWield = true
    },
    DaggerClub = {
        Main = 'Blau Dolch',
        Sub = 'Octave Club',
        DualWield = true
    },
    ClubSword = {
        Main = 'Octave Club',
        Sub = 'Enhancing Sword',
        DualWield = true
    },
    ClubDagger = {
        Main = 'Octave Club',
        Sub = 'Blau Dolch',
        DualWield = true
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
        Ear2 = 'Brutal Earring',
        Body = 'Nashira Manteel',
        Hands = 'Dusk Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Fencer\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Nashira Seraweels',
        Feet = 'Hydra Gaiters',
        AltGear = {
            Ear2 = {
                { Condition = 'IsDualWielding', Name = 'Stealth Earring' },
                { Condition = 'UsingOClub', Name = 'Coral Earring' }
            },
            Hands = {
                { Condition = 'IsMoving', Name = 'Hydra Gloves' }
            }
        }
    },
    Accuracy = {
        Ammo = 'Olibanum Sachet',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Hydra Doublet',
        Hands = 'Hydra Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters',
        AltGear = {
            Ear2 = {
                { Condition = 'IsDualWielding', Name = 'Stealth Earring' },
                { Condition = 'UsingOClub', Name = 'Coral Earring' }
            }
        }
    },
    Evasion = {
        Ammo = 'Olibanum Sachet',
        Head = 'Optical Hat',
        Neck = 'Evasion Torque',
        Ear1 = 'Suppanomimi',
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
        Feet = 'Dst. Leggings +1'
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
        AltGear = {
            Ear2 = {
                { Condition = 'IsDualWielding', Name = 'Stealth Earring' },
                { Condition = 'UsingOClub', Name = 'Coral Earring' }
            },
            Hands = {
                { Condition = 'IsMoving', Name = 'Hydra Gloves' }
            }
        }
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
    Resting = {
        Main = 'Pluto\'s Staff',
        Head = 'Hydra Beret',
        Body = 'Errant Hpl.',
        Hands = 'Hydra Gloves',
        Waist = 'Duelist\'s Belt',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters'
    },
    MaxMP = {
        Ammo = 'Hedgehog Bomb',             -- 30
        Head = 'Duelist\'s Chapeau',        -- 14
        Neck = 'Uggalepih Pendant',         -- 20
        Ear1 = 'Loquac. Earring',           -- 30
        Ear2 = 'Astral Earring',            -- 25
        Body = 'Hydra Doublet',             -- 40
        Hands = 'Wood Gauntlets',           -- 55
        Ring1 = 'Vivian Ring',              -- 50
        Ring2 = 'Serket Ring',              -- 50
        Back = 'Errant Cape',               -- 30
        Waist = 'Forest Rope',              -- 60
        Legs = 'Zenith Slacks',             -- 50
        Feet = 'Wood M Ledelsens',          -- 30
    },
    MaxEvasion = {
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
        EquipOrder = {
            { Slot = 'Body', MPValue = 10 },
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
        }
    },
    MaxPDT = {
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
        EquipOrder = {
            { Slot = 'Back', MPValue = .17 },
            { Slot = 'Body', MPValue = .1 },
            { Slot = 'Ring2', MPValue = .1 },
            { Slot = 'Feet', MPValue = .07 },
            { Slot = 'Legs', MPValue = .06 },
            { Slot = 'Head', MPValue = .04 },
            { Slot = 'Hands', MPValue = .04 },
            { Slot = 'Waist', MPValue = .01 },
            { Slot = 'Neck', MPValue = 0 },
            { Slot = 'Ear1', MPValue = 0 },
            { Slot = 'Ear2', MPValue = 0 },
            { Slot = 'Ring1', MPValue = 0 }
        }
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
        Feet = 'Hydra Gaiters',
        EquipOrder = {
            { Slot = 'Body', MPValue = 9 },
            { Slot = 'Back', MPValue = 5 },
            { Slot = 'Ring2', MPValue = .25 },
            { Slot = 'Ear2', MPValue = .23 },
            { Slot = 'Head', MPValue = .16 },
            { Slot = 'Feet', MPValue = .17 },
            { Slot = 'Legs', MPValue = .12 },
            { Slot = 'Hands', MPValue = .1 },
            { Slot = 'Waist', MPValue = .05 },
        }
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
        EquipOrder = {
            { Slot = 'Body', MPValue = 40 },
            { Slot = 'Feet', MPValue = 5 },
            { Slot = 'Waist', MPValue = .67 },
            { Slot = 'Head', MPValue = 0 },
            { Slot = 'Ear2', MPValue = 0 },
            { Slot = 'Hands', MPValue = 0 },
            { Slot = 'Ring1', MPValue = 0 },
            { Slot = 'Ring2', MPValue = 0 },
            { Slot = 'Legs', MPValue = 0 },
        }
    },
    FastCast = {
        Head = 'Warlock\'s Chapeau',
        Ear1 = 'Loquac. Earring',
        Body = 'Duelist\'s Tabard',
        EquipOrder = {
            { Slot = 'Ear1', MPValue = 2 },
            { Slot = 'Body', MPValue = .63 },
            { Slot = 'Head', MPValue = .33 },
        }
    },
    HealingSkill = {
        Legs = 'Warlock\'s Tights',
        Body = 'Duelist\'s Tabard',
        EquipOrder = {
            { Slot = 'Body', MPValue = .38 },
            { Slot = 'Legs', MPValue = .27 },
        }
    },
    EnhancingSkill = {
        Neck = 'Enfeebling Torque',
        Hands = 'Duelist\'s Gloves',
        Legs = 'Warlock\'s Tights',
        EquipOrder = {
            { Slot = 'Hands', MPValue = .47 },
            { Slot = 'Legs', MPValue = .41 },
            { Slot = 'Neck', MPValue = .35 },
        }
    },
    EnfeeblingSkill = {
        Head = 'Duelist\'s Chapeau',
        Neck = 'Enfeebling Torque',
        Body = 'Warlock\'s Tabard',
        Legs = 'Nashira Seraweels',
        EquipOrder = {
            { Slot = 'Head', MPValue = 1 },
            { Slot = 'Body', MPValue = .42 },
            { Slot = 'Neck', MPValue = .35 },
            { Slot = 'Legs', MPValue = .16 },
        }
    },
    ElementalSkill = {
        Head = 'Warlock\'s Chapeau',
        Legs = 'Duelist\'s Tights',
        Feet = 'Nashira Crackows',
        EquipOrder = {
            { Slot = 'Head', MPValue = .33 },
            { Slot = 'Legs', MPValue = .29 },
            { Slot = 'Feet', MPValue = .23 },
        }
    },
    DarkSkill = {
        Body = 'Nashira Manteel',
        EquipOrder = {
            { Slot = 'Body', MPValue = .25 }
        }
    },
    MagicAccuracy = {
        Head = 'Nashira Turban',
        Body = 'Nashira Manteel',
        Hands = 'Nashira Gages',
        Ring2 = 'Tamas Ring',
        Legs = 'Nashira Seaweels',
        Feet = 'Nashira Crackows',
        EquipOrder = {
            { Slot = 'Ring2', MPValue = .25 },
            { Slot = 'Body', MPValue = .13 },
            { Slot = 'Head', MPValue = .1 },
            { Slot = 'Feet', MPValue = .07 },
            { Slot = 'Legs', MPValue = .06 },
            { Slot = 'Hands', MPValue = .06 },
        }
    },
    MagicAttack = {
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring',
        Hands = 'Zenith Mitts',
        Feet = 'Duelist\'s Boots',
        EquipOrder = {
            { Slot = 'Hands', MPValue = 5 },
            { Slot = 'Feet', MPValue = .27 },
            { Slot = 'Ear1', MPValue = .23 },
            { Slot = 'Ear2', MPValue = .2 },
        }
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
        EquipOrder = {
            { Slot = 'Main', MPValue = 9 },
            { Slot = 'Head', MPValue = 3 },
            { Slot = 'Feet', MPValue = 1.2 },
            { Slot = 'Neck', MPValue = .25 },
            { Slot = 'Body', MPValue = .25 },
            { Slot = 'Ring2', MPValue = .25 },
            { Slot = 'Back', MPValue = .14 },
            { Slot = 'Legs', MPValue = .14 },
            { Slot = 'Hands', MPValue = .12 },
            { Slot = 'Ring1', MPValue = .08 },
            { Slot = 'Waist', MPValue = .08 },
            { Slot = 'Ear2', MPValue = .05 },
            { Slot = 'Ear1', MPValue = .04 },
        }
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
        Feet = 'Wood M Ledelsens',
        EquipOrder = {
            { Slot = 'Main', MPValue = 9 },
            { Slot = 'Head', MPValue = 3 },
            { Slot = 'Feet', MPValue = 3 },
            { Slot = 'Ring2', MPValue = .25 },
            { Slot = 'Body', MPValue = .25 },
            { Slot = 'Neck', MPValue = .25 },
            { Slot = 'Hands', MPValue = .17 },
            { Slot = 'Back', MPValue = .14 },
            { Slot = 'Legs', MPValue = .14 },
            { Slot = 'Ring1', MPValue = .1 },
            { Slot = 'Ear2', MPValue = .1 },
            { Slot = 'Waist', MPValue = .08 },
            { Slot = 'Ear1', MPValue = .08 },
        }
    },
    Recast = {
        Head = 'Warlock\'s Chapeau',
        Ear1 = 'Loquac. Earring',
        Body = 'Duelist\'s Tabard',
        Hands = 'Dusk Gloves',
        Waist = 'Swift Belt',
        Legs = 'Nashira Seraweels',
        Feet = 'Nashira Crackows',
        EquipOrder = {
            { Slot = 'Ear1', MPValue = 1 },
            { Slot = 'Head', MPValue = .2 },
            { Slot = 'Body', MPValue = .19 },
            { Slot = 'Waist', MPValue = .7 },
            { Slot = 'Hands', MPValue = .06 },
            { Slot = 'Legs', MPValue = .04 },
            { Slot = 'Feet', MPValue = .03 },
        }
    },
    Interruption = {
        Head = 'Nashira Turban',
        Body = 'Warlock\'s Tabard',
        Waist = 'Druid\'s Rope',
        EquipOrder = {
            { Slot = 'Body', MPValue = .38 },
            { Slot = 'Head', MPValue = .2 },
            { Slot = 'Waist', MPValue = .17 },
        }
    },
    Sneak = {
        Back = 'Skulker\'s Cape',
        Feet = 'Dream Boots +1',
        EquipOrder = {
            { Slot = 'Back', MPValue = 1 },
            { Slot = 'Feet', MPValue = 1 },
        }
    },
    Invisible = {
        Hands = 'Dream Mittens +1',
        Back = 'Skulker\'s Cape',
        EquipOrder = {
            { Slot = 'Hands', MPValue = 1 },
            { Slot = 'Back', MPValue = 1 },
        }
    }
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