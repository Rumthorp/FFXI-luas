local Common = gFunc.LoadFile('Common.lua');
local isTargetTagged = gFunc.LoadFile('common\\Tag.lua');

local profile = {};

profile.Sets = {
    IdleDamage = {
        Head = 'Homam Zucchetto',
        Neck = 'Peacock Amulet',
        Body = 'Rapparee Harness',
        Ear1 = 'Spike Earring',
        Ear2 = 'Spike Earring',
        Hands = 'War Gloves +1',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Bravo\'s Subligar',
        Feet = 'Homam Gambieras',
    },
    IdleStationaryDamage = {
        Hands = 'Dusk Gloves',
    },
    Running = {
        Feet = 'Trotter Boots'
    },
    IdleEvasion = {
        Head = 'Optical Hat',
        Neck = 'Evasion Torque',
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Scorpion Harness',
        Hands = 'War Gloves +1',
        Ring1 = 'Sattva Ring',
        Ring2 = 'Emerald Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Scouter\'s Rope',
        Legs = 'Crow Hose',
        Feet = 'Dance Shoes',
    },
    DualWield = {
        Main = 'X\'s Knife',
        Sub = 'Octave Club',
    },
    --Octave Club
    --Harpe
    --Darksteel Kukri +1
    SingleWield = {
        Main = 'X\'s Knife',
        Sub = 'Viking Shield'
    },
    Unarmed = {
        Main = 'Light Staff'
    },
    Crossbow = {
        Range = 'Ziska\'s Crossbow'
    },
    Boomerang = {
        Range = 'Ungur Boomerang'
    },
    TreasureHunter = {
        Neck = 'Nanaa\'s Charm',
        Hands = 'Assassin\'s Armlets',
        Legs = 'Assassin\'s Culottes'
    },
    Steal = {
        Head = 'Rogue\'s Bonnet',
        Hands = 'Thief\'s Kote',
        Legs = 'Assassin\'s Culottes',
        Feet = 'Rogue\'s Poulaines'
    },
    Flee = {
        Feet = 'Rogue\'s Poulaines'
    },
    SneakAttack = {
        Head = 'Voyager Sallet',
        Neck = 'Spike Necklace',
        Body = 'Mrc.Cpt. Doublet',
        Hands = 'Magna Gauntlets',
        Ring1 = 'Spinel Ring',
        Ring2 = 'Spinel Ring',
        Waist = 'Ryl.Kgt. Belt',
        Back = 'Amemet Mantle',
        Legs = 'Magna M Chausses',
        Feet = 'Bounding Boots',
    },
    TrickAttack = {
        Head = 'Emperor Hairpin',
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Mrc.Cpt. Doublet',
        Ring1 = 'Sattva Ring',
        Ring2 = 'Emerald Ring',
        Waist = 'Scouter\'s Rope',
        Back = 'Nomad\'s Mantle',
        Legs = 'Magna M Chausses',
        Feet = 'Bounding Boots',
    },
    SATA = {
        Head = 'Emperor Hairpin',
        Neck = 'Spike Necklace',
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Mrc.Cpt. Doublet',
        Hands = 'Magna Gauntlets',
        Ring1 = 'Sattva Ring',
        Ring2 = 'Deft Ring',
        Back = 'Nomad\'s Mantle',
        Legs = 'Magna M Chausses',
        Feet = 'Bounding Boots',
    },
    Haste = {
        Head = 'Homam Zucchetto',
        Body = 'Rapparee Harness',
        Hands = 'Dusk Gloves',
        Waist = 'Swift Belt',
        Legs = 'Bravo\'s Subligar',
        Feet = 'Homam Gambieras',
    },
    RangedAccuracy = {
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Drone Earring',
        Body = 'Rapparee Harness',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Back = 'Amemet Mantle',
        Waist = 'Scouter\'s Rope',
        Legs = 'Bravo\'s Subligar',
        Feet = 'Homam Gambieras',
    },
    BloodyBolts = {
        Ammo = 'Bloody Bolt'
    },
    AcidBolts = {
        Ammo = 'Acid Bolt'
    },
    SleepBolts = {
        Ammo = 'Sleep Bolt'
    },
    Charm = {
        Main = 'Light Staff',
        Head = 'Noble\'s Ribbon',
        Neck = 'Bird Whistle',
        Ear2 = 'Trimmer\'s Earring',
        Ring1 = 'Angel\'s Ring',
        Ring2 = 'Angel\'s Ring',
        Back = 'Trimmer\'s Mantle',
        Waist = 'Corsette +1',
        Feet = 'Assassin\'s Pouln.',
    },
    Mnd = {
        Neck = 'Holy Phial',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Ring1 = 'Sapphire Ring',
        Ring2 = 'Sapphire Ring',
        Waist = 'Friar\'s Rope',
    },
    Int = {
        Head = 'Rogue\'s Bonnet',
        Neck = 'Prudence Torque',
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
        Body = 'Blue Cotehardie',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring'
    },
    DexWS = {
        Head = 'Assassin\'s Bonnet',
        Neck = 'Spike Necklace',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Spike Earring',
        Body = 'Blue Cotehardie',
        Hands = 'Dusk Gloves',
        Ring1 = 'Spinel Ring',
        Ring2 = 'Spinel Ring',
        Waist = 'Warwolf Belt',
        Back = 'Amemet Mantle',
        Legs = 'Dragon Subligar',
        Feet = 'Bounding Boots',
    },
    DexAgiWS = {
        Head = 'Emperor Hairpin',
        Neck = 'Spike Necklace',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Drone Earring',
        Body = 'Blue Cotehardie',
        Hands = 'Dusk Gloves',
        Ring1 = 'Spinel Ring',
        Ring2 = 'Spinel Ring',
        Waist = 'Warwolf Belt',
        Back = 'Amemet Mantle',
        Legs = 'Magna M Chausses',
        Feet = 'Bounding Boots',
    },
    DexChrWS = {
        Head = 'Assassin\'s Bonnet',
        Neck = 'Spike Necklace',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Beastly Earring',
        Body = 'Blue Cotehardie',
        Hands = 'Assassin\'s Armlets',
        Ring1 = 'Spinel Ring',
        Ring2 = 'Spinel Ring',
        Waist = 'Warwolf Belt',
        Back = 'Amemet Mantle',
        Legs = 'Dragon Subligar',
        Feet = 'Bounding Boots',
    }
};
profile.Stance = 'IdleDamage';
profile.WeaponStance = 'DualWield';
profile.RangedStance = 'Crossbow';
profile.AmmoStance = 'AcidBolts';

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    local command = args[1]
    if (command == 'IdleDamage' or command == 'IdleEvasion'or command == 'IdleShowoff') then
        profile.Stance = command;
        goto done;
    end
    if (command == 'DualWield' or command == 'SingleWield' or command == 'Unarmed') then 
        profile.WeaponStance = command;
        goto done;
    end
    if (command == 'Crossbow'or command == 'Boomerang' or command == 'Reward') then
        profile.RangedStance = command;
        goto done;
    end
    if (command == 'AcidBolts' or command == 'SleepBolts' or command == 'BloodyBolts') then
        profile.AmmoStance = command;
        goto done;
    end
    ::done::
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local SneakAttack = gData.GetBuffCount('Sneak Attack');
    local TrickAttack = gData.GetBuffCount('Trick Attack');
    if (player.Status == 'Engaged') then
        if (SneakAttack > 0 and TrickAttack > 0) then 
            gFunc.EquipSet(profile.Sets.SATA);
            goto one;
        end
        if (SneakAttack > 0) then 
            gFunc.EquipSet(profile.Sets.SneakAttack);
            goto one;
        end
        if (TrickAttack > 0) then 
            gFunc.EquipSet(profile.Sets.TrickAttack);
            goto one;
        end
        gFunc.EquipSet(profile.Sets[profile.Stance]);
        if (player.IsMoving == false and profile.Stance == 'IdleDamage') then
            gFunc.EquipSet(profile.Sets.IdleStationaryDamage); 
        end
        -- if (player.SubJob == 'BST') then
        --     gFunc.EquipSet(profile.Sets.TreasureHunter)
        -- end
        goto one;
    end
    if (profile.Stance == 'IdleShowoff') then
        gFunc.EquipSet(profile.Sets.IdleDamage);
        goto one;
    end
    gFunc.EquipSet(profile.Sets.IdleEvasion);
    -- if (player.SubJob == 'BST') then
    --     gFunc.EquipSet(profile.Sets.TreasureHunter)
    -- end
    ::one::
    if (not isTargetTagged()) then
        gFunc.EquipSet(profile.Sets.TreasureHunter)
    end
    if (player.IsMoving == true and player.Status ~= 'Engaged') then
        gFunc.EquipSet(profile.Sets.Running);
    end
    gFunc.EquipSet(profile.Sets[profile.WeaponStance]);
    if (profile.RangedStance == 'Reward') then
        gFunc.Equip('Ammo', Common.EquipRewardFood(player.MainJobLevel));
        goto done;
    end
    gFunc.EquipSet(profile.Sets[profile.RangedStance]);
    ::done::
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if (action.Name == 'Charm') then
        gFunc.EquipSet(profile.Sets.Charm);
    end
    if (action.Name == 'Reward') then 
        gFunc.EquipSet(profile.Sets.Mnd);
    end
    if (action.Name == 'Steal') then
        gFunc.EquipSet(profile.Sets.Steal);
    end
    if (action.Name == 'Flee') then
        gFunc.EquipSet(profile.Sets.Flee);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    local action = gData.GetAction();
    gFunc.EquipSet(profile.Sets.Haste);
    -- if (action.Type == 'Ninjutsu' ) then

    -- end
    if (not isTargetTagged()) then
        gFunc.EquipSet(profile.Sets.TreasureHunter)
    end
end

profile.HandlePreshot = function()
    if (profile.RangedStance == 'Crossbow') then
        gFunc.EquipSet(profile.Sets[profile.AmmoStance]);
    end
    if (not isTargetTagged()) then
        gFunc.EquipSet(profile.Sets.TreasureHunter)
    end
end

profile.HandleMidshot = function()
    gFunc.EquipSet(profile.Sets.RangedAccuracy);
    if (profile.AmmoStance == 'BloodyBolts') then
        gFunc.EquipSet(profile.Sets.Int);
    end
    if (not isTargetTagged()) then
        gFunc.EquipSet(profile.Sets.TreasureHunter)
    end
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    if (action.Name == 'Viper Bite') then
        gFunc.EquipSet(profile.Sets.DexWS);
    elseif (action.Name == 'Shark Bite') then
        gFunc.EquipSet(profile.Sets.DexAgiWS);
    elseif (action.Name == 'Dancing Edge') then
        gFunc.EquipSet(profile.Sets.DexChrWS);
    end
end

return profile;