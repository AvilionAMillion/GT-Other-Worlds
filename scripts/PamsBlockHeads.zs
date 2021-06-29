import mods.gregtech.recipe.RecipeMap;

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

val comb = <ore:beeComb>;
val wax = <harvestcraft:beeswaxitem>;
val hardLeather = <harvestcraft:hardenedleatheritem>;
val IronDoor = <minecraft:iron_door>;
val IronTDoor = <minecraft:iron_trapdoor>;
val wroIron = <ore:ingotWroughtIron>;
val wroIronPlate = <gregtech:meta_item_1:12197>;
val steelPlate = <gregtech:meta_item_1:12184>;
val steelScrew = <gregtech:meta_item_1:17184>;
val steelRing = <gregtech:meta_item_1:18184>;
val CSteel = <gtadditions:ga_meta_item:184>;
val tSteelPipe = <gregtech:fluid_pipe:184>;
val LSteelPipe = <gregtech:fluid_pipe:3184>;
val BTank = <gregtech:machine:812>;
val compWood = <gregtech:meta_item_1:12196>;
val treatedWood = <immersiveengineering:treated_wood>;
val tWoodSlab = <immersiveengineering:treated_wood_slab>;
val Chest = <minecraft:chest>;
val Drawer = <ore:drawerBasic>;
val SSlab = <minecraft:stone_slab>;
val HClay = <minecraft:hardened_clay>;
val treatedStick = <immersiveengineering:material>;
val treatedSlab = <immersiveengineering:treated_wood_slab>;
val cuttingBoard = <harvestcraft:cuttingboarditem>;
val clayBucket = <ceramics:clay_bucket>;
val pot = <harvestcraft:potitem>;
val skillet = <harvestcraft:skilletitem>;
val saucePan = <harvestcraft:saucepanitem>;
val tinRod = <gregtech:meta_item_1:14071>;
val tinPlate = <ore:plateTin>;
var hardHammer = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();
val bakeware = <harvestcraft:bakewareitem>;
val rMortar = <roots:mortar>;
val pestle = <roots:pestle>;
val grout = <tconstruct:soil>;
val pMortar = <harvestcraft:mortarandpestleitem>;
val bowl = <harvestcraft:mixingbowlitem>;
val knifeBlade = <actuallyadditions:item_misc:2>;
val juicer = <harvestcraft:juiceritem>;
val reinforcedStone = <sonarcore:reinforcedstoneblock>;
val redDye = <ore:dyeRed>;
val CBookI = <cookingforblockheads:recipe_book:1>;
val CBookII = <cookingforblockheads:recipe_book:2>;
val Timer = <darkutils:timer>;
val CStation = <gregtech:machine:825>;
val LvCircuit = <ore:circuitBasic>;
val LvArm = <gregtech:meta_item_1:32650>;
val LvPump = <gregtech:meta_item_1:32610>;
val LvExchanger = <contenttweaker:heatexchanger_lv>;
val Coil = <gregtech:meta_item_2:32456>;
val Resist = <gregtech:meta_item_2:32455>;
val xTwoCop = <gregtech:cable:6018>;
val xTwoRedAlloy = <gregtech:cable:1237>;
val LvMicro = <gregtech:machine:360>;
val LvGreen = <gregtech:machine:3211>;
val LvConv = <gregtech:machine:2909>;
val TcStation = <tconstruct:tooltables>;
val HGlass = <gtadditions:ga_transparent_casing>;
val Grate = <darkutils:grate>;
val Key = <storagedrawers:drawer_key>;
val Feeder = <railcraft:equipment:2>;
val HeatFrame= <pneumaticcraft:heat_frame>;
val CookTable = <cookingforblockheads:cooking_table>;
val Oven = <cookingforblockheads:oven>;
val Sink = <cookingforblockheads:sink>;
val Fridge = <cookingforblockheads:fridge>;
val ToolRack = <cookingforblockheads:tool_rack>;
val SpiceRack = <cookingforblockheads:spice_rack>;
val Toaster = <cookingforblockheads:toaster>;
val Counter = <cookingforblockheads:counter>;
val Cabinet = <cookingforblockheads:cabinet>;
val Basket = <cookingforblockheads:fruit_basket>;
val Corner = <cookingforblockheads:corner>;
val Jar = <cookingforblockheads:milk_jar>;
val Heater = <cookingforblockheads:heating_unit>;
val Icer = <cookingforblockheads:ice_unit>;
val Prever = <cookingforblockheads:preservation_chamber>;



// Wax from comb

	furnace.addRecipe(wax, comb, 1.5);
	
// Pam's tools
	
	recipes.remove(cuttingBoard);
	recipes.addShaped(cuttingBoard,
		[[null,null,wroIron],
		[hardLeather,wroIron,null],
		[treatedStick,compWood,compWood]]);
		
	recipes.remove(pot);
	recipes.addShaped(pot,
		[[null,null,null],
		[wroIron,clayBucket,wroIron],
		[null,wroIron,null]]);
		
	recipes.remove(skillet);
	recipes.addShaped(skillet,
		[[null,wroIron,wroIron],
		[hardLeather,wroIron,wroIron],
		[treatedStick,null,null]]);

	recipes.remove(saucePan);
	recipes.addShaped(saucePan,
		[[null,null,tinRod],
		[wroIron,wroIron,null],
		[wroIron,wroIron,null]]);

	recipes.remove(bakeware);
	recipes.addShaped(bakeware,
		[[null,null,null],
		[wroIron,hardHammer,wroIron],
		[wroIron,tinPlate,wroIron]]);		
			
	recipes.remove(pMortar);
	recipes.addShaped(pMortar,
		[[null,pestle,null],
		[grout,rMortar,grout],
		[grout,grout,grout]]);			
		
	recipes.remove(bowl);
	recipes.addShaped(bowl,
		[[null,null,treatedStick],
		[treatedWood,treatedStick,treatedWood],
		[treatedWood,treatedWood,treatedWood]]);			
		
	recipes.remove(juicer);
	recipes.addShaped(juicer,
		[[null,null,null],
		[null,knifeBlade,null],
		[wroIronPlate,wroIronPlate,wroIronPlate]]);	
		
		
// Crafting
	# Pam's Well
	recipes.remove(<harvestcraft:well>);
	recipes.addShaped(<harvestcraft:well>,
		[[hardHammer, <minecraft:bucket>, craftingToolFile],
		[<ore:plateIron>, reinforcedStone, <ore:plateIron>],
		[<ore:plateIron>, reinforcedStone, <ore:plateIron>]]);
		
	recipes.remove(CBookII);
	assembler.recipeBuilder()
		.inputs
			(CBookI, 
			LvCircuit, 
			redDye * 4, 
			<harvestcraft:southernstylebreakfastitem>, 
			<harvestcraft:meatfeastpizzaitem>, 
			<harvestcraft:thankfuldinneritem>, 
			<harvestcraft:koreandinneritem>, 
			<harvestcraft:gourmetvenisonburgeritem>, 
			<harvestcraft:cornedbeefbreakfastitem>)
		.fluidInputs([<liquid:blood_cells> * 4000])
		.outputs(CBookII * 1)
		.duration(3000)
		.EUt(32) 
		.buildAndRegister();
		
		recipes.remove(CookTable);
		recipes.addShaped(CookTable,
			[[SSlab,TcStation,SSlab],
			[HClay,CBookII,HClay],
			[HClay,LvArm,HClay]]);
			
		recipes.remove(Oven); 
		recipes.addShaped(Oven,
			[[Coil,steelPlate,Coil],
			[wroIronPlate,LvMicro,IronTDoor],
			[wroIronPlate,wroIronPlate,wroIronPlate]]);
				
		recipes.remove(Sink);
		recipes.addShaped(Sink,
			[[SSlab,null,SSlab],
			[HClay,BTank,HClay],
			[HClay,LSteelPipe,HClay]]);
			
	 	recipes.remove(Fridge);
	 	recipes.addShaped(Fridge,
	 			[[wroIronPlate,wroIronPlate,wroIronPlate],
	 			[LvExchanger,Chest,IronDoor],
	 			[xTwoCop,wroIronPlate,wroIronPlate]]);
				
		recipes.remove(Toaster);
		recipes.addShaped(Toaster,
			 	[[wroIronPlate,Coil,wroIronPlate],
			 	[wroIronPlate,Coil,wroIronPlate],
			 	[Timer,Resist,wroIronPlate]]);
				
	 	recipes.remove(SpiceRack);
	 	recipes.addShaped(SpiceRack,
	 			[[null,<ore:craftingToolScrewdriver>.firstItem.withEmptyTag(),null],
	 			[treatedSlab,treatedSlab,treatedSlab],
	 			[steelScrew,null,steelScrew]]);	
				
	 	recipes.remove(ToolRack);
	 	recipes.addShaped(ToolRack,
	 			[[steelScrew,null,steelScrew],
	 			[treatedSlab,treatedSlab,treatedSlab],
	 			[null,<ore:craftingToolScrewdriver>.firstItem.withEmptyTag(),null]]);
				
	 	recipes.remove(Counter);
	 	recipes.addShaped(Counter,
	 			[[SSlab,SSlab,SSlab],
	 			[HClay,Chest,steelRing],
	 			[HClay,wroIronPlate,HClay]]);				
				
	 	recipes.remove(Cabinet);
	 	recipes.addShaped(Cabinet,
	 			[[steelScrew,wroIronPlate,steelScrew],
	 			[HClay,Chest,steelRing],
	 			[HClay,HClay,HClay]]);				
		
	 	recipes.remove(Basket);
	 	recipes.addShaped(Basket,
	 			[[null,null,null],
	 			[null,wax,null],
	 			[treatedWood,tWoodSlab,treatedWood]]);
				
	 	recipes.remove(Corner);
	 	recipes.addShaped(Corner,
	 			[[SSlab,SSlab,SSlab],
	 			[HClay,HClay,HClay],
	 			[HClay,HClay,HClay]]);
				
	 	recipes.remove(Jar);
	 	recipes.addShaped(Jar,
	 			[[HGlass,Grate,HGlass],
	 			[HGlass,Feeder,LvGreen],
	 			[HGlass,LvPump,HGlass]]);
				
	 	recipes.remove(Heater);
	 	recipes.addShaped(Heater,
	 			[[Coil,Coil,LvCircuit],
	 			[xTwoRedAlloy,xTwoRedAlloy,LvConv],
	 			[null,CSteel,CSteel]]);
				
	 	recipes.remove(Icer);
	 	recipes.addShaped(Icer,
	 			[[Fridge,CSteel,LvCircuit],
	 			[CSteel,HeatFrame,LSteelPipe],
	 			[tSteelPipe,tSteelPipe,null]]);
				
	 	recipes.remove(Prever);
	 	recipes.addShaped(Prever,
	 			[[Drawer,CSteel,null],
	 			[null,LvCircuit,CSteel],
	 			[null,CSteel,Key]]);
		
		