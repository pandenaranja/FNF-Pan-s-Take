local gfSpeed = 1;

function onBeatHit()

	if (curBeat % gfSpeed == 0) then
		if curBeat % (gfSpeed * 2) == 0 then
			setProperty('iconP1.scale.x', 0.8 );
			setProperty('iconP1.scale.y', 0.8 );
			setProperty('iconP2.scale.x', 1.2 );
			setProperty('iconP2.scale.y', 1.3 );

			setProperty('iconP1.angle', -8);
			setProperty('iconP2.angle', 8);
		else
			setProperty('iconP1.scale.x', 1.2 );
			setProperty('iconP1.scale.y', 1.3 );
			setProperty('iconP2.scale.x', 0.8 );
			setProperty('iconP2.scale.y', 0.8 );

			setProperty('iconP2.angle', -8);
			setProperty('iconP1.angle', 8);
		end

	end

end

function onUpdate()

    if (getProperty('iconP1.angle') >= 0) then
	    if ('iconP1.angle' ~= 0) then
    	    setProperty('iconP1.angle', getProperty('iconP1.angle')-0.3);
    	end
    else
        if ('iconP1.angle' ~= 0) then
    	    setProperty('iconP1.angle', getProperty('iconP1.angle')+0.3);
    	end
    end

    if (getProperty('iconP2.angle') >= 0) then
	    if ('iconP2.angle' ~= 0) then
    	    setProperty('iconP2.angle', getProperty('iconP2.angle')-0.3);
    	end
    else
        if ('iconP2.angle' ~= 0) then
    	    setProperty('iconP2.angle', getProperty('iconP2.angle')+0.3);
    	end
    end

end

function onUpdatePost()
    setProperty('iconP1.scale.y', 1)
    setProperty('iconP1.scale.x', 1)
    setProperty('iconP2.scale.y', 1)
    setProperty('iconP2.scale.x', 1)
 if downscroll then
    setProperty("iconP1.y", -65 + (getProperty("iconP1.scale.y") * 75))
    setProperty("iconP1.x", 780 + (getProperty("iconP1.scale.x") * 100))
    setProperty("iconP2.y", -65 + (getProperty("iconP2.scale.y") * 75))
    setProperty("iconP2.x", 130 + (getProperty("iconP2.scale.x") * 100))
 else
    setProperty("iconP1.y", 470 + (getProperty("iconP1.scale.y") * 75))
    setProperty("iconP1.x", 780 + (getProperty("iconP1.scale.x") * 100))
    setProperty("iconP2.y", 470 + (getProperty("iconP2.scale.y") * 75))
    setProperty("iconP2.x", 130 + (getProperty("iconP2.scale.x") * 100))
 end
end
