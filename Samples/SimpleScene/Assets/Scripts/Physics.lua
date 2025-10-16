local ecs = require "ecs"

local function rand_flt(from, to)
	local maxNumber = 32767
    return from + (math.random(maxNumber) / maxNumber) * (to - from)
end

local function move(it)
    for pos, vel, active, ent in ecs.each(it) do
		if active.isActive then
        	pos.x = pos.x + vel.x * it.delta_time
        	pos.y = pos.y + vel.y * it.delta_time
			pos.z = pos.z + vel.z * it.delta_time
		end
    end
end

local function gravity(it)
    for pos, vel, grav, plane, active, ent in ecs.each(it) do
		
		if active.isActive then
			vel.x = vel.x + grav.x * it.delta_time
        	vel.y = vel.y + grav.y * it.delta_time
			vel.z = vel.z + grav.z * it.delta_time

        	local planeEpsilon = 0.1
			if plane.x * pos.x + plane.y * pos.y + plane.z * pos.z < plane.w + planeEpsilon then
				active.isActive = false
			end
		end
    end
end

local function destruct(it)
	for timer, active, ent in ecs.each(it) do
		if active.isActive then
			timer.currentTime = timer.currentTime + it.delta_time
			if timer.currentTime > timer.destructionTime then
				active.isActive = false
			end
		end
	end
end


local function length(v1, v2)
	return math.sqrt((v1.x - v2.x)*(v1.x - v2.x) + (v1.y - v2.y)*(v1.y - v2.y) + (v1.z - v2.z)*(v1.z - v2.z))
end

local function object_interaction(it)
	for pos1, vel1, h1, ent1 in ecs.each(it) do

		for pos2, vel2, h2, ent2 in ecs.each(it) do
		
			if ent1 ~= ent2 then
				local dist = length(pos1, pos2)
				if dist < 2.0 then
					vel1.x = -vel1.x
					vel1.y = -vel1.y
					vel1.z = -vel1.z
				end
			end
		end

	end
end

local health_obj = ecs.query("Position, Velocity, Health, Active")
local function interaction_with_bullet(it)
	for pos1, vel1, bullet, active1, ent1 in ecs.each(it) do
		if active1.isActive then	
			for pos2, vel2, health, active2, ent2 in ecs.each(health_obj) do
				if active2.isActive then
					local dist = length(pos1, pos2)
					if dist < 2.0 then
						health.value = health.value - bullet.damage
						active1.isActive = false
						vel2.x = vel2.x + vel1.x*0.2
						vel2.z = vel2.z + vel1.z*0.2
					end
				end
			end
		end
	end
end

local function friction(it)
    for vel, friction, ent in ecs.each(it) do
        vel.x = vel.x - vel.x * friction.value * it.delta_time
		vel.y = vel.y - vel.y * friction.value * it.delta_time
		vel.z = vel.z - vel.z * friction.value * it.delta_time
    end
end

local function destroy(it)
    for health, active, ent in ecs.each(it) do
        if active.isActive then
			if health.value <= 0 then
				active.isActive = false
			end
		end
    end
end

ecs.system(move, "Move", ecs.OnUpdate, "Position, Velocity, Active")
ecs.system(gravity, "Grav", ecs.OnUpdate, "Position, Velocity, Gravity, Ground, Active")
ecs.system(destruct, "Destruct", ecs.OnUpdate, "DestructionTimer, Active")
ecs.system(friction, "Friction", ecs.OnUpdate, "Velocity, FrictionAmount")
ecs.system(destroy, "Destroy", ecs.OnUpdate, "Health, Active")
ecs.system(object_interaction, "ObjectInteraction", ecs.OnUpdate, "Position, Velocity, Health")
ecs.system(interaction_with_bullet, "InteractionWithBullet", ecs.OnUpdate, "Position, Velocity, Bullet, Active")