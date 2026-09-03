// Fluid Crafting

// Foundry
inWorldCrafting.fluidToFluid.recipeBuilder()
        .fluidInput(fluid('water'))
        .input(item('contenttweaker:refractoryblend'))
        .fluidOutput(fluid('foundry'))
        .register()

// Baffle Cap
inWorldCrafting.fluidToItem.recipeBuilder()
        .fluidInput(fluid('potion_blindness'))
        .input(item('rustic:mooncap_mushroom'))
        .output(item('roots:baffle_cap_mushroom'))
        .register()