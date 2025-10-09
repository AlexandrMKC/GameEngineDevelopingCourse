#pragma once

#include <Geometry.h>
#include <array.h>
#include <vector>
#include <Vector.h>
#include <memory>

using namespace GameEngine;

namespace BasicGeometry {

	RenderCore::Geometry::Ptr Cube()
	{
		constexpr Core::array<RenderCore::Geometry::VertexType, 8> vertices =
		{
			Math::Vector3f(-1.0f, -1.0f, -1.0f),
			Math::Vector3f(-1.0f, +1.0f, -1.0f),
			Math::Vector3f(+1.0f, +1.0f, -1.0f),
			Math::Vector3f(+1.0f, -1.0f, -1.0f),
			Math::Vector3f(-1.0f, -1.0f, +1.0f),
			Math::Vector3f(-1.0f, +1.0f, +1.0f),
			Math::Vector3f(+1.0f, +1.0f, +1.0f),
			Math::Vector3f(+1.0f, -1.0f, +1.0f)
		};

		constexpr Core::array<RenderCore::Geometry::IndexType, 36> indices =
		{
			// front face
			0, 1, 2,
			0, 2, 3,

			// back face
			4, 6, 5,
			4, 7, 6,

			// left face
			4, 5, 1,
			4, 1, 0,

			// right face
			3, 2, 6,
			3, 6, 7,

			// top face
			1, 5, 6,
			1, 6, 2,

			// bottom face
			4, 0, 3,
			4, 3, 7
		};

		return std::make_shared<RenderCore::Geometry>((RenderCore::Geometry::VertexType*)vertices.begin(), vertices.size(), (RenderCore::Geometry::IndexType*)indices.begin(), indices.size());
	}

}