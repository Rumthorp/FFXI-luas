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
        Feet = 'Wood M Ledelsens'
    },
    PhysicalDefense = {
        Head = 'Genie Tiara',
        Neck = 'Evasion Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Igqira Weskit',
        Hands = 'Igqira Manillas',
        Ring1 = 'Coral Ring',
        Ring2 = 'Jelly Ring',
        Back = 'Cheviot Cape',
        Waist = 'Forest Rope',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters',
        EquipOrder = {
            { Slot = 'Head', MPValue =  },
            { Slot = 'Neck', MPValue =  },
            { Slot = 'Ear1', MPValue =  },
            { Slot = 'Ear2', MPValue =  },
            { Slot = 'Body', MPValue =  },
            { Slot = 'Hands', MPValue =  },
            { Slot = 'Ring1', MPValue =  },
            { Slot = 'Ring2', MPValue =  },
            { Slot = 'Back', MPValue =  },
            { Slot = '', MPValue =  },
            { Slot = '', MPValue =  },
            Head = 'Genie Tiara',
            Neck = 'Evasion Torque',
            Ear1 = 'Novia Earring',
            Ear2 = 'Suppanomimi',
            Body = 'Igqira Weskit',
            Hands = 'Igqira Manillas',
            Ring1 = 'Coral Ring',
            Ring2 = 'Jelly Ring',
            Back = 'Cheviot Cape',
            Waist = 'Forest Rope',
            Legs = 'Hydra Brais',
            Feet = 'Hydra Gaiters',
        }
    },
    EvasionIdle = {
        Head = 'Emperor Hairpin',
        Neck = 'Evasion Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Hydra Doublet',
        Hands = 'Hydra Gloves',
        Ring1 = 'Emerald Ring',
        Ring2 = 'Emerald Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Forest Rope',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters'
    },
    EnfeeblingSkill = {
        Head = 'Genie Tiara',
        Neck = 'Enfeebling Torque',
        Body = 'Wizard\'s Coat',
        Legs = 'Nashira Seraweels'
    },
    ElementalSkill = {
        Head = 'Sorcerer\'s Petas.',
        Body = 'Igqira Weskit',
        Hands = 'Wizard\'s Gloves',
        Feet = 'Nashira Crackows'
    },
    DarkSkill = {
        Body = 'Nashira Manteel',
        Hands = 'Sorcerer\'s Gloves',
        Legs = 'Wizard\'s Tonban'
    },
    Precast = {
        Ear1 = 'Loquac. Earring',
        Feet = 'Rostrum Pumps'
    },
    Recast = {
        Head = 'Nashira Turban',
        Ear1 = 'Loquac. Earring',
        Body = 'Nashira Manteel',
        Hands = 'Nashira Gages',
        Waist = 'Swift Belt',
        Legs = 'Nashira Seraweels',
        Feet = 'Rostrum Pumps'
    },
    MagicAccuracy = {
        Head = 'Nashira Turban',
        Body = 'Nashira Manteel',
        Hands = 'Nashira Gages',
        Ring2 = 'Tamas Ring',
        Legs = 'Nashira Seraweels',
        Feet = 'Nashira Crackows'
    },
    MagicAttack = {
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Igqira Weskit',
        Hands = 'Zenith Mitts'
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
        Feet = 'Rostrum Pumps'
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
        Feet = 'Mahatma Pigaches'
    },
    Interruption = {
        Main = 'Eremite\'s Wand',
        Sub = 'Genbu\'s Shield',
        Head = 'Nashira Turban',
        Waist = 'Druid\'s Rope',
        Feet = 'Sorcerer\'s Sabots'
    },
    EnmityMinus = {
        Ammo = 'Hedgehog Bomb',     -- 1
        Head = 'Hydra Beret',       -- 8
        Ear2 = 'Novia Earring',     -- 7
        Body = 'Hydra Doublet',     -- 9
        Hands = 'Nashira Gages',    -- 4
        Ring2 = 'Tamas Ring',       -- 5
        Back = 'Errant Cape',       -- 5
        Waist = 'Penitent\'s Rope', -- 3
        Legs = 'Hydra Brais',       -- 6
        Feet = 'Hydra Gaiters'      -- 5  total: 53
    },
    AccuracyPotencyBalanced = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Sorcerer\'s Petas.',
        Neck = 'Prudence Torque',
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring'
    },
    EnmityAccuracyBalanced = {

    },
    BLMThreshholdRing = {
        Ring1 = 'Sorcerer\'s Ring'
    },
    UggPendant = {
        Neck = 'Uggalepih Pendant'
    },
    OverlordsRing = {
        Ring1 = 'Overlord\'s Ring'
    },
    RepublicCirclet = {
        Head = 'Republic Circlet'
    },
    OpuntiaHoop = {
        Ring1 = 'Opuntia Hoop'
    },
    SacHP = {
        Head = 'Zenith Crown',
        Ear2 = 'Astral Earring',
        Hands = 'Zenith Mitts',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Serket Ring',
        Waist = 'Penitent\'s Rope',
        Legs = 'Zenith Slacks',
        Feet = 'Rostrum Pumps'
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
    Common.SetDefaultModes(profile, 1, 1, 1, 1, 1, 3, 1, 3);
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