# priority 80
// GTOW ZS File
// Made by GTOW Team
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("blacksmith");

// Removal
mods.jei.JEI.removeAndHide(<artisanworktables:worktable:3>);
mods.jei.JEI.removeAndHide(<artisanworktables:workstation:3>);
mods.jei.JEI.hideCategory("artisanworktables_blacksmith_worktable");
mods.jei.JEI.hideCategory("artisanworktables_blacksmith_workstation");

// Crafting
function addPlateRecipe(material as string) {
    var plate_recipe = RecipeBuilder.get("blacksmith")
        .setShapeless([oreDict.get("ingot"+material)])
		.addTool(<ore:artisansHammer>, 10)
	    .addOutput((oreDict.get("plate"+material)).firstItem)
        .create();
}

// Materials Used
val plate_metals = [
    "Aluminium", "Beryllium", "Chrome", "Cobalt", "Copper", "Gallium", "Gold", "Iron", "Lead", "Manganese",
	"Molybdenum", "Nickel", "Silicon", "Silver", "Tin", "Zinc", "AnnealedCopper", "BatteryAlloy", "Brass",
	"Bronze", "Cupronickel", "Electrum", "Invar", "Kanthal", "Magnalium", "SterlingSilver", "RoseGold", "BlackBronze",
	"BismuthBronze", "StainlessSteel", "Steel", "TinAlloy", "Ultimet", "WroughtIron", "BlackSteel", "DamascusSteel",
	"CobaltBrass", "Potin", "RedSteel", "BlueSteel", "RedAlloy" 
] as string[];

// Mat
for mat in plate_metals {
    val material = mat;   
    addPlateRecipe(material);
}
