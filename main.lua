wf = require 'windfield'
require 'player'
function love.load()
    world = wf.newWorld(0, 0, true)
    world:setGravity(0, 512)
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()

    ball = world:newCircleCollider(width/4, height/4, 20)
    ground = world:newRectangleCollider(0, height, 800, 50)
    ground2 = world:newRectangleCollider(width*(7/8), height*(3/4), 50, 200)
    ground3 = world:newRectangleCollider(width/10, height/2,200,50)
    ground4 = world:newRectangleCollider(width*(1/4),height*(5/8),200,50)
    wall_left = world:newRectangleCollider(0, 0, 50, 600)
    wall_right = world:newRectangleCollider(750,-200,50,600)
    ball:setRestitution(0.8)
    ball:applyAngularImpulse(5000)
    ground:setType('static')
    ground2:setType('static')
    ground3:setType('static')
    ground4:setType('static')
    wall_left:setType('static')
    wall_right:setType('static')
    Player:load()
end

function love.update(dt)
    world:update(dt)
    Player:update()
end

function love.draw()
    world:draw()
    --love.graphics.setBackgroundColor(0.41, 0.53, 0.97)
end

function love.keypressed(key)
    if key == 'up' then
        player:applyLinearImpulse(0,-2500)
    end
    if key == 'lshift' then
        player:applyLinearImpulse(2000,0)
    end
end