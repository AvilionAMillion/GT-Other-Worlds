#loader gregtech
# priority 100
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import mods.gregtech.material.Elements;

// This is the Zenscript File that codes for all the harvest levels for GT ores
// Hopefully this is all that's needed... 4/19/22
// Reference list of Mining Level Names
# 1 - Wood (Will Not Be Used)
# 2 - Flint
# 3 - Bronze
# 4 - Iron
# 5 - Wrought Iron
# 6 - Steel



// Harvest Level (Will Be Done By Name)
	<material:banded_iron>.setHarvestLevel(3);
	<material:basaltic_mineral_sand>.setHarvestLevel(3);
	<material:bornite>.setHarvestLevel(2);
	<material:brown_limonite>.setHarvestLevel(3);
	<material:calcite>.setHarvestLevel(5);
	<material:cassiterite>.setHarvestLevel(2);
	<material:cassiterite_sand>.setHarvestLevel(2);
	<material:chalcocite>.setHarvestLevel(2);
	<material:chalcopyrite>.setHarvestLevel(2);
	<material:cinnabar>.setHarvestLevel(4);
	<material:coal>.setHarvestLevel(2);
	<material:copper>.setHarvestLevel(2);
	<material:galena>.setHarvestLevel(2);
	<material:gold>.setHarvestLevel(4);
	<material:granitic_mineral_sand>.setHarvestLevel(3);
	<material:gypsum>.setHarvestLevel(5);
	<material:iron>.setHarvestLevel(3);
	<material:lead>.setHarvestLevel(2);
	<material:magnetite>.setHarvestLevel(3);
	<material:malachite>.setHarvestLevel(2);
	<material:pyrite>.setHarvestLevel(3);
	<material:redstone>.setHarvestLevel(4);
	<material:ruby>.setHarvestLevel(3);
	<material:silver>.setHarvestLevel(4);
	<material:steel>.setHarvestLevel(6);
	<material:stone>.setHarvestLevel(1);
	<material:tetrahedrite>.setHarvestLevel(2);
	<material:tin>.setHarvestLevel(2);
	<material:vanadium_magnetite>.setHarvestLevel(5);
	<material:wrought_iron>.setHarvestLevel(5);
	<material:yellow_limonite>.setHarvestLevel(3);