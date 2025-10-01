#pragma once

#include <RenderObject.h>
#include <RenderThread.h>
#include <Vector.h>

namespace GameEngine
{
	class GameObject
	{
	public:
		GameObject(Math::Vector3f pos) {
			m_Position = pos;
		}

	public:
		Render::RenderObject** GetRenderObjectRef() { return &m_RenderObject; }

		void SetPosition(Math::Vector3f position, size_t frame)
		{
			m_Position = position;

			if (m_RenderObject) [[likely]]
			{
				m_RenderObject->SetPosition(position, frame);
			}
		}

		Math::Vector3f GetPosition()
		{
			return m_Position;
		}

		virtual void Init() {

		}

		virtual void Update(float dt, size_t frame) {

		}

	protected:
		Render::RenderObject* m_RenderObject = nullptr;

		Math::Vector3f m_Position;
	};
}