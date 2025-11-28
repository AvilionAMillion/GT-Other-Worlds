package classes

import gregtech.api.metatileentity.MetaTileEntity
import gregtech.api.metatileentity.interfaces.IGregTechTileEntity
import gregtech.api.metatileentity.multiblock.IMultiblockPart
import gregtech.api.metatileentity.multiblock.RecipeMapMultiblockController
import gregtech.api.pattern.BlockPattern
import gregtech.api.pattern.FactoryBlockPattern
import gregtech.api.recipes.RecipeMap
import gregtech.api.recipes.builders.SimpleRecipeBuilder
import gregtech.client.renderer.ICubeRenderer

import gregtech.client.renderer.texture.Textures
import gregtech.common.blocks.BlockMetalCasing
import gregtech.common.blocks.MetaBlocks

import net.minecraft.util.ResourceLocation

public class MetaTileEntityFlotationTank extends RecipeMapMultiblockController {

    private static final RecipeMap<SimpleRecipeBuilder> FLOTTANK_RECIPES = new RecipeMap<>("flottank", 6, 6, 3, 3, new SimpleRecipeBuilder(), false)


    public MetaTileEntityFlotationTank(ResourceLocation metaTileEntityId) {
        super(metaTileEntityId, FLOTTANK_RECIPES)
    }

    @Override
    public MetaTileEntity createMetaTileEntity(IGregTechTileEntity tileEntity) {
        return new MetaTileEntityFlotationTank(metaTileEntityId)
    }

    @Override
    protected BlockPattern createStructurePattern() {
        return FactoryBlockPattern.start()
                .aisle("XXXXX", "XLLLX", "XLLLX", "XFFFX")
                .aisle("XPPPX", "LWWWL", "LWWWL", "F#X#F")
                .aisle("XPXPX", "LWFWL", "LWFWL", "F#M#F")
                .aisle("XPPPX", "LWWWL", "LWWWL", "F###F")
                .aisle("XXSXX", "XLLLX", "XLLLX", "XFFFX")
                .where('S' as char, selfPredicate())
                .where('W' as char, states(Blocks.WATER.getBlockState().getBaseState()))
                .where('M' as char, states(blockstate('gtow:component_motorlv')))
                .where('L' as char, states(blockstate('gtow:casing_lightsteel')))
                .where('F' as char, states(blockstate('gregtech:meta_block_frame_20', 'variant=gregtech__steel')))
                .where('P' as char, states(blockstate('gregtech:boiler_casing', 'variant=steel_pipe')))
                .where('X' as char, states(MetaBlocks.METAL_CASING.getState(BlockMetalCasing.MetalCasingType.STEEL_SOLID))
                        .setMinGlobalLimited(16)
                        .or(autoAbilities()))
                .where('#' as char, air())
                .build()
    }

    @Override
    public ICubeRenderer getBaseTexture(IMultiblockPart sourcePart) {
        return Textures.SOLID_STEEL_CASING
    }
}


