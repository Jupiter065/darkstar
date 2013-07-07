-----------------------------------
-- Area: Western Altepa Desert
--   NM: King Vinegarroon
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/weather");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

    killer:addTitle(VINEGAR_EVAPORATOR);

    -- Set King_Vinegarroon's spawnpoint and respawn time (21-24 hours)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random((75600),(86400)));
  
end;

function onMobDisengage(mob, weather)
	
	if(weather ~= WEATHER_DUST_STORM and weather ~= WEATHER_SAND_STORM) then
		DespawnMob(mob:getID());
	end
	
end;