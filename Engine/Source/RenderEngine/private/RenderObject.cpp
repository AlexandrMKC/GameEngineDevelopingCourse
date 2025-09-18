#include <RenderObject.h>

namespace GameEngine::Render
{
	RenderObject::RenderObject()
	{

	}
	void RenderObject::CalculateTransformMatrix()
	{
		transform = Core::Math::Matrix4x4f::Identity();
		transform.SetElement(position.x, 3, 0);
		transform.SetElement(position.y, 3, 1);
		transform.SetElement(position.z, 3, 2);
	}
}