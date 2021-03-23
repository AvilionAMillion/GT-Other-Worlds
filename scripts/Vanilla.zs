// Vanilla
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.inworldcrafting.FireCrafting;

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

// Crafting Table
	# Crafting Table
		recipes.remove(vanillaWorkbench);
		recipes.addShaped(vanillaWorkbench, 
			[[rootsBark, rootsBark], 
			[wood, wood]]);
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

// Burning
	FireCrafting.addRecipe(<minecraft:glass>, <contenttweaker:glassy_sand>, 200);