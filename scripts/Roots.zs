// Roots
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.roots.Bark;

// Val
val flintKnife = <roots:stone_knife>;
val gregFlintKnife = <gregtech:meta_tool:17>.withTag({ench: [{lvl: 2 as short, id: 20}], "GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}});
val stoneShard = <tconstruct:shard>.withTag({Material: "stone"});
val rootsBark = <ore:rootsBark>;
val rootsPestle = <roots:pestle>;
val rootsMortar = <roots:mortar>;
val wildroot = <roots:wildroot>;

// Crafting Table
  # Flint Knife
	flintKnife.displayName = "Flint Knife";
	recipes.remove(flintKnife);
	recipes.addShapeless(flintKnife, [flint, stick]);
	recipes.addShapeless(flintKnife, [gregFlintKnife.transformDamage(100)]); 
  # Pestle
	recipes.remove(rootsPestle);
	recipes.addShaped(rootsPestle, [
		[null, null, stoneShard],
		[null, stoneShard, null],
		[flint, null, null]]);
  # Mortar
	recipes.remove(rootsMortar);
	recipes.addShaped(rootsMortar, [
		[stoneShard, null, stoneShard],
		[stoneShard, null, stoneShard],
		[stoneShard, stoneShard, stoneShard]]);
		
// Bark Cutting
	# Wildroot
		Bark.addRecipe("wild root", <minecraft:tallgrass>, wildroot);