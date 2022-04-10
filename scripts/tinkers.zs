// GTOW ZS File
// Made by GTOW Team
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;
val builder = RecipeBuilder.get("basic");

// Val
val basicPickaxe = <tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 65, HarvestLevel: 0, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 65, HarvestLevel: 0, Attack: 2.9 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color:  16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val basicAxe = <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 65, HarvestLevel: 0, Attack: 3.4 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 65, HarvestLevel: 0, Attack: 3.4 as float}, Special: {Categories: ["harvest", "aoe", "tool", "weapon"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color:  16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val basicShovel = <tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 65, HarvestLevel: 0, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 65, HarvestLevel: 0, Attack: 2.9 as float}, Special: {Categories: ["harvest", "aoe", "tool"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color:  16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val basicMattock = <tconstruct:mattock>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, HarvestLevelAxe: 0, MiningSpeed: 5.0 as float, FreeModifiers: 3, HarvestLevelShovel: 0, Durability: 65, HarvestLevel: 0, Attack: 5.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, HarvestLevelAxe: 0, MiningSpeed: 5.0 as float, FreeModifiers: 0, HarvestLevelShovel: 0, Durability: 65, HarvestLevel: 0, Attack: 5.9 as float}, Special: {Categories: ["harvest", "tool", "aoe"]}, TinkerData: {Materials: ["wood", "flint", "flint"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val sturdyPickaxe = <tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 110, HarvestLevel: 0, Attack: 2.9 as float}, display: {Name: "Sturdy Pickaxe"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 0, Durability: 110, HarvestLevel: 0, Attack: 2.9 as float}, Special: {Categories: ["harvest", "aoe", "tool"]}, TinkerData: {Materials: ["treatedwood", "flint", "treatedwood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -10144478, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val sturdyAxe = <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 110, HarvestLevel: 0, Attack: 3.4 as float}, display: {Name: "Sturdy Axe"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 0, Durability: 110, HarvestLevel: 0, Attack: 3.4 as float}, Special: {Categories: ["harvest", "aoe", "tool", "weapon"]}, TinkerData: {Materials: ["treatedwood", "flint", "treatedwood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -10144478, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val sturdyShovel = <tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 110, HarvestLevel: 0, Attack: 2.9 as float}, display: {Name: "Sturdy Shovel"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 0, Durability: 110, HarvestLevel: 0, Attack: 2.9 as float}, Special: {Categories: ["harvest", "aoe", "tool"]}, TinkerData: {Materials: ["treatedwood", "flint", "treatedwood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -10144478, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]});
val flintShard = <tconstruct:shard>.withTag({Material: "flint"});

// JEI
mods.jei.JEI.addItem(basicAxe);
mods.jei.JEI.addItem(basicPickaxe);
mods.jei.JEI.addItem(basicShovel);
mods.jei.JEI.addItem(basicMattock);
mods.jei.JEI.addItem(sturdyPickaxe);
mods.jei.JEI.addItem(sturdyAxe);
mods.jei.JEI.addItem(sturdyShovel);

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

// Kiln
StoneKiln.addRecipe("seared", <tconstruct:materials>, <contenttweaker:unfired_searedbrick>, 9000, 0.10, [<gregtech:meta_dust_small:2063> * 2]);
BrickKiln.addRecipe("refrac_seared", <tconstruct:materials>, <contenttweaker:unfired_searedbrick>, 4500, 0.05, [<gregtech:meta_dust:2063>]);

// Artisan Worktables
# Wood Binding
RecipeBuilder.get("basic")
  .setShapeless([<ore:logWood>])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<tconstruct:binding>.withTag({Material: "wood"}))
  .create();
# Flint Hatchet Head
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:shard>.withTag({Material: "flint"}), <tconstruct:shard>.withTag({Material: "flint"}), <ore:string>],
    [<tconstruct:shard>.withTag({Material: "flint"}), <ore:string>, null]])
  .addTool(<ore:artisansFile>, 16)
  .addOutput(<tconstruct:axe_head>.withTag({Material: "flint"}))
  .create();
# Basic Axe
RecipeBuilder.get("basic")
  .setShapeless([<tconstruct:axe_head>.withTag({Material: "flint"}), <tconstruct:binding>.withTag({Material: "wood"}), <ore:stickWood>])
  .addTool(<ore:artisansHatchet>, 25)
  .addOutput(basicAxe)
  .create();
# Basic Pickaxe
RecipeBuilder.get("basic")
  .setShapeless([<tconstruct:pick_head>.withTag({Material: "flint"}), <tconstruct:binding>.withTag({Material: "wood"}), <ore:stickWood>])
  .addTool(<ore:artisansHatchet>, 25)
  .addOutput(basicPickaxe)
  .create();
# Basic Shovel
RecipeBuilder.get("basic")
  .setShapeless([<tconstruct:shovel_head>.withTag({Material: "flint"}), <tconstruct:binding>.withTag({Material: "wood"}), <ore:stickWood>])
  .addTool(<ore:artisansHatchet>, 25)
  .addOutput(basicShovel)
  .create();
# Basic Mattock
RecipeBuilder.get("basic")
	.setShapeless([<tconstruct:shovel_head>.withTag({Material: "flint"}), <tconstruct:axe_head>.withTag({Material: "flint"}), stick])
	.addTool(<ore:artisansHammer>, 25)
	.addOutput(basicMattock)
	.create();
# Sturdy Pickaxe
RecipeBuilder.get("basic")
  .setShapeless([<tconstruct:pick_head>.withTag({Material: "flint"}), <tconstruct:binding>.withTag({Material: "wood"}), <pyrotech:material:27>, <pyrotech:material:14>])
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(sturdyPickaxe)
  .create();
# Sturdy Axe
RecipeBuilder.get("basic")
  .setShapeless([<tconstruct:axe_head>.withTag({Material: "flint"}), <tconstruct:binding>.withTag({Material: "wood"}), <pyrotech:material:27>, <pyrotech:material:14>])
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(sturdyAxe)
  .create();
# Sturdy Pickaxe
RecipeBuilder.get("basic")
  .setShapeless([<tconstruct:shovel_head>.withTag({Material: "flint"}), <tconstruct:binding>.withTag({Material: "wood"}), <pyrotech:material:27>, <pyrotech:material:14>])
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(sturdyShovel)
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
  .addOutput(<tconstruct:soil>)
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
# Tool Station
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <tconstruct:pattern>, <ore:plankWood>],
    [<ore:stickWood>, <pyrotech:material:26>, <ore:stickWood>],
    [<ore:stickWood>, <artisanworktables:workstation:5>, <ore:stickWood>]])
  .addTool(<ore:artisansHammer>, 5)
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<tconstruct:tooltables:3>)
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
# Seared Bricks
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>]])
  .addTool(<ore:artisansHammer>, 8)
  .addOutput(<tconstruct:seared:3>)
  .create();