// Rustic
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Val
var bronzePlate = <ore:plateBronze>;
var brickBlock = <minecraft:brick_block>;
var bricks = <minecraft:brick>;

// Crafting Table
	# Alchemic Condensor
		recipes.remove(<rustic:condenser>);
		recipes.addShaped(<rustic:condenser>,
			[[bronzePlate, brickBlock, bronzePlate],
			[brickBlock, <gregtech:machine:527>, brickBlock],
			[brickBlock, <ore:hardenedClay>, brickBlock]]);
	
	# Alchemic Retort
		recipes.remove(<rustic:retort>);
		recipes.addShaped(<rustic:retort>,
			[[null, bricks, bricks],
			[<ore:pipeSmallBronze>, <minecraft:bucket>, <ore:plateIron>],
			[null, bricks, bricks]]);