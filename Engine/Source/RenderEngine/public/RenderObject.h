#pragma once

#include <RenderEngine/export.h>
#include <Math/Matrix.h>

namespace GameEngine::Render
{
	namespace HAL
	{
		class Mesh;
		class Material;
	}

	class RENDER_ENGINE_API RenderObject final
	{
	public:
		using Ptr = std::shared_ptr<RenderObject>;

	public:
		RenderObject();

		void CalculateTransformMatrix();

	public:
		std::shared_ptr<HAL::Mesh> m_mesh;
		std::shared_ptr<HAL::Material> m_material;

		Core::Math::Matrix4x4f transform = Core::Math::Matrix4x4f::Identity();

		float phase = 0.0f;
		Core::Math::Vector3f position = Core::Math::Vector3f(0.0f, 0.0f, 0.0f);
	};
}