#include <Camera.h>
#include <DefaultGeometry.h>
#include <ecsControl.h>
#include <ecsMesh.h>
#include <ecsPhys.h>
#include <GameFramework/GameFramework.h>
#include <Input/Controller.h>
#include <RenderObject.h>

using namespace GameEngine;


void GameFramework::Init()
{

	RegisterEcsMeshSystems(m_World);
	RegisterEcsControlSystems(m_World);
	RegisterEcsPhysSystems(m_World);


	flecs::entity enemy1 = m_World.entity()
		.set(Position{ Math::Vector3f(50.f, 0.f, 0.f) })
		.set(GeometryPtr{ RenderCore::DefaultGeometry::Cube() })
		.set(RenderObjectPtr{ new Render::RenderObject() })
		.set(Active{ true });

	flecs::entity enemy2 = m_World.entity()
		.set(Position{ Math::Vector3f(-50.f, 0.f, 0.f) })
		.set(GeometryPtr{ RenderCore::DefaultGeometry::Cube() })
		.set(RenderObjectPtr{ new Render::RenderObject() })
		.set(Active{ true });


	flecs::entity player = m_World.entity()
		.set(Position{ Math::Vector3f(0.0f, 12.0f, -10.0f) })
		.set(Speed{ 10.f })
		.set(Time{ 0.35 })
		.set(Count {0})
		.set(AddShots {0})
		.set(Active{ true })
		.set(Enemy{enemy1, enemy2})
		.set(CameraPtr{ Core::g_MainCamera })
		.set(ControllerPtr{ new Core::Controller(Core::g_FileSystem->GetConfigPath("Input_default.ini")) });
}

void GameFramework::Update(float dt)
{

}