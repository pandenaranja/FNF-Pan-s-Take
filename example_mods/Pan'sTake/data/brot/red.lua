function onCreate()
	--Lua sprite tag, Sprite file path, X and Y, respectively
	makeAnimatedLuaSprite('Red', 'characters/reddud', defaultOpponentX - 125, defaultOpponentY - 30)

	--Adds animation "anim", on the sprite XML file, this animation is named "Dad idle dance"
	addAnimationByPrefix('Red', 'idle', 'Idle', 24, false)

	--Spawn sprite behind all characters
	addLuaSprite('Red', false) 
end

function onBeatHit()
	-- Play animation named "anim" every 2 beat hits
	if curBeat % 1 == 0 then
		playAnim('Red', 'idle')
	end
end

function onCountdownTick(counter)
	-- Play animation named "anim" on the "3" and "1", but not on the "2" and "GO!"
	if counter % 2 == 0 then
		playAnim('Red', 'idle')
	end
end