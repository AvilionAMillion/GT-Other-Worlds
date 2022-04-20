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
# Tetrahedrite
Bloomery.createBloomeryBuilder(
        "tetrahedrite_bloom",
        <gregtech:meta_nugget:25>,
        <gregtech:ore_tetrahedrite_0>
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(7500)
    .setFailureChance(0.6)
    .setBloomYield(15, 18)
    .addFailureItem(<pyrotech:slag>, 1)
    .addFailureItem(<gregtech:meta_dust_tiny:25>, 1)
    .register();
# Bornite
Bloomery.createBloomeryBuilder(
        "bornite_bloom",
        <gregtech:meta_nugget:25>,
        <gregtech:ore_bornite_0>
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(7000)
    .setFailureChance(0.5)
    .setBloomYield(9, 14)
    .addFailureItem(<pyrotech:slag>, 2)
    .addFailureItem(<gregtech:meta_dust_tiny:25>, 1)
    .register();
# Chalcocite
Bloomery.createBloomeryBuilder(
        "chalcocite_bloom",
        <gregtech:meta_nugget:25>,
        <gregtech:ore_chalcocite_0>
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(9000)
    .setFailureChance(0.6)
    .setBloomYield(10, 13)
    .addFailureItem(<pyrotech:slag>, 2)
    .addFailureItem(<gregtech:meta_dust_tiny:25>, 1)
    .register();
# Malachite
Bloomery.createBloomeryBuilder(
        "malachite_bloom",
        <gregtech:meta_nugget:25>,
        <gregtech:ore_malachite_0>
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(9000)
    .setFailureChance(0.7)
    .setBloomYield(9, 11)
    .addFailureItem(<pyrotech:slag>, 2)
    .addFailureItem(<gregtech:meta_dust_tiny:262>, 1)
    .register();
	
	
// Tin Ores
# Tin
Bloomery.createBloomeryBuilder(
        "tin_bloom",
        <gregtech:meta_nugget:112>,
        <gregtech:ore_tin_0>
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(2000)
    .setFailureChance(0.5)
    .setBloomYield(11, 14)
    .addFailureItem(<pyrotech:slag>, 2)
    .addFailureItem(<gregtech:meta_dust_tiny:112>, 1)
    .register();
# Cassiterite
Bloomery.createBloomeryBuilder(
        "cassiterite_bloom",
        <gregtech:meta_nugget:112>,
        <gregtech:ore_cassiterite_0>
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(4000)
    .setFailureChance(0.6)
    .setBloomYield(20, 24)
    .addFailureItem(<pyrotech:slag>, 2)
    .addFailureItem(<gregtech:meta_dust_tiny:112>, 1)
    .register();
# Cassiterite
Bloomery.createBloomeryBuilder(
        "cassiteritesand_bloom",
        <gregtech:meta_nugget:112>,
        <gregtech:ore_cassiterite_sand_0>
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(4000)
    .setFailureChance(0.65)
    .setBloomYield(18, 21)
    .addFailureItem(<pyrotech:slag>, 2)
    .addFailureItem(<gregtech:meta_dust_tiny:112>, 1)
    .register();