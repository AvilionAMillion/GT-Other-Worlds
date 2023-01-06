// ContentTweakerMaterials

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

// Misc
 # Unfired Seared Brick
var unfiredSearedBrick as Item = VanillaFactory.createItem("unfired_searedBrick");
unfiredSearedBrick.register();
 # Sandy-Clay Compound
var dustSandyClay as Item = VanillaFactory.createItem("sandyClay");
dustSandyClay.register();
 # Wet Chad
var dustWetChad as Item = VanillaFactory.createItem("wetChad");
dustWetChad.register();
 # Wrought Iron Heating Component
var wroughtIron_Heater as Item = VanillaFactory.createItem("wroughtIronHeater");
wroughtIron_Heater.register();
 # Steel Heating Component
var steel_Heater as Item = VanillaFactory.createItem("steelHeater");
steel_Heater.register();
 # Elixir
var elixirN as Item = VanillaFactory.createItem("elixir");
elixirN.register();
 # Refractory Mortar
var refrac as Item = VanillaFactory.createItem("refractoryblend");
refrac.register();
 # Bad Elixir
var ouchjuice as Item = VanillaFactory.createItem("badelixir");
ouchjuice.register();
 # Baffle Powder
var mushroompowder as Item = VanillaFactory.createItem("bafflepowder");
mushroompowder.register();
 # Twilight Soil
var dirtclump as Item = VanillaFactory.createItem("twilightsoil");
dirtclump.register();
 # Perfect Powder
var rootspowder as Item = VanillaFactory.createItem("perfectpowder");
rootspowder.register();
 # Bloom Hammer
var bloomHammer as Item = VanillaFactory.createItem("hammer");
bloomHammer.maxDamage = 120;
bloomHammer.maxStackSize = 1;
bloomHammer.register();
 # Iron Bloom Hammer
var bloomHammerI as Item = VanillaFactory.createItem("ironhammer");
bloomHammerI.maxDamage = 720;
bloomHammerI.maxStackSize = 1;
bloomHammerI.register();
var trowel1 as Item = VanillaFactory.createItem("masontrowel");
trowel1.maxDamage = 120;
trowel1.toolLevel = 2;
trowel1.maxStackSize = 1;
trowel1.register();
 # Lubricated Foil
var lubeFoil as Item = VanillaFactory.createItem("lubricatedfoil");
lubeFoil.register();
 # LV Control Module
var controller1 as Item = VanillaFactory.createItem("controllv");
controller1.register();
 # Mica Insulation Sheet
var micasheet as Item = VanillaFactory.createItem("micainsulation");
micasheet.register();
 # Centurian Bone
var lichbone as Item = VanillaFactory.createItem("ancientbone");
lichbone.register();
 # Meteoric Dust
var notskystone as Item = VanillaFactory.createItem("meteoricdust");
notskystone.register();

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
 # Nether Block
var nether_block = VanillaFactory.createBlock("netherBlock", <blockmaterial:iron>);
nether_block.blockSoundType = <soundtype:metal>;
nether_block.toolClass = "pickaxe";
nether_block.toolLevel = 5;
nether_block.blockHardness = 15.0;
nether_block.blockResistance = 100.0;
nether_block.register();

// Fluids
var foundryliquid = VanillaFactory.createFluid("foundry", Color.fromHex("9A9A82"));
foundryliquid.stillLocation = "contenttweaker:fluids/blank_still";
foundryliquid.flowingLocation = "contenttweaker:fluids/blank_flow";
foundryliquid.register();

var badJuice = VanillaFactory.createFluid("badjuice", Color.fromHex("2E1C2C"));
badJuice.stillLocation = "contenttweaker:fluids/blank_still";
badJuice.flowingLocation = "contenttweaker:fluids/blank_flow";
badJuice.register();

var micaliquid = VanillaFactory.createFluid("colloidalmica", Color.fromHex("F5ECD3"));
micaliquid.stillLocation = "contenttweaker:fluids/blank_still";
micaliquid.flowingLocation = "contenttweaker:fluids/blank_flow";
micaliquid.register();


