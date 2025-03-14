local combat = createCombatObject()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DARKDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 80)
combat:setParameter(COMBAT_PARAM_EFFECT, 973)
combat:setStringParameter(COMBAT_PARAM_STRING_SPELLNAME, "Dark Pulse")

local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(creature, variant)
    
    combat:execute(creature, variant)

    return true
end

spell:name("Dark Pulse")
spell:words("#Dark Pulse#")
spell:isAggressive(true)
spell:needLearn(false)
spell:range(8)
spell:needTarget(true)
spell:register()