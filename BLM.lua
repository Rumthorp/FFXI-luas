local Common = gFunc.LoadFile('Common.lua');
local profile = {};
profile.Sets = {
    Lockstyle = {
        Head = 'Sorcerer\'s Petas.',
        Body = 'Nashira Manteel',
        Hands = 'Nashira Gages',
        Legs = 'Sorcerer\'s Tonban',
        Feet = 'Sorcerer\'s Sabots',
    },
    EarthStaff = {
        Main = 'Terra\'s Staff',
    },
    Resting = {
        Main = 'Pluto\'s Staff',
        Head = 'Hydra Beret',
        Body = 'Errant Hpl.',
        Hands = 'Hydra Gloves',
        Waist = 'Hierarch Belt',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters'
    },
    MaxMP = {
        Ammo = 'Hedgehog Bomb',             -- 30
        Head = 'Zenith Crown',              -- 50
        Neck = 'Uggalepih Pendant',         -- 20
        Ear1 = 'Loquac. Earring',           -- 30
        Ear2 = 'Astral Earring',            -- 25
        Body = 'Sorcerer\'s Coat',          -- 12
        Hands = 'Wood Gauntlets',           -- 55
        Ring1 = 'Vivian Ring',              -- 50
        Ring2 = 'Serket Ring',              -- 50
        Back = 'Errant Cape',               -- 30
        Waist = 'Forest Rope',              -- 60
        Legs = 'Zenith Slacks',             -- 50
        Feet = 'Rostrum Pumps'              -- 30
    },
    MPBalanced = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Wizard\'s Petasos',
        Neck = 'Evasion Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Sorcerer\'s Coat',
        Hands = 'Zenith Mitts',
        Ring1 = 'Coral Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Rainbow Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Hydra Brais',
        Feet = 'Wood M Ledelsens',
        AltGear = {
            Ring1 = {
                { Condition = 'ShouldWearOpuntiaRing', Name = 'Opuntia Hoop' }
            }
        },
    },
    PDTIdle = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Genie Tiara',
        Neck = 'Evasion Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Igqira Weskit',
        Hands = 'Igqira Manillas',
        Ring1 = 'Coral Ring',
        Ring2 = 'Jelly Ring',
        Back = 'Cheviot Cape',
        Waist = 'Druid\'s Rope',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters',
        AltGear = {
            Ring1 = {
                { Condition = 'ShouldWearOpuntiaRing', Name = 'Opuntia Hoop', MPValue = .05 }
            }
        },
        EquipOrder = {
            { Slot = 'Back', MPValue = .17 },
            { Slot = 'Ring2', MPValue = .1 },
            { Slot = 'Head', MPValue = .01 },
            { Slot = 'Body', MPValue = .01 },
            { Slot = 'Hands', MPValue = .01 },
            { Slot = 'Waist', MPValue = 0 },
            { Slot = 'Neck', MPValue = 0 },
            { Slot = 'Ear1', MPValue = 0 },
            { Slot = 'Ear2', MPValue = 0 },
            { Slot = 'Ring1', MPValue = 0 },
            { Slot = 'Legs', MPValue = 0 },
            { Slot = 'Feet', MPValue = 0 },
            { Slot = 'Ammo', MPValue = 0 },
        }
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
        Waist = 'Druid\'s Rope',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters',
        AltGear = {
            Ring1 = {
                { Condition = 'ShouldWearOpuntiaRing', Name = 'Opuntia Hoop', MPValue = .05 }
            }
        },
        EquipOrder = {
            { Slot = 'Body', MPValue = .83 },
            { Slot = 'Neck', MPValue = .35 },
            { Slot = 'Back', MPValue = .33 },
            { Slot = 'Ear1', MPValue = .23 },
            { Slot = 'Legs', MPValue = .2 },
            { Slot = 'Head', MPValue = .2 },
            { Slot = 'Ear2', MPValue = .2 },
            { Slot = 'Hands', MPValue = .12 },
            { Slot = 'Feet', MPValue = .12 },
            { Slot = 'Ring2', MPValue = .04 },
            { Slot = 'Ring1', MPValue = .04 },
            { Slot = 'Waist', MPValue = 0 },
        }
    },
    EnfeeblingSkill = {
        Head = 'Genie Tiara',
        Neck = 'Enfeebling Torque',
        Body = 'Wizard\'s Coat',
        Legs = 'Nashira Seraweels',
        EquipOrder = {
            { Slot = 'Body', MPValue = 10 },
            { Slot = 'Neck', MPValue = .35 },
            { Slot = 'Head', MPValue = .22 },
            { Slot = 'Legs', MPValue = .16 },
        }
    },
    ElementalSkill = {
        Head = 'Sorcerer\'s Petas.',
        Body = 'Igqira Weskit',
        Hands = 'Wizard\'s Gloves',
        Feet = 'Nashira Crackows',
        EquipOrder = {
            { Slot = 'Body', MPValue = .42 },
            { Slot = 'Hands', MPValue = .39 },
            { Slot = 'Head', MPValue = .37 },
            { Slot = 'Feet', MPValue = .23 },
        }
    },
    DarkSkill = {
        Body = 'Nashira Manteel',
        Hands = 'Sorcerer\'s Gloves',
        Legs = 'Wizard\'s Tonban',
        EquipOrder = {
            { Slot = 'Body', MPValue = .83 },
            { Slot = 'Legs', MPValue = .42 },
            { Slot = 'Hands', MPValue = .38 },
        }
    },
    Precast = {
        Ear1 = 'Loquac. Earring',
        Feet = 'Rostrum Pumps',
        EquipOrder = {
            { Slot = 'Feet', MPValue = 3 },
            { Slot = 'Ear1', MPValue = 2 },
        }
    },
    Recast = {
        Head = 'Nashira Turban',
        Ear1 = 'Loquac. Earring',
        Body = 'Nashira Manteel',
        Hands = 'Nashira Gages',
        Waist = 'Swift Belt',
        Legs = 'Nashira Seraweels',
        Feet = 'Rostrum Pumps',
        EquipOrder = {
            { Slot = 'Ear1', MPValue = 1 },
            { Slot = 'Feet', MPValue = 1 },
            { Slot = 'Body', MPValue = .25 },
            { Slot = 'Waist', MPValue = .07 },
            { Slot = 'Hands', MPValue = .06 },
            { Slot = 'Head', MPValue = .04 },
            { Slot = 'Legs', MPValue = .04 },
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
            { Slot = 'Body', MPValue = .42 },
            { Slot = 'Ring2', MPValue = .25 },
            { Slot = 'Head', MPValue = .1 },
            { Slot = 'Feet', MPValue = .07 },
            { Slot = 'Hands', MPValue = .06 },
            { Slot = 'Legs', MPValue = .06 },
        }
    },
    MagicAttack = {
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Igqira Weskit',
        Hands = 'Zenith Mitts',
        AltGear = {
            Head = {
                { Condition = 'IsInsideControl', Name = 'Republic Circlet', MPValue = .1 }
            },
            Neck = {
                { Condition = 'ShouldWearUggPendant', Name = 'Uggalepih Pendant', MPValue = 8 }
            },
            Hands = {
                { Condition = 'IsBursting', Name = 'Sorcerer\'s Gloves', MPValue = .19 }
            },
            Ring1 = {
                { Condition = 'ShouldWear50ClassRing', Name = 'Sorcerer\'s Ring', MPValue = .2 }
            },
            Legs = {
                { Condition = 'DayMatchesElement', Name = 'Sorcerer\'s Tonban', MPValue = .1 }
            }
        },
        EquipOrder = {
            { Slot = 'Hands', MPValue = 5 },
            { Slot = 'Body', MPValue = .5 },
            { Slot = 'Ear1', MPValue = .23 },
            { Slot = 'Ear2', MPValue = .2 },
        }
    },
    Int = {
        Main = 'Kirin\'s Pole',
        Ammo = 'Phtm. Tathlum',
        Head = 'Wizard\'s Petasos',
        Neck = 'Prudence Torque',
        Ear1 = 'Morion Earring +1',
        Ear2 = 'Morion Earring +1',
        Body = 'Errant Hpl.',
        Hands = 'Errant Cuffs',
        Ring1 = 'Snow Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Rainbow Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Errant Slops',
        Feet = 'Rostrum Pumps',
        EquipOrder = {
            { Slot = 'Main', MPValue = 10 },
            { Slot = 'Feet', MPValue = 3 },
            { Slot = 'Body', MPValue = .83 },
            { Slot = 'Neck', MPValue = .25 },
            { Slot = 'Ring2', MPValue = .25 },
            { Slot = 'Hands', MPValue = .17 },
            { Slot = 'Head', MPValue = .16 },
            { Slot = 'Back', MPValue = .14 },
            { Slot = 'Legs', MPValue = .14 },
            { Slot = 'Ammo', MPValue = .1 },
            { Slot = 'Ear2', MPValue = .1 },
            { Slot = 'Ring1', MPValue = .1 },
            { Slot = 'Waist', MPValue = .1 },
            { Slot = 'Ear1', MPValue = .08 },
        }
    },
    Mnd = {
        Main = 'Kirin\'s Pole',
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
            { Slot = 'Main', MPValue = 10 },
            { Slot = 'Head', MPValue = 3 },
            { Slot = 'Feet', MPValue = 1.2 },
            { Slot = 'Body', MPValue = .83 },
            { Slot = 'Ring2', MPValue = .25 },
            { Slot = 'Neck', MPValue = .25 },
            { Slot = 'Back', MPValue = .14 },
            { Slot = 'Legs', MPValue = .14 },
            { Slot = 'Hands', MPValue = .12 },
            { Slot = 'Ring1', MPValue = .08 },
            { Slot = 'Waist', MPValue = .08 },
            { Slot = 'Ear2', MPValue = .05 },
            { Slot = 'Ear1', MPValue = .04 },
        }
    },
    Interruption = {
        Main = 'Eremite\'s Wand',
        Sub = 'Genbu\'s Shield',
        Head = 'Nashira Turban',
        Waist = 'Druid\'s Rope',
        Feet = 'Wizard\'s Sabots',
        EquipOrder = {
            { Slot = 'Main', MPValue = 25 },
            { Slot = 'Feet', MPValue = 2 },
            { Slot = 'Head', MPValue = .2 },
            { Slot = 'Waist', MPValue = .17 },
            { Slot = 'Sub', MPValue = 0 },
        }
    },
    EnmityMinus = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Hydra Beret',
        Ear2 = 'Novia Earring',
        Body = 'Hydra Doublet',
        Hands = 'Nashira Gages',
        Ring2 = 'Tamas Ring',
        Back = 'Errant Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters',
        EquipOrder = {
            { Slot = 'Body', MPValue = 9 },
            { Slot = 'Back', MPValue = 5 },
            { Slot = 'Ammo', MPValue = 1 },
            { Slot = 'Ring2', MPValue = .25 },
            { Slot = 'Ear2', MPValue = .23 },
            { Slot = 'Feet', MPValue = .17 },
            { Slot = 'Head', MPValue = .16 },
            { Slot = 'Legs', MPValue = .12 },
            { Slot = 'Hands', MPValue = .1 },
            { Slot = 'Waist', MPValue = .05 },
        }
    },
    AccuracyPotencyBalanced = {

    },
    EnmityAccuracyBalanced = {

    },
    OverlordsRing = {
        Ring1 = 'Overlord\'s Ring',
        EquipOrder = {
            { Slot = 'Ring1', MPValue = .04 }
        }
    },
    SacHP = {
        Head = 'Zenith Crown',
        Ear2 = 'Astral Earring',
        Hands = 'Zenith Mitts',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Serket Ring',
        Waist = 'Penitent\'s Rope',
        Legs = 'Zenith Slacks',
        Feet = 'Rostrum Pumps',
        EquipOrder = {
            { Slot = 'Head', MPValue = 50 },
            { Slot = 'Hands', MPValue = 50 },
            { Slot = 'Ring1', MPValue = 50 },
            { Slot = 'Ring2', MPValue = 50 },
            { Slot = 'Legs', MPValue = 50 },
            { Slot = 'Feet', MPValue = 30 },
            { Slot = 'Ear2', MPValue = 25 },
            { Slot = 'Waist', MPValue = .33 },
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
    }
};

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    gFunc.LockStyle(profile.Sets.Lockstyle);
    Common.CreateDefaultData(
        profile, 
        {  }, 
        { 'EarthStaff', }, 
        {  }, 
        { 'MPBalanced', 'EvasionIdle', 'PDTIdle' }, 
        {  },
        675,
        825
    );
    Common.SetDefaultStances(profile, 0, 1, 0, 1, 0);
    Common.SetDefaultModes(profile, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
    Common.LoadDefaultKeybinds();
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^F8 /lac fwd Mode DefenseMode Plus');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind +^F8 /lac fwd Mode DefenseMode Minus');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^F9 /lac fwd Mode MagicBurstMode Plus');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind +^F9 /lac fwd Mode MagicBurstMode Minus');
end

profile.OnUnload = function()
    Common.UnloadDefaultKeybinds();
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ^F8 /lac fwd Mode DefenseMode Plus');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +^F8 /lac fwd Mode DefenseMode Minus');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ^F9 /lac fwd Mode MagicBurstMode Plus');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +^F9 /lac fwd Mode MagicBurstMode Minus');
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