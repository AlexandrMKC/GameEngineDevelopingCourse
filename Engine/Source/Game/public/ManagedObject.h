#pragma once
#include <GameObject.h>
#include <Input/InputHandler.h>

namespace GameEngine
{
	class ManagedObject : public GameObject {
	public:

		ManagedObject(Math::Vector3f pos) : GameObject(pos) {
			Core::g_InputHandler->RegisterCallback("Left", [&]() { Left(); });
			Core::g_InputHandler->RegisterCallback("Right", [&]() { Right(); });
		}

		void Update(float dt, size_t frame) {
			Math::Vector3f pos = GetPosition();
			pos.y += (input.y - input.x)*speed*dt;
			SetPosition(pos, frame);
			input = Math::Vector2f(0.0f, 0.0f);
		}

	private:
		void Right() {
			input.y = 1.0f;
		}

		void Left() {
			input.x = 1.0f;
		}

		float speed = 2.0f;
		Math::Vector2f input = Math::Vector2f(0.0f, 0.0f);
	};
}