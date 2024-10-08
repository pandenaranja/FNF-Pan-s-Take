function onCreatePost()
setProperty('timeBarBG.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeTxt.visible', true)
end

function onUpdatePost()
setProperty("scoreTxt.text","SCORE: " .. score .. " - COMBO BREAKS: " .. misses);
end