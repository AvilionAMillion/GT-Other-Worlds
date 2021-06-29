// GregTech Materials
#loader gregtech
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.enchantments.IEnchantmentDefinition;

// Additional Tool Flags
	# Nickel Gear
<material:nickel>.addFlags("GENERATE_GEAR");
	# Red Alloy Bolt
<material:red_alloy>.addFlags("GENERATE_BOLT_SCREW");
	#Fine Graphite Wire
<material:graphite>.addFlags("GENERATE_FINE_WIRE");
	#Small Gold Gear
<material:gold>.addFlags("GENERATE_SMALL_GEAR");

// Tool Registry
	#Stone
var materialStone = MaterialRegistry.createIngotMaterial(
	475, "cobblestone", 0x6C696C, "dull", 1, 
	null, 
	4.0f,
	1,
	32);
	
# Ingot Registry
	//Titanium Aluminide
val materialTitaniumAluminide = MaterialRegistry.createIngotMaterial(476, "titanium_aluminide", 0x9BC2E6, "METALLIC", 6, [<material:titanium> * 3, <material:aluminium> * 7]);
materialTitaniumAluminide.addFlags(["GENERATE_BOLT_SCREW", "GENERATE_PLATE", "GENERATE_GEAR", "GENERATE_FOIL", "GENERATE_ROD", "NO_SMELTING"]);
	//Titanium Iridium Alloy
val materialTitaniumIridium = MaterialRegistry.createIngotMaterial(477, "titanium_iridium", 0xEDEDED, "METALLIC", 6, [<material:titanium> * 1, <material:iridium> * 1]);
materialTitaniumIridium.addFlags(["GENERATE_BOLT_SCREW", "GENERATE_PLATE", "GENERATE_GEAR", "GENERATE_FOIL", "GENERATE_ROD", "NO_SMELTING"]);
	// Compressed Iron
val materialCompressedIron = MaterialRegistry.createIngotMaterial(478, "iron_compressed", 0x797979, "METALLIC", 6, [<material:iron> * 1]);
materialCompressedIron.addFlags(["GENERATE_BOLT_SCREW", "GENERATE_PLATE", "GENERATE_GEAR"]);

# Dust Registry
val materialBasalz = MaterialRegistry.createDustMaterial(480, "basalz", 0x78707C, "DULL", 3, [<material:obsidian> * 1, <material:redstone> * 1, <material:oil_heavy> * 1]);
val materialPetrotheum = MaterialRegistry.createDustMaterial(481, "petrotheum", 0x665F68, "SAND", 3, [<material:obsidian> * 1, <material:redstone> * 1, <material:basalz> * 2]);