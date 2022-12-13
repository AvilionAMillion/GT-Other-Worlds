// GTOW ZS File
// Made by GTOW Team
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("engineer");

// Removal
mods.jei.JEI.removeAndHide(<artisanworktables:worktable:6>);
mods.jei.JEI.removeAndHide(<artisanworktables:workstation:6>);
mods.jei.JEI.hideCategory("artisanworktables_engineer_worktable");
mods.jei.JEI.hideCategory("artisanworktables_engineer_workstation");
recipes.remove(<gregtech:machine:986>);
recipes.remove(motorLV);
recipes.remove(pumpLV);
recipes.remove(conveyorLV);
recipes.remove(pistonLV);
recipes.remove(robotarmLV);
recipes.remove(fieldgenLV);
recipes.remove(emitterLV);
recipes.remove(sensorLV);

// Recipes
RecipeBuilder.get("engineer")
  .setShaped([
    [<gregtech:meta_plate:324>, <gregtech:meta_plate:335>, <gregtech:meta_plate:324>],
    [<gregtech:cable_single:112>, <gregtech:machine_casing:1>, <gregtech:cable_single:112>]])
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<gregtech:machine:986>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<gregtech:cable_single:112>, <gregtech:wire_single:25>, <gregtech:meta_stick:51>],
    [<gregtech:wire_single:25>, <gregtech:meta_stick:395>, <gregtech:wire_single:25>],
    [<gregtech:meta_stick:51>, <gregtech:wire_single:25>, <gregtech:cable_single:112>]])
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<gregtech:meta_item_1:127>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<gregtech:meta_screw:112>, <gregtech:meta_rotor:112>, <gregtech:meta_ring:1068>],
    [<ore:craftingToolScrewdriver>, <gregtech:fluid_pipe_normal:260>, <ore:craftingToolWrench>],
    [<gregtech:meta_ring:1068>, <gregtech:meta_item_1:127>, <gregtech:cable_single:112>]])
  .addTool(<ore:artisansCutters>, 15) 
  .addOutput(<gregtech:meta_item_1:142>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<gregtech:meta_plate:1068>, <gregtech:meta_plate:1068>, <gregtech:meta_plate:1068>],
    [<gregtech:meta_item_1:127>, <gregtech:cable_single:112>, <gregtech:meta_item_1:127>],
    [<gregtech:meta_plate:1068>, <gregtech:meta_plate:1068>, <gregtech:meta_plate:1068>]])
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<gregtech:meta_item_1:157>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<gregtech:meta_plate:324>, <gregtech:meta_plate:324>, <gregtech:meta_plate:324>],
    [<gregtech:cable_single:112>, <gregtech:meta_stick:324>, <gregtech:meta_stick:324>],
    [<gregtech:cable_single:112>, <gregtech:meta_item_1:127>, <gregtech:meta_gear_small:324>]])
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<gregtech:meta_item_1:172>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<gregtech:cable_single:112>, <gregtech:cable_single:112>, <gregtech:cable_single:112>],
    [<gregtech:meta_item_1:127>, <gregtech:meta_stick:324>, <gregtech:meta_item_1:127>],
    [<gregtech:meta_item_1:172>, <ore:circuitLv>, <gregtech:meta_stick:324>]])
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<gregtech:meta_item_1:187>)
  .create();



