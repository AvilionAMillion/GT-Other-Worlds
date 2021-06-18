val comb = <ore:beeComb>;
val wax = <harvestcraft:beeswaxitem>;
val hardLeather = <harvestcraft:hardenedleatheritem>;
val wroIron = <ore:ingotWroughtIron>;
val wroIronPlate = <gregtech:meta_item_1:12197>;
val compWood = <gregtech:meta_item_1:12196>;
val treatedWood = <immersiveengineering:treated_wood>;
val treatedStick = <immersiveengineering:material>;
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
		
		
		
		
		