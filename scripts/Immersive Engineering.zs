// Immersive Engineering
import mods.jei.JEI.removeAndHide as rh;
import mods.immersiveengineering.Blueprint;

// Removal
	mods.jei.JEI.removeAndHide(<immersiveengineering:stone_decoration>);

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
	
// Engineers Worktable
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:26>);