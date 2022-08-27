local Lixeira_vermelha = {}

local centro_x = display.contentCenterX
local centro_y = display.contentCenterY


function Lixeira_vermelha.novo( lixo, pontos2, tabela_texto2 )

	local lixeira_vermelha =  display.newImageRect( "lixeira_vermelha.png", 70,90)
	lixeira_vermelha.x = 150
	lixeira_vermelha.y = 305
	lixeira_vermelha:setFillColor( 1, 0, 0 )
	physics.addBody( lixeira_vermelha, "kinematic", { friction = 0, box = { x = 0, y = 0, halfWidth = 15, halfHeight = 20, angle = 0 } } )
	lixeira_vermelha.id = "lixeira vermelha"
	

	local function verificar_colisao( self, event )
		if event.phase == "began" then

			if event.other.id == "papel" then
				pontos2 = pontos2 - 1
				tabela_texto2.text = pontos2
				display.remove( event.other )
				if pontos2 >= 5 then
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
				elseif pontos2 <=-5 then 
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
				pontos2 = pontos2 + 1
				tabela_texto2.text = pontos2
				display.remove( event.other )
				if pontos2 >= 5 then
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
				elseif pontos2 <= -5 then 
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
				pontos2 = pontos2 - 1
				tabela_texto2.text = pontos2
				display.remove( event.other )
				if pontos2 >= 5 then
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
				elseif pontos2 <= -5 then 
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
				pontos2 = pontos2 - 1
				tabela_texto2.text = pontos2
				display.remove( event.other )
				if pontos2 >= 5 then
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
				elseif pontos2 <= -5 then 
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
				pontos2 = pontos2 - 1
				tabela_texto2.text = pontos2
				display.remove( event.other )
				if pontos2 >= 5 then
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
				elseif pontos2 <= -5 then 
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
	lixeira_vermelha.collision = verificar_colisao
	lixeira_vermelha:addEventListener( "collision" )

	return lixeira_vermelha
end

return Lixeira_vermelha

