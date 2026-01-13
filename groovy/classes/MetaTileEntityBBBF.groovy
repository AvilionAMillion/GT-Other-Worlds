package classes

import gregtech.api.GTValues
import gregtech.api.metatileentity.MetaTileEntity
import gregtech.api.capability.impl.SteamMultiWorkable
import gregtech.api.metatileentity.interfaces.IGregTechTileEntity
import gregtech.api.metatileentity.multiblock.IMultiblockPart
import gregtech.api.metatileentity.multiblock.RecipeMapSteamMultiblockController
import gregtech.api.pattern.BlockPattern
import gregtech.api.pattern.FactoryBlockPattern
import gregtech.api.pattern.TraceabilityPredicate
import gregtech.api.recipes.RecipeMap
import gregtech.api.recipes.builders.SimpleRecipeBuilder
import gregtech.client.renderer.ICubeRenderer
import gregtech.client.particle.VanillaParticleEffects
import gregtech.common.ConfigHolder

import gregtech.client.renderer.texture.Textures
import gregtech.common.blocks.BlockMetalCasing
import gregtech.common.blocks.MetaBlocks


import net.minecraft.init.SoundEvents
import net.minecraft.util.*
import net.minecraft.util.math.BlockPos
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly
import net.minecraft.util.ResourceLocation


public class MetaTileEntityBBBF extends RecipeMapSteamMultiblockController {

    private static final RecipeMap<SimpleRecipeBuilder> BBBF_RECIPES = new RecipeMap<>("bbbf", 3, 3, 0, 0, new SimpleRecipeBuilder(), false)

    @Override
    public MetaTileEntity createMetaTileEntity(IGregTechTileEntity tileEntity) {
        return new MetaTileEntityBBBF(metaTileEntityId)
    }

    public MetaTileEntityBBBF(ResourceLocation metaTileEntityId) {
        super(metaTileEntityId, BBBF_RECIPES, 0.5)
        this.recipeMapWorkable = new SteamMultiWorkable(this, 0.5)
    }

    @Override
    protected BlockPattern createStructurePattern() {
        return FactoryBlockPattern.start()
                .aisle("FFF****", "FFF****", "FFF****", "FFF****")
                .aisle("FFF***H", "F#PPPPB", "F#F***C", "F#F***D")
                .aisle("FFF****", "FSF****", "FFF****", "FFF****")
                .where('S' as char, selfPredicate())
                .where('F' as char, states(MetaBlocks.METAL_CASING.getState(BlockMetalCasing.MetalCasingType.PRIMITIVE_BRICKS))
                        .setMinGlobalLimited(16)
                        .or(autoAbilities(false, false, true, true, false)))
                .where('H' as char, states(MetaBlocks.METAL_CASING.getState(BlockMetalCasing.MetalCasingType.STEEL_SOLID))
                        .setMinGlobalLimited(0)
                        .or(autoAbilities(true, false, false, false, false)))
                .where('B' as char, states(blockstate('gtow:casing_bellowsbottom')))
                .where('C' as char, states(blockstate('gtow:casing_bellows')))
                .where('D' as char, states(blockstate('gtow:casing_bellowstop')))
                .where('P' as char, states(blockstate('gregtech:boiler_casing', 'variant=bronze_pipe')))
                .where('#' as char, air())
                .where('*' as char, TraceabilityPredicate.ANY)
                .build()
    }

    @Override
    public ICubeRenderer getBaseTexture(IMultiblockPart sourcePart) {
        return Textures.PRIMITIVE_BRICKS
    }

    @Override
    public boolean hasMaintenanceMechanics() {
        return false
    }

    @SideOnly(Side.CLIENT)
    @Override
    protected ICubeRenderer getFrontOverlay() {
        return Textures.PRIMITIVE_BLAST_FURNACE_OVERLAY
    }

    @SideOnly(Side.CLIENT)
    @Override
    public void randomDisplayTick() {
        if (this.isActive()) {
            VanillaParticleEffects.defaultFrontEffect(this, 0.3F, EnumParticleTypes.SMOKE_LARGE,
                    EnumParticleTypes.FLAME);
            if (ConfigHolder.machines.machineSounds && GTValues.RNG.nextDouble() < 0.1) {
                BlockPos pos = getPos();
                getWorld().playSound(pos.getX() + 0.5F, pos.getY() + 0.5F, pos.getZ() + 0.5F,
                        SoundEvents.BLOCK_FURNACE_FIRE_CRACKLE, SoundCategory.BLOCKS, 1.0F, 1.0F, false);
            }
        }
    }

}



