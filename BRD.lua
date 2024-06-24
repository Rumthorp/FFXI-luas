local Common = gFunc.LoadFile('Common.lua');
local profile = {};

profile.Sets = {
    Lockstyle = {
        Head = 'Voyager Sallet',
        Body = 'Kirin\'s Osode',
        Hands = 'Seiryu\'s Kote',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Rostrum Pumps',
    },
    TerrasStaff = {
        Main = 'Terra\'s Staff'
    },
    DaggerShield = {
        Main = 'Blau Dolch',
        Sub = 'Genbu\'s Shield'
    },
    SwordShield = {
        Main = 'Joyeuse',
        Sub = 'Genbu\'s Shield'
    },
    DaggerClub = {
        Main = 'Blau Dolch',
        Sub = 'Octave Club'
    },
    SwordClub = {
        Main = 'Joyeuse',
        Sub = 'Octave Club'
    },
    DaggerSword = {
        Main = 'Blau Dolch',
        Sub = 'Joyeuse'
    },
    SwordDagger = {
        Main = 'Joyeuse',
        Sub = 'Blau Dolch'
    },
    WarpStaff = {
        Main = 'Treat Staff II'
    },
    WarpClub = {
        Main = 'Warp Cudgel'
    },
    MaxMP = {
        Head = 'Zenith Crown',              -- 50
        Neck = 'Uggalepih Pendant',         -- 20
        Ear1 = 'Loquac. Earring',           -- 30
        Ear2 = 'Astral Earring',            -- 25
        Body = 'Hydra Doublet',             -- 40
        Hands = 'Wood Gauntlets',           -- 55
        Ring1 = 'Vivian Ring',              -- 50
        Ring2 = 'Serket Ring',              -- 50
        Back = 'Errant Cape',               -- 30
        Waist = 'Forest Rope',              -- 60
        Legs = 'Bard\'s Cannions',          -- 42
        Feet = 'Rostrum Pumps'              -- 30
    },
    HasteEngaged = {
        Range = 'Angel Lyre',
        Head = 'Patroclus\'s Helm',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Stealth Earring',
        Body = 'Bard\'s Jstcorps',
        Hands = 'Dusk Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Hydra Gaiters'
    },
    AccuracyEngaged = {
        Range = 'Angel Lyre',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Hydra Doublet',
        Hands = 'Hydra Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Hydra Gaiters'
    },
    EvasionIdle = {
        Range = 'Cornette +2',
        Head = 'Emperor Hairpin',
        Neck = 'Evasion Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Hydra Doublet',
        Hands = 'Raven Bracers',
        Ring1 = 'Emerald Ring',
        Ring2 = 'Emerald Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Scouter\'s Rope',
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters',
    },
    PDTIdle = {
        Range = 'Cornette +2',
        Head = 'Darksteel Cap +1',
        Neck = 'Evasion Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Dst. Harness +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Jelly Ring',
        Ring2 = 'Coral Ring',
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
        Legs = 'Hydra Brais',
        Feet = 'Hydra Gaiters'
    },
    WindSkill = {
        Head = 'Bard\'s Roundlet',
        Ear2 = 'Musical Earring',
        Hands = 'Choral Cuffs'
    },
    StringSkill = {
        Head = 'Bard\'s Roundlet',
        Ear2 = 'Musical Earring',
        Body = 'Choral Jstcorps',
        Hands = 'Choral Cuffs',
        Feet = 'Bard\'s Slippers'
    },
    BardSongPreCast = {
        Head = 'Genbu\'s Kabuto',
        Neck = 'Evasion Torque',
        Ear1 = 'Loquac. Earring',
        Body = 'Bard\'s Jstcorps',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Minstrel\'s Ring',
        Ring2 = 'Bomb Queen Ring',
        Back = 'Gigant Mantle',
        Legs = 'Dusk Trousers',
        Feet = 'Rostrum Pumps',
    },
    Precast = {
        Ear1 = 'Loquac. Earring',
        Feet = 'Rostrum Pumps'
    },
    SongRecast = {
        Hands = 'Sheikh Gages',
    },
    Recast = {
        Head = 'Patroclus\'s Helm',
        Ear1 = 'Loquac. Earring',
        Hands = 'Dusk Gloves',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Rostrum Pumps'
    },
    SongAccuracy = {
        Head = 'Bard\'s Roundlet',
        Neck = 'Bird Whistle',
        Ear2 = 'Musical Earring',
        Body = 'Kirin\'s Osode',
        Hands = 'Choral Cuffs',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Angel\'s Ring',
        Back = 'Jester\'s Cape +1',
        Waist = 'Corsette +1',
        Legs = 'Errant Slops',
        Feet = 'Dance Shoes'
    },
    Sneak = {
        Feet = 'Dream Boots +1'
    },
    Invisible = {
        Hands = 'Dream Mittens +1'
    },
    Mnd = {
        Head = 'Zenith Crown',
        Neck = 'Faith Torque',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'Errant Hpl.',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Sapphire Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Mahatma Pigaches'
    },
    EnmityMinus = {
        Head = 'Patroclus\'s Helm',
        Ear2 = 'Novia Earring',
        Body = 'Hydra Doublet',
        Hands = 'Raven Bracers',
        Ring1 = 'Tamas Ring',
        Back = 'Errant Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Raven Hose',
        Feet = 'Raven Gaiters'
    },
    DuskMovement = {
        Hands = 'Raven Bracers'
    },
    SacHP = {
        Head = 'Zenith Crown',
        Ear2 = 'Astral Earring',
        Body = 'Assault Jerkin',
        Hands = 'Zenith Mitts',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Serket Ring',
        Waist = 'Scouter\'s Rope',
        Legs = 'Zenith Slacks',
        Feet = 'Rostrum Pumps'
    },
    EviscerationPotency = {
        Head = 'Voyager Sallet',
        Neck = 'Love Torque',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Kirin\'s Osode',
        Hands = 'Wood Gauntlets',
        Ring1 = 'Spinel Ring',
        Ring2 = 'Spinel Ring',
        Back = 'Amemet Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Bounding Boots',
    }
};
profile.Packer = {};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    gFunc.LockStyle(profile.Sets.Lockstyle);
    Common.CreateDefaultData(
        profile, 
        { 'HasteEngaged', 'AccuracyEngaged' }, 
        { 'TerrasStaff', 'DaggerShield', 'SwordShield', 'DaggerClub', 'SwordClub', 'DaggerSword', 'SwordDagger' }, 
        {  }, 
        { 'EvasionIdle', 'PDTIdle' }, 
        {  },
        100,
        400
    );
    Common.SetDefaultStances(profile, 1, 1, 0, 1, 0);
    Common.SetDefaultModes(profile, 1, 1, 1, 1, 2, 3, 1, 3);
    profile.Mode.InstrumentMode = 1,
    Common.LoadDefaultKeybinds();
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^F9 /lac fwd Mode InstrumentMode Plus');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind +^F9 /lac fwd Mode InstrumentMode Minus');
end

profile.OnUnload = function()
    Common.UnloadDefaultKeybinds();
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ^F9 /lac fwd Mode InstrumentMode Plus');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +^F9 /lac fwd Mode InstrumentMode Minus');
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
    local action = gData.GetAction();
    Common.HandleWeaponskill(profile)
end

return profile;