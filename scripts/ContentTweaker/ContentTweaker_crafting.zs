// GTOW ZS File
// Made by GTOW Team
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemTransformer;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("basic");

// Val
val dustGlass = <gregtech:meta_dust:2000>;
val foundryBucket = <pyrotech:bucket_clay>.withTag({durability: 32767, fluids: {FluidName: "foundry", Amount: 1000}});

// JEI show
mods.jei.JEI.addItem(foundryBucket);

 # Glassy Sand
recipes.addShapeless(<contenttweaker:glassy_sand>,
	[dustGlass, dustGlass, sand, sand]);
	
 # Unfired Seared Brick
RecipeBuilder.get("basic")
  .setShapeless([<gregtech:meta_item_1:348>, <tconstruct:soil>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<contenttweaker:unfired_searedbrick>)
  .create();
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:soil>, <tconstruct:soil>, <tconstruct:soil>],
    [<tconstruct:soil>, <gregtech:meta_item_1:348>, <tconstruct:soil>],
    [<tconstruct:soil>, <tconstruct:soil>, <tconstruct:soil>]])
  .addTool(<ore:artisansHammer>, 8)
  .addOutput(<contenttweaker:unfired_searedbrick> * 8)
  .create();

# Refractory Mortar
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_dust:2063>, <gregtech:meta_dust:275>, <gregtech:meta_dust:2063>],
    [<gregtech:meta_dust:2063>, <pyrotech:bucket_clay>, <gregtech:meta_dust:2063>],
    [<gregtech:meta_dust:254>, <gregtech:meta_dust:2023>, <gregtech:meta_dust:254>]])
  .setFluid(<liquid:water> * 4000)
  .addTool(<ore:artisansMortar>, 20)
  .addOutput(foundryBucket)
  .create();
