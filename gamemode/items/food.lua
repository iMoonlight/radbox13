
// This is the ID given to any item that is edible 
ITEM_FOOD = 1

// Weight constants
WEIGHT_FOOD_SMALL = 0.15
WEIGHT_FOOD_LARGE = 0.30

// Price constants
PRICE_FOOD = 5
PRICE_RAREFOOD = 50

function FUNC_MILK( ply, id, client )

	if client then return "Drink" end

	ply:RemoveFromInventory( id )
	ply:EmitSound( table.Random{ "npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav" }, 100, math.random( 90, 110 ) )
	
	if math.random(1,8) == 1  then
	
		ply:AddStamina( -50 )
		ply:AddHealth( -10 )
		ply:EmitSound( table.Random( GAMEMODE.Coughs ) )
		
		umsg.Start( "Drunk", ply )
		umsg.Short( 3 )
		umsg.End()
	
	else
	
		ply:AddStamina( 75 )
		ply:AddHealth( 25 )
		
	end

end

function FUNC_DRINK( ply, id, client )

	if client then return "Drink" end

	ply:RemoveFromInventory( id )
	ply:EmitSound( table.Random{ "npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav" }, 100, math.random( 90, 110 ) )
	ply:AddHealth( 10 )
	ply:AddStamina( 50 )

end

function FUNC_EAT( ply, id, client )

	if client then return "Eat" end
	
	ply:RemoveFromInventory( id )
	ply:EmitSound( "npc/barnacle/barnacle_crunch2.wav", 100, math.random( 90, 110 ) )
	ply:AddHealth( 10 )
	ply:AddStamina( 50 )

end

function FUNC_POTATO( ply, id, client )

	if client then return "Eat" end
	
	ply:RemoveFromInventory( id )
	ply:EmitSound( "npc/barnacle/barnacle_crunch2.wav", 100, math.random( 90, 110 ) )
	ply:AddHealth( 100 )
	ply:AddStamina( 100 )
	ply:AddRadiation( 1 )

end

item.Register( { 
	Name = "Grapefruit", 
	Description = "This kind of fruit is quite rare to find in these areas. It looks safe to eat.",
	Stackable = true, 
	Type = ITEM_FOOD,
	Weight = WEIGHT_FOOD_SMALL, 
	Price = PRICE_RAREFOOD,
	Rarity = 0.85,
	Model = "models/props/de_inferno/crate_fruit_break_gib2.mdl",
	Functions = { FUNC_EAT },
	CamPos = Vector(10,12,1),
	CamOrigin = Vector(0,0,0)	
} )

item.Register( { 
	Name = "Milk", 
	Description = "Dairy products are a rare delicacy to find around here. This milk smells a bit strange...",
	Stackable = true, 
	Type = ITEM_FOOD,
	Weight = WEIGHT_FOOD_SMALL, 
	Price = PRICE_RAREFOOD,
	Rarity = 0.95,
	Model = "models/props_junk/garbage_milkcarton002a.mdl", 
	Functions = { FUNC_DRINK },
	CamPos = Vector(20,16,0),
	CamOrigin = Vector(0,0,0)
} )

item.Register( { 
	Name = "Water", 
	Description = "This old bottle is full of clean water. It should be safe to drink.",
	Stackable = true, 
	Type = ITEM_FOOD,
	Weight = WEIGHT_FOOD_SMALL, 
	Price = PRICE_FOOD,
	Rarity = 0.05,
	Model = "models/props_junk/garbage_plasticbottle003a.mdl",
	Functions = { FUNC_DRINK },
	CamPos = Vector(22,22,0),
	CamOrigin = Vector(0,0,0)	
} )

item.Register( { 
	Name = "Canned Soup", 
	Description = "This can contains some sort of vegetable soup. The label has been torn off.",
	Stackable = true, 
	Type = ITEM_FOOD,
	Weight = WEIGHT_FOOD_SMALL, 
	Price = PRICE_FOOD,
	Rarity = 0.05,
	Model = "models/props_junk/garbage_metalcan002a.mdl",
	Functions = { FUNC_EAT },
	CamPos = Vector(10,15,0),
	CamOrigin = Vector(0,0,1)	
} )

item.Register( { 
	Name = "Canned Meat", 
	Description = "This can contains what appears to be processed meat. Maybe it's dog food.",
	Stackable = true, 
	Type = ITEM_FOOD,
	Weight = WEIGHT_FOOD_SMALL, 
	Price = PRICE_FOOD,
	Rarity = 0.05,
	Model = "models/props_junk/garbage_metalcan001a.mdl",
	Functions = { FUNC_EAT },
	CamPos = Vector(10,10,0),
	CamOrigin = Vector(0,0,0)	
} )

item.Register( { 
	Name = "Radtato", 
	Description = "This mutated potato was grown in the radioactive soil. It has a distinct green glow.",
	Stackable = true, 
	Type = ITEM_FOOD,
	Weight = WEIGHT_FOOD_SMALL, 
	Price = 50,
	Rarity = 0.90,
	Model = "models/props_phx/misc/potato.mdl",
	Functions = { FUNC_POTATO },
	CamPos = Vector(10,10,0),
	CamOrigin = Vector(0,1,0)	
} )

