// Tinker's Construct
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.roots.Bark;
import mods.roots.Mortar;
import mods.inworldcrafting.FluidToItem;
import mods.tconstruct.Drying;
import mods.inworldcrafting.FireCrafting;

// Val
val stoneShard = <tconstruct:shard>.withTag({Material: "stone"});
val blankPattern = <tconstruct:pattern>;
val dustWood = <gregtech:meta_item_1:2196>;
val rootsBark = <ore:rootsBark>;
val grout = <tconstruct:soil>;
val clayDust = <gregtech:meta_item_1:2105>;
val unfiredSearedBrick = <contenttweaker:unfired_searedbrick>;
val searedBrick = <tconstruct:materials>;
val searedBricks = <tconstruct:seared:3>;
val stencilTable = <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}});
val partBuilder = <tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}});
val dryingRack = <tconstruct:rack:1>.withTag({textureBlock: {id: "minecraft:wooden_slab", Count: 1 as byte, Damage: 0 as short}});
var softHammer = <ore:craftingToolSoftHammer>.firstItem.withEmptyTag();
var hardHammer = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();
val unfiredClay = <ceramics:unfired_clay>;
val clayBucket = <ceramics:clay_bucket>;
var gregMortar = <ore:craftingToolMortar>.firstItem.withEmptyTag();
val smelteryController = <tconstruct:smeltery_controller>;

// Crafting Table
	# Blank Pattern
		recipes.remove(blankPattern);
		recipes.addShaped(blankPattern,
		[[stick, plank, stick],
		[plank, dustWood, plank],
		[stick, plank, stick]]);
	# Tool Station
		recipes.remove(<tconstruct:tooltables:3>);
		recipes.addShaped(<tconstruct:tooltables:3>, 
			[[plank, blankPattern, plank],
			[stick, <ore:workbench>, stick],
			[stick, softHammer, stick]]);
	# Pattern Chest
		recipes.remove(<tconstruct:tooltables:4>);
		recipes.addShaped(<tconstruct:tooltables:4>,
			[[plank, blankPattern, plank],
			[stick, <gregtech:machine:808>, stick],
			[stick, softHammer, stick]]);
	# Part Builder
		recipes.remove(<tconstruct:tooltables:2>);
		recipes.addShaped(partBuilder,
			[[stick, blankPattern, stick],
			[wood, stick, wood],
			[wood, softHammer, wood]]);
	# Stencil Table
		recipes.remove(<tconstruct:tooltables:1>);
		recipes.addShaped(stencilTable,
			[[stick, blankPattern, stick],
			[plank, stick, plank],
			[plank, softHammer, plank]]);
	# Drying Rack
		recipes.remove(<tconstruct:rack:1>);
		recipes.addShaped(dryingRack,
			[[rootsBark, rootsBark, rootsBark],
			[itemString, hardHammer, itemString],
			[rootsBark, rootsBark, rootsBark]]);
	# Grout
		recipes.addShapeless(grout * 2,
			[clayDust, sand, gravel, gregMortar]);

// Seared Items
	# Seared Bricks
		recipes.remove(searedBricks);
		recipes.addShaped(searedBricks * 2,
			[[searedBrick, searedBrick, searedBrick],
			[searedBrick, hardHammer, searedBrick],
			[searedBrick, searedBrick, searedBrick]]);
	# Seared Furnace Controller
		recipes.remove(<tconstruct:seared_furnace_controller>);
		recipes.addShaped(<tconstruct:seared_furnace_controller>,
			[[searedBricks, searedBrick, searedBricks],
			[searedBrick, hardHammer, searedBrick],
			[searedBricks, searedBrick, searedBricks]]);
	# Smeltery Controller
		recipes.remove(smelteryController);
		recipes.addShaped(smelteryController,
			[[searedBricks, searedBrick, searedBricks],
			[<ore:plateCopper>, hardHammer, <ore:plateCopper>],
			[searedBricks, searedBrick, searedBricks]]);
			
// Clay Bucket
	# Unfired Clay Bucket
		recipes.remove(unfiredClay);
		recipes.addShaped(unfiredClay,
		[[null, null, null],
		[clayDust, null, clayDust],
		[clayDust, clayDust, clayDust]]);
	# Fired Clay Bucket
		FireCrafting.addRecipe(clayBucket, unfiredClay, 80);

// Bark Cutting
	# Stone Shard
		Bark.addRecipe("stone", gravel, stoneShard);
		
// InWorldCrafting
	# Grout
		recipes.remove(grout);
		FluidToItem.transform(grout * 4, <fluid:water>, [gravel * 2, sand * 2, clayDust * 2], true);
		
// Drying Rack
	# Seared Brick
		mods.tconstruct.Drying.addRecipe(searedBrick, unfiredSearedBrick, 3000);
		
		