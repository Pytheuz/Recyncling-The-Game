JOGO_RODANDO = "SIM"
local centro_x = display.contentCenterX
local centro_y = display.contentCenterY 


local function jogar()

	local tempo = 0

	local physics = require("physics") -- solicita a física
	physics.start( ) -- inicia a física
	physics.setGravity(0,0.8 )
	--physics.setDrawMode( "hybrid" )

	local bk = display.newImageRect( "bk2.jpg", 800, 350 )
	bk.x = centro_x
	bk.y = centro_y
	
	local wall_right_physic = display.newRect( centro_x + 270, centro_y, 20, 700 ) 
	physics.addBody(wall_right_physic,'static')
	wall_right_physic.alpha = 0 
	
	local wall_left_physic = display.newRect( centro_x - 270, centro_y, 20, 700 ) 
	physics.addBody(wall_left_physic,'static') 
	wall_left_physic.alpha = 0 

	
	
	local Lixo_classe = require("Lixo") -- solicita o player
	local Lixeira_azul = require( "Lixeira_azul") -- solicita a lixeira azul
	local Lixeira_vermelha = require( "Lixeira_vermelha") -- solicita a lixeira vermelha
	local Lixeira_amarela = require( "Lixeira_amarela") -- solicita a lixeira amarela
	local Lixeira_verde = require( "Lixeira_verde") -- solicita a lixeira verde
	local Lixeira_marrom = require( "Lixeira_marrom") -- solicita a lixeira marrom

	
	
	timer.performWithDelay(5000, function ()
		Lixo_classe.novo()
		
	end, 0, "timer_lixo")

	-- Tabela

	local pontos1 = 0
	local pontos2 = 0
	local pontos3 = 0
	local pontos4 = 0
	local pontos5 = 0
	
	local tabela = display.newRect( 80, 50, 160, 40 )
	tabela:setFillColor( 0.3,0.3,0.3 ) -- CINZA


	local tabela1 = display.newRect(20, 50, 20, 20)
	tabela1:setFillColor( 0,0,1 )
	local tabela_texto1 = display.newText( {text= ""..pontos1, x=20, y=50,font ="comic-sans-ms-4", fontSize= 15 })
	tabela_texto1:setFillColor( 0, 0, 0 )
	
	
	local tabela2 = display.newRect(50, 50, 20,20)
	tabela2:setFillColor(1,0,0 )
	local tabela_texto2 = display.newText( {text= ""..pontos2, x=50, y=50,font ="comic-sans-ms-4", fontSize= 15 })
	tabela_texto2:setFillColor( 0, 0, 0 )
	
	local tabela3 = display.newRect(80, 50, 20,20)
	tabela3:setFillColor( 1,1,0 )
	local tabela_texto3 = display.newText( {text= ""..pontos3, x=80, y=50,font ="comic-sans-ms-4", fontSize= 15 })
	tabela_texto3:setFillColor( 0, 0, 0 )
	
	
	local tabela4 = display.newRect(110, 50, 20, 20)
	tabela4:setFillColor( 0.2,1,0.6 )
	local tabela_texto4 = display.newText( {text= ""..pontos4, x=110, y=50,font ="comic-sans-ms-4", fontSize= 15 })
	tabela_texto4:setFillColor( 0, 0, 0 )
	

	local tabela5 = display.newRect(140, 50, 20, 20)
	tabela5:setFillColor( 0.8,0.6,0.5 )
	local tabela_texto5= display.newText( {text= ""..pontos5, x=140, y=50,font ="comic-sans-ms-4", fontSize= 15 })
	tabela_texto5:setFillColor( 0, 0, 0 )

	
	-- Tempo
	
	local tempo_texto = display.newText( { text="Tempo: " .. tempo, x=240, y=30, font="comic-sans-ms-4", fontSize=26 } )

	local function verificar_tempo()
		tempo = tempo + 1
		tempo_texto.text = "Tempo: ".. tempo		
	end
	timer.performWithDelay( 1000, verificar_tempo, 0, "tempo_jogo" )
	
	
	Lixeira_azul.novo( lixo, pontos1, tabela_texto1 )
	Lixeira_vermelha.novo( lixo, pontos2, tabela_texto2 ) 
	Lixeira_amarela.novo( lixo, pontos3, tabela_texto3 ) 
	Lixeira_verde.novo( lixo, pontos4, tabela_texto4 ) 
	Lixeira_marrom.novo( lixo, pontos5, tabela_texto5 ) 
end

local function informacao()

	local information = display.newImageRect( "anotação2.png", 800, 480)	
		information.x = centro_x
		information.y = centro_y	
		timer.performWithDelay( 7000, function() 
			display.remove(information)
			jogar()
		end, 1)
end

local function menu()
	local bk_menu = display.newImageRect( 'bk_menu.jpg', 800, 400*0.82 )
	bk_menu.x = centro_x
	bk_menu.y = centro_y
	local botao_menu = display.newImageRect( "play-button.png", 55, 55 )
	botao_menu.x = centro_x 
	botao_menu.y = centro_y -30
	local function iniciar_jogo(event)
		
		if event.phase == 'began' then
			botao_menu.xScale = 0.7
			botao_menu.yScale = 0.7
		elseif event.phase == 'ended' then
			informacao()
			botao_menu.xScale = 1
			botao_menu.yScale = 1
			display.remove( botao_menu )

		end
	end
	botao_menu:addEventListener( "touch", iniciar_jogo )
end
menu()

local function verifica_reinicio()
	if JOGO_RODANDO == "REINICIANDO" then
		JOGO_RODANDO = "SIM"
		menu()
	end
end
Runtime:addEventListener( 'enterFrame', verifica_reinicio )
