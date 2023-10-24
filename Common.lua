-- HealingSkill
-- EnhancingSkill
-- EnfeeblingSkill
-- ElementalSkill
-- DarkSkill
-- MagicAttack
-- Mnd
-- Int
-- Recast
-- Interruption
-- Staff
-- IntWeapon
-- MndWeapon

local SpellPriorityTypes = {
  ['InterruptionFocus'] = { 'Interruption', 'Recast' },
  ['RecastFocus'] = { 'Recast', 'Interruption' },
  ['Cure'] = { 'Staff', 'HealingSkill', 'Mnd' },
  ['Stoneskin'] = { 'Recast', 'EnhancingSkill', 'Mnd' },
  ['EnhancingBuff'] = { 'EnhancingSkill', 'Interruption' },
  ['WhiteMagicEnfeeble'] = { 'Staff', 'EnfeeblingSkill', 'Mnd' },
  ['BlackMagicEnfeeble'] = { 'Staff', 'EnfeeblingSkill', 'Int' },
  ['MndFocus'] = { 'Staff', 'Mnd' },
  ['IntFocus'] = { 'Staff', 'Int' },
  ['WhiteMagicNuke'] = { 'Staff', 'MagicAttack', 'DivineSkill', 'Mnd' },
  ['BlackMagicNuke'] = { 'Staff', 'MagicAttack', 'ElementalSkill', 'Int' },
  ['DarkFocus'] = { 'Staff', 'DarkSkill', 'Recast', 'Interruption' },
  ['Sneak'] = {'Sneak', 'Recast'},
  ['Invisible'] = {'Invisible', 'Recast'}
}

local SpellTypes = {
  ['White Magic'] = {
    ['Cure'] = 'Cure',
    ['Cure II'] = 'Cure',
    ['Cure III'] = 'Cure',
    ['Cure IV'] = 'Cure',
    ['Cure V'] = 'Cure',
    ['Curaga'] = 'Cure',
    ['Curaga II'] = 'Cure',
    ['Curaga III'] = 'Cure',
    ['Curaga IV'] = 'Cure',
    ['Raise'] = 'InterruptionFocus',
    ['Raise II'] = 'InterruptionFocus',
    ['Raise III'] = 'InterruptionFocus',
    ['Reraise'] = 'InterruptionFocus',
    ['Reraise II'] = 'InterruptionFocus',
    ['Reraise III'] = 'InterruptionFocus',
    ['Poisona'] = 'RecastFocus',
    ['Paralyna'] = 'RecastFocus',
    ['Blindna'] = 'RecastFocus',
    ['Silena'] = 'RecastFocus',
    ['Stona'] = 'RecastFocus',
    ['Viruna'] = 'RecastFocus',
    ['Cursna'] = 'RecastFocus',
    ['Holy'] = 'WhiteMagicNuke',
    ['Banish'] = 'WhiteMagicNuke',
    ['Banish II'] = 'WhiteMagicNuke',
    ['Banish III'] = 'WhiteMagicNuke',
    ['Banishga'] = 'WhiteMagicNuke',
    ['Banishga II'] = 'WhiteMagicNuke',
    ['Flash'] = 'RecastFocus',
    ['Protect'] = 'RecastFocus',
    ['Protect II'] = 'RecastFocus',
    ['Protect III'] = 'RecastFocus',
    ['Protect IV'] = 'RecastFocus',
    ['Protectra'] = 'InterruptionFocus',
    ['Protectra II'] = 'InterruptionFocus',
    ['Protectra III'] = 'InterruptionFocus',
    ['Protectra IV'] = 'InterruptionFocus',
    ['Shell'] = 'RecastFocus',
    ['Shell II'] = 'RecastFocus',
    ['Shell III'] = 'RecastFocus',
    ['Shell IV'] = 'RecastFocus',
    ['Shellra'] = 'InterruptionFocus',
    ['Shellra II'] = 'InterruptionFocus',
    ['Shellra III'] = 'InterruptionFocus',
    ['Shellra IV'] = 'InterruptionFocus',
    ['Shellra V'] = 'InterruptionFocus',
    ['Blink'] = 'InterruptionFocus',
    ['Stoneskin'] = 'Stoneskin',
    ['Aquaveil'] = 'InterruptionFocus',
    ['Phalanx'] = 'EnhancingBuff',
    ['Haste'] = 'RecastFocus',
    ['Barfire'] = 'EnhancingBuff',
    ['BarBlizzard'] = 'EnhancingBuff',
    ['Baraero'] = 'EnhancingBuff',
    ['Barstone'] = 'EnhancingBuff',
    ['Barthunder'] = 'EnhancingBuff',
    ['Barwater'] = 'EnhancingBuff',
    ['Barfira'] = 'EnhancingBuff',
    ['Barblizzara'] = 'EnhancingBuff',
    ['Baraera'] = 'EnhancingBuff',
    ['Barstonra'] = 'EnhancingBuff',
    ['Barthundra'] = 'EnhancingBuff',
    ['Barwatera'] = 'EnhancingBuff',
    ['Barsleep'] = 'EnhancingBuff',
    ['Barpoison'] = 'EnhancingBuff',
    ['Barparalyze'] = 'EnhancingBuff',
    ['Barblind'] = 'EnhancingBuff',
    ['Barsilence'] = 'EnhancingBuff',
    ['Barpetrify'] = 'EnhancingBuff',
    ['Barvirus'] = 'EnhancingBuff',
    ['Barsleepra'] = 'EnhancingBuff',
    ['Barpoisonra'] = 'EnhancingBuff',
    ['Barparalyzra'] = 'EnhancingBuff',
    ['Barblindra'] = 'EnhancingBuff',
    ['Barsilencera'] = 'EnhancingBuff',
    ['Enfire'] = 'EnhancingBuff',
    ['Enblizzard'] = 'EnhancingBuff',
    ['Enaero'] = 'EnhancingBuff',
    ['Enstone'] = 'EnhancingBuff',
    ['Enthunder'] = 'EnhancingBuff',
    ['Enwater'] = 'EnhancingBuff',
    ['Regen'] = 'RecastFocus',
    ['Regen II'] = 'RecastFocus',
    ['Regen III'] = 'RecastFocus',
    ['Refresh'] = 'RecastFocus',
    ['Erase'] = 'RecastFocus',
    ['Teleport-Holla'] = 'InterruptionFocus',
    ['Teleport-Dem'] = 'InterruptionFocus',
    ['Teleport-Mea'] = 'InterruptionFocus',
    ['Teleport-Yhoat'] = 'InterruptionFocus',
    ['Teleport-Altep'] = 'InterruptionFocus',
    ['Teleport-Vahzl'] = 'InterruptionFocus',
    ['Invisible'] = 'Invisible',
    ['Sneak'] = 'Sneak',
    ['Deodorize'] = 'RecastFocus',
    ['Dia'] = 'InterruptionFocus',
    ['Dia II'] = 'InterruptionFocus',
    ['Diaga'] = 'InterruptionFocus',
    ['Slow'] = 'MndFocus',
    ['Paralyze'] = 'MndFocus',
    ['Silence'] = 'WhiteMagicEnfeeble'
  },
  ['Black Magic'] = {
    ['Fire'] = 'BlackMagicNuke',
    ['Fire II'] = 'BlackMagicNuke',
    ['Fire III'] = 'BlackMagicNuke',
    ['Blizzard'] = 'BlackMagicNuke',
    ['Blizzard II'] = 'BlackMagicNuke',
    ['Blizzard III'] = 'BlackMagicNuke',
    ['Aero'] = 'BlackMagicNuke',
    ['Aero II'] = 'BlackMagicNuke',
    ['Aero III'] = 'BlackMagicNuke',
    ['Stone'] = 'BlackMagicNuke',
    ['Stone II'] = 'BlackMagicNuke',
    ['Stone III'] = 'BlackMagicNuke',
    ['Thunder'] = 'BlackMagicNuke',
    ['Thunder II'] = 'BlackMagicNuke',
    ['Thunder III'] = 'BlackMagicNuke',
    ['Water'] = 'BlackMagicNuke',
    ['Water II'] = 'BlackMagicNuke',
    ['Water III'] = 'BlackMagicNuke',
    ['Firaga'] = 'BlackMagicNuke',
    ['Blizzaga'] = 'BlackMagicNuke',
    ['Aeroga'] = 'BlackMagicNuke',
    ['Stonega'] = 'BlackMagicNuke',
    ['Thundaga'] = 'BlackMagicNuke',
    ['Waterga'] = 'BlackMagicNuke',
    ['Burn'] = 'IntFocus',
    ['Frost'] = 'IntFocus',
    ['Choke'] = 'IntFocus',
    ['Rasp'] = 'IntFocus',
    ['Shock'] = 'IntFocus',
    ['Drown'] = 'IntFocus',
    ['Blaze Spikes'] = 'IntFocus',
    ['Ice Spikes'] = 'IntFocus',
    ['Shock Spikes'] = 'IntFocus',
    ['Warp'] = 'InterruptionFocus',
    ['Escape'] = 'InterruptionFocus',
    ['Poison'] = 'BlackMagicEnfeeble',
    ['Poison II'] = 'BlackMagicEnfeeble',
    ['Poisonga'] = 'BlackMagicEnfeeble',
    ['Sleep'] = 'BlackMagicEnfeeble',
    ['Sleep II'] = 'BlackMagicEnfeeble',
    ['Sleepga'] = 'BlackMagicEnfeeble',
    ['Blind'] = 'IntFocus',
    ['Bind'] = 'BlackMagicEnfeeble',
    ['Dispel'] = 'RecastFocus',
    ['Gravity'] = 'BlackMagicEnfeeble',
    ['Bio'] = 'DarkFocus',
    ['Bio II'] = 'DarkFocus',
    ['Drain'] = 'DarkFocus',
    ['Aspir'] = 'DarkFocus',
    ['Tractor'] = 'RecastFocus'
  },
  ['Ninjutsu'] = {
    ['Utsusemi: Ichi'] = 'RecastFocus',
    ['Utsusemi: Ni'] = 'RecastFocus'
  },
  ['Bard Song'] = {

  }
}

local MPGear = {
  ['Rostrum Pumps'] = 30,
  ['Blessed Bliaut'] = 20,
  ['Blessed Mitts'] = 15,
  ['Blessed Trousers'] = 25,
  ['Blessed Pumps'] = 17,
  ['Reraise Hairpin'] = 21,
  ['Cleric\'s Bliaut'] = 24,
  ['Cleric\'s Mitts'] = 20,
  ['Cleric\'s Pantaln.'] = 17,
  ['Cleric\'s Duckbills'] = 18,
  ['Cleric\'s Belt'] = 40,
  ['Healer\'s Pantaln.'] = 15, 
  ['Healer\'s Duckbills'] = 20,
  ['Noble\'s Tunic'] = 17,
  ['Vermillion Cloak'] = 10,
  ['Friar\'s Rope'] = 5,
  ['Electrum Hairpin'] = 25,
  ['Magna Jerkin'] = 4,
  ['Magna Gauntlets'] = 24,
  ['Powerful Rope'] = 20,
  ['Magna M Chausses'] = 12,
  ['Mgn. M Ledelsens'] = 20,
  ['Devotee\'s Mitts'] = 8,
  ['Astral Ring'] = 25,
  ['Friar\'s Rope'] = 5,
  ['Morion Earring'] = 4,
  ['Geist Earring'] = 5,
  ['Holy Phial'] = 9,
  ['Warlock\'s Chapeau'] = 20,
  ['Warlock\'s Tabard'] = 14,
  ['Warlock\'s Gloves'] = 12,
  ['Warlock\'s Tights'] = 13,
  ['Warlock\'s Boots'] = 11,
  ['Duelist\'s Chapeau'] = 14,
  ['Duelist\'s Tabard'] = 14,
  ['Duelist\'s Gloves'] = 18,
  ['Duelist\'s Tights'] = 16,
  ['Duelist\'s Boots'] = 15,
  ['Hierarch Belt'] = 48,
  ['Zenith Crown'] = 50,
  ['Zenith Mitts'] = 50,
  ['Zenith Slacks'] = 50,
  ['Blue Cotehardie'] = 40,
  ['Mahatma Pigaches'] = 25,
  ['Errant Cuffs'] = 20,
  ['Rainbow Cape'] = 9,
  ['Errant Cape'] = 30,
  ['Loquac. Earring'] = 30,
  ['Astral Earring'] = 25,
  ['Hedgehog Bomb'] = 30
};

local ElementalStaffTable = {
  ['Earth'] = 'Earth Staff',
  ['Water'] = 'Water Staff',
  ['Wind'] = 'Wind Staff',
  ['Fire'] = 'Fire Staff',
  ['Ice'] = 'Ice Staff',
  ['Thunder'] = 'Thunder Staff',
  ['Light'] = 'Light Staff',
  ['Dark'] = 'Dark Staff'
};

local BuildMaxMpSet = function(profile, maxMissingMp, setString, overwrite)
  local currentMissingMp = profile.workingCurrentMissingMp;
  local newSet = profile.workingSet;
  for _, slot in ipairs(profile.SetEquipOrder[setString]) do
    if (profile.workingSet[slot] ~= nil and overwrite ~= true) then goto continue; end
    local item = profile.Sets[setString][slot];
    local newItemMp = 0;
    if (MPGear[item] ~= nil) then
        newItemMp = MPGear[item];
    end
    local oldItemMp = 0;
    if (profile.Sets.MaxMP[slot] ~= nil) then
        oldItemMp = MPGear[profile.Sets.MaxMP[slot]];
    end
    local mpDiff = math.abs(newItemMp - oldItemMp);
    if (currentMissingMp + mpDiff <= maxMissingMp) then
        newSet[slot] = item;
        currentMissingMp = currentMissingMp + mpDiff;
    end
    ::continue::
  end
  profile.workingCurrentMissingMp = currentMissingMp;
  profile.workingSet = newSet;
  
end

local CombineSets = function(profile, NewSet, overwrite)
  for slot, item in pairs(NewSet) do
    if (profile.workingSet[slot] ~= nil and overwrite ~= true) then goto continue; end
      profile.workingSet[slot] = item;
    ::continue::
  end
end

local EquipRewardFood = function(level)
  if (level >= 72) then
    return 'Pet Food Zeta';
  elseif (level >= 60) then
    return 'Pet Food Epsilon';
  elseif (level >= 48) then
    return 'Pet Food Delta';
  elseif (level >= 36) then
    return 'Pet Fd. Gamma';
  elseif (level >= 24) then
    return 'Pet Food Beta';
  elseif (level >= 12) then
    return 'Pet Food Alpha';
  end
end

return { 
  SpellPriorityTypes = SpellPriorityTypes, 
  SpellTypes = SpellTypes, 
  MPGear = MPGear,
  ElementalStaffTable = ElementalStaffTable,
  BuildMaxMpSet = BuildMaxMpSet,
  CombineSets = CombineSets,
  EquipRewardFood = EquipRewardFood,
};