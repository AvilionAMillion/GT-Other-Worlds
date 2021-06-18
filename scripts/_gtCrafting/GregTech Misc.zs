// GregTech Misc
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.roots.Mortar;
import mods.tconstruct.Drying;
import mods.roots.Fey;
import mods.inworldcrafting.FireCrafting;

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
	# Wooden Tank
	recipes.remove(<gregtech:machine:811>);
	recipes.addShaped(<gregtech:machine:811>,
		[[woodPlank, glass, woodPlank],
		[glass, null, glass],
		[woodPlank, glass, woodPlank]]);
	# Pre-LV Firebricks
	recipes.addShaped(<gregtech:metal_casing:1>,
		[[firebrick, <ore:dustGypsum>, firebrick],
		[firebrick, concreteBucket, firebrick],
		[firebrick, <ore:dustGypsum>, firebrick]]);
		
// Fire Crafting
	# Coke Brick
		FireCrafting.addRecipe(cokeBrick, cokeClay, 180);
		
// Fey Crafting
	# Rubber Tree Sapling
		Fey.addRecipe("rubberTree", <gregtech:sapling>, [<ore:slimeball>, <ore:slimeball>, <botania:overgrowthseed>, <thaumcraft:sapling_greatwood>, <roots:wildroot>]);
		
