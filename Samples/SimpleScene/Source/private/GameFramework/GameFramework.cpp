// This define is essential for the scripts to expose the ECS components to lua syntax
// There is a task to rework this behavior
#define GAME_FRAMEWORK

#include <Camera.h>
#include <DefaultGeometry.h>
#include <ecsControl.h>
#include <ecsMesh.h>
#include <ecsPhys.h>
#include <RenderObject.h>
#include <ECS/ecsSystems.h>
#include <GameFramework/GameFramework.h>
#include <Input/Controller.h>

#include <flecs.h>


using namespace GameEngine;

void GameFramework::Init()
{
	RegisterComponents();
	RegisterSystems();

	flecs::entity destractionCube = m_World.entity()
		.set(Position{ 0.f, 0.f, 0.f })
		.set(DestructionTimer{3.f, 0.f})
		.set(Active {true} )
		.set(EntitySystem::ECS::GeometryPtr{ RenderCore::DefaultGeometry::Cube() })
		.set(EntitySystem::ECS::RenderObjectPtr{ new Render::RenderObject() });

	flecs::entity interactingCube1 = m_World.entity()
		.set(Position{ 5.0f, 0.f, 5.f })
		.set(Velocity{ 0.0f, 0.f, -5.f })
		.set(Health{ 2.0 })
		.set(Active{ true })
		.set(FrictionAmount{ 0.7 })
		.set(EntitySystem::ECS::GeometryPtr{ RenderCore::DefaultGeometry::Cube() })
		.set(EntitySystem::ECS::RenderObjectPtr{ new Render::RenderObject() });

	flecs::entity interactingCube2 = m_World.entity()
		.set(Position{ 5.0f, 0.f, -8.f })
		.set(Velocity{ 0.0f, 0.f, 5.f })
		.set(Health{ 2.0 })
		.set(Active{ true })
		.set(FrictionAmount{ 0.7 })
		.set(EntitySystem::ECS::GeometryPtr{ RenderCore::DefaultGeometry::Cube() })
		.set(EntitySystem::ECS::RenderObjectPtr{ new Render::RenderObject() });

	flecs::entity interactingCube3 = m_World.entity()
		.set(Position{ -5.0f, 0.f, 8.f })
		.set(Velocity{ 0.f, 0.f, 0.f })
		.set(Health{ 2.0 })
		.set(Active{ true })
		.set(FrictionAmount{ 0.7 })
		.set(EntitySystem::ECS::GeometryPtr{ RenderCore::DefaultGeometry::Cube() })
		.set(EntitySystem::ECS::RenderObjectPtr{ new Render::RenderObject() });
	

	flecs::entity camera = m_World.entity()
		.set(Position{ 0.0f, 12.0f, -10.0f })
		.set(Speed{ 10.f })
		.set(Timer{ 0.7f, 0.75f })
		.set(CameraPtr{ Core::g_MainCamera })
		.set(ControllerPtr{ new Core::Controller(Core::g_FileSystem->GetConfigPath("Input_default.ini")) });
}

void GameFramework::RegisterComponents()
{
	// Exposing these components for the lua system
	ECS_META_COMPONENT(m_World, Position);
	ECS_META_COMPONENT(m_World, Velocity);
	ECS_META_COMPONENT(m_World, Gravity);
	ECS_META_COMPONENT(m_World, Ground);
	ECS_META_COMPONENT(m_World, FrictionAmount);
	ECS_META_COMPONENT(m_World, Speed);
	ECS_META_COMPONENT(m_World, Active);
	ECS_META_COMPONENT(m_World, Bullet);
	ECS_META_COMPONENT(m_World, DestructionTimer);
	ECS_META_COMPONENT(m_World, Health);
	ECS_META_COMPONENT(m_World, Timer);
}

void GameFramework::RegisterSystems()
{
	RegisterEcsMeshSystems(m_World);
	RegisterEcsControlSystems(m_World);
}

void GameFramework::Update(float dt)
{

}