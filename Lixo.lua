local Lixo = {}
local centro_x = display.contentCenterX
local centro_y = display.contentCenterY 


function Lixo.novo()
	local imagem_lixo 
	local altura 
	local largura 
	local id
	local sortear_lixo = math.random(1,5)


	if sortear_lixo == 1 then
		imagem_lixo = "metal.png"
		altura = 35
		largura = 25
		id = "metal"
	elseif sortear_lixo == 2 then 
		imagem_lixo = "papel.png"
		altura = 33
		largura = 33
		id = "papel"
	elseif sortear_lixo == 3 then 
		imagem_lixo = "org.png"
		altura = 35
		largura = 35
		id = "org"
	elseif sortear_lixo == 4 then 
		imagem_lixo = "vidro.png"
		altura = 25
		largura = 60
		id = "vidro"
	elseif sortear_lixo == 5 then 
		imagem_lixo = "plastico.png"
		altura = 45
		largura = 45
		id = "plastico"
	end

	local lixo = display.newImageRect ( imagem_lixo, altura, largura)
	lixo.x = math.random(30, 480)
	lixo.y = -1
	lixo.id = id
	physics.addBody( lixo, "dynamic")

	-- ININCIO DAS FUNÇÕES DO LIXO


	local function verificar_direcao( event )

		if event.phase == "moved" then
			
			if event.x > centro_x then
				lixo.direcao = "direita"
				print( lixo.direcao )
			elseif event.x < centro_x then
				lixo.direcao = "esquerda"
				print( lixo.direcao )
			end

		elseif event.phase == "ended" then
			print( "" )

		end
	end
	Runtime:addEventListener( "touch", verificar_direcao )

	lixo.andar = function()
		if lixo.x ~= nil and lixo.direcao == "direita" then
			lixo.x = lixo.x + 2
		elseif lixo.x ~= nil and lixo.direcao == "esquerda" then
			lixo.x = lixo.x - 2
		elseif lixo.x == nil then
			Runtime:removeEventListener( "enterFrame", lixo.andar )


		end

	end
	Runtime:addEventListener( "enterFrame", lixo.andar )


	local function verificar_colisao( event, self )

		if event.phase == "began" then

			if event.other.id == "lixeira_amarela" then
				Runtime:removeEventListener( "touch", verificar_direcao )
				Runtime:removeEventListener( "enterFrame", self.andar )
						

			elseif event.other.id == "lixeira_azul" then
				Runtime:removeEventListener( "touch", verificar_direcao )
				Runtime:removeEventListener( "enterFrame", self.andar )

						
			elseif event.other.id == "lixeira_marrom" then
				Runtime:removeEventListener( "touch", verificar_direcao )
				Runtime:removeEventListener( "enterFrame", self.andar )


			elseif event.other.id == "lixeira_verde" then
				Runtime:removeEventListener( "touch", verificar_direcao )
				Runtime:removeEventListener( "enterFrame", self.andar )
						

			elseif event.other.id == "lixeira_vermelha" then
				Runtime:removeEventListener( "touch", verificar_direcao )
				Runtime:removeEventListener( "enterFrame", self.andar )			
			end

		elseif event.phase == "ended"  then
			print( "encerrou a colisão") 
		end
	end
	lixo.collision = verificar_colisao
	lixo:addEventListener( "collision" )


	return lixo
end

return Lixo