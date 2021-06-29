// ContentTweakerMaterials
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemTransformer;

// Val
val unfiredSearedBrick = <contenttweaker:unfired_searedbrick>;
val brickForm = <gregtech:meta_item_2:32012>;
val grout = <tconstruct:soil>;
val glassDust = <gregtech:meta_item_1:2209>;
val wIronScrew = <ore:screwWroughtIron>;
val wIronPlate = <ore:plateWroughtIron>;
val steelPlate = <ore:plateSteel>;
val steelScrew = <ore:screwSteel>;

// Unfired Seared Brick
	recipes.addShapeless(unfiredSearedBrick,
		[brickForm, grout]);
	recipes.addShaped(unfiredSearedBrick * 8,
		[[grout, grout, grout],
		[grout, brickForm, grout],
		[grout, grout, grout]]);
		
// Sandy-Clay Compound
	recipes.addShapeless(<contenttweaker:sandyclay>,
		[<gregtech:meta_item_1:2960>, <gregtech:meta_item_1:2105>]);

// Heating Components
	# Wrought Iron
	recipes.addShaped(<contenttweaker:wroughtironheater>,
		[[wIronScrew, craftingToolScrewdriver, wIronScrew],
		[wIronPlate, <immersiveengineering:metal_device1:1>, wIronPlate],
		[wIronScrew, craftingToolWrench, wIronScrew]]);
	# Steel
	recipes.addShaped(<contenttweaker:steelheater>,
		[[steelScrew, craftingToolScrewdriver, steelScrew],
		[steelPlate, <contenttweaker:wroughtironheater>, steelPlate],
		[steelScrew, craftingToolWrench, steelScrew]]);

// Glassy Sand
	recipes.addShaped(<contenttweaker:glassy_sand>,
		[[glassDust, sand],
		[glassDust, sand]]);
