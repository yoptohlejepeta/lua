wf = require 'libraries/windfield'
require 'player'
require 'objects'


function love.load()
    world = wf.newWorld(0, 0, true)
    world:setGravity(0, 500)
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()
    Objects:load()
    Player:load()
end

function love.update(dt)
    world:update(dt)
    Player:update(dt)
end

function love.draw()
    world:draw()

    --love.graphics.setBackgroundColor(0.41, 0.53, 0.97)
end

function love.keypressed(key)
    Player:keypressed(key)
end
