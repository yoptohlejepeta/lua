Objects = {}

function Objects:load()
    ball = world:newCircleCollider(width/4, height/4, 20)
    ground = world:newRectangleCollider(0, height, 1280, 50)
    ground2 = world:newRectangleCollider(width*(7/8), height*(3/4), 50, 200)
    ground3 = world:newRectangleCollider(width/10, height/2,200,50)
    ground4 = world:newRectangleCollider(width*(1/4),height*(5/8),200,50)
    wall_left = world:newLineCollider(0,0,0,height)
    wall_right = world:newLineCollider(width,0,width,height)
    roof = world:newLineCollider(0,0,width,0)
    ball:setRestitution(0.8)
    ball:applyAngularImpulse(5000)
    ground:setType('static')
    ground2:setType('static')
    ground3:setType('static')
    ground4:setType('static')
    wall_left:setType('static')
    wall_right:setType('static')
    roof:setType('static')
    wall_left:setRestitution(0.3)
    wall_right:setRestitution(0.3)
    roof:setRestitution(0.3)
    
end

function Objects:update(dt)
    
end

function Objects:draw()
    love.graphics.ground2('fill')
    
end