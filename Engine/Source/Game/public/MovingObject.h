#pragma once
#include <GameObject.h>
#include <cmath>

namespace GameEngine
{
	class MovingObject : public GameObject {
	public:

		MovingObject(Math::Vector3f pos) : GameObject(pos) {

		}

		void Update(float dt, size_t frame) {
			Math::Vector3f pos = GetPosition();
			t += dt;
			t = fmod(t, 6.28f);
			pos.y = amplitude*sin(angularSpeed*t);
			SetPosition(pos, frame);
		}

	private:
		float t = 0.0f;
		float amplitude = 5.0f;
		float angularSpeed = 1.0f;
	};
}