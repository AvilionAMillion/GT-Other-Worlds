import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.pneumaticcraft.pressurechamber;
import mods.gregtech.recipe.RecipeMap;

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

val CompIronPlate = <gregtech:meta_item_1:12478>;
val CurvCompIronPlate = <gtadditions:ga_meta_item:478>;
val CurvBronzePlate = <gtadditions:ga_meta_item:95>;
val CurvBlueSteel = <gtadditions:ga_meta_item:233>;
val BSteelPlate = <gregtech:meta_item_1:12231>;
val AlumFrame = <gregtech:frame_aluminium>;
val RubRing = <gregtech:meta_item_1:18152>;
val LSteelPipe = <gregtech:fluid_pipe:3184>;
val SteelStick = <gregtech:meta_item_1:14184>;
val SteelSGear = <gregtech:meta_item_2:17184>;
val LvConv = <gregtech:meta_item_1:32630>;
val LvCircuit = <ore:circuitBasic>;
val LvMotor = <gregtech:meta_item_1:32600>;
val MVMotor = <gregtech:meta_item_1:32601>;
val MVPiston = <gregtech:meta_item_1:32641>;
val ReinfGlass = <gtadditions:ga_transparent_casing>;
val Hopper = <minecraft:hopper>;
val FineAlum = <gregtech:meta_item_2:16001>;
val FineMalg = <gregtech:meta_item_2:16129>;
val FineRoseGold = <gregtech:meta_item_2:16228>;
val FineGraphWire = <gregtech:meta_item_2:16204>;
val FineCopperWire = <gregtech:meta_item_2:16018>;
val AluminWire = <gregtech:cable:5001>;
val Screen = <rftools:screen>;
val GlassPlate = <gregtech:meta_item_1:12209>;
val BoroPlate = <gregtech:meta_item_1:12364>;
val VanadiumPlate = <gregtech:meta_item_1:12301>;

val MicroSMDCap = <gregtech:meta_item_2:32458>;
val RefSMDCap = <gtadditions:ga_meta_item:32242>;
val NanoSMDCap = <gtadditions:ga_meta_item:32246>;
val CrystSMDCap = <gtadditions:ga_meta_item:32249>;
val QuantSMDCap = <gtadditions:ga_meta_item:32253>;

val MicroSMDTrans = <gregtech:meta_item_2:32460>;
val RefSMDTrans = <gtadditions:ga_meta_item:32240>;
val NanoSMDTrans = <gtadditions:ga_meta_item:32244>;
val QuantSMDTrans = <gtadditions:ga_meta_item:32252>;
val CrystSMDTrans = <gtadditions:ga_meta_item:32248>;

val Resistor =<gregtech:meta_item_2:32455>;

val PlasticBoard = <gregtech:meta_item_2:32448>;
val CircBoard = <pneumaticcraft:printed_circuit_board>;

val GreenPlastic = <pneumaticcraft:plastic:2>;
val BluePlastic = <pneumaticcraft:plastic:4>;
val RedPlastic = <pneumaticcraft:plastic:1>;
val YellowPlastic = <pneumaticcraft:plastic:11>;
val GreyPlastic = <pneumaticcraft:plastic:8>;
val OrangePlastic = <pneumaticcraft:plastic:14>;

val PressurePipe = <pneumaticcraft:pressure_tube>;
val PressureWall = <pneumaticcraft:pressure_chamber_wall>;
val PressureGlass = <pneumaticcraft:pressure_chamber_glass>;
val PressureInt = <pneumaticcraft:pressure_chamber_interface>;
val PressureValve = <pneumaticcraft:pressure_chamber_valve>;
val OmniHopper = <pneumaticcraft:omnidirectional_hopper>;
val UVBox = <pneumaticcraft:uv_light_box>;
val PCBBlueprint = <pneumaticcraft:pcb_blueprint>;

val Capacitor = <pneumaticcraft:capacitor>;
val Transistor = <pneumaticcraft:transistor>;
val EmptyPCB = <pneumaticcraft:empty_pcb:100>;
val EtchingAcid = <forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000});

val Bulb = <immersiveengineering:toolupgrade:10>;
val GlassTube = <gregtech:meta_item_2:32454>;

val AssCont = <pneumaticcraft:assembly_controller>;
val AssIO = <pneumaticcraft:assembly_io_unit>;
val AssDrill = <pneumaticcraft:assembly_drill>;
val AssLaser = <pneumaticcraft:assembly_laser>;
val AssPlatform = <pneumaticcraft:assembly_platform>;
val Programmer = <pneumaticcraft:programmer>;
val CanBar = <pneumaticcraft:cannon_barrel>;
val Pneumatic = <pneumaticcraft:pneumatic_cylinder>;
val AlumDrill = <gregtech:meta_item_2:8001>;
val MVLaser = <gregtech:machine:431>;

val TurbineBlade = <pneumaticcraft:turbine_rotor>;

		recipes.remove(PressurePipe);
		recipes.addShaped(PressurePipe * 2,
			[[CurvCompIronPlate, RubRing, null],
			[null, LSteelPipe, null],
			[null, RubRing, CurvCompIronPlate]]);
			
		recipes.remove(PressureWall);
		recipes.addShaped(PressureWall * 4,
			[[CompIronPlate, BSteelPlate, CompIronPlate],
			[BSteelPlate, AlumFrame, BSteelPlate],
			[CompIronPlate, BSteelPlate, CompIronPlate]]);
			
		recipes.remove(PressureInt);
		recipes.addShaped(PressureInt,
			[[CompIronPlate, CompIronPlate, CompIronPlate],
			[BSteelPlate, AlumFrame, BSteelPlate],
			[MVPiston, SteelSGear, MVPiston]]);
			
		recipes.remove(PressureGlass);
		recipes.addShaped(PressureGlass,
			[[null, ReinfGlass, null],
			[null, PressureWall, null],
			[null, null, null]]);
			
		recipes.remove(PressureValve);
		recipes.addShaped(PressureValve,
			[[CompIronPlate, BSteelPlate, CompIronPlate],
			[PressurePipe, PressurePipe, PressurePipe],
			[CompIronPlate, BSteelPlate, CompIronPlate]]);
			
		recipes.remove(OmniHopper);
		recipes.addShaped(OmniHopper,
			[[CompIronPlate, LvConv, CompIronPlate],
			[CompIronPlate, Hopper, CompIronPlate],
			[null, CompIronPlate, null]]);	
			
		recipes.remove(Bulb);
		recipes.addShaped(Bulb,
			[[null, GlassTube, null],
			[null, FineGraphWire, null],
			[CurvBronzePlate, Resistor, CurvBronzePlate]]);
			
		recipes.remove(UVBox);
		recipes.addShaped(UVBox,
			[[Bulb, AluminWire, MVMotor],
			[PCBBlueprint, null, PressurePipe],
			[CompIronPlate, CompIronPlate, CompIronPlate]]);
			
		recipes.remove(Screen);
		recipes.addShaped(Screen,
			[[LvCircuit, GlassPlate, null],
			[Bulb, BoroPlate, null],
			[FineCopperWire, GlassPlate, null]]);
			
		recipes.remove(AssCont);
		recipes.addShaped(AssCont,
			[[null, Screen, null],
			[null, LvMotor, PressurePipe],
			[CompIronPlate, CircBoard, CompIronPlate]]);
			
		recipes.remove(CanBar);
		recipes.addShaped(CanBar,
			[[CurvCompIronPlate, null, CurvCompIronPlate],
			[CurvCompIronPlate, PressurePipe, CurvCompIronPlate],
			[CurvCompIronPlate, null, CurvCompIronPlate]]);
			
		recipes.remove(Pneumatic);
		recipes.addShaped(Pneumatic,
			[[null, CanBar, BluePlastic],
			[CurvBlueSteel, PressurePipe, CurvBlueSteel],
			[BluePlastic, CanBar, null]]);
			
		recipes.remove(AssIO);
		recipes.addShaped(AssIO,
			[[MVMotor, Pneumatic, Pneumatic],
			[null, OrangePlastic, Pneumatic],
			[CompIronPlate, CircBoard, CompIronPlate]]);
			
		recipes.remove(AssDrill);
		recipes.addShaped(AssDrill,
			[[AlumDrill, Pneumatic, Pneumatic],
			[null, OrangePlastic, Pneumatic],
			[CompIronPlate, CircBoard, CompIronPlate]]);
			
		recipes.remove(AssLaser);
		recipes.addShaped(AssLaser,
			[[MVLaser, Pneumatic, Pneumatic],
			[null, OrangePlastic, Pneumatic],
			[CompIronPlate, CircBoard, CompIronPlate]]);
			
		recipes.remove(AssPlatform);
		recipes.addShaped(AssPlatform,
			[[OrangePlastic, OrangePlastic, OrangePlastic],
			[Pneumatic, null, Pneumatic],
			[CompIronPlate, CircBoard, CompIronPlate]]);
			
		recipes.remove(Programmer);
		recipes.addShaped(Programmer,
			[[VanadiumPlate, Screen, VanadiumPlate],
			[CompIronPlate, CircBoard, CompIronPlate],
			[CompIronPlate, TurbineBlade, CompIronPlate]]);
		
			
			
val AirTankEmpt = <pneumaticcraft:air_canister:30000>;
val Valve = <pneumaticcraft:safety_tube_module>;
val HPBT = <railcraft:boiler_tank_pressure_high>;
		recipes.remove(AirTankEmpt);
		recipes.addShaped(AirTankEmpt,
			[[null, Valve, null],
			[CurvCompIronPlate, HPBT, CurvCompIronPlate],
			[null, null, null]]);
		
val ScrewdriverEmpt = <pneumaticcraft:pneumatic_wrench:30000>;
val Button = <minecraft:stone_button>;
		recipes.remove(ScrewdriverEmpt);
		recipes.remove(<pneumaticcraft:pneumatic_wrench>);
		recipes.addShaped(ScrewdriverEmpt,
			[[LvMotor, SteelStick, SteelStick],
			[AirTankEmpt, OrangePlastic, Button],
			[CurvCompIronPlate, OrangePlastic, null]]);
			
		mods.pneumaticcraft.pressurechamber.removeRecipe([Capacitor]);
		mods.pneumaticcraft.pressurechamber.addRecipe
		([MicroSMDCap,
		FineAlum * 4,
		CompIronPlate,
		BluePlastic],
		 2.5,[Capacitor]);
		 
		mods.pneumaticcraft.pressurechamber.addRecipe
		([RefSMDCap,
		FineAlum * 4,
		CompIronPlate,
		BluePlastic],
		 3.0,[Capacitor * 2]);
		 
 		mods.pneumaticcraft.pressurechamber.addRecipe
 		([NanoSMDCap,
 		FineAlum * 4,
 		CompIronPlate,
 		BluePlastic],
 		 3.5,[Capacitor * 4]);
		 
 		mods.pneumaticcraft.pressurechamber.addRecipe
 		([QuantSMDCap,
 		FineAlum * 4,
 		CompIronPlate,
 		BluePlastic],
 		 4.0,[Capacitor * 8]);
		 
 		mods.pneumaticcraft.pressurechamber.addRecipe
 		([CrystSMDCap,
 		FineAlum * 4,
 		CompIronPlate,
 		BluePlastic],
 		 4.5,[Capacitor * 16]);
		 
		mods.pneumaticcraft.pressurechamber.removeRecipe([Transistor]);
		mods.pneumaticcraft.pressurechamber.addRecipe
		([MicroSMDTrans,
		FineMalg * 4,
		CompIronPlate,
		GreyPlastic],
		 2.5,[Transistor]);
		 
		mods.pneumaticcraft.pressurechamber.addRecipe
		([RefSMDTrans,
		FineMalg * 4,
		CompIronPlate,
		GreyPlastic],
		 3.0,[Transistor * 2]);
		 
		mods.pneumaticcraft.pressurechamber.addRecipe
		([NanoSMDTrans,
		FineMalg * 4,
		CompIronPlate,
		GreyPlastic],
		 3.5,[Transistor * 4]);
		 
		mods.pneumaticcraft.pressurechamber.addRecipe
		([QuantSMDTrans,
		FineMalg * 4,
		CompIronPlate,
		GreyPlastic],
		 4.0,[Transistor * 8]);
		 
		mods.pneumaticcraft.pressurechamber.addRecipe
		([CrystSMDTrans,
		FineMalg * 4,
		CompIronPlate,
		GreyPlastic],
		 4.5,[Transistor * 16]);
		 
		mods.pneumaticcraft.pressurechamber.removeRecipe([EmptyPCB]);
		mods.pneumaticcraft.pressurechamber.addRecipe
		([GreenPlastic,
		YellowPlastic,
		PlasticBoard,
		FineRoseGold * 4],
		 4.25,[EmptyPCB]);
		 
		mods.pneumaticcraft.pressurechamber.removeRecipe([EtchingAcid]);
		mods.pneumaticcraft.pressurechamber.addRecipe
		([<forge:bucketfilled>.withTag({FluidName: "iron_chloride", Amount: 1000}),
		<gregtech:meta_item_1:2065>*4,
		<gregtech:meta_item_1:2333>*4,
		<thaumcraft:brain>,
		<minecraft:blaze_powder>],
		 3,[EtchingAcid]);
		 		 
val Blade = <pneumaticcraft:turbine_blade>;
val RedSteelPlate = <gregtech:meta_item_1:12232>;		
 		mods.pneumaticcraft.pressurechamber.removeRecipe([Blade]);
 		mods.pneumaticcraft.pressurechamber.addRecipe
 		([RedPlastic * 6,
 		RedSteelPlate],
 		 4.75,[Blade * 3]);
		 
    recipes.remove(TurbineBlade);
	assembler.recipeBuilder()
		.inputs(
		Blade * 3,
		VanadiumPlate)
		.fluidInputs([<liquid:plastic> * 500])
		.outputs(TurbineBlade * 1)
		.duration(200)
		.EUt(64)
		.buildAndRegister();
		
		
		
		
		
		
		
		
		
		
		