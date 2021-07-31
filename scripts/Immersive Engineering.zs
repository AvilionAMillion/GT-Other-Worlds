// Immersive Engineering
import mods.jei.JEI.removeAndHide as rh;
import mods.immersiveengineering.Blueprint;

// Removal
	mods.jei.JEI.removeAndHide(<immersiveengineering:stone_decoration>);
	recipes.remove(<immersiveengineering:material:8>);
	recipes.remove(<immersiveengineering:material:9>);
	
// Val
val componentIron = <immersiveengineering:material:8>;
val componentSteel = <immersiveengineering:material:9>;
val bendedPlateIron = <ore:plateCurvedIron>;
val redCoil = <immersiveengineering:wirecoil:5>;
val redWire = <gregtech:cable:237>;

// Scaffolding
recipes.remove(<immersiveengineering:metal_decoration1:1>);
recipes.addShapeless(<immersiveengineering:metal_decoration1:1>,
	[<ore:frameGtSteel>]);
recipes.addShapeless(<gregtech:frame_steel:0>,
	[<immersiveengineering:metal_decoration1:1>]);
recipes.remove(<immersiveengineering:metal_decoration1:5>);
recipes.addShapeless(<immersiveengineering:metal_decoration1:5>,
	[<ore:frameGtAluminium>]);
recipes.addShapeless(<gregtech:frame_aluminium:0>,
	[<immersiveengineering:metal_decoration1:5>]);
 # Scaffolding Oredictionary
<ore:scaffoldingSteel>.addAll(<ore:frameGtSteel>);
<ore:scaffoldingAluminum>.addAll(<ore:frameGtAluminium>);

// Crafting
 # Engineers Worktable
recipes.remove(<immersiveengineering:wooden_device0:2>);
recipes.addShaped(<immersiveengineering:wooden_device0:2>,
	[[<ore:frameGtSteel>, null, null],
	[treatedWood, treatedWood, treatedWood],
	[<gregtech:machine:825>, null, <ore:fenceTreatedWood>]]);
recipes.remove(<immersiveengineering:metal_device1:6>);
recipes.addShaped(<immersiveengineering:metal_device1:6> * 2,
	[[bendedPlateIron, bendedPlateIron, bendedPlateIron],
	[craftingToolWrench, craftingToolCylinder, hardHammer],
	[bendedPlateIron, bendedPlateIron, bendedPlateIron]]);
recipes.remove(<immersiveengineering:metal_device0:5>);
recipes.addShaped(<immersiveengineering:metal_device0:5>,
	[[componentIron, plateSteel, componentIron],
	[plateSteel, <immersiveengineering:metal_device1:6>, plateSteel],
	[plateSteel, <gregtech:machine:1018>, plateSteel]]);
recipes.remove(redCoil);
recipes.addShaped(redCoil * 2,
	[[null, redWire, null],
	[redWire, <ore:stickWood>, redWire],
	[null, redWire, null]]);
recipes.addShaped(redCoil * 2,
	[[null, redWire, null],
	[redWire, <ore:stickTreatedWood>, redWire],
	[null, redWire, null]]);
	
// Engineering Blocks
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped(<immersiveengineering:metal_decoration0:4>,
	[[plateSteel, componentIron, plateSteel],
	[<ore:ingotCopper>, craftingToolWrench, <ore:ingotCopper>],
	[plateSteel, <ore:gearCopper>, plateSteel]]);
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3>,
	[[plateSteel, <ore:ingotRedAlloy>, plateSteel],
	[redCoil, craftingToolWrench, redCoil],
	[plateSteel, <ore:ingotRedAlloy>, plateSteel]]);
	
// Engineers Worktable
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:26>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:27>);

// Blueprints
 # Crafting Components
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "components"}),
	[[null, <gregtech:machine:825>, null],
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
	[paper, paper, paper]]);