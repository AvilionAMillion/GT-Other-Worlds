// Tinkers
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.tconstruct.Drying;

// Val
val basicPickaxe = <tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 190, HarvestLevel: 1, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 190, HarvestLevel: 1, Attack: 2.9 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color:  16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val basicAxe = <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 190, HarvestLevel: 1, Attack: 3.4 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 190, HarvestLevel: 1, Attack: 3.4 as float}, Special: {Categories: ["harvest", "aoe", "tool", "weapon"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color:  16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val basicShovel = <tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 190, HarvestLevel: 1, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 190, HarvestLevel: 1, Attack: 2.9 as float}, Special: {Categories: ["harvest", "aoe", "tool"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color:  16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val blankPattern = <tconstruct:pattern>;
val artHammer = <ore:artisansHammer>;
val artSaw = <ore:artisansHandsaw>;
val ticGrout = <tconstruct:soil>;
val clay = <minecraft:clay_ball>;
val sand = <minecraft:sand>;
val gravel = <minecraft:gravel>;
val artMortar = <ore:artisansMortar>;
val woodBinding = <tconstruct:binding>.withTag({Material: "wood"});
val artFile = <ore:artisansFile>;
val stick = <minecraft:stick>;
val flintPick = <tconstruct:pick_head>.withTag({Material: "flint"});
val flintAxe = <tconstruct:axe_head>.withTag({Material: "flint"});
val flintShovel = <tconstruct:shovel_head>.withTag({Material: "flint"});
val flint = <minecraft:flint>;
val unfiredSearedBrick = <contenttweaker:unfired_searedbrick>;
val searedBrick = <tconstruct:materials>;
val woodSlab = <ore:slabWood>;
val searedBricks = <tconstruct:seared:3>;
val searedTank = <tconstruct:seared_tank>;
val searedFurnace = <tconstruct:seared_furnace_controller>;
val flintKit = <tconstruct:sharpening_kit>.withTag({Material: "flint"});

mods.jei.JEI.addItem(basicPickaxe);
mods.jei.JEI.addItem(basicAxe);
mods.jei.JEI.addItem(basicShovel);

// Removal
recipes.remove(blankPattern);
recipes.remove(ticGrout);
recipes.remove(<tconstruct:tooltables:*>);
recipes.remove(searedBricks);
furnace.remove(searedBrick);
recipes.remove(searedTank);
recipes.remove(searedFurnace);

// Basic Worktable
 # Blank Pattern
RecipeBuilder.get("basic")
	.setShapeless(
		[woodSlab])
	.addTool(artSaw, 5)
	.addOutput(blankPattern)
.create();
 # Drying Rack
RecipeBuilder.get("basic")
	.setShaped([
		[null, null, null],
		[woodSlab, woodSlab, woodSlab],
		[null, null, null]])
	.addTool(artSaw, 15)
	.addOutput(<tconstruct:rack:1>)
.create();

// Mason Worktable
 # Grout
RecipeBuilder.get("mason")
	.setShapeless(
		[clay, sand, gravel])
	.addTool(artMortar, 2)
	.addOutput(ticGrout)
.create();
 # Wood Binding
RecipeBuilder.get("mason")
	.setShapeless(
		[<ore:plankWood>])
	.addTool(artFile, 15)
	.addOutput(woodBinding)
.create();
 # Flint Pickaxe Head
RecipeBuilder.get("mason")
	.setShaped([
		[flint, flint, flint]])
	.addTool(artHammer, 10)
	.addOutput(flintPick)
.create();
 # Flint Axe Head
RecipeBuilder.get("mason")
	.setShaped([
		[flint, flint]])
	.addTool(artHammer, 10)
	.addOutput(flintAxe)
.create();
 # Flint Shovel Head
RecipeBuilder.get("mason")
	.setShaped([
		[flint],
		[flint]])
	.addTool(artHammer, 10)
	.addOutput(flintShovel)
.create();
 # Basic Pickaxe
RecipeBuilder.get("mason")
	.setShapeless(
		[stick, woodBinding, flintPick])
	.addTool(artHammer, 55)
	.addOutput(basicPickaxe)
.create();
 # Basic Axe
RecipeBuilder.get("mason")
	.setShapeless(
		[stick, woodBinding, flintAxe])
	.addTool(artHammer, 55)
	.addOutput(basicAxe)
.create();
 # Basic Pickaxe
RecipeBuilder.get("mason")
	.setShapeless(
		[stick, woodBinding, flintShovel])
	.addTool(artHammer, 55)
	.addOutput(basicShovel)
.create();
 # Flint Sharpening Kit
RecipeBuilder.get("mason")
	.setShapeless(
		[flint, flint])
	.addTool(artFile, 25)
	.addOutput(flintKit)
.create();

// Tinkers Smeltery and Furnace stuff
 # Seared Bricks
RecipeBuilder.get("mason")
	.setShaped([
		[searedBrick, searedBrick, null],
		[searedBrick, searedBrick, null],
		[null, null, null]])
	.addTool(artHammer, 10)
	.addOutput(searedBricks)
.create();
 # Tank
RecipeBuilder.get("mason")
	.setShaped([
		[searedBrick, searedBrick, searedBrick],
		[searedBrick, glass, searedBrick],
		[searedBrick, searedBrick, searedBrick]])
	.addTool(artHammer, 45)
	.addOutput(searedTank)
.create();
 # Furnace Controller
RecipeBuilder.get("mason")
	.setShaped([
		[searedBricks, searedBrick, searedBricks],
		[searedBrick, null, searedBrick],
		[searedBricks, searedBrick, searedBricks]])
	.addTool(artHammer, 100)
	.addOutput(searedFurnace)
.create();

// Drying Rack
mods.tconstruct.Drying.addRecipe(searedBrick, unfiredSearedBrick, 6000);
