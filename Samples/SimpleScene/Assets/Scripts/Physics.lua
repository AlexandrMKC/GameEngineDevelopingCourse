local ecs = require "ecs"

local function rand_flt(from, to)
	local maxNumber = 32767
    return from + (math.random(maxNumber) / maxNumber) * (to - from)
end

local function move(it)
    for pos, vel, ent in ecs.each(it) do
        pos.x = pos.x + vel.x * it.delta_time
        pos.y = pos.y + vel.y * it.delta_time
		pos.z = pos.z + vel.z * it.delta_time
    end
end

local function gravity(it)
    for pos, vel, grav, plane, ent in ecs.each(it) do
        local planeEpsilon = 0.1
		
		if plane.x * pos.x + plane.y * pos.y + plane.z * pos.z < plane.w + planeEpsilon then
			do return end
		end
		
		vel.x = vel.x + grav.x * it.delta_time
        vel.y = vel.y + grav.y * it.delta_time
		vel.z = vel.z + grav.z * it.delta_time
    end
end

local function FrictionSystem(it)
    for vel, friction, ent in ecs.each(it) do
        vel.x = vel.x - vel.x * friction.value * it.delta_time
		vel.y = vel.y - vel.y * friction.value * it.delta_time
		vel.z = vel.z - vel.z * friction.value * it.delta_time
    end
end

local function ShiverSystem(it)
    for pos, shiver, ent in ecs.each(it) do
        pos.x = pos.x + rand_flt(-shiver.value, shiver.value)
		pos.y = pos.y + rand_flt(-shiver.value, shiver.value)
		pos.z = pos.z + rand_flt(-shiver.value, shiver.value)
    end
end

local function BounceSystem(it)
    for pos, vel, plane, bounciness, ent in ecs.each(it) do
        local dotPos = plane.x * pos.x + plane.y * pos.y + plane.z * pos.z
		local dotVel = plane.x * vel.x + plane.y * vel.y + plane.z * vel.z
		
		if dotPos < plane.w then
			pos.x = pos.x - (dotPos - plane.w) * plane.x
			pos.y = pos.y - (dotPos - plane.w) * plane.y
			pos.z = pos.z - (dotPos - plane.w) * plane.z

			vel.x = vel.x - (1.0 + bounciness.value) * plane.x * dotVel
			vel.y = vel.y - (1.0 + bounciness.value) * plane.y * dotVel
			vel.z = vel.z - (1.0 + bounciness.value) * plane.z * dotVel
		end
    end
end

local function DestructionSystem(it)
    for pos, timer, ent in ecs.each(it) do
		timer.currentTime = timer.currentTime + it.delta_time
		if timer.currentTime > timer.destructionTime then
				pos.x = -5000.0
		end
    end
end

local function BulletSystem(it)
    for pos, vel, plane, bullet, ent in ecs.each(it) do
		local dotPos = plane.x * pos.x + plane.y * pos.y + plane.z * pos.z
		if dotPos < 0.0 then
			pos.x = -5000.0
		end
    end
end

local function length(v1, v2)
	return math.sqrt((v1.x - v2.x)*(v1.x - v2.x) + (v1.y - v2.y)*(v1.y - v2.y) + (v1.z - v2.z)*(v1.z - v2.z))
end

local function CollisionSystem(it)
	for pos1, vel1, col1, ent1 in ecs.each(it) do

		for pos2, vel2, col2, ent2 in ecs.each(it) do
		
			if ent1 ~= ent2 then
				local dist = length(pos1, pos2)
				if dist < (col1.radius + col2.radius) then
					vel1.x = -vel1.x
					vel1.y = -vel1.y
					vel1.z = -vel1.z
				end
			end
		end

	end
end

local objects = ecs.query("Position, Velocity, CollisionShape, Health")
local function DamageSystem(it)
	for pos1, vel1, bullet, ent1 in ecs.each(it) do	
		for pos2, vel2, col, h, ent2 in ecs.each(objects) do
			local dist = length(pos1, pos2)
			if dist < col.radius then
				h.value = h.value - bullet.damage
				pos1.x = -2000.0
				vel2.x = vel2.x + vel1.x*0.2
				vel2.z = vel2.z + vel1.z*0.2
			end
		end
	end
end

local function Destroy(it)
    for pos, h, ent in ecs.each(it) do
		if h.value <= 0 then
			pos.x = -3000
		end
    end
end


ecs.system(move, "Move", ecs.OnUpdate, "Position, Velocity")
ecs.system(gravity, "grav", ecs.OnUpdate, "Position, Velocity, Gravity, BouncePlane")
ecs.system(FrictionSystem, "FrictionSystem", ecs.OnUpdate, "Velocity, FrictionAmount")
ecs.system(ShiverSystem, "ShiverSystem", ecs.OnUpdate, "Position, ShiverAmount")
ecs.system(BounceSystem, "BounceSystem", ecs.OnUpdate, "Position, Velocity, BouncePlane, Bounciness")

ecs.system(DestructionSystem, "DestructionSystem", ecs.OnUpdate, "Position, DestructionTimer")
ecs.system(BulletSystem, "BulletSystem", ecs.OnUpdate, "Position, Velocity, BouncePlane, Bullet")
ecs.system(CollisionSystem, "CollisionSystem", ecs.OnUpdate, "Position, Velocity, CollisionShape")
ecs.system(DamageSystem, "DamageSystem", ecs.OnUpdate, "Position, Velocity, Bullet")
ecs.system(Destroy, "DestroySystem", ecs.OnUpdate, "Position, Health")
