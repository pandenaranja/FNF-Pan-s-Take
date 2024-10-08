function onCreate()
  makeAnimatedLuaSprite('Dad2', 'characters/RedInkGod', -160, 500); -- Change to characters idle in XML
  addAnimationByPrefix('Dad2', 'idle', 'Dance', 25, false); -- Change to characters idle in XML
  objectPlayAnimation('Dad2', 'idle'); 
  addLuaSprite('Dad2', true); -- false = add behind characters, true = add over characters
end
function onBeatHit()
  -- triggered 4 times per section
  if curBeat % 1 == 0 then
    objectPlayAnimation('Dad2', 'idle');
  end
end