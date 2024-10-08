-- The first event mabe by me(Scarlet Eye) --
function onEvent(name, value1, value2)
	if name == 'EpicVG' then
		if value1 then -- begining
		makeLuaSprite('Epic', 'EpicVG', 0, 0)
	    setObjectCamera('Epic', 'other')
	    setObjectOrder('Epic', 5)
	    addLuaSprite('Epic', true)
	    doTweenAlpha('Epic', 'Epic', 1, value1, 'quadInOut');
	end
	    if value2 then -- end
	    makeLuaSprite('Epic', 'EpicVG', 0, 0)
	    setObjectCamera('Epic', 'other')
	    setObjectOrder('Epic', 5)
	    addLuaSprite('Epic', true)
		doTweenAlpha('Epic', 'Epic', 0, value2, 'quadInOut');
	    end
	end
end