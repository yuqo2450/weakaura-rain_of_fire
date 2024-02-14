function (triggers)
  local haste = UnitSpellHaste("player") / 100 + 1
  local duration = aura_env.SPELL_DURATION / haste

  return duration, GetTime() + duration
end
