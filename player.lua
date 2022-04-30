Player = {}

function Player:load()
    player = world:newRectangleCollider(width/2, 200, 50,70)
    player:setFixedRotation(true)
    --player:applyAngularImpulse(2500)
    
end

function Player:update(dt)
    if love.keyboard.isDown('right') then
        player:applyForce(3000,0)
    elseif love.keyboard.isDown('left') then
        player:applyForce(-3000,0)  
    end
end

function Player:draw()
    
end