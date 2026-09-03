// GTOW ZS File
// Made by GTOW Team
import mods.jei.JEI.removeAndHide as rh;
import mods.rustic.Condenser;

// Val
val woodRod = <tconstruct:tough_tool_rod>.withTag({Material: "wood"});
val twine = <pyrotech:material:26>;

val blindnessElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:blindness", Duration: 600, Amplifier: 0}]});
mods.jei.JEI.addItem(blindnessElixir);

// Condensor
# Blindness Elixir
mods.rustic.Condenser.addRecipe(blindnessElixir, <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]}), <thaumcraft:flesh_block>);

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
# Apiary
recipes.remove(<rustic:apiary>);
recipes.addShaped(<rustic:apiary>, 
	[[wood, wood, wood],
	[plank, <ore:frameGtWood>, plank],
	[wood, gtSaw, wood]]);
# Wooden Stake
recipes.remove(<rustic:crop_stake>);
recipes.addShaped(<rustic:crop_stake>,
	[[twine, woodRod, twine],
	[gtSaw, woodRod, gtFile],
	[twine, woodRod, twine]]);
# Crushing Tub
recipes.remove(<rustic:crushing_tub>);
recipes.addShaped(<rustic:crushing_tub>,
	[[plank, null, plank],
	[plateIron, gtSaw, plateIron],
	[woodSlab, woodSlab, woodSlab]]);
# Barrel
recipes.remove(<rustic:brewing_barrel>);
recipes.addShaped(<rustic:brewing_barrel>,
	[[woodSlab, woodSlab, woodSlab],
	[plateIron, <gregtech:machine:1610>, plateIron],
	[woodSlab, woodSlab, woodSlab]]);
# Fertile Soil
recipes.remove(<rustic:fertile_soil>);
recipes.addShapeless(<rustic:fertile_soil> * 2,
	[<ore:dustBone>, <ore:dustBone>, <minecraft:dirt>, <minecraft:dirt>, <fluid:water>*1000]);
