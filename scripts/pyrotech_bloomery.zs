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
    .setBloomYield(12, 16)
    .addFailureItem(<pyrotech:slag>, 2)
    .addFailureItem(<gregtech:meta_dust_tiny:25>, 1)
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
    .setBloomYield(12, 14)
    .addFailureItem(<pyrotech:slag>, 2)
    .addFailureItem(<gregtech:meta_dust_tiny:25>, 1)
    .register();