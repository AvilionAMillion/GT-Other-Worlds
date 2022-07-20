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

// Gregtech Pure Materials
# Utsuhonium
var utsuhonium = MaterialBuilder(3010, "utsuhonium")
	.element("Utsuhonium")
	.ingot()
	.color(0x1A9B0A)
	.iconSet("metallic")
	.flags(["generate_plate", "generate_rod", "generate_bolt_screw"])
	.build();
# Kaenbyonum
var kaenbyonum = MaterialBuilder(3011, "kaenbyonum")
	.element("Kaenbyonum")
	.ingot()
	.color(0xA81818)
	.iconSet("metallic")
	.flags(["generate_plate", "generate_rod", "generate_bolt_screw"])
	.build();
# Magic
var magic = MaterialBuilder(3012, "magic")
	.element("Magic")
	.dust()
	.color(0x400080)
	.iconSet("shiny")
	.flags(["disable_decomposition"])
	.build();
	
// Gregtech Materials
# Okuurinate
var okuurinate = MaterialBuilder(4000, "okuurinate")
	.ingot()
	.color(0x2C7D25)
	.iconSet("metallic")
	.flags(["generate_plate", "generate_rod", "generate_bolt_screw"])
	.blastTemp(4000)
	.components([<material:utsuhonium> * 1, <material:kaenbyonum> * 1])
	.build();
# Bitumous Coal
var bitumous_coal = MaterialBuilder(4001, "bitumous_coal")
	.gem(4, 2400)
	.color(0x25292E)
	.iconSet("lignite")
	.components([<material:carbon> * 1])
	.ore()
	.addOreByproducts(<material:coal>)
	.build();
# Anthracite Coal
var anthracite_coal = MaterialBuilder(4002, "anthracite_coal")
	.gem(5, 3200)
	.color(0x1C1C1C)
	.iconSet("lignite")
	.components([<material:carbon> * 1])
	.ore()
	.addOreByproducts(<material:bitumous_coal>, <material:graphite>)
	.build();
# Calcium Hydroxide
var calcium_hydroxide = MaterialBuilder(4003, "calcium_hydroxide")
	.dust()
	.fluid()
	.color(0xE8F1E8)
	.iconSet("rough")
	.components([<material:quicklime> * 1, <material:water> * 1])
	.build();
# Peridot
var peridot = MaterialBuilder(4004, "peridot")
	.gem(5)
	.color(0x517B22)
	.iconSet("ruby")
	.components([<material:magnesium> * 1, <material:iron> * 2, <material:silicon> * 1, <material:oxygen> * 4])
	.flags(["generate_plate", "generate_rod", "generate_lens"])
	.ore()
	.build();
# Tanzanite
var tanzanite = MaterialBuilder(4005, "tanzanite")
	.gem(7)
	.color(0x7800CC)
	.iconSet("ruby")
	.components([<material:calcium> * 2, <material:aluminium> * 3, <material:silicon> * 3, <material:oxygen> * 12])
	.flags(["generate_plate", "generate_rod", "generate_lens"])
	.ore()
	.build();
# Amber
var amber = MaterialBuilder(4006, "amber")
	.gem(6)
	.color(0xE4B535)
	.iconSet("diamond")
	.components([<material:carbon> * 10, <material:hydrogen> * 16, <material:oxygen> * 1, <material:magic> * 1])
	.flags(["generate_plate", "generate_rod", "generate_lens"])
	.ore()
	.build();
	
// Prexisting
# Stone
var stoneGT = MaterialRegistry.get("stone");
stoneGT.addTools(1,1,40,1);
var peridotGT = MaterialRegistry.get("peridot");
peridotGT.addTools(12,3,344,4,true);
var tanzaniteGT = MaterialRegistry.get("tanzanite");
tanzaniteGT.addTools(15,5,408,4,true);
