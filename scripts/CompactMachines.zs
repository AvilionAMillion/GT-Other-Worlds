import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");


val Minizer = <compactmachines3:fieldprojector>;
val EvEmitter = <gregtech:meta_item_1:32683>;
val EvMotor = <gregtech:meta_item_1:32603>;
val TungGlass = <gtadditions:ga_transparent_casing:4>;
val GraphWire = <gregtech:cable:205>;
val TitCasing = <gregtech:turbine_casing:4>;
val EvIvTrans = <gregtech:machine:604>;
val CyanPlastic = <pneumaticcraft:plastic:6>;
val OrangePlastic =<pneumaticcraft:plastic:14>;
	recipes.remove(Minizer);
		assembler.recipeBuilder()
			.inputs(
			EvEmitter * 4,
			EvMotor,
			TungGlass,
			GraphWire * 16,
			TitCasing * 4,
			EvIvTrans,
			CyanPlastic,
			OrangePlastic * 4
			)
			.fluidInputs([<liquid:polytetrafluoroethylene> * 1440])
			.outputs(Minizer)
			.duration(600)
			.EUt(1536)
			.buildAndRegister();	