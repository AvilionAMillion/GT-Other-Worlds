// GregTech Misc
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.roots.Mortar;
import mods.tconstruct.Drying;
import mods.roots.Fey;
import mods.inworldcrafting.FireCrafting;
import mods.gregtech.recipe.RecipeMap;
import mods.immersiveengineering.BottlingMachine;

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val packer as RecipeMap = RecipeMap.getByName("packer");

// Val
var softHammer = <ore:craftingToolSoftHammer>.firstItem.withEmptyTag();
val smallChest = <gregtech:machine:808>;
val stoneHammer = <gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "cobblestone"}});
var gregKnife = <ore:craftingToolKnife>.firstItem.withEmptyTag();
val brickForm = <gregtech:meta_item_2:32012>;
val gregMatch = <gregtech:meta_item_1:32471>;
val hardHammer = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();
val Seared_Brick = <tconstruct:seared:3>;
val Coke_Brick = <gregtech:metal_casing:8>;
val Coke_Controller = <gregtech:machine:526>;
val cokeBrick = <gregtech:meta_item_2:32016>;
val sandyClay = <contenttweaker:sandyclay>;
val cokeClay = <gtadditions:ga_meta_item:32036>;
val woodPlank = <gregtech:meta_item_1:12196>;
val firebrick = <gregtech:meta_item_2:32015>;
val concreteBucket = <forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000});
val LvExchanger = <contenttweaker:heatexchanger_lv>;
val LvPump = <gregtech:meta_item_1:32610>;
val tSteelPipe = <gregtech:fluid_pipe:184>;
val BTank = <gregtech:machine:812>;
val carpetBlack = <minecraft:carpet:15>;
val cableTin = <gregtech:cable:5071>;
val wireCopper = <gregtech:cable:18>;
val adobeBrick = <gregtechfoodoption:gtfo_meta_item:44>;
val adobeBricks = <gregtechfoodoption:gtfo_casing>;

// Crafting Table
	# Small Chest
	recipes.addShaped(smallChest,
		[[wood, plank, wood],
		[plank, softHammer, plank],
		[wood, plank, wood]]);
	# Cobblestone Hammer
	recipes.remove(stoneHammer);
	recipes.addShaped(stoneHammer,
		[[vanillaCobblestone, vanillaCobblestone, null],
		[vanillaCobblestone, vanillaCobblestone, stick],
		[vanillaCobblestone, vanillaCobblestone, null]]);
	# Wooden Brick Form
	recipes.remove(brickForm);
	recipes.addShapeless(brickForm,
		[gregKnife, <tconstruct:pattern>]);
	# Match
	recipes.addShapeless(gregMatch,
		[<roots:wildroot>, itemString, stick]);
	# Coke Oven Controller
	recipes.remove(Coke_Controller);
	recipes.addShaped(Coke_Controller,
		[[Coke_Brick, Seared_Brick,Coke_Brick], 
		[Seared_Brick,hardHammer,Seared_Brick],
		[Coke_Brick, Seared_Brick,Coke_Brick]]);
	# Coke Brick
	recipes.remove(Coke_Brick);
	recipes.addShaped(Coke_Brick * 2,
		[[cokeBrick, cokeBrick, cokeBrick],
		[cokeBrick, hardHammer, cokeBrick],
		[cokeBrick, cokeBrick, cokeBrick]]);
	# Coke Hatch
	recipes.remove(<gregtech:machine:527>);
	recipes.addShaped(<gregtech:machine:527>,
		[[Coke_Brick, glass, Coke_Brick],
		[glass, hardHammer, glass],
		[Coke_Brick, glass, Coke_Brick]]);
	# Iron Electric Motor Removal
	recipes.removeShaped(motorLV,
		[[cableTin, wireCopper, rodIron],
		[wireCopper, <gregtech:meta_item_1:14297>, wireCopper],
		[rodIron, wireCopper, cableTin]]);
	# Pre-LV Firebricks
	recipes.addShaped(<gregtech:metal_casing:1>,
		[[firebrick, <ore:dustGypsum>, firebrick],
		[firebrick, concreteBucket, firebrick],
		[firebrick, <ore:dustGypsum>, firebrick]]);
		
	recipes.addShaped(LvExchanger,
		[[BTank, tSteelPipe, null],
		[tSteelPipe, tSteelPipe, <minecraft:water_bucket>],
		[LvPump, null, null]]);
		
	assembler.recipeBuilder()
		.inputs
			(LvPump, 
			BTank, 
			tSteelPipe * 3)
		.fluidInputs([<liquid:water> * 1000])
		.outputs(LvExchanger * 1)
		.duration(200)
		.EUt(16)
		.buildAndRegister();
	recipes.remove(adobeBricks);
	recipes.addShaped(adobeBricks * 2,
		[[adobeBrick, adobeBrick, adobeBrick],
		[adobeBrick, hardHammer, adobeBrick],
		[adobeBrick, adobeBrick, adobeBrick]]);
	recipes.remove(<gregtech:machine:8516>);
	recipes.addShaped(<gregtech:machine:8516>,
		[[adobeBricks, adobeBricks, adobeBricks],
		[adobeBricks, hardHammer, adobeBricks],
		[adobeBricks, <ore:craftingFurnace>, adobeBricks]]);
	
		
// Fire Crafting
	# Coke Brick
		FireCrafting.addRecipe(cokeBrick, cokeClay, 180);
		
// Fey Crafting
	# Rubber Tree Sapling
		Fey.addRecipe("rubberTree", <gregtech:sapling>, [<ore:slimeball>, <ore:slimeball>, <roots:terra_spores>, <thaumcraft:sapling_greatwood>, <roots:wildroot>]);
		
// Cable Changes
	# Tin Cable 
recipes.remove(<gregtech:cable:5071>);
recipes.removeShapeless(<gregtech:cable:6071>,
	[<gregtech:cable:1071>, carpetBlack, carpetBlack, itemString]);
recipes.removeShapeless(<gregtech:cable:7071>, 
	[<gregtech:cable:2071>, carpetBlack, carpetBlack, carpetBlack, carpetBlack, itemString]);
	packer.findRecipe(8, [carpetBlack, <gregtech:cable:71>], null).remove();
	packer.findRecipe(8, [carpetBlack * 2, <gregtech:cable:1071>], null).remove();
	packer.findRecipe(8, [carpetBlack * 4, <gregtech:cable:2071>], null).remove();
	packer.findRecipe(8, [carpetBlack * 8, <gregtech:cable:3071>], null).remove();
	packer.findRecipe(8, [carpetBlack * 16, <gregtech:cable:4071>], null).remove();
	# Tin Cable Crafting Bottler
mods.immersiveengineering.BottlingMachine.addRecipe(<gregtech:cable:5071>, <gregtech:cable:71>, <liquid:rubber> * 288);
	
