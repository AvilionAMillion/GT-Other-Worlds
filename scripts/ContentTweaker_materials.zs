// ContentTweakerMaterials

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;

// Misc
 # Unfired Seared Brick
var unfiredSearedBrick as Item = VanillaFactory.createItem("unfired_searedBrick");
unfiredSearedBrick.register();
var concreteMix as Item = VanillaFactory.createItem("concretemix");
concreteMix.register();

// Steam Components
 # Steam Piston
var pistonSteam as Item = VanillaFactory.createItem("steam_piston");
pistonSteam.register();
 # Steam Motor
var motorSteam as Item = VanillaFactory.createItem("steam_motor");
motorSteam.register();

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

// Casts

 # Small Gear Cast
var castSmallGear as Item = VanillaFactory.createItem("cast_gear_small");
castSmallGear.register();

 # Rod Cast
var castRod as Item = VanillaFactory.createItem("cast_rod");
castRod.register();

 # Screw Cast
var castScrew as Item = VanillaFactory.createItem("cast_screw");
castScrew.register();

 # Long Rod Cast
var castLongRod as Item = VanillaFactory.createItem("cast_long_rod");
castLongRod.register();

 # Ring Cast
var castRing as Item = VanillaFactory.createItem("cast_ring");
castRing.register();

// End Casts
