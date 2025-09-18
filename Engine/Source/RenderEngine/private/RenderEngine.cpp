#include <RenderEngine.h>
#include <RHIHelper.h>
#include <Mesh.h>

namespace GameEngine::Render
{
	RenderEngine::RenderEngine()
	{
		m_rhi = HAL::RHIHelper::CreateRHI("D3D12");
		m_rhi->Init();

		RenderObject::Ptr box = std::make_shared<RenderObject>();
		m_RenderObjects.push_back(box);
		box->m_mesh = m_rhi->CreateBoxMesh();
		box->m_material = m_rhi->GetMaterial(box->m_mesh->GetName());

		RenderObject::Ptr tetrahedron = std::make_shared<RenderObject>();
		m_RenderObjects.push_back(tetrahedron);
		tetrahedron->m_mesh = m_rhi->CreateTetrahedronMesh();
		tetrahedron->m_material = m_rhi->GetMaterial(tetrahedron->m_mesh->GetName());
		
		m_rhi->ExecuteCommandLists();
		m_rhi->Flush();
	}

	void RenderEngine::Update(float dt)
	{
		int i = 1;
		float phase = m_RenderObjects[i]->phase;
		phase += 0.000001f * dt;
		m_RenderObjects[i]->position.x = 1.5f*cosf(phase);
		m_RenderObjects[i]->position.y = 1.5f*sinf(phase);
		m_RenderObjects[i]->phase = phase;
		m_RenderObjects[i]->CalculateTransformMatrix();

		m_rhi->Update(m_RenderObjects[i]->m_mesh, m_RenderObjects[i]->m_material, m_RenderObjects[i]->transform);

		m_rhi->Flush();
	}

	void RenderEngine::OnResize(uint16_t width, uint16_t height)
	{
		m_swapChainWidth = width;
		m_swapChainHeight = height;
		m_rhi->OnResize();
	}
}