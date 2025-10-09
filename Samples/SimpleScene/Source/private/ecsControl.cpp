#include <Camera.h>
#include <ecsControl.h>
#include <ECS/ecsSystems.h>
#include <ecsPhys.h>
#include <flecs.h>
#include <Input/Controller.h>
#include <Input/InputHandler.h>
#include <Vector.h>
#include <ecsMesh.h>
#include <BasicGeometry.h>
#include <RenderObject.h>

using namespace GameEngine;


void RegisterEcsControlSystems(flecs::world& world)
{

	world.system<Position, CameraPtr, const Speed, Time, Count, Enemy, AddShots,  const ControllerPtr>()
		.each([&](flecs::entity e, Position& position, CameraPtr& camera, const Speed& speed, Time& time, Count& count, Enemy& enemy, AddShots& addShots, const ControllerPtr& controller)
	{
		Math::Vector3f currentMoveDir = Math::Vector3f::Zero();
		if (controller.ptr->IsPressed("GoLeft"))
		{
			currentMoveDir = currentMoveDir - camera.ptr->GetRightDir();
		}
		if (controller.ptr->IsPressed("GoRight"))
		{
			currentMoveDir = currentMoveDir + camera.ptr->GetRightDir();
		}
		if (controller.ptr->IsPressed("GoBack"))
		{
			currentMoveDir = currentMoveDir - camera.ptr->GetViewDir();
		}
		if (controller.ptr->IsPressed("GoForward"))
		{
			currentMoveDir = currentMoveDir + camera.ptr->GetViewDir();
		}
		if (controller.ptr->IsPressed("Shot")) {

			bool shot = false;

			if (time > 0.3f && count <= 6 + addShots) {
				shot = true;
			}

			if (time > 2.0f && count > 6 + addShots) {
				shot = true;
				count = 1;
				addShots = 0;
			}

			if (shot) {
				flecs::entity bullet = world.entity()
					.set(Position{ position })
					.set(Velocity{ Math::Vector3f(camera.ptr->GetViewDir().x, 0.0f, camera.ptr->GetViewDir().z).Normalized() * 40.0f })
					.set(Gravity{ Math::Vector3f(0.f, -9.8065f, 0.f) })
					.set(Time {0.0f})
					.set(Flag(false))
					.set(BouncePlane{ Math::Vector4f(0.f, 1.f, 0.f, 0.f) })
					.set(Bounciness{ 1.f })
					.set(Enemy{enemy})
					.set(Player{e})
					.set(Active{ true })
					.set(GeometryPtr{ BasicGeometry::Cube() })
					.set(RenderObjectPtr{ new Render::RenderObject() });

				count += 1;
				time = 0.0f;
			}
			
		}
		position.value = position.value + currentMoveDir.Normalized() * speed * world.delta_time();
		camera.ptr->SetPosition(position.value);
		time += world.delta_time();
	});

	world.system<const Position, Velocity, const ControllerPtr, const BouncePlane, const JumpSpeed>()
		.each([&](const Position& pos, Velocity& vel, const ControllerPtr& controller, const BouncePlane& plane, const JumpSpeed& jump)
	{
		constexpr float planeEpsilon = 0.1f;
		if (plane.value.x * pos.value.x + plane.value.y * pos.value.y + plane.value.z * pos.value.z < plane.value.w + planeEpsilon)
		{
			if (controller.ptr->IsPressed("Jump"))
			{
				vel.value.y = jump.value;
			}
		}
	});
}

