local SpellPriorityTypes = {
  ['Recast'] = { 'Recast', 'MatchSkill' },
  ['InterruptionInterim'] = { 'Interruption', 'MatchSkill' },
  ['CurePotency'] = { 'EleStaff', 'WHMThreshholdRing', 'CurePotency', 'HealingSkill', 'Mnd' },
  ['CureEnmityMinus'] = { 'EleStaff', 'EnmityMinus', 'CurePotency', 'HealingSkill', 'Mnd' },
  ['CureEnmityPlus'] = { 'EleStaff', 'EnmityPlus', 'CurePotency', 'HealingSkill', 'Mnd' },
  ['CureEnmityBalanced'] = { 'EleStaff', 'CureEnmityBalanced' },
  ['Regen'] = { 'RegenPotency', 'Recast' },
  ['Stoneskin'] = { 'Mnd' },
  ['EnhancingSkill'] = { 'EnhancingSkill', 'Recast' },
  ['Spikes'] = { 'BLMThreshholdRing', 'UggPendant', 'RepublicCirclet', 'MagicAttack', 'Int' },
  ['BarSpell'] = {'WHMBar', 'EnhancingSkill', 'Recast' },
  ['FlashEnmity'] = { 'EleStaff', 'EnmityPlus', 'Recast', 'DivineSkill' },
  ['FlashRecast'] = { 'EleStaff', 'Recast', 'EnmityPlus', 'DivineSkill' },
  ['WhiteMagicEnfeeblePotency'] = { 'Mnd', 'EnfeeblingSkill' },
  ['WhiteMagicEnfeebleAccuracy'] = { 'EleStaff', 'EnfeeblingSkill', 'Mnd' },
  ['BlackMagicEnfeeblePotency'] = { 'Int', 'EnfeeblingSkill' },
  ['BlackMagicEnfeebleAccuracy'] = { 'EleStaff', 'EnfeeblingSkill', 'Int' },
  ['BlackMagicCCPotency'] = { 'EleStaff', 'Recast', 'EnfeeblingSkill', 'Int' },
  ['BlackMagicCCAccuracy'] = { 'EleStaff', 'EnfeeblingSkill', 'Recast' },
  ['WhiteMagicNukePotency'] = { 'EleStaff', 'UggPendant', 'RepublicCirclet', 'MagicAttack', 'Mnd', 'DivineSkill' },
  ['WhiteMagicNukeAccuracy'] = { 'EleStaff', 'DivineSkill', 'UggPendant', 'RepublicCirclet', 'MagicAttack', 'Mnd' },
  ['BlackMagicNukePotency'] = { 'EleStaff', 'BLMThreshholdRing', 'UggPendant', 'RepublicCirclet', 'MagicAttack', 'Int' },
  ['BlackMagicNukeAccuracy'] = { 'EleStaff', 'ElementalSkill', 'BLMThreshholdRing', 'MagicAttack', 'Int' },
  ['BlackMagicNukeBalanced'] = { 'EleStaff', 'BLMThreshholdRing', 'UggPendant', 'AccuracyPotencyBalanced' },
  ['BlackMagicNukeEnmity'] = {'EleStaff', 'BLMThreshholdRing', 'UggPendant', 'EnmityMinus', 'MagicAttack', 'Int' },
  ['BlackMagicNukeEnmityAccuracyBalanced'] = {'EleStaff', 'BLMThreshholdRing', 'UggPendant', 'EnmityAccuracyBalanced' },
  ['DarkSkillPotency'] = { 'EleStaff', 'DarkSkill', 'Recast', 'MagicAccuracy' },
  ['DarkSkillAccuracy'] = { 'EleStaff', 'DarkSkill', 'MagicAccuracy', 'Recast' },
  ['DrainAspirPotency'] = { 'EleStaff', 'DarkSkill', 'OverlordsRing', 'Recast', 'MagicAccuracy' },
  ['DrainAspirAccuracy'] = { 'EleStaff', 'DarkSkill', 'MagicAccuracy', 'OverlordsRing', 'Recast' },
  ['Sneak'] = {'Sneak', 'Recast'},
  ['Invisible'] = {'Invisible', 'Recast'},
  ['SongDebuffRecast'] = { 'EleStaff', 'Instrument', 'SongRecast', 'Recast', 'MatchSkill', 'SongAccuracy' },
  ['SongDebuffAccuracy'] = { 'EleStaff', 'Instrument', 'MatchSkill', 'SongAccuracy', 'SongRecast', 'Recast' },
  ['ThrenodySkill'] = { 'EleStaff', 'Instrument', 'MatchSkill', 'SongAccuracy', 'SongRecast', 'Recast' },
  ['ThrenodyAccuracy'] = { 'EleStaff', 'Instrument', 'SongAccuracy', 'MatchSkill', 'SongRecast', 'Recast' },
  ['SongSkillRecast'] = { 'Instrument', 'MatchSkill', 'SongRecast', 'Recast' },
  ['SongRecastSkill'] = { 'Instrument', 'SongRecast', 'Recast', 'MatchSkill' },
  ['SongRecast'] = { 'Instrument', 'SongRecast', 'Recast' }
};
local GenericBlmNuke = { Default = 'BlackMagicNukePotency', SpellAccuracy = 'BlackMagicNukeAccuracy', SpellBalanced = 'BlackMagicNukeBalanced', EnmityBalanced = 'BlackMagicNukeEnmityAccuracyBalanced' };
local SpellTypes = {
  ['White Magic'] = {
    ['Cure'] = { Default = 'CurePotency', EnmityMinus = 'CureEnmityMinus', EnmityPlus = 'CureEnmityPlus', EnmityBalanced = 'CureEnmityBalanced' },
    ['Cure II'] = { Default = 'CurePotency', EnmityMinus = 'CureEnmityMinus', EnmityPlus = 'CureEnmityPlus', EnmityBalanced = 'CureEnmityBalanced' },
    ['Cure III'] = { Default = 'CurePotency', EnmityMinus = 'CureEnmityMinus', EnmityPlus = 'CureEnmityPlus', EnmityBalanced = 'CureEnmityBalanced' },
    ['Cure IV'] = { Default = 'CurePotency', EnmityMinus = 'CureEnmityMinus', EnmityPlus = 'CureEnmityPlus', EnmityBalanced = 'CureEnmityBalanced' },
    ['Cure V'] = { Default = 'CurePotency' },
    ['Curaga'] = { Default = 'CurePotency', EnmityMinus = 'CureEnmityMinus', EnmityPlus = 'CureEnmityPlus', EnmityBalanced = 'CureEnmityBalanced' },
    ['Curaga II'] = { Default = 'CurePotency', EnmityMinus = 'CureEnmityMinus', EnmityPlus = 'CureEnmityPlus', EnmityBalanced = 'CureEnmityBalanced' },
    ['Curaga III'] = { Default = 'CurePotency', EnmityMinus = 'CureEnmityMinus', EnmityBalanced = 'CureEnmityBalanced' },
    ['Curaga IV'] = { Default = 'CurePotency', EnmityMinus = 'CureEnmityMinus', EnmityBalanced = 'CureEnmityBalanced' },
    ['Raise'] = { Default = 'Recast' },
    ['Raise II'] = { Default = 'Recast' },
    ['Raise III'] = { Default = 'Recast' },
    ['Reraise'] = { Default = 'Recast' },
    ['Reraise II'] = { Default = 'Recast' },
    ['Reraise III'] = { Default = 'Recast' },
    ['Poisona'] = { Default = 'Recast' },
    ['Paralyna'] = { Default = 'Recast' },
    ['Blindna'] = { Default = 'Recast' },
    ['Silena'] = { Default = 'Recast' },
    ['Stona'] = { Default = 'Recast' },
    ['Viruna'] = { Default = 'Recast' },
    ['Cursna'] = { Default = 'Recast' },
    ['Holy'] = { Default = 'WhiteMagicNukePotency', SpellAccuracy = 'WhiteMagicNukeAccuracy' },
    ['Banish'] = { Default = 'WhiteMagicNukePotency', SpellAccuracy = 'WhiteMagicNukeAccuracy', CastTime = 2000 },
    ['Banish II'] = { Default = 'WhiteMagicNukePotency', SpellAccuracy = 'WhiteMagicNukeAccuracy', CastTime = 2500 },
    ['Banish III'] = { Default = 'WhiteMagicNukePotency', SpellAccuracy = 'WhiteMagicNukeAccuracy', CastTime = 3000 },
    ['Banishga'] = { Default = 'WhiteMagicNukePotency', SpellAccuracy = 'WhiteMagicNukeAccuracy' },
    ['Banishga II'] = { Default = 'WhiteMagicNukePotency', SpellAccuracy = 'WhiteMagicNukeAccuracy' },
    ['Flash'] = { Default = 'FlashRecast', EnmityPlus = 'FlashEnmity' },
    ['Protect'] = { Default = 'Recast', IgnoreInterim = true },
    ['Protect II'] = { Default = 'Recast', IgnoreInterim = true },
    ['Protect III'] = { Default = 'Recast', IgnoreInterim = true },
    ['Protect IV'] = { Default = 'Recast', IgnoreInterim = true },
    ['Protectra'] = { Default = 'Recast', IgnoreInterim = true },
    ['Protectra II'] = { Default = 'Recast', IgnoreInterim = true },
    ['Protectra III'] = { Default = 'Recast', IgnoreInterim = true },
    ['Protectra IV'] = { Default = 'Recast', IgnoreInterim = true },
    ['Protectra V'] = { Default = 'Recast', IgnoreInterim = true },
    ['Shell'] = { Default = 'Recast', IgnoreInterim = true },
    ['Shell II'] = { Default = 'Recast', IgnoreInterim = true },
    ['Shell III'] = { Default = 'Recast', IgnoreInterim = true },
    ['Shell IV'] = { Default = 'Recast', IgnoreInterim = true },
    ['Shellra'] = { Default = 'Recast', IgnoreInterim = true },
    ['Shellra II'] = { Default = 'Recast', IgnoreInterim = true },
    ['Shellra III'] = { Default = 'Recast', IgnoreInterim = true },
    ['Shellra IV'] = { Default = 'Recast', IgnoreInterim = true },
    ['Shellra V'] = { Default = 'Recast', IgnoreInterim = true },
    ['Blink'] = { Default = 'Recast' },
    ['Stoneskin'] = { Default = 'Stoneskin' },
    ['Aquaveil'] = { Default = 'Recast' },
    ['Phalanx'] = { Default = 'EnhancingSkill' },
    ['Haste'] = { Default = 'Recast' },
    ['Barfire'] = { Default = 'BarSpell' },
    ['BarBlizzard'] = { Default = 'BarSpell' },
    ['Baraero'] = { Default = 'BarSpell' },
    ['Barstone'] = { Default = 'BarSpell' },
    ['Barthunder'] = { Default = 'BarSpell' },
    ['Barwater'] = { Default = 'BarSpell' },
    ['Barfira'] = { Default = 'BarSpell' },
    ['Barblizzara'] = { Default = 'BarSpell' },
    ['Baraera'] = { Default = 'BarSpell' },
    ['Barstonra'] = { Default = 'BarSpell' },
    ['Barthundra'] = { Default = 'BarSpell' },
    ['Barwatera'] = { Default = 'BarSpell' },
    ['Barsleep'] = { Default = 'EnhancingSkill' },
    ['Barpoison'] = { Default = 'EnhancingSkill' },
    ['Barparalyze'] = { Default = 'EnhancingSkill' },
    ['Barblind'] = { Default = 'EnhancingSkill' },
    ['Barsilence'] = { Default = 'EnhancingSkill' },
    ['Barpetrify'] = { Default = 'EnhancingSkill' },
    ['Barvirus'] = { Default = 'EnhancingSkill' },
    ['Barsleepra'] = { Default = 'EnhancingSkill' },
    ['Barpoisonra'] = { Default = 'EnhancingSkill' },
    ['Barparalyzra'] = { Default = 'EnhancingSkill' },
    ['Barblindra'] = { Default = 'EnhancingSkill' },
    ['Barsilencera'] = { Default = 'EnhancingSkill' },
    ['Enfire'] = { Default = 'EnhancingSkill' },
    ['Enblizzard'] = { Default = 'EnhancingSkill' },
    ['Enaero'] = { Default = 'EnhancingSkill' },
    ['Enstone'] = { Default = 'EnhancingSkill' },
    ['Enthunder'] = { Default = 'EnhancingSkill' },
    ['Enwater'] = { Default = 'EnhancingSkill' },
    ['Regen'] = { Default = 'Regen' },
    ['Regen II'] = { Default = 'Regen' },
    ['Regen III'] = { Default = 'Regen' },
    ['Refresh'] = { Default = 'Recast' },
    ['Erase'] = { Default = 'Recast' },
    ['Teleport-Holla'] = { Default = 'Recast' },
    ['Teleport-Dem'] = { Default = 'Recast' },
    ['Teleport-Mea'] = { Default = 'Recast' },
    ['Teleport-Yhoat'] = { Default = 'Recast' },
    ['Teleport-Altep'] = { Default = 'Recast' },
    ['Teleport-Vahzl'] = { Default = 'Recast' },
    ['Invisible'] = { Default = 'Invisible', IgnoreInterim = true },
    ['Sneak'] = { Default = 'Sneak', IgnoreInterim = true },
    ['Deodorize'] = { Default = 'RecastFocus' },
    ['Dia'] = { Default = 'WhiteMagicNukePotency' },
    ['Dia II'] = { Default = 'WhiteMagicNukePotency' },
    ['Diaga'] = { Default = 'WhiteMagicNukePotency' },
    ['Slow'] = { Default = 'WhiteMagicEnfeeblePotency', SpellAccuracy = 'WhiteMagicEnfeebleAccuracy' },
    ['Paralyze'] = { Default = 'WhiteMagicEnfeeblePotency', SpellAccuracy = 'WhiteMagicEnfeebleAccuracy' },
    ['Silence'] = { Default = 'WhiteMagicEnfeebleAccuracy' }
  },
  ['Black Magic'] = {
    ['Fire'] = GenericBlmNuke,
    ['Fire II'] = GenericBlmNuke,
    ['Fire III'] = GenericBlmNuke,
    ['Fire IV'] = GenericBlmNuke,
    ['Blizzard'] = GenericBlmNuke,
    ['Blizzard II'] = GenericBlmNuke,
    ['Blizzard III'] = GenericBlmNuke,
    ['Blizzard IV'] = GenericBlmNuke,
    ['Aero'] = GenericBlmNuke,
    ['Aero II'] = GenericBlmNuke,
    ['Aero III'] = GenericBlmNuke,
    ['Aero IV'] = GenericBlmNuke,
    ['Stone'] = GenericBlmNuke,
    ['Stone II'] = GenericBlmNuke,
    ['Stone III'] = GenericBlmNuke,
    ['Stone IV'] = GenericBlmNuke,
    ['Thunder'] = GenericBlmNuke,
    ['Thunder II'] = GenericBlmNuke,
    ['Thunder III'] = GenericBlmNuke,
    ['Thunder IV'] = GenericBlmNuke,
    ['Water'] = GenericBlmNuke,
    ['Water II'] = GenericBlmNuke,
    ['Water III'] = GenericBlmNuke,
    ['Water IV'] = GenericBlmNuke,
    ['Firaga'] = GenericBlmNuke,
    ['Firaga II'] = GenericBlmNuke,
    ['Firaga III'] = GenericBlmNuke,
    ['Blizzaga'] = GenericBlmNuke,
    ['Blizzaga II'] = GenericBlmNuke,
    ['Blizzaga III'] = GenericBlmNuke,
    ['Aeroga'] = GenericBlmNuke,
    ['Aeroga II'] = GenericBlmNuke,
    ['Aeroga III'] = GenericBlmNuke,
    ['Stonega'] = GenericBlmNuke,
    ['Stonega II'] = GenericBlmNuke,
    ['Stonega III'] = GenericBlmNuke,
    ['Thundaga'] = GenericBlmNuke,
    ['Thundaga II'] = GenericBlmNuke,
    ['Thundaga III'] = GenericBlmNuke,
    ['Waterga'] = GenericBlmNuke,
    ['Waterga II'] = GenericBlmNuke,
    ['Waterga III'] = GenericBlmNuke,
    ['Flare'] = GenericBlmNuke,
    ['Freeze'] = GenericBlmNuke,
    ['Tornado'] = GenericBlmNuke,
    ['Quake'] = GenericBlmNuke,
    ['Burst'] = GenericBlmNuke,
    ['Flood'] = GenericBlmNuke,
    ['Burn'] = { Default = 'BlackMagicEnfeeblePotency', SpellAccuracy = 'BlackMagicEnfeebleAccuracy' },
    ['Frost'] = { Default = 'BlackMagicEnfeeblePotency', SpellAccuracy = 'BlackMagicEnfeebleAccuracy' },
    ['Choke'] = { Default = 'BlackMagicEnfeeblePotency', SpellAccuracy = 'BlackMagicEnfeebleAccuracy' },
    ['Rasp'] = { Default = 'BlackMagicEnfeeblePotency', SpellAccuracy = 'BlackMagicEnfeebleAccuracy' },
    ['Shock'] = { Default = 'BlackMagicEnfeeblePotency', SpellAccuracy = 'BlackMagicEnfeebleAccuracy' },
    ['Drown'] = { Default = 'BlackMagicEnfeeblePotency', SpellAccuracy = 'BlackMagicEnfeebleAccuracy' },
    ['Blaze Spikes'] = { Default = 'Spikes' },
    ['Ice Spikes'] = { Default = 'Spikes' },
    ['Shock Spikes'] = { Default = 'Spikes' },
    ['Warp'] = { Default = 'Recast' },
    ['Warp II'] = { Default = 'Recast' },
    ['Escape'] = { Default = 'Recast' },
    ['Poison'] = { Default = 'BlackMagicEnfeebleAccuracy' },
    ['Poison II'] = { Default = 'BlackMagicEnfeebleAccuracy' },
    ['Poisonga'] = { Default = 'BlackMagicEnfeebleAccuracy' },
    ['Sleep'] = { Default = 'BlackMagicCCPotency', SpellAccuracy = 'BlackMagicCCAccuracy' },
    ['Sleep II'] = { Default = 'BlackMagicCCPotency', SpellAccuracy = 'BlackMagicCCAccuracy' },
    ['Sleepga'] = { Default = 'BlackMagicCCPotency', SpellAccuracy = 'BlackMagicCCAccuracy' },
    ['Sleepga II'] = { Default = 'BlackMagicCCPotency', SpellAccuracy = 'BlackMagicCCAccuracy' },
    ['Blind'] = { Default = 'BlackMagicEnfeeblePotency', SpellAccuracy = 'BlackMagicEnfeebleAccuracy' },
    ['Bind'] = { Default = 'BlackMagicCCPotency', SpellAccuracy = 'BlackMagicCCAccuracy' },
    ['Dispel'] = { Default = 'BlackMagicCCPotency', SpellAccuracy = 'BlackMagicCCAccuracy' },
    ['Gravity'] = { Default = 'BlackMagicCCPotency', SpellAccuracy = 'BlackMagicCCAccuracy' },
    ['Bio'] = { Default = 'DarkSkillPotency', SpellAccuracy = 'DarkSkillAccuracy' },
    ['Bio II'] = { Default = 'DarkSkillPotency', SpellAccuracy = 'DarkSkillAccuracy' },
    ['Drain'] = { Default = 'DrainAspirPotency', SpellAccuracy = 'DrainAspirAccuracy' },
    ['Aspir'] = { Default = 'DrainAspirPotency', SpellAccuracy = 'DrainAspirAccuracy' },
    ['Stun'] = { Default = 'DarkSkillPotency', SpellAccuracy = 'DarkSkillAccuracy' },
    ['Tractor'] = { Default = 'Recast' }
  },
  ['Bard Song'] = {
    ['Foe Requiem'] = { Default = 'SongDebuffRecast', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Siren Flute', Skill = 'WindSkill' },
    ['Foe Requiem II'] = { Default = 'SongDebuffRecast', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Siren Flute', Skill = 'WindSkill' },
    ['Foe Requiem III'] = { Default = 'SongDebuffRecast', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Siren Flute', Skill = 'WindSkill' },
    ['Foe Requiem IV'] = { Default = 'SongDebuffRecast', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Siren Flute', Skill = 'WindSkill' },
    ['Foe Requiem V'] = { Default = 'SongDebuffRecast', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Siren Flute', Skill = 'WindSkill' },
    ['Foe Requiem VI'] = { Default = 'SongDebuffRecast', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Siren Flute', Skill = 'WindSkill' },
    ['Foe Lullaby'] = { Default = 'SongDebuffRecast', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Nursemaid\'s Harp', Skill = 'StringSkill' },
    ['Horde Lullaby'] = { Default = 'SongDebuffRecast', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Nursemaid\'s Harp', Skill = 'StringSkill' },
    ['Army\'s Paeon'] = { Default = 'SongRecast', Instrument = 'Ebony Harp +1', Skill = 'StringSkill' },
    ['Army\'s Paeon II'] = { Default = 'SongRecast', Instrument = 'Ebony Harp +1', Skill = 'StringSkill' },
    ['Army\'s Paeon III'] = { Default = 'SongRecast', Instrument = 'Ebony Harp +1', Skill = 'StringSkill' },
    ['Army\'s Paeon IV'] = { Default = 'SongRecast', Instrument = 'Ebony Harp +1', Skill = 'StringSkill' },
    ['Army\'s Paeon V'] = { Default = 'SongRecast', Instrument = 'Ebony Harp +1', Skill = 'StringSkill' },
    ['Mage\'s Ballad'] = { Default = 'SongRecast', Instrument = 'Any' },
    ['Mage\'s Ballad II'] = { Default = 'SongRecast', Instrument = 'Any' },
    ['Knight\'s Minne'] = { Default = 'SongSkillRecast', Instrument = 'Harp +1', Skill = 'StringSkill' },
    ['Knight\'s Minne II'] = { Default = 'SongSkillRecast', Instrument = 'Harp +1', Skill = 'StringSkill' },
    ['Knight\'s Minne III'] = { Default = 'SongSkillRecast', Instrument = 'Harp +1', Skill = 'StringSkill' },
    ['Knight\'s Minne IV'] = { Default = 'SongSkillRecast', Instrument = 'Harp +1', Skill = 'StringSkill' },
    ['Valor Minuet'] = { Default = 'SongSkillRecast', Instrument = 'Cornette +2', Skill = 'WindSkill' },
    ['Valor Minuet II'] = { Default = 'SongSkillRecast', Instrument = 'Cornette +2', Skill = 'WindSkill' },
    ['Valor Minuet III'] = { Default = 'SongSkillRecast', Instrument = 'Cornette +2', Skill = 'WindSkill' },
    ['Valor Minuet IV'] = { Default = 'SongSkillRecast', Instrument = 'Cornette +2', Skill = 'WindSkill' },
    ['Sword Madrigal'] = { Default = 'SongSkillRecast', Instrument = 'Travesiere +1', Skill = 'WindSkill' },
    ['Blade Madrigal'] = { Default = 'SongSkillRecast', Instrument = 'Travesiere +1', Skill = 'WindSkill' },
    ['Hunter\'s Prelude'] = { Default = 'SongSkillRecast', Instrument = 'Angel\'s Flute +1', Skill = 'WindSkill' },
    ['Archer\'s Prelude'] = { Default = 'SongSkillRecast', Instrument = 'Angel\'s Flute +1', Skill = 'WindSkill' },
    ['Sheepfoe Mambo'] = { Default = 'SongSkillRecast', Instrument = 'Gemshorn +1', Skill = 'WindSkill' },
    ['Dragonfoe Mambo'] = { Default = 'SongSkillRecast', Instrument = 'Gemshorn +1', Skill = 'WindSkill' },
    ['Fowl Aubade'] = { Default = 'SongSkillRecast', Instrument = 'Any' },
    ['Herb Pastoral'] = { Default = 'SongSkillRecast', Instrument = 'Any' },
    ['Shining Fantasia'] = { Default = 'SongSkillRecast', Instrument = 'Any' },
    ['Scop\'s Operetta'] = { Default = 'SongSkillRecast', Instrument = 'Any' },
    ['Puppet\'s Operetta'] = { Default = 'SongSkillRecast', Instrument = 'Any' },
    ['Gold Capriccio'] = { Default = 'SongSkillRecast', Instrument = 'Any' },
    ['Warding Round'] = { Default = 'SongSkillRecast', Instrument = 'Any' },
    ['Goblin Gavotte'] = { Default = 'SongSkillRecast', Instrument = 'Any' },
    ['Advancing March'] = { Default = 'SongSkillRecast', Instrument = 'Faerie Piccolo', Skill = 'WindSkill' },
    ['Victory March'] = { Default = 'SongSkillRecast', Instrument = 'Faerie Piccolo', Skill = 'WindSkill' },
    ['Battlefield Elegy'] = { Default = 'SongDebuffRecast', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Horn +1', Skill = 'WindSkill' },
    ['Carnage Elegy'] = { Default = 'SongDebuffRecast', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Horn +1', Skill = 'WindSkill' },
    ['Sinewy Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Dextrous Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Vicacious Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Quick Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Learned Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Spirited Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Enchanting Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Herculean Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Uncanny Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Vital Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Swift Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Sage Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Logical Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Bewitching Etude'] = { Default = 'SongSkillRecast', Instrument = 'Rose Harp +1', Skill = 'StringSkill' },
    ['Fire Carol'] = { Default = 'SongSkillRecast', Instrument = 'Crumhorn +1', Skill = 'WindSkill' },
    ['Ice Carol'] = { Default = 'SongSkillRecast', Instrument = 'Crumhorn +1', Skill = 'WindSkill' },
    ['Wind Carol'] = { Default = 'SongSkillRecast', Instrument = 'Crumhorn +1', Skill = 'WindSkill' },
    ['Earth Carol'] = { Default = 'SongSkillRecast', Instrument = 'Crumhorn +1', Skill = 'WindSkill' },
    ['Lightning Carol'] = { Default = 'SongSkillRecast', Instrument = 'Crumhorn +1', Skill = 'WindSkill' },
    ['Water Carol'] = { Default = 'SongSkillRecast', Instrument = 'Crumhorn +1', Skill = 'WindSkill' },
    ['Light Carol'] = { Default = 'SongSkillRecast', Instrument = 'Crumhorn +1', Skill = 'WindSkill' },
    ['Dark Carol'] = { Default = 'SongSkillRecast', Instrument = 'Crumhorn +1', Skill = 'WindSkill' },
    ['Fire Threnody'] = { Default = 'ThrenodySkill', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Sorrowful Harp', Skill = 'StringSkill' },
    ['Ice Threnody'] = { Default = 'ThrenodySkill', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Sorrowful Harp', Skill = 'StringSkill' },
    ['Wind Threnody'] = { Default = 'ThrenodySkill', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Sorrowful Harp', Skill = 'StringSkill' },
    ['Earth Threnody'] = { Default = 'ThrenodySkill', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Sorrowful Harp', Skill = 'StringSkill' },
    ['Ltng. Threnody'] = { Default = 'ThrenodySkill', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Sorrowful Harp', Skill = 'StringSkill' },
    ['Water Threnody'] = { Default = 'ThrenodySkill', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Sorrowful Harp', Skill = 'StringSkill' },
    ['Light Threnody'] = { Default = 'ThrenodySkill', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Sorrowful Harp', Skill = 'StringSkill' },
    ['Dark Threnody'] = { Default = 'ThrenodySkill', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Sorrowful Harp', Skill = 'StringSkill' },
    ['Magic Finale'] = { Default = 'SongDebuffRecast', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Horn +1', Skill = 'WindSkill' },
    ['Goddess\'s Hymnus'] = { Default = 'SongRecast', Instrument = 'Angel Lyre', Skill = 'StringSkill' },
    ['Chocobo Mazurka'] = { Default = 'SongRecast', Instrument = 'Harlequin\'s Horn', Skill = 'WindSkill' },
    ['Maiden\'s Virelai'] = { Default = 'SongDebuffRecast', SpellAccuracy = 'SongDebuffAccuracy', Instrument = 'Cyt. Angelica +1', Skill = 'StringSkill' },
  },
  ['Ninjutsu'] = {
    ['Katon: Ichi'] = { Default = '' },
    ['Katon: Ni'] = { Default = '' },
    ['Hyoton: Ichi'] = { Default = '' },
    ['Hyoton: Ni'] = { Default = '' },
    ['Huton: Ichi'] = { Default = '' },
    ['Huton: Ni'] = { Default = '' },
    ['Doton: Ichi'] = { Default = '' },
    ['Doton: Ni'] = { Default = '' },
    ['Raiton: Ichi'] = { Default = '' },
    ['Raiton: Ni'] = { Default = '' },
    ['Suiton: Ichi'] = { Default = '' },
    ['Suiton: Ni'] = { Default = '' },
    ['Utsusemi: Ichi'] = { Default = 'Recast' },
    ['Utsusemi: Ni'] = { Default = 'Recast' },
    ['Jubaku: Ichi'] = { Default = '' },
    ['Hojo: Ichi'] = { Default = '' },
    ['Hojo: Ni'] = { Default = '' },
    ['Kurayami: Ichi'] = { Default = '' },
    ['Kurayami: Ni'] = { Default = '' },
    ['Dokumori: Ichi'] = { Default = '' },
    ['Tonko: Ichi'] = { Default = 'Recast' },
    ['Tonko: Ni'] = { Default = 'Recast' }
  },
  ['Summoning'] = {

  }
};
local WeaponSkills = {
  ['Smash Axe'] = { Default = 'SmashAxeAccuracy' },
  ['Rampage'] = { Default = 'RampagePotency' },
  ['Mistral Axe'] = { Default = 'MistralAxePotency' },
  ['Decimation'] = { Default = 'DecimationPotency' },
  ['Starlight'] = { Default = 'ClubMPWSPotency' },
  ['Moonlight'] = { Default = 'ClubMPWSPotency' },
  ['True Strike'] = { Default = 'TrueStrikePotency' },
  ['Judgment'] = { Default = 'JudgmentPotency' },
  ['Hexa Strike'] = { Default = 'HexaStrikePotency' },
  ['Black Halo'] = { Default = 'BlackHaloPotency' },
  ['Cyclone'] = { Default = 'CyclonePotency' },
  ['Energy Steal'] = { Default = 'EnergyStealPotency' },
  ['Energy Drain'] = { Default = 'EnergyDrainPotency' },
  ['Dancing Edge'] = { Default = 'DancingEdgePotency' },
  ['Shark Bite'] = { Default = 'SharkBitePotency' },
  ['Evisceration'] = { Default = 'EviscerationPotency' },
  ['Circle Blade'] = { Default = 'CircleBladePotency' },
  ['Spirits Within'] = { Default = 'SpiritsWithinPotency' },
  ['Vorpal Blade'] = { Default = 'VorpalBladePotency' },
  ['Swift Blade'] = { Default = 'SwiftBladePotency' },
  ['Savage Blade'] = { Default = 'SavageBladePotency' }
};
local RangedWeaponTypes = {
  ['Ziska\'s Crossbow'] = 'Crossbow'
};
local Ammo = {
  ['BloodyBolt'] = { Name = 'Bloody Bolt', Type = 'Crossbow' },
  ['SleepBolt'] = { Name = 'Sleep Bolt', Type = 'Crossbow' },
  ['AcidBolt'] = { Name = 'Acid Bolt', Type = 'Crossbow' }
};
local AccuracySetLookup = {
  ['Healing Magic'] = 'HealingSkill',
  ['Enhancing Magic'] = 'EnhancingSkill',
  ['Divine Magic'] = 'DivineSkill',
  ['Enfeebling Magic'] = 'Enfeebling Skill',
  ['Elemental Magic'] = 'ElementalSkill',
  ['Dark Magic'] = 'DarkSkill',
  ['Summoning'] = 'SummoningSkill',
  ['Ninjutsu'] = 'NinjutsuSkill',
  ['Singing'] = 'HandleBardSong'
};
local CurePrecastTypesLookup = T{
  'Cure',
  'Cure II',
  'Cure III',
  'Cure IV',
  'Cure V',
  'Curaga',
  'Curaga II',
  'Curaga III',
  'Curaga IV'
};
local MPGear = {
  ['Republic Circlet'] = { MP = 5, Convert = false, Slot = 'Head' },
  ['Sorcerer\'s Petasos'] = { MP = 23, Convert = false, Slot = 'Head' },
  ['Sorcerer\'s Coat'] = { MP = 12, Convert = false, Slot = 'Body' },
  ['Sorcerer\'s Gloves'] = { MP = 24, Convert = false, Slot = 'Hands' },
  ['Sorcerer\'s Tonban'] = { MP = 13, Convert = false, Slot = 'Legs' },
  ['Sorcerer\'s Sabots'] = { MP = 18, Convert = false, Slot = 'Feet' },
  ['Wizard\'s Petasos'] = { MP = 25, Convert = false, Slot = 'Head' },
  ['Wizard\'s Coat'] = { MP = 16, Convert = false, Slot = 'Body' },
  ['Wizard\'s Gloves'] = { MP = 12, Convert = false, Slot = 'Hands' },
  ['Wizard\'s Tonban'] = { MP = 14, Convert = false, Slot = 'Legs' },
  ['Wizard\'s Sabots'] = { MP = 10, Convert = false, Slot = 'Feet' },
  ['Bard\'s Cannions'] = { MP = 42, Convert = false, Slot = 'Legs' },
  ['Hydra Doublet'] = { MP = 40, Convert = false, Slot = 'Body' },
  ['Tamas Ring'] = { MP = 30, Convert = false, Slot = 'Ring' },
  ['Serket Ring'] = { MP = 50, Convert = true, Slot = 'Ring' },
  ['Vivian Ring'] = { MP = 50, Convert = true, Slot = 'Ring' },
  ['Uggalepih Pendant'] = { MP = 20, Convert = false, Slot = 'Neck' },
  ['Wood Gauntlets'] = { MP = 55, Convert = false, Slot = 'Hands' },
  ['Wood M Ledelsens'] = { MP = 30, Convert = false, Slot = 'Feet' },
  ['Forest Rope'] = { MP = 60, Convert = false, Slot = 'Waist' },
  ['Rostrum Pumps'] = { MP = 30, Convert = false, Slot = 'Feet' },
  ['Blessed Bliaut'] = { MP = 40, Convert = false, MPPercent = 7, Slot = 'Body' }, --mp is zero, temp value
  ['Blessed Mitts'] = { MP = 15, Convert = false, Slot = 'Hands' },
  ['Blessed Trousers'] = { MP = 25, Convert = false, Slot = 'Legs' },
  ['Blessed Pumps'] = { MP = 17, Convert = false, Slot = 'Feet' },
  ['Reraise Hairpin'] = { MP = 21, Convert = false, Slot = 'Head' },
  ['Cleric\'s Bliaut'] = { MP = 24, Convert = false, Slot = 'Body' },
  ['Cleric\'s Mitts'] = { MP = 20, Convert = false, Slot = 'Hands' },
  ['Cleric\'s Pantaln.'] = { MP = 17, Convert = false, Slot = 'Legs' },
  ['Cleric\'s Duckbills'] = { MP = 18, Convert = false, Slot = 'Feet' },
  ['Cleric\'s Belt'] = { MP = 40, Convert = false, Slot = 'Waist' },
  ['Healer\'s Pantaln.'] = { MP = 15, Convert = false, Slot = 'Legs' }, 
  ['Healer\'s Duckbills'] = { MP = 20, Convert = false, Slot = 'Feet' },
  ['Noble\'s Tunic'] = { MP = 17, Convert = false, Slot = 'Body' },
  ['Vermillion Cloak'] = { MP = 10, Convert = false, MPPercent = 1, Slot = 'Body' },
  ['Friar\'s Rope'] = { MP = 5, Convert = false, Slot = 'Waist' },
  ['Electrum Hairpin'] = { MP = 25, Convert = false, Slot = 'Head' },
  ['Magna Jerkin'] = { MP = 4, Convert = false, Slot = 'Body' },
  ['Magna Gauntlets'] = { MP = 24, Convert = false, Slot = 'Hands' },
  ['Powerful Rope'] = { MP = 20, Convert = false, Slot = 'Waist' },
  ['Magna M Chausses'] = { MP = 12, Convert = false, Slot = 'Legs' },
  ['Mgn. M Ledelsens'] = { MP = 20, Convert = false, Slot = 'Feet' },
  ['Devotee\'s Mitts'] = { MP = 8, Convert = false, Slot = 'Hands' },
  ['Astral Ring'] = { MP = 25, Convert = true, Slot = 'Ring' },
  ['Morion Earring +1'] = { MP = 5, Convert = false, Slot = 'Earring' },
  ['Geist Earring'] = { MP = 5, Convert = false, Slot = 'Earring' },
  ['Holy Phial'] = { MP = 9, Convert = false, Slot = 'Neck' },
  ['Warlock\'s Chapeau'] = { MP = 20, Convert = false, Slot = 'Head' },
  ['Warlock\'s Tabard'] = { MP = 14, Convert = false, Slot = 'Body' },
  ['Warlock\'s Gloves'] = { MP = 12, Convert = false, Slot = 'Hands' },
  ['Warlock\'s Tights'] = { MP = 13, Convert = false, Slot = 'Legs' },
  ['Warlock\'s Boots'] = { MP = 11, Convert = false, Slot = 'Feet' },
  ['Duelist\'s Chapeau'] = { MP = 14, Convert = false, Slot = 'Head' },
  ['Duelist\'s Tabard'] = { MP = 24, Convert = false, Slot = 'Body' },
  ['Duelist\'s Gloves'] = { MP = 18, Convert = false, Slot = 'Hands' },
  ['Duelist\'s Tights'] = { MP = 16, Convert = false, Slot = 'Legs' },
  ['Duelist\'s Boots'] = { MP = 15, Convert = false, Slot = 'Feet' },
  ['Hierarch Belt'] = { MP = 48, Convert = false, Slot = 'Waist' },
  ['Zenith Crown'] = { MP = 50, Convert = true, Slot = 'Head' },
  ['Zenith Mitts'] = { MP = 50, Convert = true, Slot = 'Hands' },
  ['Zenith Slacks'] = { MP = 50, Convert = true, Slot = 'Legs' },
  ['Blue Cotehardie'] = { MP = 40, Convert = true, Slot = 'Body' },
  ['Mahatma Pigaches'] = { MP = 25, Convert = false, Slot = 'Feet' },
  ['Errant Cuffs'] = { MP = 20, Convert = false, Slot = 'Hands' },
  ['Rainbow Cape'] = { MP = 9, Convert = false, Slot = 'Back' },
  ['Errant Cape'] = { MP = 30, Convert = false, Slot = 'Back' },
  ['Loquac. Earring'] = { MP = 30, Convert = false, Slot = 'Earring' },
  ['Astral Earring'] = { MP = 25, Convert = true, Slot = 'Ring' },
  ['Hedgehog Bomb'] = { MP = 30, Convert = false, Slot = 'Ammo' }
};
local FastCast = {
  ['Warlock\'s Chapeau'] = .1,
  ['Warlock\'s Chapeau +1'] = .1,
  ['Warlock\'s Mantle'] = .02,
  ['Duelist\'s Tabard'] = .1,
  ['Duelist\'s Tabard +1'] = .1,
  ['Rostrum Pumps'] = .03,
  ['Loquacious Earring'] = .02,
  ['Homam Cosciales'] = .05,
  ['Rucke\'s Rung'] = .1,
  ['Cure Clogs'] = .15,
  ['Minstrel\'s Ring'] = .25,
  ['Sha\'ir Manteel'] = .12
};
local ElementalStaffTable = {
  ['Earth'] = 'Terra\'s Staff',
  ['Water'] = 'Neptune\'s Staff',
  ['Wind'] = 'Auster\'s Staff',
  ['Fire'] = 'Vulcan\'s Staff',
  ['Ice'] = 'Aquilo\'s Staff',
  ['Thunder'] = 'Jupiter\'s Staff',
  ['Light'] = 'Apollo\'s Staff',
  ['Dark'] = 'Pluto\'s Staff'
};
local ThreshholdRingLookup = T{
  'Sorcerer\'s Ring',
  'Rogue\'s Ring',
  'Minstrel\'s Ring',
  'Medicine Ring',
  'Shinobi Ring'
};
local ConquestItems = {
  ['RepublicCirclet'] = 'Inside'
};
local ValidPlayerStatus = T{
  'Idle',
  'Engaged',
  'Resting'
};
local VisibleSlots = T{
  'Main',
  'Sub',
  'Range',
  'Ammo',
  --'Head' bugged in ASB code
  'Body',
  'Hands',
  'Legs',
  'Feet'
};
local Food = {
  ['ApplePie'] = { MP = 25 },
  ['ApplePie+1'] = { MP = 30 },
  ['BakedApple'] = { MP = 20 },
  ['BijouGlace'] = { MPP = 13, Max = 90 },
  ['BlackPudding'] = { MPP = 5, Max = 25 },
  ['BucheauChoco.'] = { MPP = 3, Max = 13 },
  ['CrimsonJelly'] = { MPP = 12, Max = 85 },
  ['FlurryCourante'] = { MPP = 19, Max = 65 },
  ['Gat.auxFraises'] = { MPP = 8, Max = 50 },
  ['IcecapRolanberry'] = { MPP = 19, Max = 55 },
  ['LebkuchenHouse'] = { MPP = 10, Max = 45 },
  ['MarronGlace'] = { MPP = 13, Max = 85 },
  ['MelonPie'] = { MP = 25 },
  ['MelonPie+1'] = { MP = 30 },
  ['MontBlanc'] = { MP = 10 },
  ['Opo-opoTart'] = { MP = 12 },
  ['OrangeKuchen'] = { MPP = 13, Max = 75 },
  ['OrangeKuchen+1'] = { MPP = 13, Max = 80 },
  ['PamamaTart'] = { MP = 10 },
  ['PumpkinPie'] = { MP = 40 },
  ['PumpkinPie+1'] = { MP = 45 },
  ['Rolan.Pie+1'] = { MP = 60 },
  ['RolanberryPie'] = { MP = 50 },
  ['Seraph\'sKiss'] = { MPP = 16, Max = 85 },
  ['SnollGelato'] = { MPP = 16, Max = 75 },
  ['SnowyRolanberry'] = { MPP = 19, Max = 60 },
  ['Sub-ZeroGelato'] = { MPP = 16, Max = 80 },
  ['Swt.Bkd.Apple'] = { MP = 25 },
  ['Swt.RiceCake'] = { MP = 17 },
  ['SylvanExcursion'] = { MPP = 3, Max = 15 },
  ['VermillionJelly'] = { MPP = 12, Max = 90 },
  ['Bretzel'] = { MPP = 8, MaxMP = 55 }, 
};

local TableConcat = function(Table1, Table2)
  for index = 1, #Table2 do
    Table1[#Table1+1] = Table2[index]
  end
  return Table1
end

local ShallowCopySet = function(set)
  local setCopy = {};
  for slot, item in pairs(set) do
    setCopy[slot] = item;
  end
  return setCopy;
end

local CreateDefaultData = function(profile, CustomEngagedStances, CustomWeaponStances, CustomRangedStances, CustomIdleStances, CustomAmmoStances, RestMPThreshhold, MaxMPRestMPThreshhold, FoodName)
  local WeaponStances = TableConcat(CustomWeaponStances, { 'WarpStaff', 'WarpClub' });
  local IdleStances =  TableConcat(CustomIdleStances, { 'Fishing', 'Helming' });
  profile.StanceLookup = {
    EngagedStance = CustomEngagedStances,
    WeaponStance = WeaponStances,
    RangedStance = CustomRangedStances,
    IdleStance = IdleStances,
    AmmoStance = CustomAmmoStances
  };
  profile.ModeLookup = {
    SpellMode = { 'SpellPotency', 'SpellAccuracy', 'SpellBalanced' },
    WSMode = { 'WSPotency', 'WSAccuracy', 'WSBalanced' },
    EnmityMode = { 'IgnoreEnmity', 'EnmityMinus', 'EnmityPlus', 'EnmityBalanced' },
    TPMode = { 'IgnoreTP', 'SaveTP' },
    MPMode = { 'IgnoreMaxMP', 'PreserveMaxMP' },
    InterimMode = { 'InterruptionInterim', 'DefenseInterim', 'IgnoreInterim' },
    InstrumentMode = { 'Wind', 'String' },
    ConquestMode = { 'Inside', 'Outside', 'Disabled' }
  };
  profile.SacHPCounter = 0;
  profile.RestMPThreshhold = RestMPThreshhold;
  profile.MaxMPRestMPThreshhold = MaxMPRestMPThreshhold;
  profile.CastSpeed = false;
  profile.Food = nil;
  if (FoodName ~= nil) then
    if (Food[FoodName] ~= nil) then
      profile.Food = FoodName;
      gFunc.Echo(255, 'Food Set');
    else
      gFunc.Echo(255, 'Food not found');
    end
  end
end

local SetDefaultStances = function(profile, EngagedStance, WeaponStance, RangedStance, IdleStance, AmmoStance)
  profile.Stance = {};
  profile.Stance.EngagedStance = EngagedStance;
  profile.Stance.WeaponStance = WeaponStance;
  profile.Stance.RangedStance = RangedStance;
  profile.Stance.IdleStance = IdleStance;
  profile.Stance.AmmoStance = AmmoStance;
end

local SetDefaultModes = function(profile, SpellMode, WSMode, EnmityMode, TPMode, MPMode, InterimMode, InstrumentMode, ConquestMode)
  profile.Mode = {};
  profile.Mode.SpellMode = SpellMode;
  profile.Mode.WSMode = WSMode;
  profile.Mode.EnmityMode = EnmityMode;
  profile.Mode.TPMode = TPMode;
  profile.Mode.MPMode = MPMode;
  profile.Mode.InterimMode = InterimMode;
  profile.Mode.InstrumentMode = InstrumentMode;
  profile.Mode.ConquestMode = ConquestMode;
end

local LoadDefaultKeybinds = function()
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind !` /lac fwd SacHP');

  AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd Stance EngagedStance Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd Stance WeaponStance Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd Stance RangedStance Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F4 /lac fwd Stance IdleStance Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F5 /lac fwd Stance AmmoStance Plus');

  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +!F1 /lac fwd Stance EngagedStance Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +!F2 /lac fwd Stance WeaponStance Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +!F3 /lac fwd Stance RangedStance Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +!F4 /lac fwd Stance IdleStance Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +!F5 /lac fwd Stance AmmoStance Minus');
  
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^F1 /lac fwd Mode SpellMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^F2 /lac fwd Mode WSMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^F3 /lac fwd Mode EnmityMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^F4 /lac fwd Mode TPMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^F5 /lac fwd Mode MPMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^F6 /lac fwd Mode InterimMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^F7 /lac fwd Mode InstrumentMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^F8 /lac fwd Mode ConquestMode Plus');

  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +^F1 /lac fwd Mode SpellMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +^F2 /lac fwd Mode WSMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +^F3 /lac fwd Mode EnmityMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +^F4 /lac fwd Mode TPMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +^F5 /lac fwd Mode MPMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +^F6 /lac fwd Mode InterimMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +^F7 /lac fwd Mode InstrumentMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/bind +^F8 /lac fwd Mode ConquestMode Minus');
end

local UnloadDefaultKeybinds = function()
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !` /lac fwd SacHP');

  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1 /lac fwd Stance EngagedStance Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2 /lac fwd Stance WeaponStance Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3 /lac fwd Stance RangedStance Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F4 /lac fwd Stance IdleStance Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F5 /lac fwd Stance AmmoStance Plus');

  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +!F1 /lac fwd Stance EngagedStance Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +!F2 /lac fwd Stance WeaponStance Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +!F3 /lac fwd Stance RangedStance Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +!F4 /lac fwd Stance IdleStance Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +!F5 /lac fwd Stance AmmoStance Minus');

  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ^F1 /lac fwd Mode SpellMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ^F2 /lac fwd Mode WSMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ^F3 /lac fwd Mode EnmityMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ^F4 /lac fwd Mode TPMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ^F5 /lac fwd Mode MPMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ^F6 /lac fwd Mode InterimMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ^F7 /lac fwd Mode InstrumentMode Plus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ^F8 /lac fwd Mode ConquestMode Plus');

  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +^F1 /lac fwd Mode SpellMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +^F2 /lac fwd Mode WSMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +^F3 /lac fwd Mode EnmityMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +^F4 /lac fwd Mode TPMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +^F5 /lac fwd Mode MPMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +^F6 /lac fwd Mode InterimMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +^F7 /lac fwd Mode InstrumentMode Minus');
  AshitaCore:GetChatManager():QueueCommand(-1, '/unbind +^F8 /lac fwd Mode ConquestMode Minus');
end

local DefaultCommandHandles = function(profile, args)
  local category = args[1];
  local command = args[2];
  local direction = args[3]
  local override = args[4];
  local skipEcho = false;
  local categoryString;
  if (category == 'SacHP') then
    profile.SacHPCounter = 1;
    gFunc.Echo(255, 'You hurt yourself')
    return
  end
  if (category == 'Food') then
    if (command == 'Remove') then
      profile.Food = nil;
      gFunc.Echo(255, 'Food Removed');
    elseif (Food[command] ~= nil) then
      profile.Food = FoodName;
      gFunc.Echo(255, 'Food Set');
    else
      gFunc.Echo(255, 'Food not found');
    end
    return;
  end
  if (profile[category][command] == 0) then
    return;
  end
  if (category == 'Stance') then
    categoryString = 'StanceLookup';
  else
    categoryString = 'ModeLookup';
  end
  if (override ~= nil) then
    if (profile[category][command] == tonumber(override)) then skipEcho = true; end
    profile[category][command] = tonumber(override);
  else
    if (direction == 'Plus') then
      profile[category][command] = profile[category][command] + 1;
      if (profile[category][command] > #profile[categoryString][command]) then
        profile[category][command] = 1;
      end
    else
      profile[category][command] = profile[category][command] - 1;
      if (profile[category][command] <= 0) then
        profile[category][command] = #profile[categoryString][command];
      end
    end
  end
    if (skipEcho ~= true) then
      gFunc.Echo(200, (command .. ": " .. profile[categoryString][command][profile[category][command]]));
    end
end 

local HandleMatchSkill = function(action)
  local matchSet = AccuracySetLookup[action.Skill];
  if (matchSet == 'HandleBardSong') then
    matchSet = SpellTypes['Bard Song'][action.Name].Skill;
  end
  return matchSet;
end

local GetVisibleMPThreshhold = function(profile, player, currentGear, action)
  local maxMP = (100 / player.MPP) * player.MP;
  local MP = player.MP;
  if (profile.Food ~= nil) then
    if (Food[profile.Food].MP ~= nil) then
      maxMP = maxMP - Food[profile.Food].MP;
    elseif (Food[profile.Food].MPP ~= nil) then
      local minusMaxMP = maxMP / (1 + (Food[profile.Food].MPP / 100))
      if (minusMaxMP > Food[profile.Food].Max) then minusMaxMP = Food[profile.Food].Max; end
      maxMP = maxMP - minusMaxMP;
    end
  end
  for slot, item in pairs(currentGear) do
    if (MPGear[item.Name] == nil) then goto continue; end
    if (MPGear[item.Name].Convert or not VisibleSlots:contains(slot)) then
      maxMP = maxMP - MPGear[item.Name].MP;
    end
    ::continue::
  end
  MP = MP - action.MpCost;
  if (MP < 0) then MP = 0; end
  return (MP / maxMP) * 100;
end

local CombineSets = function(profile, setString, action, player)
  if (setString == 'MatchSkill') then
    setString = HandleMatchSkill(action)
  end
  if (profile.Sets[setString] ~= nil) then
    for slot, item in pairs(profile.Sets[setString]) do
      if (ThreshholdRingLookup:contains(item) and player.TP >= 1000) then goto continue; end
      if (profile.ModeLookup.TPMode[profile.Mode.TPMode] == 'SaveTP' and (slot == 'Main' or slot == 'Sub')) then goto continue; end
      if (profile.workingSet[slot] ~= nil) then goto continue; end
      profile.workingSet[slot] = item;
      ::continue::
    end
  end
end

local BuildMaxMpSet = function(profile, setString, action, player, currentGear)
  local currentMissingMp = profile.workingCurrentMissingMp;
  local newSet = profile.workingSet;
  if (setString == 'MatchSkill') then
    setString = HandleMatchSkill(action)
  end
  if (profile.SetEquipOrder[setString] ~= nil) then
    for _, slot in ipairs(profile.SetEquipOrder[setString]) do
      local item = profile.Sets[setString][slot];
      local newItemMp = 0;
      local oldItemMp = 0;
      if (ThreshholdRingLookup:contains(item) and player.TP >= 1000) then goto continue; end
      if (profile.ModeLookup.TPMode[profile.Mode.TPMode] == 'SaveTP' and (slot == 'Main' or slot == 'Sub')) then goto continue; end
      if (profile.workingSet[slot] ~= nil) then goto continue; end
      if (MPGear[item] ~= nil) then
        newItemMp = MPGear[item].MP;
      end
      if (currentGear[slot] ~= nil) then
        if (MPGear[currentGear[slot].Name] ~= nil) then
          oldItemMp = MPGear[currentGear[slot].Name].MP;
        end
      end
      if (oldItemMp > newItemMp) then
        if (currentMissingMp - (oldItemMp - newItemMp) >= 0) then
          newSet[slot] = item;
          currentMissingMp = currentMissingMp - (oldItemMp - newItemMp);
        end
      else
        newSet[slot] = item;
        currentMissingMp = currentMissingMp + (newItemMp - oldItemMp);
      end
      ::continue::
    end
  end
  profile.workingCurrentMissingMp = currentMissingMp;
  profile.workingSet = newSet;
end

local GetPrecastSet = function(profile, action)
  if (action.Type == 'Bard Song') then
    return 'BardSongPreCast';
  elseif (action.Type == 'Summoning') then
    return 'SummoningPrecast';
  elseif (CurePrecastTypesLookup:contains(action.Name)) then
    return 'CurePrecast';
  else
    return 'Precast';
  end
end

local GetMidDelay = function(profile, player, action)
  local CastTime
  if (SpellTypes[action.Type][action.Name].CastTime ~= nil) then
    CastTime = SpellTypes[action.Type][action.Name].CastTime;
  else
    CastTime = action.CastTime
  end 
  local totalFastCast = 0;
  if (player.MainJob == 'RDM' and player.MainJobLevel >= 55) then
    totalFastCast = .2;
  elseif ((player.MainJob == 'RDM' and player.MainJobLevel >= 35) or (player.SubJob == 'RDM' and player.SubJobLevel >= 35)) then
    totalFastCast = .15;
  elseif ((player.MainJob == 'RDM' and player.MainJobLevel >= 15) or (player.SubJob == 'RDM' and player.SubJobLevel >= 15)) then
    totalFastCast = .1;
  end
  for slot, itemName in pairs(profile.workingSet) do
    if (FastCast[itemName] ~= nil) then 
      totalFastCast = totalFastCast + FastCast[itemName];
    end
  end
  profile.TrueCastSpeed = (CastTime - (CastTime * totalFastCast)) / 1000;
  local midDelay = profile.TrueCastSpeed - .3;
  return midDelay;
end

local GetInterimEquipSet = function(profile)  
  if (profile.ModeLookup.InterimMode[profile.Mode.InterimMode] == 'InterruptionInterim') then
    return 'InterruptionInterim';
  elseif (profile.ModeLookup.InterimMode[profile.Mode.InterimMode] == 'DefenseInterim') then
    return profile.StanceLookup.IdleStance[profile.Stance.IdleStance];
  end
end

local GetEquipPriorityType = function(profile, action)
  local spellPriorityType;
  if (profile.ModeLookup.EnmityMode[profile.Mode.EnmityMode] ~= 'IgnoreEnmity') then
    spellPriorityType = SpellTypes[action.Type][action.Name][profile.ModeLookup.EnmityMode[profile.Mode.EnmityMode]];
    if (spellPriorityType ~= nil) then  
      return spellPriorityType;
    else 
      return SpellTypes[action.Type][action.Name].Default;
    end
  else
    spellPriorityType = SpellTypes[action.Type][action.Name][profile.ModeLookup.SpellMode[profile.Mode.SpellMode]];
    if (spellPriorityType ~= nil) then 
      return spellPriorityType;
    else
      return SpellTypes[action.Type][action.Name].Default;
    end
  end
end

local GetInstrument = function (profile, action)
  local instrument = SpellTypes[action.Type][action.Name]['Instrument'];
  if (instrument == 'Any') then
    if (profile.ModeLookup.InstrumentMode[profile.Mode.InstrumentMode] == 'Wind') then
      profile.workingSet['Range'] = 'Horn +1';
    else
      profile.workingSet['Range'] = 'Angel Lyre';
    end
  else
    profile.workingSet['Range'] = instrument;
  end
end

local HandleOpuntiaRing = function(profile, player, currentGear)
  local blazeSpikes = gData.GetBuffCount('Blaze Spikes');
  local iceSpikes = gData.GetBuffCount('Ice Spikes');
  local shockSpikes = gData.GetBuffCount('Shock Spikes');
  if (blazeSpikes + iceSpikes + shockSpikes > 0) then
    if (profile.ModeLookup.MPMode[profile.Mode.MPMode] == 'PreserveMaxMP') then
      local currentGear = gData.GetEquipment();
      BuildMaxMpSet(profile, 'OpuntiaHoop', nil, player, currentGear);
    else
      profile.workingSet['Ring1'] = 'Opuntia Hoop';
    end
  end
end

local HandleDefaultFunctions = {};
local EquipWeapons = function (profile)
  gFunc.EquipSet(profile.Sets[profile.StanceLookup.WeaponStance[profile.Stance.WeaponStance]]);
  gFunc.EquipSet(profile.Sets[profile.StanceLookup.RangedStance[profile.Stance.RangedStance]]);
end
local RestingGlobal = function (profile, player)
  if (profile.ModeLookup.MPMode[profile.Mode.MPMode] == 'PreserveMaxMP') then
    gFunc.EquipSet(profile.Sets['MaxMP']);
    if (player.MP > profile.MaxMPRestMPThreshhold) then
      if (profile.Sets['MaxMP'].Main == nil and profile.ModeLookup.TPMode[profile.Mode.TPMode] ~= 'SaveTP') then 
        gFunc.Equip('Main', 'Pluto\'s Staff'); 
      end
    else
      gFunc.EquipSet(profile.Sets['Resting']);
    end
  elseif (player.MP > profile.RestMPThreshhold) then
    HandleDefaultFunctions['Idle']['Global'](profile, player);
    if (profile.ModeLookup.TPMode[profile.Mode.TPMode] ~= 'SaveTP') then 
      gFunc.Equip('Main', 'Pluto\'s Staff'); 
    end
  else
    gFunc.EquipSet(profile.Sets['Resting']);
  end
end
local EngagedGlobal = function(profile, player)
  if (profile.ModeLookup.MPMode[profile.Mode.MPMode] == 'PreserveMaxMP') then
    gFunc.EquipSet(profile.Sets['MaxMP']);
  else
    gFunc.EquipSet(profile.Sets[profile.StanceLookup.EngagedStance[profile.Stance.EngagedStance]]);
    if (profile.Sets[profile.ModeLookup.EnmityMode[profile.Mode.EnmityMode]] ~= nil) then
      gFunc.EquipSet(profile.Sets[profile.ModeLookup.EnmityMode[profile.Mode.EnmityMode]]);
    end
  end
  if (HandleDefaultFunctions['Engaged'][player.MainJob] ~= nil) then
    HandleDefaultFunctions['Engaged'][player.MainJob](profile);
  end
  EquipWeapons(profile);
end
local EngagedTHF = function(profile, player)
  local SneakAttack = gData.GetBuffCount('Sneak Attack');
  local TrickAttack = gData.GetBuffCount('Trick Attack');
  if (SneakAttack > 0 and TrickAttack > 0) then 
    gFunc.EquipSet(profile.Sets['SATA']);
  elseif (SneakAttack > 0) then 
    gFunc.EquipSet(profile.Sets['SneakAttack']);
  elseif (TrickAttack > 0) then 
    gFunc.EquipSet(profile.Sets['TrickAttack']);
  end
end
local IdleGlobal = function(profile, player)
  if (profile.ModeLookup.MPMode[profile.Mode.MPMode] == 'PreserveMaxMP') then
    gFunc.EquipSet(profile.Sets['MaxMP']);
  else
    gFunc.EquipSet(profile.Sets[profile.StanceLookup.IdleStance[profile.Stance.IdleStance]]);
    if (profile.Sets[profile.ModeLookup.EnmityMode[profile.Mode.EnmityMode]] ~= nil) then
      gFunc.EquipSet(profile.Sets[profile.ModeLookup.EnmityMode[profile.Mode.EnmityMode]]);
    end
  end
  if (HandleDefaultFunctions['Idle'][player.MainJob] ~= nil) then
    HandleDefaultFunctions['Idle'][player.MainJob](profile, player);
  end
  EquipWeapons(profile);
end
local IdleBLM = function(profile, player)
  local currentGear = gData.GetEquipment();
  profile.workingSet = {};
  profile.workingCurrentMissingMp = ((100 / player.MPP) * player.MP) -  player.MP;
  HandleOpuntiaRing(profile, player, currentGear);
  gFunc.EquipSet(profile.workingSet);
end

HandleDefaultFunctions['Resting'] = {};
HandleDefaultFunctions['Resting']['Global'] = RestingGlobal;
HandleDefaultFunctions['Engaged'] = {};
HandleDefaultFunctions['Engaged']['Global'] = EngagedGlobal;
HandleDefaultFunctions['Engaged']['THF'] = EngagedTHF;
HandleDefaultFunctions['Idle'] = {};
HandleDefaultFunctions['Idle']['Global'] = IdleGlobal;
HandleDefaultFunctions['Idle']['BLM'] = IdleBLM;
local HandleDefault = function(profile)
  local player = gData.GetPlayer();
  if (gData.GetPlayer().MaxHP == 0) then
    profile.LockCasting = false;
  end
  local playerStatus
  if (ValidPlayerStatus:contains(player.Status)) then
    playerStatus = player.Status;
  else
    playerStatus = 'Idle';
  end
  if (profile.SacHPCounter ~= 0) then
    if (profile.SacHPCounter > 1) then goto skip; end
    if (profile.ModeLookup.MPMode[profile.Mode.MPMode] == 'PreserveMaxMP') then
      local currentGear = gData.GetEquipment();
      profile.workingSet = {};
      profile.workingCurrentMissingMp = ((100 / player.MPP) * player.MP) - player.MP;
      BuildMaxMpSet(profile, 'SacHP', action, player, currentGear);
      gFunc.EquipSet(profile.workingSet);
    else
      gFunc.EquipSet(profile.Sets['SacHP']);
    end
    ::skip::
    if (profile.SacHPCounter >= 4) then
      profile.SacHPCounter = 0;
    else
      profile.SacHPCounter = profile.SacHPCounter + 1;
    end
  else
    HandleDefaultFunctions[playerStatus]['Global'](profile, player)
    if (player.IsMoving == true) then
      if (profile.EngagedSetsWithDusk:contains(profile.StanceLookup.EngagedStance[profile.Stance.EngagedStance]) and player.Status == 'Engaged') then
        gFunc.EquipSet(profile.Sets['DuskMovement'])
      end
        gFunc.EquipSet(profile.Sets['Movement'])
    end
  end
end

local HandlePrecast = function(profile)
  local player = gData.GetPlayer();
  local action = gData.GetAction();
  local currentGear = gData.GetEquipment();
  profile.workingSet = {};
  profile.workingCurrentMissingMp = ((100 / player.MPP) * player.MP) -  player.MP;
  local precastSetString = GetPrecastSet(profile, action);
  if (profile.ModeLookup.MPMode[profile.Mode.MPMode] == 'PreserveMaxMP') then
    BuildMaxMpSet(profile, precastSetString, action, player, currentGear);
  else 
    CombineSets(profile, precastSetString, action, player, currentGear);
  end
  gFunc.EquipSet(profile.workingSet);
end

local InterimCastBLM = function(profile, player, action, currentGear)
  HandleOpuntiaRing(profile, player, currentGear);
end
local InterimCastJobFunctions = {};
InterimCastJobFunctions['BLM'] = InterimCastBLM;

local HandleMidcast = function(profile)
  local player = gData.GetPlayer();
  local action = gData.GetAction();
  local currentGear = gData.GetEquipment();
  local midDelay = GetMidDelay(profile, player, action);
  if (midDelay >= .3 and profile.ModeLookup.InterimMode[profile.Mode.InterimMode] ~= 'IgnoreInterim' and SpellTypes[action.Type][action.Name].IgnoreInterim ~= true) then
    profile.workingSet = {};
    gFunc.SetMidDelay(midDelay);
    local set = GetInterimEquipSet(profile);
    if (set == 'InterruptionInterim') then
      for _, setString in ipairs(SpellPriorityTypes[set]) do
        if (profile.ModeLookup.MPMode[profile.Mode.MPMode] == 'PreserveMaxMP') then
          BuildMaxMpSet(profile, setString, action, player, currentGear);
        else
          CombineSets(profile, setString, action, player);
        end
      end
    else
      if (profile.ModeLookup.MPMode[profile.Mode.MPMode] == 'PreserveMaxMP') then
        BuildMaxMpSet(profile, set, action, player, currentGear);
      else
        CombineSets(profile, set, action, player);
      end
    end
    if (InterimCastJobFunctions[player.Main] ~= nil) then
      InterimCastJobFunctions[player.Main](profile, player, action, currentGear);
    end
    local setCopy = ShallowCopySet(profile.workingSet);
    gFunc.InterimEquipSet(setCopy);
    for slot, item in pairs(currentGear) do
      if (profile.workingSet[slot] ~= nil) then
        local newItem = {}
        newItem.Name = profile.workingSet[slot]
        currentGear[slot] = newItem
      end
    end
  end
  profile.workingSet = {};
  local spellPriorityType = GetEquipPriorityType(profile, action);
  for _, setString in ipairs(SpellPriorityTypes[spellPriorityType]) do
    if (setString == 'UggPendant' and 51 <= GetVisibleMPThreshhold(profile, player, currentGear, action)) then
      goto continue;
    elseif (ConquestItems[setString] ~= nil and ConquestItems[setString] ~= profile.ModeLookup.ConquestMode[profile.Mode.ConquestMode]) then
      goto continue;
    elseif (setString == 'EleStaff' and profile.ModeLookup.TPMode[profile.Mode.TPMode] ~= 'SaveTP') then 
      profile.workingSet['Main'] = ElementalStaffTable[action.Element];
      goto continue;
    elseif (setString == 'Instrument') then
      GetInstrument(profile, action);
      goto continue;
    elseif (profile.ModeLookup.MPMode[profile.Mode.MPMode] == 'PreserveMaxMP' and profile.ModeLookup.SpellMode[profile.Mode.SpellMode] == 'SpellAccuracy' and SpellTypes[action.Type].SpellAccuracy ~= nil) then
      CombineSets(profile, profile.Sets[setString]);
      goto continue;
    end
    if (profile.ModeLookup.MPMode[profile.Mode.MPMode] == 'PreserveMaxMP') then
      BuildMaxMpSet(profile, setString, action, player, currentGear);
    else
      CombineSets(profile, setString, action, player);
    end
    ::continue::
  end
  gFunc.EquipSet(profile.workingSet);
end

local RewardFunc = function(profile, player, action, currentGear)
  local level = player.MainJobLevel;
  if (level >= 72) then
    profile.workingSet.Ammo = 'Pet Food Zeta';
  elseif (level >= 60) then
    profile.workingSet.Ammo = 'Pet Food Epsilon';
  elseif (level >= 48) then
    profile.workingSet.Ammo = 'Pet Food Delta';
  elseif (level >= 36) then
    profile.workingSet.Ammo = 'Pet Fd. Gamma';
  elseif (level >= 24) then
    profile.workingSet.Ammo = 'Pet Food Beta';
  elseif (level >= 12) then
    profile.workingSet.Ammo = 'Pet Food Alpha';
  end
end
local AbilityFunctions = {};
AbilityFunctions['Reward'] = RewardFunc;
local HandleAbility = function(profile)
  local player = gData.GetPlayer();
  local action = gData.GetAction();
  local currentGear = gData.GetEquipment();
  profile.workingSet = {};
  profile.workingCurrentMissingMp = ((100 / player.MPP) * player.MP) -  player.MP;
  if (profile.Sets[action.Name] ~= nil) then
    if (profile.ModeLookup.MPMode[profile.Mode.MPMode] == 'PreserveMaxMP') then
      BuildMaxMpSet(profile, action.Name, action, player, currentGear);
    else
      CombineSets(profile, action.Name, action, player);
    end
  end
  if (AbilityFunctions[action.Name] ~= nil) then
    AbilityFunctions[action.Name](profile, player, action, currentGear);
  end
  gFunc.EquipSet(profile.workingSet);
end

local HandlePreshot = function(profile)
  local currentGear = gData.GetEquipment();
  if (Ammo[profile.StanceLookup.AmmoStance[profile.Stance.AmmoStance]].Type == RangedWeaponTypes[currentGear.Range.Name]) then
    gFunc.Equip('Ammo', Ammo[profile.StanceLookup.AmmoStance[profile.Stance.AmmoStance]].Name)
  end
end

local HandleMidshot = function(profile)
  if (profile.Sets[profile.StanceLookup.AmmoStance[profile.Stance.AmmoStance]] ~= nil) then
    gFunc.EquipSet(profile.Sets[profile.StanceLookup.AmmoStance[profile.Stance.AmmoStance]]);
  elseif (profile.Sets[profile.StanceLookup.EngagedStance[profile.Stance.EngagedStance .. 'RA']] ~= nil) then
    gFunc.EquipSet(profile.Sets[profile.StanceLookup.EngagedStance[profile.Stance.EngagedStance .. 'RA']]);
  else
    gFunc.EquipSet(profile.Sets['AccuracyRA']);
  end
end

local HandleWeaponskill = function(profile)
  local action = gData.GetAction();
  if (WeaponSkills[profile.ModeLookup.WSMode[profile.Mode.WSMode]] ~= nil) then
    gFunc.EquipSet(WeaponSkills[action.Name][profile.ModeLookup.WSMode[profile.Mode.WSMode]])
  else
    gFunc.EquipSet(WeaponSkills[action.Name]['Default']);
  end
end

return {
  CreateDefaultData = CreateDefaultData,
  SetDefaultStances = SetDefaultStances,
  SetDefaultModes = SetDefaultModes,
  LoadDefaultKeybinds = LoadDefaultKeybinds,
  UnloadDefaultKeybinds = UnloadDefaultKeybinds,
  DefaultCommandHandles = DefaultCommandHandles,
  HandleDefault = HandleDefault,
  HandlePrecast = HandlePrecast,
  HandleMidcast = HandleMidcast,
  HandleAbility = HandleAbility,
  HandlePreshot = HandlePreshot,
  HandleMidshot = HandleMidshot,
  HandleWeaponskill = HandleWeaponskill
};

