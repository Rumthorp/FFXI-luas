local Common = gFunc.LoadFile('Common.lua');
local isTargetTagged = gFunc.LoadFile('Tag.lua');
local profile = {};

profile.Sets = {
    Lockstyle = {
        Head = 'Emperor Hairpin',
        Body = 'Assassin\'s Vest',
        Hands = 'Assassin\'s Armlets',
        Legs = 'Homam Cosciales',
        Feet = 'Homam Gambieras'
    },
    DaggerClub = {
        Main = 'X\'s Knife',
        Sub = 'Octave Club',
    },
    DaggerDagger = {
        Main = 'X\'s Knife',
        Sub = 'Blau Dolch',
    },
    DaggerShield = {
        Main = 'X\'s Knife',
        Sub = 'Tatami Shield',
        Ear2 = 'Suppanomimi'
    },
    Unarmed = {
        Main = 'Destroyers'
    },
    SwordShield = {
        Main = 'Seiryu\'s Sword',
        Sub = 'Tatami Shield'
    },
    Crossbow = {
        Range = 'Ziska\'s Crossbow'
    },
    Boomerang = {
        Range = 'Ungur Boomerang'
    },
    WarpStaff = {
        Main = 'Treat Staff II'
    },
    WarpClub = {
        Main = 'Warp Club'
    },
    Damage = {
        Head = 'Homam Zucchetto',
        Neck = 'Love Torque',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Stealth Earring',
        Body = 'Rapparee Harness',
        Hands = 'Dusk Gloves',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Homam Cosciales',
        Feet = 'Homam Gambieras',

    },
    Accuracy = {
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Hollow Earring',
        Body = 'Homam Corazza',
        Hands = 'Homam Manopolas',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Homam Cosciales',
        Feet = 'Homam Gambieras',
    },
    Evasion = {
        Head = 'Emperor Hairpin',
        Neck = 'Evasion Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Scorpion Harness',
        Hands = 'War Gloves +1',
        Ring1 = 'Emerald Ring',
        Ring2 = 'Emerald Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Scouter\'s Rope',
        Legs = 'Raven Hose',
        Feet = 'Dance Shoes',
    },
    DuskMovement = {
        Hands = 'Homam Manopolas',
    },
    Movement = {
        Feet = 'Trotter Boots'
    },
    SacHP = {
        Head = 'Emperor Hairpin',
        Ear2 = 'Astral Earring',
        Body = 'Blue Cotehardie',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Serket Ring',
        Waist = 'Scouter\'s Rope',
    },
    IdleEvasion = {
        Head = 'Emperor Hairpin',
        Neck = 'Evasion Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Scorpion Harness',
        Hands = 'War Gloves +1',
        Ring1 = 'Emerald Ring',
        Ring2 = 'Emerald Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Scouter\'s Rope',
        Legs = 'Raven Hose',
        Feet = 'Dance Shoes',
    },
    EnmityMinus = {
        Head = 'Patroclus\'s Helm',
        Ear2 = 'Novia Earring',
        Body = 'Raven Jupon',
        Hands = 'Raven Bracers',
        Ring2 = 'Tamas Ring',
        Legs = 'Raven Hose',
        Feet = 'Raven Gaiters'
    },
    TreasureHunter = {
        Neck = 'Nanaa\'s Charm',
        Hands = 'Assassin\'s Armlets',
        Legs = 'Assassin\'s Culottes'
    },
    Steal = {
        Main = 'Btm. Knife',
        Head = 'Rogue\'s Bonnet',
        Neck = 'Rabbit Charm',
        Ear1 = 'Physical Earring',
        Ear2 = 'Physical Earring',
        Body = 'Homam Corazza',
        Hands = 'Thief\'s Kote',
        Ring1 = 'Rogue\'s Ring',
        Ring2 = 'Bomb Queen Ring',
        Back = 'Gigant Mantle',
        Legs = 'Dusk Trousers',
        Feet = 'Rogue\'s Poulaines'
    },
    Flee = {
        Feet = 'Rogue\'s Poulaines'
    },
    Hide = {
        Body = 'Rogue\'s Vest'
    },
    SneakAttack = {
        Head = 'Voyager Sallet',
        Neck = 'Love Torque',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Blue Cotehardie',
        Hands = 'Rogue\'s Armlets',
        Ring1 = 'Spinel Ring',
        Ring2 = 'Spinel Ring',
        Waist = 'Warwolf Belt',
        Back = 'Assassin\'s Cape',
        Legs = 'Dragon Subligar',
        Feet = 'Bounding Boots',
    },
    TrickAttack = {
        Head = 'Emperor Hairpin',
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Mrc.Cpt. Doublet',
        Ring1 = 'Emerald Ring',
        Ring2 = 'Emerald Ring',
        Waist = 'Scouter\'s Rope',
        Back = 'Nomad\'s Mantle',
        Legs = 'Magna M Chausses',
        Feet = 'Bounding Boots',
    },
    SATA = {
        Head = 'Emperor Hairpin',
        Neck = 'Love Torque',
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Mrc.Cpt. Doublet',
        Hands = 'Magna Gauntlets',
        Ring1 = 'Deft Ring',
        Ring2 = 'Deft Ring',
        Back = 'Nomad\'s Mantle',
        Legs = 'Magna M Chausses',
        Feet = 'Bounding Boots',
    },
    Precast = {
        Ear1 = 'Loquac. Earring',
        Legs = 'Homam Cosciales',
    },
    Recast = {
        Head = 'Homam Zucchetto',
        Ear1 = 'Loquac. Earring',
        Body = 'Rapparee Harness',
        Hands = 'Homam Manopolas',
        Waist = 'Swift Belt',
        Legs = 'Homam Cosciales',
        Feet = 'Homam Gambieras',
    },
    AccuracyRA = {
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Drone Earring',
        Body = 'Rapparee Harness',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Back = 'Amemet Mantle',
        Waist = 'Scouter\'s Rope',
        Legs = 'Dusk Trousers',
        Feet = 'Homam Gambieras',
    },
    BloodyBolt = {
        Head = 'Rogue\'s Bonnet',
        Neck = 'Prudence Torque',
        Ear1 = 'Morion Earring +1',
        Ear2 = 'Morion Earring +1',
        Body = 'Blue Cotehardie',
        Hands = 'Wood Gauntlets',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Waist = 'Forest Rope',
        Feet = 'Wood M Ledelsens'
    },
    Charm = {
        Main = 'Apollo\'s Staff',
        Head = 'Noble\'s Ribbon',
        Neck = 'Bird Whistle',
        Ear2 = 'Trimmer\'s Earring',
        Ring1 = 'Angel\'s Ring',
        Ring2 = 'Angel\'s Ring',
        Back = 'Trimmer\'s Mantle',
        Waist = 'Corsette +1',
        Feet = 'Assassin\'s Pouln.',
    },
    Reward = {
        Main = 'Neptune\'s Staff',
        Neck = 'Faith Torque',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Ring1 = 'Sapphire Ring',
        Ring2 = 'Tamas Ring'
    },
    EviscerationPotency = {
        Head = 'Voyager Sallet',
        Neck = 'Love Torque',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Hecatomb Harness',
        Hands = 'Rogue\'s Armlets',
        Ring1 = 'Spinel Ring',
        Ring2 = 'Spinel Ring',
        Back = 'Amemet Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Dusk Trousers',
        Feet = 'Bounding Boots'
    },
    SharkBitePotency = {
        Head = 'Voyager Sallet',
        Neck = 'Love Torque',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Hecatomb Harness',
        Hands = 'Rogue\'s Armlets',
        Ring1 = 'Spinel Ring',
        Ring2 = 'Spinel Ring',
        Back = 'Amemet Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Dragon Subligar',
        Feet = 'Bounding Boots'
    },
    DancingEdgePotency = {
        Head = 'Voyager Sallet',
        Neck = 'Love Torque',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Hecatomb Harness',
        Hands = 'Assassin\'s Armlets',
        Ring1 = 'Spinel Ring',
        Ring2 = 'Spinel Ring',
        Back = 'Amemet Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Dusk Trousers',
        Feet = 'Bounding Boots'
    },
    EnergyDrainPotency = {
        Head = 'Optical Hat',
        Neck = 'Faith Torque',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'Homam Corazza',
        Hands = 'War Gloves +1',
        Ring1 = 'Sapphire Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Amemet Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Dusk Trousers',
        Feet = 'Homam Gamieras'
    }
};
profile.EngagedSetsWithDusk = T{
    'Damage'
};
profile.Sets['EnergyStealPotency'] = profile.Sets['EnergyDrainPotency'];
profile.Packer = {
};
local IgnoreTHSpells = T{
    'Utsusemi: Ichi',
    'Utsusemi: Ni',
    'Tonko: Ichi',
    'Tonko: Ni'
}

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    gFunc.LockStyle(profile.Sets.Lockstyle);
    Common.CreateDefaultData(
        profile, 
        { 'Damage', 'Accuracy', 'Evasion' }, 
        { 'DaggerClub', 'DaggerDagger', 'DaggerShield', 'Unarmed', 'SwordShield' }, 
        { 'Crossbow', 'Boomerang' }, 
        { 'IdleEvasion' }, 
        { 'BloodyBolt', 'SleepBolt', 'AcidBolt' },
        80
    );
    Common.SetDefaultStances(profile, 1, 1, 1, 1, 1);
    Common.SetDefaultModes(profile, 1, 1, 1, 2, 1, 2, 1, 3);
    Common.LoadDefaultKeybinds();
end

profile.OnUnload = function()

end

profile.HandleCommand = function(args)
    Common.DefaultCommandHandles(profile, args)
end

profile.HandleDefault = function()
    Common.HandleDefault(profile);
    local player = gData.GetPlayer();
    if (not isTargetTagged() and player.Status == 'Engaged') then
        gFunc.EquipSet(profile.Sets.TreasureHunter);
    end
end

profile.HandleAbility = function()
    --add tag. make sure ability doesn't target self?
    Common.HandleAbility(profile);
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    Common.HandlePrecast(profile)
end

profile.HandleMidcast = function()
    Common.HandleMidcast(profile);
    local player = gData.GetPlayer();
    local action = gData.GetAction();
    if (not isTargetTagged() and not IgnoreTHSpells:contains(action.Name)) then
        gFunc.EquipSet(profile.Sets.TreasureHunter);
    end
end

profile.HandlePreshot = function()
    Common.HandlePreshot(profile);
end

profile.HandleMidshot = function()
    Common.HandleMidshot(profile);
    local player = gData.GetPlayer();
    if (not isTargetTagged()) then
        gFunc.EquipSet(profile.Sets.TreasureHunter);
    end
end

profile.HandleWeaponskill = function()
    Common.HandleWeaponskill(profile);
    local player = gData.GetPlayer();
    if (not isTargetTagged()) then
        gFunc.EquipSet(profile.Sets.TreasureHunter);
    end
end

return profile;