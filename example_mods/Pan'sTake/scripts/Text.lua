local coloredWin = false
local coloredBase = false
local coloredLose = false

function onUpdate()

    if getProperty('healthBar.percent') >= 80 then
        if coloredWin == false then
            coloredWin = true
            doTweenColor('scoreTxtWin', 'scoreTxt', 'ffa000', 0.2 + (crochet/5000), 'linear')
        end
    else
        coloredWin = false
    end

    if getProperty('healthBar.percent') < 80 and getProperty('healthBar.percent') > 20 then
        if coloredBase == false then
            coloredBase = true
            doTweenColor('scoreTxtBase', 'scoreTxt', 'ffffff', 0.2 + (crochet/5000), 'linear')
        end
    else
        coloredBase = false
    end

    if getProperty('healthBar.percent') <= 20 then
        if coloredLose == false then
            coloredLose = true
            doTweenColor('scoreTxtLose', 'scoreTxt', '0000ff', 0.2 + (crochet/5000), 'linear')
        end
    else
        coloredLose = false
    end
end