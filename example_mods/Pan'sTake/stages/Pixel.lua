function onCreate()
	
    makeAnimatedLuaSprite('Pixel', 'Pixel', -600, -300)
    addAnimationByPrefix('Pixel', 'Idle', 'Idle', 24, true)
    setLuaSpriteScrollFactor('Pixel', 1, 1)
    addLuaSprite('Pixel', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end