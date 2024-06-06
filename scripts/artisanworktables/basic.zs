// GTOW ZS File
// Made by GTOW Team
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;
import mods.artisanworktables.builder.Copy;

val builder = RecipeBuilder.get("basic");
val flintShard = <tconstruct:shard>.withTag({Material: "flint"});
val woodToughBinding = <tconstruct:tough_binding>.withTag({Material: "wood"});

// Worktable Crafting
# Basic Worktable
recipes.addShaped(<artisanworktables:worktable:5>, [
	[wood, wood],
	[wood, wood]]);
recipes.addShaped(<artisanworktables:workshop:11>,[
	[plateIron, <pyrotech:material:20>, plateIron],
	[null, <artisanworktables:workshop:5>, null],
	[<gregtech:planks:1>, <gregtech:planks:1>, <gregtech:planks:1>]]);
# Basic Workstation
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:string>, <artisanworktables:worktable:5>, <ore:string>],
    [<pyrotech:material:16>, <minecraft:chest>, <pyrotech:material:16>]])
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(<artisanworktables:workstation:5>)
  .create();
# Basic Workshop
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:20>, <tconstruct:pattern>, <pyrotech:material:20>],
    [<pyrotech:material:26>, <artisanworktables:workstation:5>, <pyrotech:material:26>],
    [<pyrotech:material:23>, woodToughBinding, <pyrotech:material:23>]])
  .addTool(<ore:artisansHammer>, 25)
  .addTool(<ore:artisansHandsaw>, 25)
  .addOutput(<artisanworktables:workshop:5>)
  .create();
 # Mason's Workshop
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:brick_block>, <minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:brick_block>],
    [<minecraft:brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <minecraft:brick_block>],
    [<pyrotech:material:26>, <pyrotech:material:26>, <artisanworktables:workshop:5>, <pyrotech:material:26>, <pyrotech:material:26>],
    [<pyrotech:planks_tarred>, <tconstruct:tough_binding>.withTag({Material: "wood"}), <pyrotech:material:26>, <tconstruct:tough_binding>.withTag({Material: "wood"}), <pyrotech:planks_tarred>],
    [<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:material:26>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]])
  .setFluid(<liquid:liquid_clay> * 4000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansChisel>, 50)
  .addTool(<ore:artisansTSquare>, 50)
  .addOutput(<artisanworktables:workshop:2>)
  .create();
# Farmer's Workshop
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:slabWood>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <ore:slabWood>],
    [<ore:slabWood>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <ore:slabWood>],
    [<ore:slabWood>, plateIron, <pyrotech:compacting_bin>, plateIron, <ore:slabWood>],
    [<roots:wildwood_planks>, <gregtech:meta_block_frame_103>, <artisanworktables:workshop:5>, <gregtech:meta_block_frame_103>, <roots:wildwood_planks>],
    [<roots:wildwood_planks>, <roots:wildwood_planks>, <roots:wildwood_planks>, <roots:wildwood_planks>, <roots:wildwood_planks>]])
  .addTool(<ore:artisansSifter>, 100)
  .addTool(<ore:artisansKnife>, 100)
  .addTool(<ore:artisansTrowel>, 100)
  .addOutput(<artisanworktables:workshop:10>)
  .create();
# Engineer's Workshop
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plateIron>, <ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>, <ore:plateIron>],
    [<ore:wireGtSingleCopper>, <ore:plateSteel>, <ore:circuitLv>, <ore:plateSteel>, <ore:wireGtSingleCopper>],
    [<ore:plateIron>, <ore:plateSteel>, <gregtech:machine_casing:1>, <ore:plateSteel>, <ore:plateIron>],
    [<roots:wildwood_planks>, <ore:frameGtTreatedWood>, <ore:frameGtTreatedWood>, <ore:frameGtTreatedWood>, <roots:wildwood_planks>],
    [<roots:wildwood_planks>, <roots:wildwood_planks>, <roots:wildwood_planks>, <roots:wildwood_planks>, <roots:wildwood_planks>]])
  .setFluid(<liquid:rubber> * 1440)
  .addTool(<ore:artisansCutters>, 150)
  .addTool(<ore:artisansHammer>, 150)
  .addTool(<ore:artisansTSquare>, 150)
  .addOutput(<artisanworktables:workshop:6>)
  .create();
  
// Flint And Mason Tool Replacement
function tool_recipe_replace(recipe as ICraftingRecipe) {

    if (<ore:artisansToolFlint> has recipe.output | <ore:artisansToolMason> has recipe.output) {
	var rb = RecipeBuilder.get("basic");
    var copy = Copy.byRecipe(recipe);
    rb = rb.setCopy(copy);
    rb.create();
    recipes.removeByRecipeName(recipe.resourceDomain + ":" +recipe.name);
	}
}

val all_recipes as [ICraftingRecipe] = recipes.all;
for recipe in all_recipes {
    if ("artisanworktables" == recipe.resourceDomain) {
        tool_recipe_replace(recipe);
    }
}
















