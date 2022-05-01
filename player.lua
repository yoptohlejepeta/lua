Player = {}

function Player:load()
    player = world:newRectangleCollider(width/2, 200, 50,70)
    player:setFixedRotation(true)
    --player:applyAngularImpulse(2500)
    
end

function Player:update(dt)
    local px, py = player:getLinearVelocity()
    print(py,canJump)
    if math.abs(py) < 0.5 then
        canJump = true
    else
        canJump = false
    end
    if love.keyboard.isDown('right') and px > -1000 then
        player:applyForce(3000,0)
    elseif love.keyboard.isDown('left') and py < 1000 then
        player:applyForce(-3000,0)  
    end
end

function Player:draw()
    
end


function Player:keypressed(key)
    if key == 'up' and canJump then
        player:applyLinearImpulse(0,-2500)
    end
end