function onCreate()
	
    makeAnimatedLuaSprite('Paint', 'Paint', -600, -300)
    addAnimationByPrefix('Paint', 'Idle', 'Idle', 24, true)
    setLuaSpriteScrollFactor('Paint', 1, 1)
    addLuaSprite('Paint', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end