#loader gregtech
# priority 110
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import mods.gregtech.material.Elements;

// Elements
var element_utsuhonium = Elements.add(134, 201, -1, null, "Utsuhonium", "Ut", false);
var element_kaenbyonum = Elements.add(135, 209, -1, null, "Kaenbyonum", "Ka", false);
var element_magic = Elements.add(136, 100, -1, null, "Magic", "Ma", false);
var element_infinity = Elements.add(999, 999, -1, null, "Infinity", "*", false);

// Gregtech Pure Materials
# Utsuhonium
var utsuhonium = MaterialBuilder(30010, "utsuhonium")
	.element("Utsuhonium")
	.ingot()
	.color(0x1A9B0A)
	.iconSet("metallic")
	.flags(["generate_plate", "generate_rod", "generate_bolt_screw"])
	.build();
# Kaenbyonum
var kaenbyonum = MaterialBuilder(30011, "kaenbyonum")
	.element("Kaenbyonum")
	.ingot()
	.color(0xA81818)
	.iconSet("metallic")
	.flags(["generate_plate", "generate_rod", "generate_bolt_screw"])
	.build();
# Magic
var magic = MaterialBuilder(30012, "magic")
	.element("Magic")
	.dust()
	.color(0x400080)
	.iconSet("shiny")
	.flags(["disable_decomposition"])
	.build();
# Infinity
var infinity = MaterialBuilder(30013, "infinity")
	.element("Infinity")
	.ingot()
	.color(0xFFFFFF)
	.iconSet("shiny")
	.blastTemp(80000, "HIGH", 2000000)
	.toolStats(999, 999, 2147483647, 999)
	.flags(["disable_decomposition", "generate_plate", "generate_rod", "generate_lens", "exclude_block_crafting_by_hand_recipes"])
	.build();
	
// Gregtech Materials
# Amber
var amber = MaterialBuilder(24001, "amber")
	.gem(6)
	.color(0xE4B535)
	.iconSet("diamond")
	.components([<material:carbon> * 10, <material:hydrogen> * 16, <material:oxygen> * 1, <material:magic> * 1])
	.flags(["generate_plate", "generate_rod", "generate_lens", "disable_decomposition"])
	.ore()
	.build();
# Bitumous Coal
var bitumous_coal = MaterialBuilder(24002, "bitumous_coal")
	.gem(4, 2400)
	.color(0x25292E)
	.iconSet("lignite")
	.components([<material:carbon> * 1])
	.ore()
	.addOreByproducts(<material:coal>)
	.build();
# Anthracite Coal
var anthracite_coal = MaterialBuilder(24003, "anthracite_coal")
	.gem(5, 3200)
	.color(0x1C1C1C)
	.iconSet("lignite")
	.components([<material:carbon> * 1])
	.ore()
	.addOreByproducts(<material:bitumous_coal>, <material:graphite>)
	.build();
# Peridot
var peridot = MaterialBuilder(24004, "peridot")
	.gem(5)
	.color(0x517B22)
	.iconSet("ruby")
	.components([<material:magnesium> * 1, <material:iron> * 2, <material:silicon> * 1, <material:oxygen> * 4])
	.flags(["generate_plate", "generate_rod", "generate_lens"])
	.ore()
	.build();
# Refined Obsidian
var refined_bsidian = MaterialBuilder(24005, "refined_obsidian")
	.ingot(9)
	.color(0x8067AA)
	.iconSet("shiny")
	.toolStats(14.7, 21, 1440, 6)
	.blastTemp(4480, "HIGH", 2880)
	.itemPipeProperties(512, 4)
	.flags(["generate_plate", "generate_rod", "disable_decomposition", "generate_dense", "exclude_block_crafting_by_hand_recipes", "generate_gear", "generate_bolt_screw"])
	.components([<material:obsidian> * 1, <material:diamond> * 1])
	.build();
# Tanzanite
var tanzanite = MaterialBuilder(24006, "tanzanite")
	.gem(7)
	.color(0x7800CC)
	.iconSet("quartz")
	.components([<material:calcium> * 2, <material:aluminium> * 3, <material:silicon> * 3, <material:oxygen> * 12])
	.flags(["generate_plate", "generate_rod", "generate_lens"])
	.ore()
	.build();
# Crude Steel
var crudeSteel = MaterialBuilder(24007, "crude_steel")
	.ingot(3)
	.color(0x928C87)
	.iconSet("metallic")
	.components([<material:iron> * 1])
	.flags(["generate_plate", "generate_rod", "generate_bolt_screw", "generate_frame"])
	.blastTemp(800, "LOW", 60, 100)
	.build();
# Runic
var runic = MaterialBuilder(24008, "runic")
	.dust(1)
	.color(0x696A76)
	.iconSet("rough")
	.components([<material:stone> * 1, <material:magic> * 1])
	.flags(["disable_decomposition"])
	.build();
# Ironwood
var ironwood = MaterialBuilder(24009, "ironwood")
	.ingot(2)
	.color(0x83764A)
	.iconSet("metallic")
	.toolStats(14, 0.6, 480, 1)
	.components([<material:iron> * 9, <material:gold> * 1, <material:magic> * 1])
	.flags(["disable_decomposition", "no_smashing", "exclude_block_crafting_by_hand_recipes", "generate_plate"])
	.build();
# Runic Metal
var runicMetal = MaterialBuilder(24010, "runicmetal")
	.ingot(3)
	.color(0x696A76)
	.iconSet("metallic")
	.toolStats(21, 3,1200,3)
	.components([<material:runic> * 1])
	.flags(["disable_decomposition", "exclude_block_crafting_by_hand_recipes", "generate_plate", "generate_rod"])
	.build();
# Mana
var mana = MaterialBuilder(24011, "mana")
	.fluid("fluid", true)
	.dust()
	.color(0x33C0D6)
	.iconSet("shiny")
	.components([<material:magic> * 1])
	.flags(["disable_decomposition"])
	.build();
	
// Prexisting
# Stone
var stoneGT = MaterialRegistry.get("stone");
stoneGT.addTools(1,1,40,1);
var peridotGT = MaterialRegistry.get("peridot");
peridotGT.addTools(12,3,344,4,true);
var tanzaniteGT = MaterialRegistry.get("tanzanite");
tanzaniteGT.addTools(15,5,408,4,true);
