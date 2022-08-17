// Immersive Engineering File
// Made by GTOW Team
import mods.immersiveengineering.Blueprint;

// Recipes with IE outputs listed here

// Removal
mods.jei.JEI.removeAndHide(<immersiveengineering:stone_decoration>);
mods.jei.JEI.removeAndHide(<immersiveengineering:stone_decoration:1>);
mods.jei.JEI.removeAndHide(<immersiveengineering:stone_decoration:2>);
mods.jei.JEI.removeAndHide(<immersiveengineering:stone_decoration:10>);
recipes.remove(<immersiveengineering:material:8>);
recipes.remove(<immersiveengineering:material:9>);

// Val
val steelScaffold = <immersiveengineering:metal_decoration1:1>;

// Crafting
# Steel Scaffold
recipes.remove(<immersiveengineering:metal_decoration1:1>);
recipes.addShaped(steelScaffold * 2,
	[[plateSteel, plateSteel, plateSteel],
	[screwSteel, <gregtech:meta_block_frame_20:4>, screwSteel],
	[rodSteel, gtScrewdriver, rodSteel]]);
# Engineers Workbench
recipes.remove(<immersiveengineering:wooden_device0:2>);
recipes.addShaped(<immersiveengineering:wooden_device0:2>,
	[[null, null, steelScaffold],
	[treatedWood, treatedWood, treatedWood],
	[<artisanworktables:workshop:5>, null, <immersiveengineering:wooden_decoration:0>]]);
	
