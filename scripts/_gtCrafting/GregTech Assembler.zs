import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;

//Variables
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val CircAssembler as RecipeMap = GARecipeMaps.CIRCUIT_ASSEMBLER_RECIPES;
val Laser = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");

var chest = <minecraft:chest>; 
var planks = <ore:plankWood>.firstItem;
var treated_planks = <immersiveengineering:treated_wood>;
var config_8 = <gregtech:meta_item_1:32766>.withTag({Configuration: 8});
var hardHammer = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();
var Seared_Brick = <tconstruct:seared:3>;
var Coke_Brick = <gregtech:metal_casing:8>;
var Coke_Controller = <gregtech:machine:526>;
var IronPlate = <gregtech:meta_item_1:12033>;
var WroughtPlate = <gregtech:meta_item_1:12197>;
var Redstone = <minecraft:redstone>;

val MvCircuit = <ore:circuitGood>;
val FineElecWire = <gregtech:meta_item_2:16112>;
val MicroSMDResistor = <gregtech:meta_item_2:32459>;
val Capacitor = <pneumaticcraft:capacitor>;
val Transistor = <pneumaticcraft:transistor>;
val UnassCircBoard = <pneumaticcraft:unassembled_pcb>;
val CircBoard = <pneumaticcraft:printed_circuit_board>;
val PCBBlueprint = <pneumaticcraft:pcb_blueprint>;

val BlueSteelPlate = <gregtech:meta_item_1:12233>;
val SaphLens = <gregtech:meta_item_1:15157>;

		
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
		
	recipes.remove(CircBoard);
		CircAssembler.recipeBuilder()
			.inputs(
				UnassCircBoard,
				Capacitor * 3,
				Transistor * 3,
				MicroSMDResistor,
				FineElecWire * 4,
				MvCircuit)
			.fluidInputs([<liquid:soldering_alloy> * 144])
			.outputs(CircBoard)
			.duration(600)
			.EUt(32)
			.buildAndRegister();
		
		Laser.recipeBuilder()
			.inputs(BlueSteelPlate)
			.notConsumable(SaphLens)
			.outputs(PCBBlueprint)
			.duration(6000)
			.EUt(96)
			.buildAndRegister();
		
		
		
		
		
		
		
		
		
		
		
		
		
		