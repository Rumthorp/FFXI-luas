local profile = {};
profile.Sets = {
    Idle = {
        Main = '',
        Head = 'Brass Hairpin +1',
        Neck = 'Justice Badge',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Body = 'Kingdom Aketon',
        Hands = 'Dream Mittens +1',
        Ring1 = 'Astral Ring',
        Ring2 = 'Astral Ring',
        Legs = 'Dream Trousers +1',
        Feet = 'Dream Boots +1',
        Range = 'Remove',
    },
    Minuet = {
        Range = "Cornette +2"
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
    gFunc.EquipSet(profile.Sets.Idle);
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    local action = gData.GetAction();
    if (string.contains(action.Name, 'Minuet')) then
        gFunc.EquipSet(profile.Sets.Minuet);
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;