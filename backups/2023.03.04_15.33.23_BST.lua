local profile = {};
profile.Sets = {
    IdleMelee = {
        Main = 'Rsv.Cpt. Pick',
        Sub = 'Viking Shield',
        Ammo = 'W. Meat Broth',
        Head = 'Ogre Mask',
        Neck = 'Peacock Amulet',
        Ear1 = 'Beastly Earring',
        Ear2 = 'Coral Earring',
        Body = 'Assault Jerkin',
        Hands = 'Ogre Gloves',
        Ring1 = 'Assailant\'s Ring',
        Ring2 = 'Ruby Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swordbelt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Ogre Ledelsens',
    },
    IdleMage = {
        Main = 'Rsv.Cpt. Pick',
        Sub = 'Viking Shield',
        Ammo = 'W. Meat Broth',
        Head = 'Ogre Mask',
        Neck = 'Peacock Amulet',
        Ear1 = 'Beastly Earring',
        Ear2 = 'Coral Earring',
        Body = 'Assault Jerkin',
        Hands = 'Ogre Gloves',
        Ring1 = 'Assailant\'s Ring',
        Ring2 = 'Ruby Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swordbelt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Ogre Ledelsens',
    },
    Charm = {
        Main = 'Light Staff',
        Ammo = 'W. Meat Broth',
        Head = 'Monster Helm',
        Neck = 'Bird Whistle',
        Ear1 = 'Beastly Earring',
        Ear2 = 'Coral Earring',
        Body = 'Beast Jackcoat',
        Hands = 'Beast Gloves',
        Ring1 = 'Angel\'s Ring',
        Ring2 = 'Angel\'s Ring',
        Back = 'Amemet Mantle',
        Waist = 'Corsette +1',
        Legs = 'Beast Trousers',
        Feet = 'Beast Gaiters',
    },
    Reward = {
        Main = 'Rsv.Cpt. Pick',
        Sub = 'Viking Shield',
        Ammo = 'Pet Food Zeta',
        Head = 'Beast Helm',
        Neck = 'Justice Badge',
        Ear1 = 'Beastly Earring',
        Ear2 = 'Coral Earring',
        Body = 'Beast Jackcoat',
        Hands = 'Ogre Gloves',
        Ring1 = 'Sapphire Ring',
        Ring2 = 'Sapphire Ring',
        Back = 'Amemet Mantle',
        Waist = 'Friar\'s Rope',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Beast Gaiters',
    },
    HELM = {
        Body = "Field Tunica",
        Hands = "Field Gloves",
        Legs = "Field Hose",
        Feet = "Field Boots"
    },
    Strength = {
        Neck = "Spike Necklace",
        Body = "Hecatomb Harness",
        Ring1 = "Ruby Ring",
        Ring2 = "Rajas Ring",
        Waist = "Warwolf Belt"
    }
};

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    
end

profile.HandleDefault = function()
    gFunc.EquipSet(profile.Sets.IdleMelee);
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if (action.Name == 'Charm') then
        gFunc.EquipSet(profile.Sets.Charm);
    elseif (action.Name == 'Reward') then
        gFunc.EquipSet(profile.Sets.Reward);
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
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    gFunc.EquipSet(profile.Sets.Strength);     
end

return profile;