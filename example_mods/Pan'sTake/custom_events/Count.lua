local waitTime
local waitDelayTime
function onCreatePost()
	waitTime = bpm*(bpm*0.00001)
	waitDelayTime = (bpm*(bpm*0.00001))+0.06
end

function countdown(counters)
	if counters == 'all' then
		runTimer('countdown3', waitDelayTime)
	elseif counters == 'getReady' then
		makeLuaText('getReady', 'THREE', 0, 0, 0)
		setObjectCamera('getReady', 'hud')
		setTextSize('getReady', 200)
		addLuaText('getReady')
		doTweenAlpha('gr', 'getReady', 0, waitTime, 'linear')
		playSound('intro3')
		screenCenter('getReady')
	elseif counters == 'ready' then
		makeLuaText('ready', 'TWO', 0, 0, 0)
		setObjectCamera('ready', 'hud')
		setTextSize('ready', 200)
		addLuaText('ready')
		doTweenAlpha('r', 'ready', 0, waitTime, 'linear')
		playSound('intro2')
		screenCenter('ready')
	elseif counters == 'set' then
		makeLuaText('set', 'ONE', 0, 0, 0)
		setObjectCamera('set', 'hud')
		setTextSize('set', 200)
		addLuaText('set')
		doTweenAlpha('s', 'set', 0, waitTime, 'linear')
		playSound('intro1')
		screenCenter('set')
	elseif counters == 'go' then
		makeLuaText('go', 'GO!', 0, 0, 0)
		setObjectCamera('go', 'hud')
		setTextSize('go', 200)
		addLuaText('go')
		doTweenAlpha('gg!!', 'go', 0, waitTime, 'linear')
		playSound('introGo')
		screenCenter('go')
	end
end

function onTimerCompleted(t, loop, loopLeft)
	if t == 'countdown3' then
		countdown('getReady')
		runTimer('countdown2', waitDelayTime)
	elseif t == 'countdown2' then
		countdown('ready')
		runTimer('countdown1', waitDelayTime)
	elseif t == 'countdown1' then
		countdown('set')
		runTimer('countdown0', waitDelayTime)
	elseif t == 'countdown0' then
		countdown('go')
	end
end

function onEvent(n, v1)
	if n == "Countdown" then
		if v1 == 'all' then
			countdown('all')
		elseif v1 == 'getReady' or 'Get Ready' or 'ready' or 'set' or 'go' or 'go!' or 4 or 3 or 2 or 1 then
			if v1 == 'ready' or 'set' or 'go' then
				countdown(v1)
			elseif v1 == 'go!' then
				countdown('go')
			elseif v1 == 4 or 3 or 2 or 1 then
				counts = {'getReady','ready','set','go'}
				countdown(counts[tonumber(v1)])
			end
		end
	end
end