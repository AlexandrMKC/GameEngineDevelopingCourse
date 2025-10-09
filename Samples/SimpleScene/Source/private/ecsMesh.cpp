#include <ecsMesh.h>
#include <ecsPhys.h>
#include <ECS/ecsSystems.h>
#include <flecs.h>
#include <Geometry.h>
#include <RenderThread.h>
#include <RenderObject.h>
#include <ecsPhys.h>

using namespace GameEngine;

void RegisterEcsMeshSystems(flecs::world& world)
{
	static const EntitySystem::ECS::RenderThreadPtr* renderThread = world.get<EntitySystem::ECS::RenderThreadPtr>();

	world.system<const GeometryPtr, RenderObjectPtr>()
		.each([&](flecs::entity e, const GeometryPtr& geometry, RenderObjectPtr& renderObject)
	{
		renderThread->ptr->EnqueueCommand(Render::ERC::CreateRenderObject, geometry.ptr, renderObject.ptr);
		e.remove<GeometryPtr>();
	});

	world.system<RenderObjectPtr, const Position, Active>()
		.each([&](RenderObjectPtr& renderObject, const Position& position, Active& active)
	{
			if (active) {
				renderObject.ptr->SetPosition(position.value, renderThread->ptr->GetMainFrame());
			}
		
	});

	world.system<Time, BouncePlane*, Position*, Flag, RenderObjectPtr, Active>()
		.each([&](flecs::entity e, Time& time, BouncePlane* plane, Position* pos, Flag& flag, RenderObjectPtr& renderObject, Active& active)
			{
				if (plane && pos)
				{
					constexpr float planeEpsilon = 0.1f;
					if (plane->value.x * pos->value.x + plane->value.y * pos->value.y + plane->value.z * pos->value.z >= plane->value.w + planeEpsilon)
					{
						flag = true;

					}
				}

				if (flag) {
					time += world.delta_time();
				}

				if (time > 5.0f) {
					renderObject.ptr->SetPosition(Math::Vector3f(1000.0, 0.0, 0.0), renderThread->ptr->GetMainFrame());
					active = false;
				}
			});

	world.system<Position, Enemy, Player, RenderObjectPtr>()
		.each([&](flecs::entity e, Position& pos,  Enemy& enemy, Player player, RenderObjectPtr& renderObject)
			{

				for (auto& e : enemy) {
					const Position* targetPosition = e.get<Position>();
					float dist = sqrt((targetPosition->value.x - pos.value.x) * (targetPosition->value.x - pos.value.x) + (targetPosition->value.y - pos.value.y) * (targetPosition->value.y - pos.value.y) + (targetPosition->value.z - pos.value.z) * (targetPosition->value.z - pos.value.z));

					if (dist < 5.0f) {
						e.get<RenderObjectPtr>()->ptr->SetPosition(Math::Vector3f(1000.0, 0.0, 0.0), renderThread->ptr->GetMainFrame());
						player.set<AddShots>(3);
						e.set<Active>(false);
					}
				}
				
			});

}


