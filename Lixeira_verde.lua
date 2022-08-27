local Lixerira_verde = {}

local centro_x = display.contentCenterX
local centro_y = display.contentCenterY

	
function Lixerira_verde.novo( lixo, pontos4, tabela_texto4 )

	local lixeira_verde = display.newImageRect( "lixeira_verde.png", 70,90)
	lixeira_verde.x = 330
	lixeira_verde.y = 305
	physics.addBody( lixeira_verde, "kinematic", { friction = 0, box = { x = 0, y = 0, halfWidth = 15, halfHeight = 20, angle = 0 } } )
	lixeira_verde.id = "lixeira verde"

	local function verificar_colisao( self, event )
		if event.phase == "began" then

			if event.other.id == "papel" then
				pontos4 = pontos4 - 1
				tabela_texto4.text = pontos4
				display.remove( event.other )
				if pontos4 >= 5 then
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
				elseif pontos4 <= -5 then 
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
				pontos4 = pontos4 - 1
				tabela_texto4.text = pontos4
				display.remove( event.other )
				if pontos4 >= - 5 then
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
				elseif pontos4 <= -5 then 
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
				pontos4 = pontos4 - 1
				tabela_texto4.text = pontos4
				display.remove( event.other )
				if pontos4 >= 5 then
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
				elseif pontos4 <= -5 then 
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
				pontos4 = pontos4 + 1
				tabela_texto4.text = pontos4
				display.remove( event.other )
				if pontos4 >= 5 then
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
				elseif pontos4 <= -5 then 
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
				pontos4 = pontos4 - 1
				tabela_texto4.text = pontos4
				display.remove( event.other )
				if pontos4 >= 5 then
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
				elseif pontos4 <= -5 then 
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
	lixeira_verde.collision = verificar_colisao
	lixeira_verde:addEventListener( "collision" )

	return lixeira_verde
end

return Lixerira_verde