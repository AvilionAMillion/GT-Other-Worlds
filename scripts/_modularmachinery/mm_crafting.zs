// Modular Machinery Crafting
import mods.jei.JEI.removeAndHide as rh;

// Hide
	mods.jei.JEI.removeAndHide(<modularmachinery:itemmodularium>);
	recipes.removeByMod("modularmachinery");

// Val
val mmCasing = <modularmachinery:blockcasing>;
val bronzePlate = <ore:plateBronze>;
val redPlate = <ore:plateRedAlloy>;
val input1 = <modularmachinery:blockinputbus:1>;
val output1 = <modularmachinery:blockoutputbus:1>;
val chest = <ore:chest>;

// Crafting
	recipes.addShaped(mmCasing,
		[[null, <ore:plateIron>, null],
		[<ore:plateIron>, <gregtech:metal_casing>, <ore:plateIron>],
		[null, <ore:plateIron>, null]]);
	recipes.addShaped(<modularmachinery:blockcontroller>,
		[[mmCasing, bronzePlate, mmCasing],
		[redPlate, craftingToolWrench, redPlate],
		[mmCasing, bronzePlate, mmCasing]]);

// Outputs and Inputs
	recipes.addShaped(input1,
		[[chest, null, null],
		[mmCasing, null, null],
		[null, null, null]]);
	recipes.addShapeless(input1,
		[output1]);
	recipes.addShaped(output1,
		[[mmCasing, null, null],
		[chest, null, null],
		[null, null, null]]);
	recipes.addShapeless(output1,
		[input1]);