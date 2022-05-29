// GTOW Dev

import mods.foundry.Melting;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("basic");
 var FoundRefract = <foundry:component:1>;
 var tinyFoundRefract = <foundry:component:16>;
 var RefractBrick = <foundry:component:2>;
 var casingBasic = <foundry:componentblock:3>;
 var ingotTable = <foundry:castingtable>;
 var brickPT = <pyrotech:material:5>;
 
 
// Removal
mods.jei.JEI.removeAndHide(<foundry:machine:1>);
mods.jei.JEI.removeAndHide(FoundRefract);
mods.jei.JEI.removeAndHide(tinyFoundRefract);
mods.jei.JEI.removeAndHide(RefractBrick);
mods.jei.JEI.removeAndHide(<foundry:alloyfurnace>);   
mods.jei.JEI.removeAndHide(<foundry:castingtable:1>);
mods.jei.JEI.removeAndHide(<foundry:castingtable:2>);
furnace.remove(RefractBrick, FoundRefract);
recipes.remove(<foundry:machine:9>);
	
// JEI Removal
mods.jei.JEI.hideCategory("foundry.casting");
mods.jei.JEI.hideCategory("foundry.casting_table.rod");
mods.jei.JEI.hideCategory("foundry.casting_table.plate");
mods.jei.JEI.hideCategory("foundry.casting_table.block");
 
 //JEI Fluid containers
 var RefractCan = <foundry:fluidcontainer>;
    mods.jei.JEI.removeAndHide(RefractCan);

    mods.jei.JEI.hide(<forge:bucketfilled>);
        mods.jei.JEI.hide(<foundry:liquidiron>);
        mods.jei.JEI.hide(<foundry:liquidgold>);
        mods.jei.JEI.hide(<foundry:liquidcopper>);
        mods.jei.JEI.hide(<foundry:liquidtin>);  
        mods.jei.JEI.hide(<foundry:liquidbronze>);
        mods.jei.JEI.hide(<foundry:liquidelectrum>);
        mods.jei.JEI.hide(<foundry:liquidinvar>);
        mods.jei.JEI.hide(<foundry:liquidnickel>);    

// Crafting
recipes.remove(<foundry:componentblock:3>);
recipes.addShaped(casingBasic, [
	[plateCopper, brickPT, plateCopper],
	[brickPT, null, brickPT],
	[plateCopper, brickPT, plateCopper]]);
recipes.remove(ingotTable);
recipes.addShaped(ingotTable,
	[[brickPT, <foundry:mold>, brickPT],
	[gtHammer, <minecraft:stone_slab>, gtFile]]);

// Worktable
 # Mold Crafting Station
recipes.remove(<foundry:moldstation>);
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:5>, <artisanworktables:workstation:5>, <pyrotech:material:5>],
    [<pyrotech:material:5>, <minecraft:stone_slab>, <pyrotech:material:5>],
    [<pyrotech:refractory_brick_block>, <pyrotech:stone_kiln>, <pyrotech:refractory_brick_block>]])
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansFramingHammer>, 50)
  .addOutput(<foundry:moldstation>)
  .create();
# Refractory Casing
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_nugget:25>, <gregtech:meta_nugget:25>, <pyrotech:material:5>, <gregtech:meta_nugget:25>, <gregtech:meta_nugget:25>],
    [<gregtech:meta_nugget:25>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <gregtech:meta_nugget:25>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:refractory_brick_block>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<gregtech:meta_nugget:25>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <gregtech:meta_nugget:25>],
    [<gregtech:meta_nugget:25>, <gregtech:meta_nugget:25>, <pyrotech:material:5>, <gregtech:meta_nugget:25>, <gregtech:meta_nugget:25>]])
  .setFluid(<liquid:foundry> * 1000)
  .addTool(<ore:artisansChisel>, 30)
  .addTool(<ore:artisansFile>, 30)
  .addTool(<ore:artisansFramingHammer>, 30)
  .addOutput(<foundry:componentblock:3>)
  .create();
# Burner Heater
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_nugget:25>, <gregtech:meta_nugget:25>, <gregtech:meta_nugget:25>],
    [<gregtech:meta_nugget:25>, <gregtech:meta_nugget:25>, <gregtech:meta_nugget:25>],
    [<pyrotech:material:5>, <foundry:componentblock:3>, <pyrotech:material:5>],
    [<pyrotech:material:5>, <pyrotech:stone_kiln>, <pyrotech:material:5>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>]])
  .setFluid(<liquid:foundry> * 1000)
  .addTool(<ore:artisansChisel>, 20)
  .addTool(<ore:artisansFramingHammer>, 20)
  .addTool(<ore:artisansDriver>, 20)
  .addOutput(<foundry:burnerheater>)
  .create();
# Melting Crucible
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_nugget:25>, <gregtech:meta_nugget:25>, <gregtech:meta_nugget:25>],
    [<pyrotech:material:5>, <pyrotech:brick_tank>, <pyrotech:material:5>],
    [<pyrotech:material:5>, <foundry:componentblock:3>, <pyrotech:material:5>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]])
  .setFluid(<liquid:foundry> * 1000)
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansFramingHammer>, 40)
  .addTool(<ore:artisansSpanner>, 40)
  .addOutput(<foundry:machine>)
  .create();
# Refractory Spout
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_nugget:25>, null],
    [<gregtech:meta_nugget:25>, <pyrotech:faucet_brick>],
    [<gregtech:meta_nugget:25>, null]])
  .setFluid(<liquid:foundry> * 500)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<foundry:refractoryspout>)
  .create();
# Alloy Mixer
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_plate:112>, <foundry:refractoryspout>, <ore:plateTin>, <foundry:refractoryspout>, <gregtech:meta_plate:112>],
    [<pyrotech:refractory_brick_block>, <ore:platePotin>, <pyrotech:brick_tank>, <ore:platePotin>, <pyrotech:refractory_brick_block>],
    [<pyrotech:refractory_brick_block>, <ore:platePotin>, <tconstruct:seared_furnace_controller>, <ore:platePotin>, <pyrotech:refractory_brick_block>],
    [<pyrotech:refractory_brick_block>, <ore:platePotin>, <ore:platePotin>, <ore:platePotin>, <pyrotech:refractory_brick_block>],
    [<ore:plateTin>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <ore:plateTin>]])
  .setFluid(<liquid:lava> * 4000)
  .addTool(<ore:artisansHammer>, 100)
  .addTool(<ore:artisansDriver>, 100)
  .addTool(<ore:artisansChisel>, 100)
  .addOutput(<foundry:machine:9>)
  .create();
  
// Removing Certain Fluid Smelting
Melting.removeRecipe(<gregtech:ore_copper_0>);
Melting.removeRecipe(<gregtech:meta_dust:25>);
Melting.removeRecipe(<gregtech:meta_dust_small:25>);
Melting.removeRecipe(<gregtech:meta_dust_tiny:25>);
Melting.removeRecipe(<gregtech:ore_tin_0>);
Melting.removeRecipe(<gregtech:meta_dust:112>);
Melting.removeRecipe(<gregtech:meta_dust_small:112>);
Melting.removeRecipe(<gregtech:meta_dust_tiny:112>);
Melting.removeRecipe(<gregtech:ore_lead_0>);
Melting.removeRecipe(<gregtech:meta_dust:55>);
Melting.removeRecipe(<gregtech:meta_dust_small:55>);
Melting.removeRecipe(<gregtech:meta_dust_tiny:55>);
