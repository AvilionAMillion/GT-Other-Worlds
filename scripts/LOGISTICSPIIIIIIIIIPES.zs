import mods.pneumaticcraft.pressurechamber;
import mods.pneumaticcraft.assembly;
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;

val CircAssembler as RecipeMap = GARecipeMaps.CIRCUIT_ASSEMBLER_RECIPES;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

val LogisticsBlock = <logisticspipes:frame>;
val MvCasing = <gregtech:machine_casing:2>;
	recipes.remove(LogisticsBlock);
		mods.pneumaticcraft.assembly.addLaserRecipe(MvCasing, LogisticsBlock * 2);
		
val UnroutPipe = <logisticspipes:pipe_transport_basic>;
val PressurePipe = <pneumaticcraft:pressure_tube>;
	recipes.remove(UnroutPipe);
		mods.pneumaticcraft.assembly.addDrillRecipe(PressurePipe * 2, UnroutPipe);
		
val BasicChip = <logisticspipes:chip_basic>;
val CompressedIronPlate = <gregtech:meta_item_1:12478>;
val AnnealedCop = <gregtech:meta_item_2:16087>;
val Graph = <gregtech:meta_item_2:16204>;
val LvCircuit = <ore:circuitBasic>;
	recipes.remove(BasicChip);
	recipes.remove(<logisticspipes:chip_basic_raw>);
	furnace.remove(BasicChip, <logisticspipes:chip_basic_raw>);
		CircAssembler.recipeBuilder()
			.inputs(
				CompressedIronPlate,
				AnnealedCop * 8,
				Graph * 4,
				LvCircuit
				)
			.fluidInputs([<liquid:soldering_alloy> * 144])
			.outputs(BasicChip * 2)
			.duration(200)
			.EUt(64)
			.buildAndRegister();
			
val FPGA = <logisticspipes:chip_fpga>;
val RedAlloy = <gregtech:meta_item_2:16237>;
val RoseGold = <gregtech:meta_item_2:16228>;
val LapisBolt = <gregtech:meta_item_1:16216>;		
val TinyDiamond = <gregtech:meta_item_1:111>;	
	recipes.remove(FPGA);
	recipes.remove(<logisticspipes:chip_fpga_raw>);
	furnace.remove(FPGA, <logisticspipes:chip_fpga_raw>);
		CircAssembler.recipeBuilder()
			.inputs(
				CompressedIronPlate,
				RedAlloy * 16,
				RoseGold * 16,
				LapisBolt * 4,
				TinyDiamond,
				LvCircuit
				)
			.fluidInputs([<liquid:soldering_alloy> * 144])
			.outputs(FPGA * 2)
			.duration(400)
			.EUt(64)
			.buildAndRegister();
	
val AdvChip = <logisticspipes:chip_advanced>;
val MVCircuit = <ore:circuitGood>;	
val DiamondPlate = <gregtech:meta_item_1:12111>;
	recipes.remove(AdvChip);
	recipes.remove(<logisticspipes:chip_advanced_raw>);
	furnace.remove(AdvChip, <logisticspipes:chip_advanced_raw>);
		CircAssembler.recipeBuilder()
			.inputs(
				CompressedIronPlate,
				AnnealedCop * 32,
				Graph * 16,
				DiamondPlate,
				MVCircuit
				)
			.fluidInputs([<liquid:soldering_alloy> * 144])
			.outputs(AdvChip)
			.duration(600)
			.EUt(96)
			.buildAndRegister();
		
val ProgramTable = <logisticspipes:program_compiler>;
val Programmer = <pneumaticcraft:programmer>;
val PurplePlastic = <pneumaticcraft:plastic:5>;	
val CircBoard = <pneumaticcraft:printed_circuit_board>;
		recipes.remove(ProgramTable);
		recipes.addShaped(ProgramTable,
			[[PurplePlastic, Programmer, PurplePlastic],
			[FPGA, LogisticsBlock, FPGA],
			[CompressedIronPlate, CompressedIronPlate, CompressedIronPlate]]);			

val simplePCB = <stevescarts:modulecomponents:9>;
val Comparator = <minecraft:comparator>;
val SteelPlate = <gregtech:meta_item_1:12184>;
val IronPlate = <gregtech:meta_item_1:12033>;
val GoldBolt = <gregtech:meta_item_1:16026>;
val Lime = <ore:dyeLime>;
		recipes.remove(simplePCB);
		recipes.addShaped(simplePCB,
			[[Comparator, SteelPlate, Lime],
			[IronPlate, LvCircuit, IronPlate],
			[null, GoldBolt, Comparator]]);	
			
val EmptyDisk = <stevescarts:modulecomponents:28>;	
val Paper = <ore:paper>;
val CSteelPlate = <gtadditions:ga_meta_item:184>;		
		recipes.remove(EmptyDisk);
		recipes.addShaped(EmptyDisk,
			[[null, Paper, null],
			[CSteelPlate, simplePCB, CSteelPlate],
			[null, Paper, null]]);				

val LogDisk = <logisticspipes:disk>;
val BlackPlastic = <pneumaticcraft:plastic>;	
val VanadBolt = <gregtech:meta_item_1:16301>;		
		recipes.remove(LogDisk);
		recipes.addShaped(LogDisk,
			[[null, BlackPlastic, null],
			[BlackPlastic, EmptyDisk, BlackPlastic],
			[VanadBolt, GoldBolt, VanadBolt]]);					

val BlankModule = <logisticspipes:module_blank>;	
val PlasticBoard = <gregtech:meta_item_2:32448>;	
val GoldWire = <gregtech:meta_item_2:16026>;
val WhitePlastic = <pneumaticcraft:plastic:15>;	
		recipes.remove(BlankModule);
		recipes.addShaped(BlankModule,
			[[null, GoldWire, null],
			[WhitePlastic, PlasticBoard, null],
			[GoldBolt, null, null]]);	
						
val LogProg = <logisticspipes:logistics_programmer>;	
val CBlueSteel = <gtadditions:ga_meta_item:233>;
val BluePlastic = <pneumaticcraft:plastic:4>;		
		recipes.remove(LogProg);
		recipes.addShaped(LogProg,
			[[null, AdvChip, null],
			[CBlueSteel, FPGA, CBlueSteel],
			[BluePlastic, BlankModule, BluePlastic]]);			
			
val LogPowJunct = <logisticspipes:power_junction>;
val MvEnHatch = <gregtech:machine:724>;
val DenseAlum = <gregtech:meta_item_1:13001>;
	recipes.remove(LogPowJunct);
		assembler.recipeBuilder()
			.inputs(
			LogisticsBlock,
			MvEnHatch,
			FPGA * 4,
			DenseAlum * 4,
			CompressedIronPlate * 16
			)
			.outputs(LogPowJunct)
			.duration(1200)
			.EUt(64)
			.buildAndRegister();	

val LogReqTable = <logisticspipes:pipe_request_table>;		
val SteelChest = <gregtech:machine:803>;
val ReqvTwo = <logisticspipes:pipe_request_mk2>;
val CraftPipe = <logisticspipes:pipe_crafting>;	
	recipes.remove(LogReqTable);
		assembler.recipeBuilder()
			.inputs(
			LogisticsBlock,
			CircBoard * 4,
			AdvChip * 4,
			SteelChest,
			ReqvTwo,
			CraftPipe
			)
			.outputs(LogReqTable)
			.duration(2400)
			.EUt(64)
			.buildAndRegister();				
			
// Here we initiate the hell of all of these fucking moduels -Nyagi

val LimePlastic = <pneumaticcraft:plastic:10>;
val BrownPlastic = <pneumaticcraft:plastic:3>;

val ItemSink = <logisticspipes:module_item_sink>;			
	recipes.remove(ItemSink);		
			CircAssembler.recipeBuilder()
				.inputs(
					FPGA,
					GoldBolt * 4,
					BlankModule,
					LimePlastic,
					<immersiveengineering:wooden_device0:3>
					)
				.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_item_sink"})
				)
				.fluidInputs([<liquid:soldering_alloy> * 144])
				.outputs(ItemSink)
				.duration(100)
				.EUt(48)
				.buildAndRegister();
				
val PolyItemSink = <logisticspipes:module_item_sink_polymorphic>;
				val Observer = <minecraft:observer>;
	recipes.remove(PolyItemSink);		
			CircAssembler.recipeBuilder()
				.inputs(
					FPGA * 4,
					GoldBolt * 4,
					ItemSink,
					BrownPlastic,
					Observer
					)
				.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_item_sink_polymorphic"})
				)
				.fluidInputs([<liquid:soldering_alloy> * 144])
				.outputs(PolyItemSink)
				.duration(200)
				.EUt(64)
				.buildAndRegister();
			
val ExtractorI = <logisticspipes:module_extractor>;
	val MVConvayer = <gregtech:meta_item_1:32631>;
	recipes.remove(ExtractorI);		
			CircAssembler.recipeBuilder()
				.inputs(
					FPGA * 4,
					GoldBolt * 4,
					BlankModule,
					BluePlastic,
					MVConvayer
					)
				.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_extractor"})
				)
				.fluidInputs([<liquid:soldering_alloy> * 144])
				.outputs(ExtractorI)
				.duration(200)
				.EUt(64)
				.buildAndRegister();			
			
val ExtractorII = <logisticspipes:module_extractor_advanced>;
	val HVConvayer = <gregtech:meta_item_1:32632>;
	recipes.remove(ExtractorII);		
			CircAssembler.recipeBuilder()
				.inputs(
					FPGA * 4,
					GoldBolt * 4,
					ExtractorI,
					BluePlastic * 8,
					HVConvayer
					)
				.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_extractor_advanced"})
				)
				.fluidInputs([<liquid:soldering_alloy> * 144])
				.outputs(ExtractorII)
				.duration(600)
				.EUt(64)
				.buildAndRegister();			
			
			
			
			
			
			