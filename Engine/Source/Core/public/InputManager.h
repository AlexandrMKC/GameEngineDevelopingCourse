#pragma once
#include <Core/export.h>

#include <windows.h>
#include <string>

namespace GameEngine {
	namespace Core {

		class CORE_API InputManager final
		{
		public:
			static InputManager& getInstance() 
			{
				if (!instance) {
					instance = std::unique_ptr<InputManager>(new InputManager());
				}
				return *instance;
			}

			void Update();

			bool IsPressed();

		private:
			InputManager();

			InputManager(const InputManager&) = delete;
			InputManager& operator=(const InputManager&) = delete;

		private:
			inline static std::unique_ptr<InputManager> instance{ nullptr };
			//static std::unique_ptr<InputManager> instance;

		private:
			bool state = false;
			char key = 'W';
		};
	}
}