local gta_parkour = {}

local keypress=false

function gta_parkour.unload()
end

function gta_parkour.init()
	local player = PLAYER.PLAYER_ID()
end

function gta_parkour.tick()
	local player = PLAYER.PLAYER_ID()
	local playerPed = PLAYER.PLAYER_PED_ID()
	
	if(get_key_pressed(Keys.X))then
		keypress = true

		PLAYER.GIVE_PLAYER_RAGDOLL_CONTROL(player, TRUE);
		for i = 1, 10 do
			ENTITY.APPLY_FORCE_TO_ENTITY(playerPed, 1, 0,0,7.3, 0,0,0, 0, false, false, false, false, false);
		end
		
		ENTITY.SET_ENTITY_INVINCIBLE(playerPed, true);
		PED.SET_PED_TO_RAGDOLL(playerPed, 6, 20, 20, TRUE, TRUE, TRUE);
		GAMEPLAY.SET_GRAVITY_LEVEL(20);
		
			
	elseif keypress then
		keypress=false
		ENTITY.SET_ENTITY_INVINCIBLE(playerPed, false);
		
	end
	
	
end





return gta_parkour