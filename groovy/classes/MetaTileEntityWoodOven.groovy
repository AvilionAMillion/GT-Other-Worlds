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

public class MetaTileEntityWoodOven extends RecipeMapMultiblockController {

    private static final RecipeMap<SimpleRecipeBuilder> WOODOVEN_RECIPES = new RecipeMap<>("woodoven", 1, 1, 0, 1, new SimpleRecipeBuilder(), false)


    public MetaTileEntityWoodOven(ResourceLocation metaTileEntityId) {
        super(metaTileEntityId, WOODOVEN_RECIPES)
    }

    @Override
    public MetaTileEntity createMetaTileEntity(IGregTechTileEntity tileEntity) {
        return new MetaTileEntityWoodOven(metaTileEntityId)
    }

    @Override
    protected BlockPattern createStructurePattern() {
        return FactoryBlockPattern.start()
                .aisle("XFX", "XFX", "XFX")
                .aisle("FFF", "F#F", "FFF")
                .aisle("XFX", "XSX", "XFX")
                .where('S' as char, selfPredicate())
                .where('F' as char, states(MetaBlocks.METAL_CASING.getState(BlockMetalCasing.MetalCasingType.PRIMITIVE_BRICKS)))
                .where('X' as char, states(MetaBlocks.METAL_CASING.getState(BlockMetalCasing.MetalCasingType.BRONZE_BRICKS))
                        .setMinGlobalLimited(6)
                        .or(autoAbilities()))
                .where('#' as char, air())
                .build()
    }

    @Override
    public ICubeRenderer getBaseTexture(IMultiblockPart sourcePart) {
        return Textures.BRONZE_PLATED_BRICKS
    }
}


