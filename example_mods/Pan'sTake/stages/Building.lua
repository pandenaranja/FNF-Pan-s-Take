function onCreate()
	
    makeAnimatedLuaSprite('Building', 'Building', -600, -300)
    addAnimationByPrefix('Building', 'Idle', 'Idle', 24, true)
    setLuaSpriteScrollFactor('Building', 1, 1)
    addLuaSprite('Building', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end