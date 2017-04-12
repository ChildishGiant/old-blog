
button = {}

function button_spawn(x,y,text,id,font)
    table.insert(button, {x = x, y = y, text = text, id = id, font = font})
end
function button_draw(font)
    for i,v in ipairs(button) do
            love.graphics.setFont(font)
            love.graphics.setColor(0,0,0)
            love.graphics.print(v.text,v.x,v.y)
            love.graphics.setFont(labelFont)
    end 
end
function button_click(x,y)
    for i,v in ipairs(button) do
        if x > v.x and
        x < v.x + v.font:getWidth(v.text) and
        y > v.y and
        y < v.y + v.font:getHeight(v.text) then
            if v.id == "quit" then
                love.window.close()
            end
            if v.id == "start" then
                gamestate = "playing"
            end
        end
    end 
end

