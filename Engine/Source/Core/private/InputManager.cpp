#include <InputManager.h>
#include <INIReader.h>

namespace GameEngine::Core {

	InputManager::InputManager()
	{
		INIReader reader = INIReader("../../../../../config.ini");
		
		auto value = reader.Get("Key", "forward", "W");
		key = static_cast<char>(value[0]);
	}

	void InputManager::Update()
	{
		state = (GetAsyncKeyState(key) & 0x8000) != 0;
	}

	bool InputManager::IsPressed()
	{
		return state;
	}
}

