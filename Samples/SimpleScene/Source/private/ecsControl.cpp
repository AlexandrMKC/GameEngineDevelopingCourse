#include <Camera.h>
#include <ecsControl.h>
#include <ECS/ecsSystems.h>
#include <ecsPhys.h>
#include <flecs.h>
#include <Input/Controller.h>
#include <Input/InputHandler.h>
#include <Vector.h>

#include <BasicGeometry.h>
#include <RenderObject.h>


using namespace GameEngine;

void RegisterEcsControlSystems(flecs::world& world)
{
	world.system<Position, CameraPtr, const Speed, Timer, const ControllerPtr>()
		.each([&](flecs::entity e, Position& position, CameraPtr& camera, const Speed& speed, Timer& timer, const ControllerPtr& controller)
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
		if (controller.ptr->IsPressed("Shot"))
		{
			if (timer.currentTime > timer.targetTime) {

				flecs::entity bullet = world.entity()
					.set(Position{ position.x, position.y, position.z })
					.set(Velocity{ camera.ptr->GetViewDir().x*40.f, camera.ptr->GetViewDir().y * 40.f, camera.ptr->GetViewDir().z * 40.f })
					.set(Gravity{ 0.f, -9.8065f, 0.f })
					.set(Ground{ 0.f, 1.0f, 0.f, 0.f})
					.set(Active{ true })
					.set(Bullet{ 1.0 })
					.set(EntitySystem::ECS::GeometryPtr{ RenderCore::BasicGeometry::Bullet()})
					.set(EntitySystem::ECS::RenderObjectPtr{ new Render::RenderObject() });

				timer.currentTime = 0.f;
			}
		}

		timer.currentTime = timer.currentTime + world.delta_time();

		position.x = position.x + currentMoveDir.Normalized().x * speed.value * world.delta_time();
		position.y = position.y + currentMoveDir.Normalized().y * speed.value * world.delta_time();
		position.z = position.z + currentMoveDir.Normalized().z * speed.value * world.delta_time();
		camera.ptr->SetPosition(Math::Vector3f(position.x, position.y, position.z));
	});

}

