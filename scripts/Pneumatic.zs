import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.pneumaticcraft.pressurechamber;

val CompIronPlate = <gregtech:meta_item_1:12478>;
val CurvCompIronPlate = <gtadditions:ga_meta_item:478>;
val BSteelPlate = <gregtech:meta_item_1:12231>;
val AlumFrame = <gregtech:frame_aluminium>;
val RubRing = <gregtech:meta_item_1:18152>;
val LSteelPipe = <gregtech:fluid_pipe:3184>;
val SteelSGear = <gregtech:meta_item_2:17184>;
val LvConv = <gregtech:meta_item_1:32630>;
val MVPiston = <gregtech:meta_item_1:32641>;
val ReinfGlass = <gtadditions:ga_transparent_casing>;
val Hopper = <minecraft:hopper>;
val FineAlum = <gregtech:meta_item_2:16001>;
val FineMalg = <gregtech:meta_item_2:16129>;
val FineRoseGold = <gregtech:meta_item_2:16228>;

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

val PlasticBoard = <gregtech:meta_item_2:32448>;

val GreenPlastic = <pneumaticcraft:plastic:2>;
val BluePlastic = <pneumaticcraft:plastic:4>;
val YellowPlastic = <pneumaticcraft:plastic:11>;
val GreyPlastic = <pneumaticcraft:plastic:8>;

val PressurePipe = <pneumaticcraft:pressure_tube>;
val PressureWall = <pneumaticcraft:pressure_chamber_wall>;
val PressureGlass = <pneumaticcraft:pressure_chamber_glass>;
val PressureInt = <pneumaticcraft:pressure_chamber_interface>;
val PressureValve = <pneumaticcraft:pressure_chamber_valve>;
val OmniHopper = <pneumaticcraft:omnidirectional_hopper>;

val Capacitor = <pneumaticcraft:capacitor>;
val Transistor = <pneumaticcraft:transistor>;
val EmptyPCB = <pneumaticcraft:empty_pcb:100>;
val EtchingAcid = <forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000});

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
		
		
		
		
		
		
		
		
		
		
		
		
		