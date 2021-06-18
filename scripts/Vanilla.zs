// Vanilla
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.inworldcrafting.FireCrafting;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

// Val
val rootsBark = <ore:rootsBark>;
val vanillaWorkbench = <minecraft:crafting_table>;
val stone = <minecraft:stone>;
val wool = <ore:wool>;
val bed = <minecraft:bed>;
val oreBed = <ore:bed>;
var softHammer = <ore:craftingToolSoftHammer>.firstItem.withEmptyTag();
var chest = <minecraft:chest>;
var treated_plank = <immersiveengineering:treated_wood>;
var bronze = <ore:ingotBronze>;
var bronze_ring = <gregtech:meta_item_1:18095>;
var bronze_longrod = <gregtech:meta_item_2:19095>;
var chest_lock = <stevescarts:modulecomponents:33>;
var ironScrew = <gregtech:meta_item_1:17033>;
var redAlloyWire = <gregtech:cable:237>;
val ironRod = <ore:stickIron>;
var blockIron = <minecraft:iron_block>;
var curvedIron = <ore:plateCurvedIron>;

val oreDictFurnace = <ore:furnaceBlock>;

// Crafting Table
	# Crafting Table
		recipes.remove(vanillaWorkbench);
		recipes.addShaped(vanillaWorkbench, 
			[[rootsBark, rootsBark], 
			[wood, wood]]);
		recipes.addShaped(vanillaWorkbench,
			[[treated_plank, treated_plank],
			[treated_plank, treated_plank]]);
	# Furnace
		recipes.remove(<minecraft:furnace>);
	# Bed
		recipes.remove(oreBed);
		recipes.addShaped(bed,
		[[wool, wool, wool],
		[plank, plank, plank],
		[stick, softHammer, stick]]);
		
	# Chest
		recipes.remove(chest_lock * 8);
		recipes.addShaped(chest_lock,
		[[stone,null,null],
		[bronze,null,null],
		[null,null,null]]);
		
		recipes.remove(chest);
		recipes.addShaped(chest,
		[[treated_plank,treated_plank,treated_plank],
		[bronze_ring, bronze_longrod, chest_lock],
		[treated_plank,treated_plank,treated_plank]]);
	# Piston
		recipes.remove(<minecraft:piston>);
		recipes.addShaped(<minecraft:piston>,
			[[treated_plank, treated_plank, treated_plank],
			[ironScrew, redAlloyWire, ironScrew],
			[stone, hardHammer, stone]]);
	# Iron Bars
		recipes.remove(<minecraft:iron_bars>);
		recipes.addShaped(<minecraft:iron_bars> * 2,
			[[null, craftingToolWrench, null],
			[ironRod, ironRod, ironRod],
			[ironRod, ironRod, ironRod]]);
	# Anvil
		recipes.remove(<minecraft:anvil>);
		recipes.addShaped(<minecraft:anvil>,
			[[blockIron, blockIron, blockIron],
			[hardHammer, plateIron, craftingToolFile],
			[curvedIron, plateIron, curvedIron]]);
	# Glass Pane Removal
		recipes.remove(<minecraft:glass_pane>);
		// NEED TO FIX TO REMOVE ALL GLASS PANE RECIPES

// Furnace
	# Charcoal
		furnace.remove(<minecraft:coal:1>);
		furnace.remove(glass);
		furnace.addRecipe(<minecraft:glass>, <contenttweaker:glassy_sand>);
		
// Furnace OreDict
	recipes.replaceAllOccurences(<minecraft:furnace>, <ore:furnaceBlock>);
	oreDictFurnace.add(<tconstruct:seared_furnace_controller>);

// Burning
	FireCrafting.addRecipe(<minecraft:glass>, <contenttweaker:glassy_sand>, 200);
	FireCrafting.addRecipe(<minecraft:brick>, <gregtech:meta_item_2:32013>, 120);