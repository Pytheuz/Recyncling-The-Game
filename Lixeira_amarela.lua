local Lixeira_amarela = {}

local centro_x = display.contentCenterX
local centro_y = display.contentCenterY

	
function Lixeira_amarela.novo( lixo, pontos3, tabela_texto3 )

	local lixeira_amarela = display.newImageRect( "lixeira_amarela.png", 70,90)
	lixeira_amarela.x = 240
	lixeira_amarela.y = 305
	physics.addBody( lixeira_amarela, "kinematic", { friction = 0, box = { x = 0, y = 0, halfWidth = 15, halfHeight = 20, angle = 0 } } )
	lixeira_amarela.id = "lixeira amarela"

	local function verificar_colisao( self, event )
		if event.phase == "began" then

			if event.other.id == "papel" then
				pontos3 = pontos3 - 1
				tabela_texto3.text = pontos3
				display.remove( event.other )
				if pontos3 >= 5 then
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
				elseif pontos3 <=-5 then 
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
				pontos3 = pontos3 - 1
				tabela_texto3.text = pontos3
				display.remove( event.other )
				if pontos3 >= 5 then
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
				elseif pontos3 <= -5 then 
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
				pontos3 = pontos3 + 1
				tabela_texto3.text = pontos3
				display.remove( event.other )
				if pontos3 >= 5 then
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
				elseif pontos3 <= -5 then 
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
				pontos3 = pontos3 - 1
				tabela_texto3.text = pontos3
				display.remove( event.other )
				if pontos3 >= 5 then
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
				elseif pontos3 <= -5 then 
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
				pontos3 = pontos3 - 1
				tabela_texto3.text = pontos3
				display.remove( event.other )
				if pontos3 >= 5 then
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
				elseif pontos3 <= -5 then 
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
	lixeira_amarela.collision = verificar_colisao
	lixeira_amarela:addEventListener( "collision" )
	return lixeira_amarela
end

return Lixeira_amarela