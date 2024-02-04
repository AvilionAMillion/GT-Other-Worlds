// GTOW ZS File
// Made by GTOW Team
import mods.artisanworktables.builder.RecipeBuilder;

val builder = RecipeBuilder.get("chemist");

// Removal
mods.jei.JEI.removeAndHide(<artisanworktables:worktable:9>);
mods.jei.JEI.removeAndHide(<artisanworktables:workstation:9>);
mods.jei.JEI.hideCategory("artisanworktables_chemist_worktable");
mods.jei.JEI.hideCategory("artisanworktables_chemist_workstation");

// Worktable Crafting
# Phenol Bucket
RecipeBuilder.get("chemist")
  .setShapeless([<gregtech:meta_dust:377>, <gregtech:meta_dust:377>, <gregtech:meta_dust:377>, <gregtech:meta_dust:377>, <gregtech:meta_dust:377>, <gregtech:meta_dust:377>, <forge:bucketfilled>.withTag({FluidName: "wood_tar", Amount: 1000}).noReturn()])
  .setFluid(<liquid:chlorine> * 4000)
  .addTool(<ore:artisansBeaker>, 150)
  .addOutput(<forge:bucketfilled>.withTag({FluidName: "phenol", Amount: 1000}))
  .create();















