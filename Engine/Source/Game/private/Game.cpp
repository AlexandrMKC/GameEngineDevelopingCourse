#include <Camera.h>
#include <DefaultGeometry.h>
#include <Game.h>
#include <GameObject.h>
#include <ManagedObject.h>
#include <MovingObject.h>
#include <PhysicalObject.h>
#include <Input/InputHandler.h>
#include <random>

namespace GameEngine
{
	Game::Game(
		std::function<bool()> PlatformLoopFunc
	) :
		PlatformLoop(PlatformLoopFunc)
	{
		Core::g_MainCamera = new Core::Camera();
		Core::g_MainCamera->SetPosition(Math::Vector3f(0.0f, 6.0f, -6.0f));
		Core::g_MainCamera->SetViewDir(Math::Vector3f(0.0f, -6.0f, 6.0f).Normalized());

		m_renderThread = std::make_unique<Render::RenderThread>();

		std::random_device rd;
		std::mt19937 gen(rd());
		std::uniform_int_distribution<> dist(1, 3);

		for (int i = 0; i < 10; ++i) {
			for (int j = 0; j < 10; j++) {
				int p = dist(gen);
				if (p == 1) {
					m_Objects.push_back(new PhysicalObject(Math::Vector3f(static_cast<float>(i) * 5.0f, 0.0, static_cast<float>(j) * 5.0f)));
				}
				else if(p == 2) {
					m_Objects.push_back(new MovingObject(Math::Vector3f(static_cast<float>(i) * 5.0f, 0.0, static_cast<float>(j) * 5.0f)));
				}
				else {
					m_Objects.push_back(new ManagedObject(Math::Vector3f(static_cast<float>(i) * 5.0f, 0.0, static_cast<float>(j) * 5.0f)));
				}
				Render::RenderObject** renderObject = m_Objects.back()->GetRenderObjectRef();
				m_renderThread->EnqueueCommand(Render::ERC::CreateRenderObject, RenderCore::DefaultGeometry::Cube(), renderObject);
			}
		}

		Core::g_InputHandler->RegisterCallback("GoForward", [&]() { Core::g_MainCamera->Move(Core::g_MainCamera->GetViewDir()); });
		Core::g_InputHandler->RegisterCallback("GoBack", [&]() { Core::g_MainCamera->Move(-Core::g_MainCamera->GetViewDir()); });
		Core::g_InputHandler->RegisterCallback("GoRight", [&]() { Core::g_MainCamera->Move(Core::g_MainCamera->GetRightDir()); });
		Core::g_InputHandler->RegisterCallback("GoLeft", [&]() { Core::g_MainCamera->Move(-Core::g_MainCamera->GetRightDir()); });
	}

	void Game::Run()
	{
		assert(PlatformLoop != nullptr);

		m_GameTimer.Reset();

		bool quit = false;
		while (!quit)
		{
			m_GameTimer.Tick();
			float dt = m_GameTimer.GetDeltaTime();

			Core::g_MainWindowsApplication->Update();
			Core::g_InputHandler->Update();
			Core::g_MainCamera->Update(dt);

			Update(dt);

			m_renderThread->OnEndFrame();

			// The most common idea for such a loop is that it returns false when quit is required, or true otherwise
			quit = !PlatformLoop();
		}
	}

	void Game::Update(float dt)
	{
		for (int i = 0; i < m_Objects.size(); ++i)
		{
			m_Objects[i]->Update(dt, m_renderThread->GetMainFrame());
		}
	}
}