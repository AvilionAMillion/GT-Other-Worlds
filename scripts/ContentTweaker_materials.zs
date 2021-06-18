// ContentTweakerMaterials

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;

// Misc
 # Unfired Seared Brick
var unfiredSearedBrick as Item = VanillaFactory.createItem("unfired_searedBrick");
unfiredSearedBrick.register();
 # Sandy-Clay Compound
var dustSandyClay as Item = VanillaFactory.createItem("sandyClay");
dustSandyClay.register();
 # Wrought Iron Heating Component
var wroughtIron_Heater as Item = VanillaFactory.createItem("wroughtIronHeater");
wroughtIron_Heater.register();

// Blocks
 # Glassy Sand
var glassy_sand = VanillaFactory.createBlock("glassy_sand", <blockmaterial:sand>);
glassy_sand.blockSoundType = <soundtype:sand>;
glassy_sand.toolClass = "sand";
glassy_sand.toolLevel = 0;
glassy_sand.blockHardness = 0.4;
glassy_sand.blockResistance = 0.4;
glassy_sand.gravity = true;
glassy_sand.register();

