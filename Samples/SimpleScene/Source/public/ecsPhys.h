#pragma once

#include <flecs.h>

struct Position
{
	float x;
	float y;
	float z;
};

struct Velocity
{
	float x;
	float y;
	float z;
};

struct Gravity
{
	float x;
	float y;
	float z;
};

struct BouncePlane
{
	float x;
	float y;
	float z;
	float w;
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

struct Speed
{
	float value;
};

struct DestructionTimer
{
	float destructionTime;
	float currentTime;
};

struct Timer
{
	float targetTime;
	float currentTime;
};

struct CollisionShape
{
	float radius;
};

struct Bullet
{
	float damage;
};

struct Health
{
	float value;
};

