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
var element_pyrotheum = Elements.add(137, 200, -1, null, "Pyrotheum", "Py", false);
var element_cryotheum = Elements.add(138, 204, -1, null, "Cryotheum", "Cy", false);
var element_sanae = Elements.add(139, 138, -1, null, "Sanaen", "Sk", false);

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
# Pyrotheum
var pyrotheum = MaterialBuilder(30014, "pyrotheum")
	.element("Pyrotheum")
	.fluid("fluid", true)
	.dust()
	.color(0xE35305)
	.iconSet("sand")	
	.build();
# Cryotheum
var cryotheum = MaterialBuilder(30015, "cryotheum")
	.element("Cryotheum")
	.fluid("fluid", true)
	.dust()
	.color(0x8FE1FF)
	.iconSet("sand")	
	.build();
# Sanaen
var sanae = MaterialBuilder(30016, "sanae")
	.element("Sanaen")
	.dust()
	.color(0x287830)
	.iconSet("shiny")	
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
	.flags(["generate_plate", "generate_rod", "generate_lens", "disable_decomposition"])
	.ore()
	.build();
# Refined Obsidian
var refined_bsidian = MaterialBuilder(24005, "refined_obsidian")
	.ingot(9)
	.color(0x8067AA)
	.iconSet("shiny")
	.blastTemp(4480, "HIGH", 2880)
	.flags(["generate_plate", "generate_rod", "disable_decomposition", "generate_dense", "exclude_block_crafting_by_hand_recipes", "generate_gear", "generate_bolt_screw"])
	.components([<material:obsidian> * 1, <material:diamond> * 1])
	.build();
# Tanzanite
var tanzanite = MaterialBuilder(24006, "tanzanite")
	.gem(7)
	.color(0x7800CC)
	.iconSet("quartz")
	.components([<material:calcium> * 2, <material:aluminium> * 3, <material:silicon> * 3, <material:oxygen> * 12])
	.flags(["generate_plate", "generate_rod", "generate_lens", "disable_decomposition"])
	.ore()
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
	.color(0x83764A)
	.iconSet("metallic")
	.toolStats(14, 0.6, 480, 4)
	.flags(["no_smashing", "exclude_block_crafting_by_hand_recipes", "generate_plate"])
	.build();
# Runic Metal
var runicMetal = MaterialBuilder(24010, "runicmetal")
	.ingot(3)
	.color(0x696A76)
	.iconSet("metallic")
	.toolStats(21, 3,1200,6)
	.components([<material:runic> * 1])
	.flags(["disable_decomposition", "exclude_block_crafting_by_hand_recipes", "generate_plate", "generate_rod"])
	.build();
# Mana
var mana = MaterialBuilder(24011, "mana")
	.fluid("fluid", true)
	.gem()
	.color(0x33C0D6)
	.iconSet("diamond")
	.components([<material:magic> * 1])
	.flags(["disable_decomposition", "exclude_block_crafting_by_hand_recipes"])
	.build();
# Cryolite
var cryolite = MaterialBuilder(24012, "cryolite")
	.gem(4)
	.color(0xDCE6F5)
	.iconSet("quartz")
	.components([<material:sodium> * 3, <material:aluminium> * 1, <material:fluorine> * 6])
	.ore(8, 2, false)
	.addOreByproducts(<material:silver>, <material:sapphire>)
	.build();
# Alumina
var alumina = MaterialBuilder(24013, "alumina")
	.dust()
	.color(0xD8F0F2)
	.iconSet("rough")
	.components([<material:aluminium> * 2, <material:oxygen> * 3])
	.flags(["disable_decomposition"])
	.build();
# Knightmetal
var knightmetal = MaterialBuilder(24014, "knightmetal")
	.ingot()
	.color(0xD8F2DD)
	.iconSet("shiny")
	.toolStats(30, 6, 3000,7)
	.components([<material:iron> * 1])
	.flags(["disable_decomposition", "exclude_block_crafting_by_hand_recipes", "generate_plate", "generate_rod"])
	.build();
# Carminite
var carminite = MaterialBuilder(24015, "carminite")
	.gem(6)
	.color(0x820505)
	.iconSet("quartz")
	.ore()
	.build();
# Manasteel
var manasteel = MaterialBuilder(24016, "manasteel")
	.ingot(7)
	.color(0x2869EB)
	.iconSet("shiny")
	.toolStats(25, 7.7,2000,7)
	.components([<material:stainless_steel> * 1, <material:mana> * 1])
	.flags(["disable_decomposition", "exclude_block_crafting_by_hand_recipes", "generate_plate", "generate_rod"])
	.build();
# Aluminium Hydroxide
var aloh = MaterialBuilder(24017, "aloh")
	.dust()
	.color(0xB4E9ED)
	.iconSet("sand")
	.build();
# Assembly Steel
var asssteel = MaterialBuilder(24018, "asssteel")
	.ingot()
	.color(0xFA7600)
	.iconSet("shiny")
	.blastTemp(1300)
	.components([<material:steel> * 4, <material:copper> * 4, <material:chrome> * 1])
	.flags("generate_plate", "generate_bolt_screw", "generate_rod")
	.build();
# Precious Metal
var precious_metal = MaterialBuilder(24019, "precious_metal")
	.dust()
	.color(0x403921)
	.iconSet("shiny")
	.ore(2, 1, false)
	.addOreByproducts(<material:gold>)
	.build();
# Chloroauric Acid
var aucl = MaterialBuilder(24022, "chloroauric_acid")
	.fluid("fluid", false)
	.color(0xFFB71C)	
	.build();
# Crude Platinum
var ptmp = MaterialBuilder(24023, "platinum_crude")
	.dust()
	.color(0x524324)
	.iconSet("rough")
	.build();
# Dark Steel
var dark_steel = MaterialBuilder(24024, "dark_steel")
	.ingot()
	.color(0x2B2B2B)
	.iconSet("metallic")
	.toolStats(12.6, 6, 1536,7)
	.blastTemp(1700, null, 480, 700)
	.itemPipeProperties(64, 4)
	.components([<material:steel> * 1, <material:obsidian> * 1])
	.flags(["exclude_block_crafting_by_hand_recipes", "generate_plate", "generate_rod"])
	.build();
# Valkyrie Metal
var valkyrie = MaterialBuilder(24025, "valkyrie")
	.ingot()
	.color(0xFDFFD9)
	.iconSet("shiny")
	.toolStats(20.2, 6, 2200,7)
	.components([<material:titanium> * 1, <material:sanae> * 1])
	.flags(["exclude_block_crafting_by_hand_recipes", "disable_decomposition", "generate_plate", "generate_rod", "generate_bolt_screw", "generate_ring", "generate_rotor"])
	.build();
# Fluix
var fluix = MaterialBuilder(24026, "fluix")
	.gem()
	.color(0x730096)
	.iconSet("certus")
	.components([<material:certus_quartz> * 1, <material:nether_quartz> * 1, <material:redstone> * 1])
	.flags(["generate_plate", "generate_rod", "generate_lens"])
	.build();
# Holystone
var holystone = MaterialBuilder(24027, "holystone")
	.dust()
	.color(0xA1ACAD)
	.iconSet("rough")
	.components([<material:silicon_dioxide> * 1, <material:ilmenite> * 1, <material:sanae> * 1])
	.flags(["disable_decomposition"])
	.build();
# Bauxilmenite
var bauxilmenite = MaterialBuilder(24028, "bauxilmenite")
	.dust()
	.color(0x330D00)
	.iconSet("rough")
	.components([<material:bauxite> * 1, <material:ilmenite> * 1])
	.flags(["disable_decomposition"])
	.build();
# Polymer Silicon
var polysi = MaterialBuilder(24029, "polysilicon")
	.dust()
	.color(0x565672)
	.iconSet("metallic")
	.flags(["generate_plate"])
	.build();

// Prexisting
# Stone
<material:stone>.addTools(0, 0, 0, 40);
# Gold
<material:gold>.addFlags("generate_gear");
# Copper
<material:copper>.addFlags("generate_bolt_screw");
# Invar
<material:invar>.addFlags("generate_double_plate");
# Iron
<material:iron>.addFlags("generate_double_plate");
# Polycaprolactam
<material:polycaprolactam>.addFlags("generate_ring");
# Carminite
<material:carminite>.setFormula("(PbFe2(AsO4)2(OH)2)Ma", true);
# Aluminium Hydroxide
<material:aloh>.setFormula("Al(OH)3", true);
# Plastic
<material:plastic>.addFlags("generate_ring");
# Ironwood
<material:ironwood>.setFormula("Fe9(Au(Ma?))", true);
# Precious Metal
<material:precious_metal>.setFormula("?(Au)", true);
# Chloroauric Acid
<material:chloroauric_acid>.setFormula("H(AuCl4)", true);
# Platinum Metallic Powder
<material:platinum_crude>.setFormula("Pt?", true);
# Poly Si
<material:polysilicon>.setFormula("poly*-Si", true);

