function onCreate()
	
    makeAnimatedLuaSprite('Combined', 'Combined', -600, -300)
    addAnimationByPrefix('Combined', 'Idle', 'Idle', 24, true)
    setLuaSpriteScrollFactor('Combined', 1, 1)
    addLuaSprite('Combined', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end