#include <ecsMesh.h>
#include <ecsPhys.h>
#include <ECS/ecsSystems.h>
#include <flecs.h>
#include <Geometry.h>
#include <RenderThread.h>
#include <RenderObject.h>


using namespace GameEngine;

void RegisterEcsMeshSystems(flecs::world& world)
{
	static const EntitySystem::ECS::RenderThreadPtr* renderThread = world.get<EntitySystem::ECS::RenderThreadPtr>();

	world.system<EntitySystem::ECS::RenderObjectPtr, const Position, const Active>()
		.each([&](flecs::entity e, EntitySystem::ECS::RenderObjectPtr& renderObject, const Position& position, const Active& active)
	{

		if (active.isActive) {
			renderObject.ptr->SetPosition(Math::Vector3f(position.x, position.y, position.z), renderThread->ptr->GetMainFrame());
		}
		else {
			renderObject.ptr->SetPosition(Math::Vector3f(-2000.f, -1000.f, -1000.f), renderThread->ptr->GetMainFrame());
		}
		
	});
}


