// Standard Crafting
crafting.addShaped('evapLV', item('gregtech:machine:29011'), [
        [item('minecraft:glass'), ore('circuitLv'), item('minecraft:glass')],
        [item('gregtech:meta_item_1:97'), item('gregtech:machine:986'), item('gregtech:meta_item_1:97')],
        [item('gregtech:cable_single:112'), ore('circuitLv'), item('gregtech:cable_single:112')]])
crafting.addShaped('evapMV', item('gregtech:machine:29012'), [
        [item('minecraft:glass'), ore('circuitLv'), item('minecraft:glass')],
        [item('gregtech:meta_item_1:98'), item('gregtech:machine:987'), item('gregtech:meta_item_1:98')],
        [item('gregtech:cable_single:25'), ore('circuitMv'), item('gregtech:cable_single:25')]])




// LV Recipes
mods.gregtech.evaporator.recipeBuilder()
        .fluidInputs(fluid('hotclaymud') * 100)
        .outputs(item('gregtech:meta_dust:356') * 6, item('gtow:alkalisalt'))
        .chancedOutput(item('gtow:alkalisalt'), 2500, 1000)
        .chancedOutput(item('gregtech:meta_dust_small:377'), 1500, 1000)
        .chancedOutput(item('gregtech:meta_dust_small:51'), 1000, 700)
        .duration(600)
        .EUt(30)
        .buildAndRegister()
mods.gregtech.evaporator.recipeBuilder()
        .fluidInputs(fluid('chloroauric_acid') * 500)
        .outputs(item('gtow:blanchedgold') * 3)
        .chancedOutput(item('gregtech:meta_dust', 41), 4500, 1500)
        .duration(600)
        .EUt(24)
        .buildAndRegister()

// MV recipes
// Nickel Froth
mods.gregtech.evaporator.recipeBuilder()
    .fluidInputs(fluid('froth_nickel') * 100)
    .outputs(item('gregtech:meta_dust', 69))
    .chancedOutput(item('gregtech:meta_dust', 69), 8000, 500)
    .chancedOutput(item('gregtech:meta_dust', 69), 2000, 500)
    .chancedOutput(item('gtow:sludge_nickel'), 3000, 1500)
    .duration(30)
    .EUt(100)
    .buildAndRegister()
// Nickel Wastewater
mods.gregtech.evaporator.recipeBuilder()
        .fluidInputs(fluid('wastewater_nickel') * 100)
        .chancedOutput(item('gregtech:meta_dust', 69), 1000, 750)
        .chancedOutput(item('gregtech:meta_dust', 51), 2000, 1000)
        .chancedOutput(item('gregtech:meta_dust', 23), 1000, 500)
        .duration(10)
        .EUt(80)
        .buildAndRegister()