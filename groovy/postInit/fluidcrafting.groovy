// Fluid Crafting

// Foundry
inWorldCrafting.fluidToFluid.recipeBuilder()
        .fluidInput(fluid('water'))
        .input(item('contenttweaker:refractoryblend'))
        .fluidOutput(fluid('foundry'))
        .register()

// Baffle Cap
inWorldCrafting.fluidToItem.recipeBuilder()
        .fluidInput(fluid('badjuice'))
        .input(item('rustic:mooncap_mushroom'))
        .output(item('roots:baffle_cap_mushroom'))
        .register()