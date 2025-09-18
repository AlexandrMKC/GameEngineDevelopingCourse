#include <Game.h>
#include <chrono>

namespace GameEngine
{
	Game::Game(
		std::function<bool()> PlatformLoopFunc
	) :
		PlatformLoop(PlatformLoopFunc)
	{
		m_renderEngine = std::make_unique<Render::RenderEngine>();
		
		ProcessSystemParams();
	}

	void Game::Run()
	{
		assert(PlatformLoop != nullptr);

		std::chrono::steady_clock::time_point last_time = std::chrono::steady_clock::now();

		bool quit = false;
		while (!quit)
		{
			// The most common idea for such a loop is that it returns false when quit is required, or true otherwise
			quit = !PlatformLoop();

			ProcessSystemParams();

			std::chrono::steady_clock::time_point current_time = std::chrono::steady_clock::now();
			float dt = static_cast<float>(std::chrono::duration_cast<std::chrono::microseconds>(current_time - last_time).count());
			last_time = current_time;

			m_renderEngine->Update(dt);
		}
	}

	void Game::ProcessSystemParams()
	{
		if (m_renderEngine->GetSwapChainWidth() != Core::MainWindowsApplication->GetWidth() ||
			m_renderEngine->GetSwapChainHeight() != Core::MainWindowsApplication->GetHeight()) [[unlikely]]
		{
			m_renderEngine->OnResize(Core::MainWindowsApplication->GetWidth(), Core::MainWindowsApplication->GetHeight());
		}
	}
}