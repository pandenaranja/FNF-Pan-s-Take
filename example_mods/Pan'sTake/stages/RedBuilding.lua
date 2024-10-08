function onCreate()
	
    makeAnimatedLuaSprite('RedBuilding', 'RedBuilding', -600, -300)
    addAnimationByPrefix('RedBuilding', 'Idle', 'Idle', 24, true)
    setLuaSpriteScrollFactor('RedBuilding', 1, 1)
    addLuaSprite('RedBuilding', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end