// Standard Crafting
crafting.addShaped('evapLV', item('gregtech:machine:29011'), [
        [item('minecraft:glass'), ore('circuitLv'), item('minecraft:glass')],
        [item('gregtech:meta_item_1:97'), item('gregtech:machine:986'), item('gregtech:meta_item_1:97')],
        [item('gregtech:cable_single:112'), ore('circuitLv'), item('gregtech:cable_single:112')]])




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