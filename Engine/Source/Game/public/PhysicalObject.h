#pragma once
#include <GameObject.h>

namespace GameEngine
{
	class PhysicalObject : public GameObject {
	public:

		PhysicalObject(Math::Vector3f pos) : GameObject(pos) {
			speed = 4.0f;
		}

		void Update(float dt, size_t frame) {
			Math::Vector3f pos = GetPosition();

			pos.y += speed*dt;
			speed -= g * dt;

			if (pos.y <= 0.0) {
				speed = 4.0f;
				pos.y = 0.0f;
			}

			SetPosition(pos, frame);
		}

	private:
		float g = 1.2f;
		float speed = 0.0f;
	};
}