local profile = {};
profile.Sets = {
    IdleNin = {
        Main = 'Earth Staff',
        Range = 'Cornette +2',
        Head = 'Noble\'s Ribbon',
        Neck = 'Bird Whistle',
        Ear1 = 'Beastly Earring',
        Ear2 = 'Drone Earring',
        Body = 'Choral Jstcorps',
        Hands = 'Choral Cuffs',
        Ring1 = 'Angel\'s Ring',
        Ring2 = 'Angel\'s Ring',
        Back = 'Jester\'s Cape',
        Waist = 'Corsette +1',
        Legs = 'Choral Cannions',
        Feet = 'Choral Slippers',
    },
    IdleMage = {
        Range = 'Cornette +2',
        Head = 'Zenith Crown',
        Neck = 'Holy Phial',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Astral Earring',
        Body = 'Kirin\'s Osode',
        Hands = 'Zenith Mitts',
        Ring1 = 'Astral Ring',
        Ring2 = 'Astral Ring',
        Back = 'Errant Cape',
        Waist = 'Powerful Rope',
        Legs = 'Bard\'s Cannions',
        Feet = 'Rostrum Pumps',
    },
    Healing = {
        Main = "Light Staff",
        Neck = "Justice Badge",
    },
    Resting = {
        Main = "Dark Staff"
    },
    Minuet = {
        Range = "Cornette +2",
    },
    Threnody = {
        Range = "Piccolo +1",
    },
    Minne = {
        Range = "Harp +1",
    },
    Mambo = {
        Range = "Gemshorn + 1"
    },
    March = {
        Range = "Ryl.Spr. Horn"
    },
    Requiem = {
        Range = "Siren Flute"
    },
    Paeon = {
        Range = "Ebony Harp +1"
    },
    Elegy = {
        Range = "Horn +1"
    },
    Etude = {
        Range = "Rose Harp +1"
    },
    Madrigal = {
        Range = "Traversiere +1"
    },
    March = {
        Range = "Faerie Piccolo"
    },
    Lullaby = {
        Range = "Mary\'s Horn"
    },
    Carol = {
        Range = "Crumhorn +1"
    },
    Prelude = {
        Range = "Angel's Flute +1"
    },
    MeleeIdle = {
        Main = 'Joyeuse',
        Sub = 'Genbu\'s Shield',
        Range = 'Cornette +2',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Scorpion Harness',
        Hands = 'Battle Gloves',
        Ring1 = 'Jaeger Ring',
        Ring2 = 'Sattva Ring',
        Back = 'Bard\'s Cape',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Bounding Boots',
    }};

local ElementalStaffTable = {
    ['Thunder'] = 'Thunder Staff',
    ['Earth'] = 'Earth Staff',
    ['Light'] = 'Light Staff',
    ['Dark'] = 'Dark Staff'
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
    local player = gData.GetPlayer();
    if (player.Status == 'Resting') then 
        gFunc.EquipSet(profile.Sets.Resting);
    elseif (player.SubJob == "NIN") then 
        gFunc.EquipSet(profile.Sets.IdleNin);
    elseif (player.SubJob == "BST") then 
        gFunc.EquipSet(profile.Sets.MeleeIdle);
    elseif (player.SubJob == "WHM") then 
        gFunc.EquipSet(profile.Sets.IdleMage);
        if (player.Status == "Engaged") then
            gFunc.Equip('main', 'Octave Club');
        elseif (player.TP <= 300) then
            gFunc.Equip('main', 'Earth Staff');
        end
    end
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
    
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    local action = gData.GetAction();
    if (action.Skill == "Healing Magic") then
        gFunc.EquipSet(profile.Sets.Healing);
    elseif (action.Type == "Bard Song") then
        if (string.contains(action.Name, 'Minuet')) then
            gFunc.EquipSet(profile.Sets.Minuet);
        elseif (string.contains(action.Name, 'Threnody')) then
            gFunc.EquipSet(profile.Sets.Threnody);
            gFunc.Equip('main', ElementalStaffTable[action.Element]);
        elseif (string.contains(action.Name, 'Minne')) then
            gFunc.EquipSet(profile.Sets.Minne);
        elseif (string.contains(action.Name, 'Mambo')) then
            gFunc.EquipSet(profile.Sets.Mambo);
        elseif (string.contains(action.Name, 'March')) then
            gFunc.EquipSet(profile.Sets.March);
        elseif (string.contains(action.Name, 'Requiem')) then
            gFunc.EquipSet(profile.Sets.Requiem);
            gFunc.Equip('main', ElementalStaffTable[action.Element]);
        elseif (string.contains(action.Name, 'Paeon')) then
            gFunc.EquipSet(profile.Sets.Paeon);
        elseif (string.contains(action.Name, 'Elegy')) then
            gFunc.EquipSet(profile.Sets.Elegy);
            gFunc.Equip('main', ElementalStaffTable[action.Element]);
        elseif (string.contains(action.Name, 'Etude')) then
            gFunc.EquipSet(profile.Sets.Etude);
        elseif (string.contains(action.Name, 'Madrigal')) then
            gFunc.EquipSet(profile.Sets.Madrigal);
        elseif (string.contains(action.Name, 'March')) then
            gFunc.EquipSet(profile.Sets.March);
        elseif (string.contains(action.Name, 'Carol')) then
            gFunc.EquipSet(profile.Sets.Carol);
        elseif (string.contains(action.Name, 'Prelude')) then
            gFunc.EquipSet(profile.Sets.Prelude);
        elseif (string.contains(action.Name, 'Lullaby')) then
            gFunc.EquipSet(profile.Sets.Lullaby);
            gFunc.Equip('main', ElementalStaffTable[action.Element]);
        elseif (string.contains(action.Name, 'Virelai')) then
            gFunc.Equip('main', ElementalStaffTable[action.Element]);
            
        end
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;