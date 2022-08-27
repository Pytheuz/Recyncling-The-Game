local Lixeira_marrom = {}

local centro_x = display.contentCenterX
local centro_y = display.contentCenterY


function Lixeira_marrom.novo( lixo, pontos5, tabela_texto5 )

	local lixeira_marrom = display.newImageRect( "lixeira_marrom.png", 70,90)
	lixeira_marrom.x = 420
	lixeira_marrom.y = 305
	lixeira_marrom:setFillColor( 0.8,0.6,0.5 )
	physics.addBody( lixeira_marrom, "kinematic", { friction = 0, box = { x = 0, y = 0, halfWidth = 15, halfHeight = 20, angle = 0 } } )
	lixeira_marrom.id = "lixeira marrom"

	local function verificar_colisao( self, event )
		if event.phase == "began" then

			if event.other.id == "papel" then
				pontos5 = pontos5 - 1
				tabela_texto5.text = pontos5
				display.remove( event.other )
				if pontos5 >= 5 then
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
				elseif pontos5 <=-5 then 
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
				pontos5 = pontos5  - 1
				tabela_texto5.text = pontos5
				display.remove( event.other )
				if pontos5 >= 5 then
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
				elseif pontos5 <= -5 then 
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
				pontos5 = pontos5 - 1
				tabela_texto5.text = pontos5
				display.remove( event.other )
				if pontos5 >= 5 then
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
				elseif pontos5 <= -5 then 
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
				pontos5 = pontos5 - 1
				tabela_texto5.text = pontos5
				display.remove( event.other )
				if pontos5 >= 5 then
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
				elseif pontos5 <= -5 then 
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
				pontos5 = pontos5 + 1
				tabela_texto5.text = pontos5
				display.remove( event.other )
				if pontos5 >= 5 then
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
				elseif pontos5 <= -5 then 
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
	lixeira_marrom.collision = verificar_colisao
	lixeira_marrom:addEventListener( "collision" )
	return lixeira_marrom
end

return Lixeira_marrom