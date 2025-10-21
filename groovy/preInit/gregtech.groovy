import gregtech.api.recipes.RecipeMap
import gregtech.api.recipes.builders.SimpleRecipeBuilder

import gregtech.api.gui.GuiTextures
import gregtech.api.gui.widgets.ProgressWidget.MoveType
import gregtech.core.sound.GTSoundEvents

import gregtech.api.metatileentity.SimpleMachineMetaTileEntity
import gregtech.api.metatileentity.MetaTileEntity
import gregtech.api.GTValues
import gregtech.client.renderer.texture.Textures

import gregtech.common.metatileentities.MetaTileEntities

RecipeMap<SimpleRecipeBuilder> COMPONENTASSEMBLER_RECIPES = new RecipeMap<>("COMPONENTASSEMBLER", 6, 1, 1, 0,
        new SimpleRecipeBuilder(), false)
        .setProgressBar(GuiTextures.PROGRESS_BAR_ARROW, MoveType.HORIZONTAL)
        .setSound(GTSoundEvents.MOTOR)
RecipeMap<SimpleRecipeBuilder> EVAPORATOR_RECIPES = new RecipeMap<>("EVAPORATOR", 1, 6, 2, 0,
        new SimpleRecipeBuilder(), false)
        .setProgressBar(GuiTextures.PROGRESS_BAR_ARROW, MoveType.HORIZONTAL)
        .setSound(GTSoundEvents.MOTOR)

for (int i = 1; i < 7; i++) {
    ResourceLocation rl = new ResourceLocation(GTValues.MODID, "componentassembler" + "." + GTValues.VN[i].toLowerCase())
    MetaTileEntity componentassemblerMachine = new SimpleMachineMetaTileEntity(rl, COMPONENTASSEMBLER_RECIPES, Textures.ASSEMBLER_OVERLAY, i, false)

    MetaTileEntities.registerMetaTileEntity(29000 + i, componentassemblerMachine)
}

for (int i = 1; i < 5; i++) {
        ResourceLocation rl = new ResourceLocation(GTValues.MODID, "evaporator" + "." + GTValues.VN[i].toLowerCase())
        MetaTileEntity evaporatorMachine = new SimpleMachineMetaTileEntity(rl, EVAPORATOR_RECIPES, Textures.EXTRUDER_OVERLAY, i, false)

        MetaTileEntities.registerMetaTileEntity(29010 + i, evaporatorMachine)
}
