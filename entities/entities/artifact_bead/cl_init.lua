
include('shared.lua')

function ENT:Initialize()

end

function ENT:OnRemove()

end

function ENT:Think()
	
end

function ENT:Draw()

	self.Entity:SetModelScale( Vector( math.Rand( 0.85, 0.95 ), math.Rand( 0.85, 0.95 ), math.Rand( 0.85, 0.95 ) ) )
	self.Entity:DrawModel()
	
end

