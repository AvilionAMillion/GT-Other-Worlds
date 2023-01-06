// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val bath as RecipeMap = <recipemap:chemical_bath>;

// Chemical Bath
# Lubricated Foil
bath.recipeBuilder()
	.inputs(<gregtech:meta_foil:122>)
	.fluidInputs(<liquid:lubricant> * 480)
	.outputs(<contenttweaker:lubricatedfoil>)
	.duration(160)
	.EUt(24)
	.buildAndRegister();