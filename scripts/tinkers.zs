// GTOW ZS File
// Made by GTOW Team
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;
val builder = RecipeBuilder.get("basic");

// Val
val basicPickaxe = <tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 120, HarvestLevel: 0, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 120, HarvestLevel: 0, Attack: 2.9 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color:  16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val basicAxe = <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 120, HarvestLevel: 0, Attack: 3.4 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 120, HarvestLevel: 0, Attack: 3.4 as float}, Special: {Categories: ["harvest", "aoe", "tool", "weapon"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color:  16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val basicShovel = <tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 120, HarvestLevel: 0, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 120, HarvestLevel: 0, Attack: 2.9 as float}, Special: {Categories: ["harvest", "aoe", "tool"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color:  16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val basicMattock = <tconstruct:mattock>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, HarvestLevelAxe: 0, MiningSpeed: 5.0 as float, FreeModifiers: 3, HarvestLevelShovel: 0, Durability: 120, HarvestLevel: 0, Attack: 5.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, HarvestLevelAxe: 0, MiningSpeed: 5.0 as float, FreeModifiers: 0, HarvestLevelShovel: 0, Durability: 120, HarvestLevel: 0, Attack: 5.9 as float}, Special: {Categories: ["harvest", "tool", "aoe"]}, TinkerData: {Materials: ["wood", "flint", "flint"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val flintShard = <pyrotech:material:10>;
val searedBrick = <tconstruct:materials>;

// JEI
mods.jei.JEI.addItem(basicAxe);
mods.jei.JEI.addItem(basicPickaxe);
mods.jei.JEI.addItem(basicShovel);
mods.jei.JEI.addItem(basicMattock);
mods.jei.JEI.hideCategory("tconstruct.smeltery");
mods.jei.JEI.hideCategory("tconstruct.alloy");
mods.jei.JEI.hideCategory("tconstruct.casting_table");

// Removal
recipes.remove(<tconstruct:pattern>);
recipes.remove(<tconstruct:tooltables:3>);
recipes.remove(<tconstruct:tooltables:2>);
recipes.remove(<tconstruct:tooltables:1>);
recipes.remove(<tconstruct:tooltables:4>);
recipes.remove(<tconstruct:tooltables:5>);
recipes.remove(<tconstruct:soil>);
furnace.remove(<tconstruct:materials>);
recipes.remove(<tconstruct:seared:3>);
recipes.remove(<tconstruct:seared_tank>);
recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.remove(<tconstruct:smeltery_controller>);

// Kiln
StoneKiln.addRecipe("seared", <tconstruct:materials>, <contenttweaker:unfired_searedbrick>, 9000, 0.10, [<gregtech:meta_dust_small:2063> * 2]);
BrickKiln.addRecipe("refrac_seared", <tconstruct:materials>, <contenttweaker:unfired_searedbrick>, 4500, 0.05, [<gregtech:meta_dust:2063>]);

// Crafting
recipes.addShaped(<tconstruct:seared_tank>,
	[[searedBrick, searedBrick, searedBrick],
	[searedBrick, <pyrotech:brick_tank>, searedBrick],
	[searedBrick, searedBrick, searedBrick]]);
recipes.addShapeless(flintShard, [gravel, gravel, gravel]);

// Furnace
furnace.addRecipe(<tconstruct:materials>, <contenttweaker:unfired_searedbrick>);

// Artisan Worktables
# Wood Binding
RecipeBuilder.get("basic")
  .setShapeless([<ore:logWood>])
  .addTool(<ore:artisansFile>, 2)
  .addOutput(<tconstruct:binding>.withTag({Material: "wood"}))
  .create();
# Flint Hatchet Head
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:10>, <pyrotech:material:10>, <ore:string>],
    [<pyrotech:material:10>, <ore:string>, null]])
  .addTool(<ore:artisansFile>, 8)
  .addOutput(<tconstruct:axe_head>.withTag({Material: "flint"}))
  .create();
# Basic Axe
RecipeBuilder.get("basic")
  .setShapeless([<tconstruct:axe_head>.withTag({Material: "flint"}), <tconstruct:binding>.withTag({Material: "wood"}), <ore:stickWood>])
  .addTool(<ore:artisansHatchet>, 8)
  .addOutput(basicAxe)
  .create();
# Basic Pickaxe
RecipeBuilder.get("basic")
  .setShapeless([<tconstruct:pick_head>.withTag({Material: "flint"}), <tconstruct:binding>.withTag({Material: "wood"}), <ore:stickWood>])
  .addTool(<ore:artisansHatchet>, 20)
  .addOutput(basicPickaxe)
  .create();
# Basic Shovel
RecipeBuilder.get("basic")
  .setShapeless([<tconstruct:shovel_head>.withTag({Material: "flint"}), <tconstruct:binding>.withTag({Material: "wood"}), <ore:stickWood>])
  .addTool(<ore:artisansHatchet>, 20)
  .addOutput(basicShovel)
  .create();
# Basic Mattock
RecipeBuilder.get("basic")
	.setShapeless([<tconstruct:shovel_head>.withTag({Material: "flint"}), <tconstruct:axe_head>.withTag({Material: "flint"}), stick])
	.addTool(<ore:artisansHammer>, 20)
	.addOutput(basicMattock)
	.create();
# Sharpening Kit
RecipeBuilder.get("basic")
	.setShapeless([flintShard, flintShard, flintShard, flintShard])
	.addTool(<ore:artisansFile>, 5)
	.addOutput(<tconstruct:sharpening_kit>.withTag({Material: "flint"}))
	.create();
# Basic Pickaxe Head
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:flint>, <minecraft:flint>],
    [<minecraft:flint>]])
  .addTool(<ore:artisansFile>, 16)
  .addOutput(<tconstruct:pick_head>.withTag({Material: "flint"}))
  .create();
# Basic Shovel Head
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:flint>],
    [<minecraft:flint>]])
  .addTool(<ore:artisansFile>, 16)
  .addOutput(<tconstruct:shovel_head>.withTag({Material: "flint"}))
  .create();
# Blank Pattern
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:paper>, <minecraft:paper>],
    [<minecraft:paper>, <minecraft:paper>]])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<tconstruct:pattern>)
  .create();
 # Grout
RecipeBuilder.get("basic")
  .setShapeless([<gregtech:meta_dust:2063>, <minecraft:gravel>, <minecraft:sand>])
  .setFluid(<liquid:water> * 50)
  .addTool(<ore:artisansMortar>, 1)
  .addOutput(<tconstruct:soil> * 2)
  .create();
# Seared Bricks
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>]])
  .addTool(<ore:artisansHammer>, 8)
  .addOutput(<tconstruct:seared:3>)
  .create();
# Flint Shard
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:flint>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(flintShard * 3)
  .create();

// Tables (Still in Worktables)
# Stencil Table
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <tconstruct:pattern>, <ore:plankWood>],
    [<ore:fenceWood>, <pyrotech:material:26>, <ore:fenceWood>],
    [<ore:fenceWood>, null, <ore:fenceWood>]])
  .addTool(<ore:artisansHammer>, 5)
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}))
  .create();
# Part Builder
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <tconstruct:pattern>, <ore:plankWood>],
    [<ore:logWood>, <pyrotech:material:26>, <ore:logWood>],
    [<ore:logWood>, null, <ore:logWood>]])
  .addTool(<ore:artisansHammer>, 5)
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}))
  .create();
# Pattern Chest
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <tconstruct:pattern>, <ore:plankWood>],
    [<ore:stickWood>, <pyrotech:material:26>, <ore:stickWood>],
    [<ore:stickWood>, <minecraft:chest>, <ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 5)
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<tconstruct:tooltables:4>)
  .create();
# Part Chest
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <tconstruct:pattern>, <ore:plankWood>],
    [<ore:stickWood>, <pyrotech:material:26>, <ore:stickWood>],
    [<ore:stickWood>, null, <ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 5)
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<tconstruct:tooltables:5>)
  .create();
# Seared Furnace
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_plate:25>, <tconstruct:seared:3>, <tconstruct:seared:3>, <tconstruct:seared:3>, <gregtech:meta_plate:25>],
    [<tconstruct:materials>, <tconstruct:materials>, null, <tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, null, <pyrotech:brick_kiln>, null, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>, null, <tconstruct:materials>, <tconstruct:materials>],
    [<gregtech:meta_plate:25>, <tconstruct:seared:3>, <tconstruct:seared:3>, <tconstruct:seared:3>, <gregtech:meta_plate:25>]])
  .setFluid(<liquid:lava> * 1000)
  .addTool(<ore:artisansHammer>, 100)
  .addTool(<ore:artisansGroover>, 100)
  .addTool(<ore:artisansDriver>, 100)
  .addOutput(<tconstruct:seared_furnace_controller>)
  .create();
# Seared Drain
recipes.remove(<tconstruct:smeltery_io>);
recipes.addShaped(<tconstruct:smeltery_io>,
	[[searedBrick, gtHammer, searedBrick],
	[<tconstruct:seared:3>, <gregtech:fluid_pipe_normal:2037>, <tconstruct:seared:3>],
	[searedBrick, gtSaw, searedBrick]]);
# Tank Controller
recipes.remove(<tconstruct:tinker_tank_controller>);
recipes.addShaped(<tconstruct:tinker_tank_controller>,
	[[plateIron, <tconstruct:seared:3>, plateIron],
	[<tconstruct:seared:3>, <gregtech:machine:1611>, <tconstruct:seared:3>],
	[gtHammer, <tconstruct:seared:3>, gtSaw]]);
