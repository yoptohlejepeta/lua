Objects = {}

function Objects:load()
    --ball = world:newCircleCollider(width/4, height/4, 20)
    crate = world:newRectangleCollider(50,height, 40,40)
    ground = world:newRectangleCollider(0, height, 1280, 50)
    platform1 = world:newRectangleCollider(width*(7/8), height*(3/4), 50, 200)
    platform2 = world:newRectangleCollider(width/10, height/2,200,50)
    platform3 = world:newRectangleCollider(width*(1/4),height*(5/8),200,50)
    platform4 = world:newRectangleCollider(width*(5/8),height*(5/8),100,50)
    wall_left = world:newLineCollider(0,0,0,height)
    wall_right = world:newLineCollider(width,0,width,height)
    roof = world:newLineCollider(0,0,width,0)
    -- ball:setRestitution(0.8)
    -- ball:applyAngularImpulse(5000)
    ground:setType('static')
    platform1:setType('static')
    platform2:setType('static')
    platform3:setType('static')
    platform4:setType('static')
    wall_left:setType('static')
    wall_right:setType('static')
    roof:setType('static')
    wall_left:setRestitution(0.3)
    wall_right:setRestitution(0.3)
    roof:setRestitution(0.3)
    crate:setFixedRotation(true)
    
end

function Objects:update(dt)
    
end

function Objects:draw()
    love.graphics.ground2('fill')
    
end