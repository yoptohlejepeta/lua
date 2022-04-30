wf = require 'windfield'

function love.load()
    world = wf.newWorld(0, 0, true)
    world:setGravity(0, 512)
    player = world:newRectangleCollider(300, 250, 50,70)
    player:setFixedRotation(true)
    --player:applyAngularImpulse(2500)
    box = world:newCircleCollider(400,250,15)
    box:applyAngularImpulse(5000)

    ground = world:newRectangleCollider(0, 550, 800, 50)
    wall_left = world:newRectangleCollider(0, 0, 50, 600)
    wall_right = world:newRectangleCollider(750,-200,50,600)
    ground:setType('static')
    wall_left:setType('static')
    wall_right:setType('static')
    player_character = {}
    player.sprite = love.graphics.newImage('pictures/character.png')
end

function love.update(dt)
    player:getPosition()
    player_character.x, player_character.y = player:getPosition()
    local px,py = player:getLinearVelocity()
    world:update(dt)
    if love.keyboard.isDown('right') and px < 300 then
        player:applyForce(3000,0)    
    end
    if love.keyboard.isDown('left') and py > -300 then
        player:applyForce(-3000,0)  
    end
end

function love.draw()
    world:draw()
    love.graphics.setBackgroundColor(0.41, 0.53, 0.97)
    love.graphics.draw(player.sprite, player.x, player.y)

end

function love.keypressed(key)
    if key == 'up' then
        player:applyLinearImpulse(0,-2000)
    end
end