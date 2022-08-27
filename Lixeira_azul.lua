local Lixeira_azul = {}

local centro_x = display.contentCenterX
local centro_y = display.contentCenterY 

	
function Lixeira_azul.novo( lixo, pontos1, tabela_texto1 )

	local lixeira_azul = display.newImageRect( "lixeira_azul.png", 70,90)
	lixeira_azul.x = 60
	lixeira_azul.y = 305
	physics.addBody( lixeira_azul, "kinematic", { friction = 0, box = { x = 0, y = 0, halfWidth = 15, halfHeight = 20, angle = 0 } } )
	lixeira_azul.id = "lixeira azul"

	local function verificar_colisao( self, event )
		if event.phase == "began" then

			if event.other.id == "papel" then
				pontos1 = pontos1 + 1
				tabela_texto1.text = pontos1
				display.remove( event.other )
				if pontos1 >= 5 then
					timer.cancel( "tempo_jogo" )
					timer.cancel( "timer_lixo" )
					local win = display.newImageRect( "win.jpg", 800, 500)	
					win.x = centro_x
					win.y = centro_y
					win.alpha = 0
			       	transition.to( win, {time = 2000, alpha = 1} ) 
			       	timer.performWithDelay( 7000, function() 
			        	JOGO_RODANDO = "REINICIANDO"
			        end, 1)
				elseif pontos1 <=-5 then 
					timer.cancel( "tempo_jogo" )
					timer.cancel( "timer_lixo" )	
					local game_over = display.newImageRect( "game_over.jpg", 800, 500)	
					game_over.x = centro_x
					game_over.y = centro_y
					game_over.alpha = 0
					transition.to( game_over, {time = 2000, alpha = 1} ) 
			       	timer.performWithDelay( 7000, function() 
			        	JOGO_RODANDO = "REINICIANDO"
			        end, 1)		
				end
				

			elseif event.other.id == "plastico" then
				pontos1 = pontos1 -  1
				tabela_texto1.text = pontos1
				display.remove( event.other )
				if pontos1 >= 5 then
					timer.cancel( "tempo_jogo" )
					timer.cancel( "timer_lixo" )
					local win = display.newImageRect( "win.jpg", 800, 500)	
					win.x = centro_x
					win.y = centro_y	
					win.alpha = 0
			       	transition.to( win, {time = 2000, alpha = 1} ) 
			       	timer.performWithDelay( 7000, function() 
			        	JOGO_RODANDO = "REINICIANDO"
			        end, 1)
				elseif pontos1 <= -5 then 
					timer.cancel( "tempo_jogo" )
					timer.cancel( "timer_lixo" )	
					local game_over = display.newImageRect( "game_over.jpg", 800, 500)	
					game_over.x = centro_x
					game_over.y = centro_y
					game_over.alpha = 0
					transition.to( game_over, {time = 2000, alpha = 1} ) 
			       	timer.performWithDelay( 7000, function() 
			        	JOGO_RODANDO = "REINICIANDO"
			        end, 1)		
				end

						
			elseif event.other.id == "metal" then
				pontos1 = pontos1 - 1
				tabela_texto1.text = pontos1
				display.remove( event.other )
				if pontos1 >= 5 then
					timer.cancel( "tempo_jogo" )
					timer.cancel( "timer_lixo" )
					local win = display.newImageRect( "win.jpg", 800, 500)	
					win.x = centro_x
					win.y = centro_y	
					win.alpha = 0
			       	transition.to( win, {time = 2000, alpha = 1} ) 
			       	timer.performWithDelay( 7000, function() 
			        	JOGO_RODANDO = "REINICIANDO"
			        end, 1)
				elseif pontos1 <= -5 then 
					timer.cancel( "tempo_jogo" )
					timer.cancel( "timer_lixo" )	
					local game_over =  display.newImageRect( "game_over.jpg", 800, 500)	
					game_over.x = centro_x
					game_over.y = centro_y
					game_over.alpha = 0
					transition.to( game_over, {time = 2000, alpha = 1} ) 
			       	timer.performWithDelay( 7000, function() 
			        	JOGO_RODANDO = "REINICIANDO"
			        end, 1)		
				end


			elseif event.other.id == "vidro" then
				pontos1 = pontos1 - 1
				tabela_texto1.text = pontos1
				display.remove( event.other )
				if pontos1 >= 5 then
					timer.cancel( "tempo_jogo" )
					timer.cancel( "timer_lixo" )
					local win = display.newImageRect( "win.jpg", 800, 500)	
					win.x = centro_x
					win.y = centro_y
					win.alpha = 0
			       	transition.to( win, {time = 2000, alpha = 1} ) 
			       	timer.performWithDelay( 7000, function() 
			        	JOGO_RODANDO = "REINICIANDO"
			        end, 1)
				elseif pontos1 <= -5 then 
					timer.cancel( "tempo_jogo" )
					timer.cancel( "timer_lixo" )	
					local game_over = display.newImageRect( "game_over.jpg", 800, 500)	
					game_over.x = centro_x
					game_over.y = centro_y
					game_over.alpha = 0
					transition.to( game_over, {time = 2000, alpha = 1} ) 
			       	timer.performWithDelay( 7000, function() 
			        	JOGO_RODANDO = "REINICIANDO"
			        end, 1)		
				end
			

			elseif event.other.id == "org" then
				pontos1 = pontos1 - 1
				tabela_texto1.text = pontos1
				display.remove( event.other )
				if pontos1 >= 5 then
					timer.cancel( "tempo_jogo" )
					timer.cancel( "timer_lixo" )
					local win = display.newImageRect( "win.jpg", 800, 500)	
					win.x = centro_x
					win.y = centro_y	
					win.alpha = 0
			       	transition.to( win, {time = 2000, alpha = 1} ) 
			       	timer.performWithDelay( 7000, function() 
			        	JOGO_RODANDO = "REINICIANDO"
			        end, 1)
				elseif pontos1 <= -5 then 
					timer.cancel( "tempo_jogo" )
					timer.cancel( "timer_lixo" )	
					local game_over = display.newImageRect( "game_over.jpg", 800, 500)	
					game_over.x = centro_x  
					game_over.y = centro_y 
					game_over.alpha = 0
					transition.to( game_over, {time = 2000, alpha = 1} ) 
			       	timer.performWithDelay( 7000, function() 
			        	JOGO_RODANDO = "REINICIANDO"
			        end, 1)		
				end
				
			end

		elseif event.phase == "ended"  then
			print( "encerrou a colisão") 
		end
	end
	lixeira_azul.collision = verificar_colisao
	lixeira_azul:addEventListener( "collision" )

	return lixeira_azul
end

return Lixeira_azul