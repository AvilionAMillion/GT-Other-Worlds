#loader gregtech
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;
import mods.gregtech.material.Elements;

// Elements
var element_utsuhonium = Elements.add(134, 201, -1, null, "Utsuhonium", "Ut", false);
var element_kaenbyonum = Elements.add(135, 209, -1, null, "Kaenbyonum", "Ka", false);

// Gregtech Materials
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
# Okuurinate
var okuurinate = MaterialBuilder(3012, "okuurinate")
	.ingot()
	.color(0x2C7D25)
	.iconSet("metallic")
	.flags(["generate_plate", "generate_rod", "generate_bolt_screw"])
	.blastTemp(4000)
	.components([<material:utsuhonium> * 1, <material:kaenbyonum> * 1])
	.build();
# Bitumous Coal
var bitumous_coal = MaterialBuilder(4000, "bitumous_coal")
	.gem(5, 2400)
	.color(0x25292E)
	.iconSet("lignite")
	.components([<material:carbon> * 1])
	.ore()
	.addOreByproducts(<material:coal>)
	.build();
# Anthracite Coal
var anthracite_coal = MaterialBuilder(4001, "anthracite_coal")
	.gem(5, 3200)
	.color(0x1C1C1C)
	.iconSet("lignite")
	.components([<material:carbon> * 1])
	.ore()
	.addOreByproducts(<material:bitumous_coal>, <material:graphite>)
	.build();
	
