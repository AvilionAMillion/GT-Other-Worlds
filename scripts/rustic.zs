// GTOW ZS File
// Made by GTOW Team

// Val

// Crafting
# Condensor
recipes.remove(<rustic:condenser>);
recipes.addShaped(<rustic:condenser>,
	[[screwBronze, <minecraft:stone_slab:4>, screwBronze],
	[brick, <pyrotech:brick_tank>, brick],
	[brick, <foundry:componentblock:1>, brick]]);
# Retort
recipes.remove(<rustic:retort>);
recipes.addShaped(<rustic:retort>,
	[[null, plateIron, brick],
	[<gregtech:fluid_pipe_normal:260>, <minecraft:bucket>, brick],
	[null, plateIron, brick]]);
