import mods.gregtech.recipe.RecipeMap;

//Variables
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

var chest = <minecraft:chest>; 
var planks = <ore:plankWood>.firstItem;
var treated_planks = <immersiveengineering:treated_wood>;
var config_8 = <gregtech:meta_item_1:32766>.withTag({Configuration: 8});
var hardHammer = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();
var Seared_Brick = <tconstruct:seared:3>;
var Coke_Brick = <gregtech:metal_casing:8>;
var Coke_Controller = <gregtech:machine:526>;
var glassTube = <gregtech:meta_item_2:32454>;
	
// Removal
assembler.findRecipe(8, [<minecraft:paper> * 2, <gregtech:cable:18> * 2, glassTube], null).remove();
assembler.findRecipe(8, [<minecraft:paper> * 2, <gregtech:meta_item_2:16018> * 2, glassTube], null).remove();

//Assembling Machine 
	//Chest
	
	assembler.findRecipe(4,[planks * 8, config_8],[null]).remove();
	assembler.recipeBuilder()
		.inputs(treated_planks * 8)
		.fluidInputs([<liquid:bronze> * 144])
		.outputs(chest * 1)
		.property("circuit", 8)
		.duration(300)
		.EUt(16)
		.buildAndRegister();
		
	assembler.recipeBuilder()
		.inputs(treated_planks * 8)
		.fluidInputs([<liquid:steel> * 16])
		.outputs(chest * 1)
		.property("circuit", 8)
		.duration(300)
		.EUt(16)
		.buildAndRegister();
	
	assembler.recipeBuilder()
		.inputs(treated_planks * 8)
		.fluidInputs([<liquid:aluminium> * 4])
		.outputs(chest * 1)
		.property("circuit", 8)
		.duration(300)
		.EUt(16)
		.buildAndRegister();
		
	assembler.recipeBuilder()
		.inputs(treated_planks * 12)
		.fluidInputs([<liquid:stainless_steel> * 4])
		.outputs(chest * 2)
		.property("circuit", 8)
		.duration(300)
		.EUt(16)
		.buildAndRegister();	
		
	assembler.recipeBuilder()
		.inputs(treated_planks * 8)
		.fluidInputs([<liquid:titanium> * 4])
		.outputs(chest * 2)
		.property("circuit", 8)
		.duration(300)
		.EUt(16)
		.buildAndRegister();
		
	assembler.recipeBuilder()
		.inputs(treated_planks * 12)
		.fluidInputs([<liquid:tungsten_steel> * 4])
		.outputs(chest * 4)
		.property("circuit", 8)
		.duration(300)
		.EUt(96)
		.buildAndRegister();
		
	assembler.recipeBuilder()
		.inputs(treated_planks * 8)
		.fluidInputs([<liquid:rhodium_plated_palladium> * 4])
		.outputs(chest * 6)
		.property("circuit", 8)
		.duration(300)
		.EUt(96)
		.buildAndRegister();
		
	assembler.recipeBuilder()
		.inputs(treated_planks * 8)
		.fluidInputs([<liquid:osmiridium> * 4])
		.outputs(chest * 8)
		.property("circuit", 8)
		.duration(300)
		.EUt(192)
		.buildAndRegister();
		
	assembler.recipeBuilder()
		.inputs(treated_planks * 8)
		.fluidInputs([<liquid:tritanium> * 4])
		.outputs(chest * 12)
		.property("circuit", 8)
		.duration(300)
		.EUt(192)
		.buildAndRegister();
		
	# Logic Circuit
	
	assembler.recipeBuilder()
		.inputs(<gregtech:cable:5237> * 3, <ore:plateSteel>, <gregtech:meta_item_2:32450> * 2, <gregtech:meta_item_2:32455> * 2, <gtadditions:ga_meta_item:32029>)
		.outputs(<gregtech:meta_item_2:32487>)
		.duration(600)
		.EUt(8)
		.buildAndRegister();
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		