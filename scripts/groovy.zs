// GTOW ZS File
// Made by GTOW Team
import mods.pyrotech.Barrel;
import mods.botania.ManaInfusion;
val durLeather = <pyrotech:material:41>;

# Soap
Barrel.addRecipe("soap", <liquid:soap>, <liquid:water>, [<ore:dustCalcite>, <pyrotech:material:49>, <pyrotech:material:49>, <ore:wax>], 3 * 60 * 20);

// Tooltips
<gtow:aetherblock>.addTooltip(format.red("Only works in the End Dimension!"));
<gtow:levitation_fragment>.addTooltip(format.aqua("Used to open the Aether Portal, dropped by Shulkers"));
<gregtech:machine:32002>.addTooltip(format.aqua("Recipes are 7x faster in this than the Primitive Blast Furnace"));
<gregtech:machine:32002>.addTooltip(format.aqua("All recipes use 30 mb/t of steam"));

// Crafting
# Bellows Blocks
recipes.addShaped(<gtow:casing_bellowsbottom>, 
	[[durLeather, rodSteel, durLeather],
	[gtSaw, rodSteel, gtScrewdriver],
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);
recipes.addShapeless(<gtow:casing_bellowsbottom>,
	[<gtow:casing_bellowstop>]);
recipes.addShaped(<gtow:casing_bellows>, 
	[[durLeather, rodSteel, durLeather],
	[gtSaw, rodSteel, gtScrewdriver],
	[durLeather, rodSteel, durLeather]]);
recipes.addShaped(<gtow:casing_bellowstop>, 
	[[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[gtSaw, rodSteel, gtScrewdriver],
	[durLeather, rodSteel, durLeather]]);
recipes.addShapeless(<gtow:casing_bellowstop>,
	[<gtow:casing_bellowsbottom>]);	