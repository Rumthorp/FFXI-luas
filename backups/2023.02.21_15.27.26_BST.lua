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
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
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
end

return profile;