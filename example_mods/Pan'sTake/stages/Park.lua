function onCreate()
	
    makeAnimatedLuaSprite('Park', 'Park', -600, -300)
    addAnimationByPrefix('Park', 'Idle', 'Idle', 24, true)
    setLuaSpriteScrollFactor('Park', 1, 1)
    addLuaSprite('Park', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end