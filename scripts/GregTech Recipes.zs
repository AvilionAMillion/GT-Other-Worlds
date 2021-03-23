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

//Crafting
	//Coke
		recipes.remove(Coke_Controller);
		recipes.addShaped(Coke_Controller,
		[[Coke_Brick, Seared_Brick,Coke_Brick], 
		[Seared_Brick,hardHammer,Seared_Brick],
		[Coke_Brick, Seared_Brick,Coke_Brick]]);
		
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
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		