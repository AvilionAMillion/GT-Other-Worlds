#loader gregtech
// Gregtech Integration
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.enchantments.IEnchantmentDefinition;

// Botania
	#Manasteel
val materialManasteel = MaterialRegistry.createIngotMaterial(480, "manasteel", 0x3D78DB, "SHINY", 2);
materialManasteel.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW", "GENERATE_GEAR"]);

	#Elementium
val materialElvenElementium = MaterialRegistry.createIngotMaterial(481, "elven_elementium", 0xD43EE8, "SHINY", 2);
materialElvenElementium.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW", "GENERATE_GEAR"]);

	#Terrasteel
val materialTerrasteel = MaterialRegistry.createIngotMaterial(482, "terrasteel", 0x31E52B, "SHINY", 6, null, 20.0f, 6, 12800);
materialTerrasteel.addToolEnchantment(<enchantment:minecraft:fortune> * 3); 
materialTerrasteel.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW", "GENERATE_GEAR"]);

