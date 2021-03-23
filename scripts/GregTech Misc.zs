// GregTech Misc
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.roots.Mortar;
import mods.tconstruct.Drying;

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
	# Compressed Coke Clay
	recipes.remove(cokeClay);
	recipes.addShapeless(cokeClay,
		[brickForm, sandyClay]);
	recipes.addShaped(cokeClay * 8,
		[[sandyClay, sandyClay, sandyClay],
		[sandyClay, brickForm, sandyClay],
		[sandyClay, sandyClay, sandyClay]]);
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
		
// Drying
	# Coke Brick
		mods.tconstruct.Drying.addRecipe(cokeBrick, cokeClay, 1200);