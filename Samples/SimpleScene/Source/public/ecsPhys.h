#pragma once

#include <flecs.h>
#include <Vector.h>
#include <Timer.h>

struct Position
{
	GameEngine::Math::Vector3f value;
};

struct Velocity
{
	GameEngine::Math::Vector3f value;
};

struct Gravity
{
	GameEngine::Math::Vector3f value;
};

struct BouncePlane
{
	GameEngine::Math::Vector4f value;
};

struct Bounciness
{
	float value;
};

struct ShiverAmount
{
	float value;
};

struct FrictionAmount
{
	float value;
};


using Speed = float;
using Time = float;
using Count = uint32_t;
using AddShots = int;
using Flag = bool;
using Active = bool;
using Enemy = std::vector<flecs::entity>;
using Player = flecs::entity;


void RegisterEcsPhysSystems(flecs::world& world);

