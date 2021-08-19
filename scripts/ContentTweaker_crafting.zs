// ContentTweakerMaterials
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemTransformer;
import mods.immersiveengineering.Blueprint;

// Val
val unfiredSearedBrick = <contenttweaker:unfired_searedbrick>;
val brickForm = <gregtech:meta_item_2:32012>;
val grout = <tconstruct:soil>;
val glassDust = <gregtech:meta_item_1:2209>;
val wIronScrew = <ore:screwWroughtIron>;
val wIronPlate = <ore:plateWroughtIron>;
val steelPlate = <ore:plateSteel>;
val steelScrew = <ore:screwSteel>;
val tinAlloyWire = <gregtech:cable:189>;
val redAlloyCable = <gregtech:cable:5237>;
val motorULV = <contenttweaker:ulv_motor>;
val ringPaper = <ore:ringPaper>;

// ULV Components
	recipes.addShaped(<contenttweaker:ulv_piston>,
		[[plateIron, plateIron, plateIron],
		[redAlloyCable, rodIron, rodIron],
		[redAlloyCable, motorULV, <ore:gearSmallIron>]]);
	recipes.addShaped(<contenttweaker:ulv_conveyor>,
		[[plateWood, plateWood, plateWood],
		[motorULV, redAlloyCable, motorULV],
		[plateWood, plateWood, plateWood]]);
	recipes.addShaped(<contenttweaker:ulv_robotarm>,
		[[redAlloyCable, redAlloyCable, redAlloyCable],
		[motorULV, rodIron, motorULV],
		[<contenttweaker:ulv_piston>, circuitULV, rodIron]]);
	recipes.addShaped(<contenttweaker:ulv_pump>,
		[[<ore:screwTinAlloy>, <ore:rotorTinAlloy>, ringPaper],
		[craftingToolScrewdriver, <ore:pipeMediumWood>, craftingToolWrench],
		[ringPaper, motorULV, redAlloyCable]]);
		

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
	recipes.addShapeless(<contenttweaker:glassy_sand>,
		[glassDust, sand, glassDust, sand]);


//////////////////// Engineers Worktable //////////////////
 # ULV Motor
	mods.immersiveengineering.Blueprint.addRecipe("components", <contenttweaker:ulv_motor>,
		[redAlloyCable * 2, tinAlloyWire * 4, rodIron * 2, <ore:stickIronMagnetic>]);

