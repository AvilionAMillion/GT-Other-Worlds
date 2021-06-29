// Forestry
import mods.forestry.CharcoalWall;

// Charcoal Pile
	# Removal
		mods.forestry.CharcoalWall.removeWall(<minecraft:clay>.asBlock());
		mods.forestry.CharcoalWall.removeWall(<minecraft:end_stone>.asBlock());
		mods.forestry.CharcoalWall.removeWall(<minecraft:end_bricks>.asBlock());
		mods.forestry.CharcoalWall.removeWall(<minecraft:dirt>.asBlock());
		mods.forestry.CharcoalWall.removeWall(<minecraft:gravel>.asBlock());
		mods.forestry.CharcoalWall.removeWall(<minecraft:netherrack>.asBlock());
// Loam will be kept but the recipe WILL BE CHANGED
		mods.forestry.CharcoalWall.removeWall(<forestry:ash_brick>.asBlock());
	# Addition
		mods.forestry.CharcoalWall.addWall(<forestry:ash_brick>.asBlock(), 7);
		mods.forestry.CharcoalWall.addWall(<gregtech:metal_casing:8>.asBlock(), 4);
		mods.forestry.CharcoalWall.addWall(<minecraft:brick_block>.asBlock(), 2);
		mods.forestry.CharcoalWall.addWall(<tconstruct:seared:3>.asBlock(), 3);
		
// Crafting
	# Wood Pile
		recipes.remove(<forestry:wood_pile>);
		recipes.addShaped(<forestry:wood_pile>,
			[[wood, null, wood],
			[null, craftingToolSaw, null],
			[wood, null, wood]]);
			
// Forestry Smelting Changes
	furnace.remove(<forestry:ingot_copper>);
	furnace.remove(<forestry:ingot_tin>);