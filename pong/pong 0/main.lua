--[[
    GD50 2018
    Pong Remake

    pong-0
    "The Day-0 Update"

    -- Main Program // Programa principal --

    Author: Colton Ogden
    cogden@cs50.harvard.edu

    Translate// traduciodo por: Bistraw

    Originally programmed by Atari in 1972. Features two
    paddles, controlled by players, with the goal of getting
    the ball past your opponent's edge. First to 10 points wins.
    
    This version is built to more closely resemble the NES than
    the original Pong machines or the Atari 2600 in terms of
    resolution, though in widescreen (16:9) so it looks nicer on 
    modern systems.

    Originalmente se programo por Atari en 1972. Consiste en
    2 palets, controlados por los jugadores, con el objetivo de
    evitar que el oponente acierte el golpe. El primero con 10 puntos gana.

    Esta version esta construida mas parecida a la version de NES que a
    la version orignal de atari 2600, el widescreen (16:9) se ve mejor en
    sistemas modernos

    Bistraw's version: no changes // sin cambios

]]


WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

--[[
    Runs when the game first starts up, only once; used to initialize the game.
    Corre el juego la primera vez que enciende, solo una vez. Se uza para iniciar el juego.
    ]]
function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

--[[
    Called after update by LÖVE2D, used to draw anything to the screen, updated or otherwise.
    Llamada por actualizacion por LÖVE2D, se usa para trazar/dibujar en la pantalla.
]]
function love.draw()
    love.graphics.printf(
        'Hello Pong!',          -- text to render // texto a render
        0,                      -- starting X (0 since we're going to center it based on width)     //  Comienzo en X (0 ya que comenzamos en el centro basado en lo ancho)
        WINDOW_HEIGHT / 2 - 6,  -- starting Y (halfway down the screen)                             //  Comienzo en Y (mitad inferior de la pantalla)
        WINDOW_WIDTH,           -- number of pixels to center within (the entire screen here)       //  Numero de pixeles al centrar
        'center')               -- alignment mode, can be 'center', 'left', or 'right'              //  Modo de alinamiento, puede ser al centro, derecha o izquierda (escribelo en ingles en tu codigo...)
end