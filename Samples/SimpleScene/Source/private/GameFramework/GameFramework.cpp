#include <Camera.h>
#include <DefaultGeometry.h>
#include <ecsControl.h>
#include <ecsMesh.h>
#include <ecsPhys.h>
#include <ECS/ecsSystems.h>
#include <GameFramework/GameFramework.h>
#include <Input/Controller.h>
#include <RenderObject.h>
#include <GameWorld.h>

#include <AudioEngine.h>
#include <vector>
#include <string>

using namespace GameEngine;

void GameFramework::Init()
{
	std::vector<std::string> soundNames = { "main" };
	Audio::g_AudioEngine->SoundBankLoad("main.bnk");

	RegisterComponentsReflection();
	RegisterSystems();

	World::GameWorld::GetInstance()->LoadLevel(
		m_World,
		Core::g_FileSystem->GetFilePath("Levels/Main.xml").generic_string()
	);

	flecs::entity cube = m_World.entity()
		.set(Position{ 0.0f, 8.0f, 3.0f })
		.set(Velocity{ 0.0f, 2.0f, 0.0f })
		.set(Gravity{ 0.0f, -9.8f, 0.0f })
		.set(BouncePlane{ 0.0f, 1.0f, 0.0f, 5.0f })
		.set(Bounciness{ 1.0f })
		.set(EntitySystem::ECS::AudioObject{ 0 })
		.set(GeometryPtr{ RenderCore::DefaultGeometry::Cube() })
		.set(ControllerPtr{ new Core::Controller(Core::g_FileSystem->GetConfigPath("Input_default.ini")) });


	flecs::entity camera = m_World.entity()
		.set(Position{ 0.0f, 12.0f, -10.0f })
		.set(Speed{ 10.f })
		.set(CameraPtr{ Core::g_MainCamera })
		.set(ControllerPtr{ new Core::Controller(Core::g_FileSystem->GetConfigPath("Input_default.ini")) });
}

void GameFramework::RegisterComponentsReflection()
{
	m_World.component<Position>()
		.member<float>("x")
		.member<float>("y")
		.member<float>("z");

	m_World.component<Velocity>()
		.member<float>("x")
		.member<float>("y")
		.member<float>("z");

	m_World.component<GeometryPtr>()
		.member<uint64_t>("ptr");

	m_World.component<EntitySystem::ECS::AudioObject>()
		.member<uint64_t>("id");

	m_World.component<ControllerPtr>()
		.member<uint64_t>("ptr");

	m_World.component<Gravity>()
		.member<float>("x")
		.member<float>("y")
		.member<float>("z");

	m_World.component<BouncePlane>()
		.member<float>("x")
		.member<float>("y")
		.member<float>("z")
		.member<float>("w");

	m_World.component<Bounciness>()
		.member<float>("value");

	m_World.component<ShiverAmount>()
		.member<float>("value");

	m_World.component<FrictionAmount>()
		.member<float>("value");

	m_World.component<Speed>()
		.member<float>("value");

	m_World.component<JumpSpeed>()
		.member<float>("value");
}

void GameFramework::RegisterSystems()
{
	RegisterEcsMeshSystems(m_World);
	RegisterEcsControlSystems(m_World);
}

void GameFramework::Update(float dt)
{

}