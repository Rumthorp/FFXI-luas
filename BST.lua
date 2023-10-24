local profile = {};
profile.Sets = {
    Lockstyle = {
        Head = 'Chef\'s Hat',
        Body = 'Culinarian\'s Apron',
        Hands = 'Dusk Gloves',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Armada Sollerets',
    },
    IdleMelee = {
        Main = 'Maneater',
        Sub = 'Viking Shield',
        Head = 'Patroclus\'s Helm',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Haubergeon',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Armada Sollerets',
        Ammo = 'Olibanum Sachet'
    },
    IdleStationary = {
        Hands = 'Dusk Gloves',
    },
    IdleMage = {
        Main = 'Maneater',
        Sub = 'Viking Shield',
        Ammo = 'W. Meat Broth',
        Head = 'Patroclus\'s Helm',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Kirin\'s Osode',
        Hands = 'Ogre Gloves',
        Ring1 = 'Astral Ring',
        Ring2 = 'Astral Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Ogre Ledelsens',
        Ammo = 'Olibanum Sachet'
    },
    Charm = {
        Main = 'Light Staff',
        Ammo = 'W. Meat Broth',
        Head = 'Monster Helm',
        Neck = 'Bird Whistle',
        Ear1 = 'Coral Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Monster Jackcoat',
        Hands = 'Beast Gloves',
        Ring1 = 'Angel\'s Ring',
        Ring2 = 'Angel\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Corsette +1',
        Legs = 'Bst. Trousers +1',
        Feet = 'Beast Gaiters',
    },
    Reward = {
        Head = 'Beast Helm',
        Neck = 'Justice Badge',
        Ear2 = 'Geist Earring',
        Ear1 = 'Geist Earring',
        Body = 'Beast Jackcoat',
        Hands = 'Ogre Gloves',
        Ring1 = 'Sapphire Ring',
        Ring2 = 'Sapphire Ring',
        Back = 'Amemet Mantle',
        Waist = 'Friar\'s Rope',
        Feet = 'Monster Gaiters',
    },
    HELM = {
        Body = "Field Tunica",
        Hands = "Field Gloves",
        Legs = "Field Hose",
        Feet = "Field Boots"
    },
    Strength = {
        Head = "Wyvern Helm",
        Neck = "Spike Necklace",
        Ear2 = 'Coral Earring',
        Ear1 = 'Hollow Earring',
        Body = "Hecatomb Harness",
        Hands = "Ogre Gloves",
        Ring1 = "Ruby Ring",
        Ring2 = "Ruby Ring",
        Waist = "Warwolf Belt",
        Legs = "Bst. Trousers +1",
    },
    StrengthMage = {
        Neck = "Spike Necklace",
        Body = "Kirin\'s Osode",
        Waist = "Warwolf Belt"
    },
    MindMage = {

    },
    SixtyMage = {
        Main = 'Mythril Pick',
        Sub = 'Viking Shield',
        Ammo = 'F. Carrot Broth',
        Head = 'Beast Helm',
        Neck = 'Peacock Amulet',
        Ear1 = 'Beetle Earring',
        Ear2 = 'Beetle Earring',
        Body = 'Gaudy Harness',
        Hands = 'Ryl.Sqr. Mufflers',
        Ring1 = 'Astral Ring',
        Ring2 = 'Astral Ring',
        Waist = 'Swordbelt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Bounding Boots',
    },
    Silly = {
        Main = ""
    },
    CallBeast = {
        Hands = 'Monster Gloves'
    },
    Mining = {
        Body = "Field Tunica",
        Hands = "Field Gloves",
        Legs = "Field Hose",
        Feet = "Field Boots"
    }
};

profile.Packer = {
};
profile.Stance = 'Melee'

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    gFunc.LockStyle(profile.Sets.Lockstyle)
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    if (args[1] == 'Melee') then
        profile.Stance = 'Melee';
    elseif (args[1] == 'Mining') then
        profile.Stance = 'Mining';
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    if (player.SubJob == "WHM") then
        gFunc.EquipSet(profile.Sets.IdleMage);
    elseif (player.SubJob == "NIN") then
        gFunc.EquipSet(profile.Sets.IdleMelee);
        gFunc.Equip('sub', "Octave Club");
    else
        gFunc.EquipSet(profile.Sets.IdleMelee);
    end
    if (player.IsMoving == false and player.Status == 'Engaged') then
        gFunc.EquipSet(profile.Sets.IdleStationary); 
    end
    if (profile.Stance == 'Mining') then
        gFunc.EquipSet(profile.Sets.Mining);
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if (action.Name == 'Charm') then
        -- gFunc.EquipSet(profile.Sets.Charm);
    elseif (action.Name == 'Reward') then
        gFunc.EquipSet(profile.Sets.Reward);
    elseif (action.Name == 'Call Beast') then
        gFunc.EquipSet(profile.Sets.CallBeast);
    end
end

profile.HandleItem = function()
    local item = gData.GetAction();
    gFunc.Echo(255, item.Name)
    if (string.match(item.Name, 'pickaxe')) or (string.match(item.Name, 'hatchet')) then
        gFunc.EquipSet(profile.Sets.HELM)
    end
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    -- local action = gData.GetAction();
    -- if (string.contains(action.Name, 'Slow')) then
    --     gFunc.EquipSet(profile.Sets.);
    -- elseif (string.contains(action.Name, 'Slow')) then
    --     gFunc.EquipSet(profile.Sets.);
    -- end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local player = gData.GetPlayer();
    if (player.SubJob == "WHM") then
        gFunc.EquipSet(profile.Sets.StrengthMage);
    else 
        gFunc.EquipSet(profile.Sets.Strength);  
    end
       
end

return profile;