// GTOW ZS File
// Made by GTOW Team
import mods.pyrotech.Bloomery;

# Copper
Bloomery.createBloomeryBuilder(
        "copper_bloom",
        <gregtech:meta_nugget:25>,
        <gregtech:ore_copper_0>
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(6000)
    .setFailureChance(0.5)
    .setBloomYield(11, 13)
    .addFailureItem(<pyrotech:slag>, 2)
    .addFailureItem(<gregtech:meta_dust_tiny:25>, 1)
    .register();
Bloomery.createBloomeryBuilder(
        "copper_pure_bloom", 
        <gregtech:meta_nugget:25>,
        <gregtech:meta_dust:25>
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(4500)
    .setFailureChance(0.2)
    .setBloomYield(11, 11)
    .addFailureItem(<pyrotech:slag>, 4)
    .register();

# Chalcopyrite
Bloomery.createBloomeryBuilder(
        "chalcopyrite_bloom",
        <gregtech:meta_nugget:25>,
        <gregtech:ore_chalcopyrite_0>
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(8000)
    .setFailureChance(0.55)
    .setBloomYield(10, 12)
    .addFailureItem(<pyrotech:slag>, 2)
    .addFailureItem(<gregtech:meta_dust_tiny:25>, 1)
    .register();
Bloomery.createBloomeryBuilder(
        "chalcopyrite_pure_bloom", 
        <gregtech:meta_nugget:25>,
        <gregtech:meta_dust:265>
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(6000)
    .setFailureChance(0.3)
    .setBloomYield(11, 11)
    .addFailureItem(<pyrotech:slag>, 4)
    .register();
