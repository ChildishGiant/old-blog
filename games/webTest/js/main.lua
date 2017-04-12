require "menu"

function love.load()
    windowFlags = {fullscreen = false, resizable = true}
    menuFont = love.graphics.newFont(20)
    labelFont = love.graphics.newFont(11)
    love.window.setMode(love.graphics.getWidth(), love.graphics.getHeight(), windowFlags)
    love.mouse.setVisible(true)
    love.graphics.setBackgroundColor(255,255,255)
    love.graphics.setFont(labelFont)

    gamestate = "menu"

    --Buttons
    button_spawn(5,200,"Start","start",menuFont)
    button_spawn(5,550,"Quit","quit",menuFont)
    debug.debug()
end

-- Toggle cursor visibility.
function love.keypressed(key)
    if key == "v" then
	if love.mouse.isVisible() then
	    love.mouse.setVisible(false)
	else
	    love.mouse.setVisible(true)
	end
    end
end

function love.draw()
    love.graphics.print("Press V to toggle visibility.", 50, 50)
    if gamestate == "menu" then
        button_draw(menuFont)
    end
end

function love.mousepressed(x,y)
    if gamestate == "menu" then
    button_click(x,y)
    end
end

function love.update(dt)
    if gamestate == "playing" then
    end
end
