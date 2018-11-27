
include('shared.lua')

function ENT:Initialize()

	self.Emitter = ParticleEmitter( self.Entity:GetPos() )
	self.Fraction = 0
	self.Size = 80

end

function ENT:Think()

end

function ENT:OnRemove()

	if self.Emitter then
	
		self.Emitter:Finish()
	
	end

end

local matRefract = Material( "effects/strider_pinch_dudv" )

function ENT:Draw()

	self.Fraction = 0.15 + math.sin( CurTime() ) * 0.15

	matRefract:SetMaterialFloat( "$refractamount", self.Fraction )

	if render.GetDXLevel() >= 80 then
		
		render.UpdateRefractTexture()
		render.SetMaterial( matRefract )
		render.DrawQuadEasy( self.Entity:GetPos() + Vector(0,0,5),
					 ( EyePos() - self.Entity:GetPos() ):Normalize(),
					 self.Size + math.sin( CurTime() ) * 10, self.Size + math.sin( CurTime() ) * 10,
					 Color( 255, 255, 255, 255 ) )
		
	end
	
end

