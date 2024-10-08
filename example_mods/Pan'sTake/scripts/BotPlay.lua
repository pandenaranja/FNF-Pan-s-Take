function onUpdatePost()
      if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F4') then

            if not getProperty('cpuControlled') then

            setProperty('cpuControlled', true)

            debugPrint("botPlay On")

            setProperty('botplayTxt.visible', true)

        else

            setProperty('cpuControlled', false)

            setProperty('botplayTxt.visible', false)

            debugPrint("botPlay Off")

        end

  end

end 