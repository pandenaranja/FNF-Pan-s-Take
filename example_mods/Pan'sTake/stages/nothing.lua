function onCreate()
	
    makeAnimatedLuaSprite('nothing', 'nothing', -600, -300)
    addAnimationByPrefix('nothing', 'Idle', 'Idle', 24, true)
    setLuaSpriteScrollFactor('nothing', 1, 1)
    addLuaSprite('nothing', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end