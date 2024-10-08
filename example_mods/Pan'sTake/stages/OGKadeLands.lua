function onCreate()
	
    makeAnimatedLuaSprite('OGLands2', 'OGLands2', -600, -300)
    addAnimationByPrefix('OGLands2', 'Idle', 'Idle', 24, true)
    setLuaSpriteScrollFactor('OGLands2', 1, 1)
    addLuaSprite('OGLands2', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end