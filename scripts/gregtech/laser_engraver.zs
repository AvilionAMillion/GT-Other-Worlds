// Fluid Heater File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val laser as RecipeMap = <recipemap:laser_engraver>;

// MV Tier
# Charged Certus Quartz
laser.recipeBuilder()
	.inputs(<appliedenergistics2:material>)
	.notConsumable(<ore:craftingLensLightBlue>)
	.outputs(<appliedenergistics2:material:1>)
	.duration(20)
	.EUt(60)
	.buildAndRegister();