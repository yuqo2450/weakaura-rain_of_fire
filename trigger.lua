--[[ events: CLEU:SPELL_CAST_SUCCESS ]]
function (event, ...)
  aura_env.SPELL_ID = 5740
  aura_env.SPELL_DURATION = 8
  local guidCaster = select(4,...);
  local spell = select(12,...);

  if guidCaster ~= UnitGUID("player") or spell ~= aura_env.SPELL_ID then
    return false
  end

  return true
end
