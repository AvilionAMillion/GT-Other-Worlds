// GTOW ZS File
// Made by GTOW Team
import mods.pyrotech.Bloomery;

Bloomery.createBloomeryBuilder(
        "copper_bloom",   // recipe name
        <gregtech:meta_nugget:25>, // output
        <gregtech:ore_copper_0>    // input
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(6000)
    .setFailureChance(0.5)
    .setBloomYield(9, 12)
    .addFailureItem(<pyrotech:slag>, 2)
    .addFailureItem(<gregtech:meta_dust_tiny:25>, 1)
    .register();
Bloomery.createBloomeryBuilder(
        "copper_pure_bloom",   // recipe name
        <gregtech:meta_nugget:25>, // output
        <gregtech:meta_dust:25>     // input
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(4500)
    .setFailureChance(0.2)
    .setBloomYield(11, 11)
    .addFailureItem(<pyrotech:slag>, 4)
    .register();

