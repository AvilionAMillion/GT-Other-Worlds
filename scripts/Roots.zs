// Roots
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.roots.Bark;
import mods.roots.Pyre;


// Val
val flintKnife = <roots:stone_knife>;
val gregFlintKnife = <gregtech:meta_tool:17>.withTag({ench: [{lvl: 2 as short, id: 20}], "GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}});
val stoneShard = <tconstruct:shard>.withTag({Material: "stone"});
val rootsBark = <ore:rootsBark>;
val rootsPestle = <roots:pestle>;
val rootsMortar = <roots:mortar>;
val wildroot = <roots:wildroot>;
var reinforcedStone = <sonarcore:reinforcedstoneblock>;
var longStick = <gregtech:meta_item_2:19196>;
var greatwoodLeaves = <thaumcraft:leaves_greatwood>;
var cropCloudberry = <roots:cloud_berry>;
var moss = <roots:terra_moss>;
var oreStone = <ore:stone>;

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
  # Pyre
	recipes.remove(<roots:bonfire>);
	recipes.addShaped(<roots:bonfire>, [
		[null, wood, null],
		[wood, wildroot, wood],
		[reinforcedStone, reinforcedStone, reinforcedStone]]);
  # Staff
	recipes.remove(<roots:staff>);
	recipes.addShaped(<roots:staff>,
		[[craftingToolSaw, <ore:screwBronze>, wildroot],
		[longStick, wood, <ore:screwBronze>],
		[wood, longStick, craftingToolFile]]);
  # Imbuer
	recipes.remove(<roots:imbuer>);
	recipes.addShaped(<roots:imbuer>,
		[[longStick, craftingToolSaw, longStick],
		[null, reinforcedStone, null],
		[longStick, null, longStick]]);
  # Fey Crafter
	recipes.remove(<roots:fey_crafter>);
	recipes.addShaped(<roots:fey_crafter>,
		[[greatwoodLeaves, <thaumcraft:sapling_silverwood>, greatwoodLeaves],
		[cropCloudberry, greatwoodLeaves, cropCloudberry],
		[craftingToolSaw, <integrateddynamics:menril_log>, craftingToolFile]]);
  # Grove Stone
	recipes.remove(<roots:grove_stone>);
	recipes.addShaped(<roots:grove_stone>,
		[[wildroot, oreStone, moss],
		[oreStone, reinforcedStone, oreStone],
		[<minecraft:stone_slab>, craftingToolFile, <minecraft:stone_slab>]]);
		
// Pyre Crafting
  # Cloud Berry
Pyre.removeRecipe(cropCloudberry);
Pyre.addRecipe("cloudberry", cropCloudberry*2, [<ore:wool>, <rustic:cloudsbluff>, <biomesoplenty:berries>, <roots:terra_moss>, <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 3600, Amplifier: 0}]})]);