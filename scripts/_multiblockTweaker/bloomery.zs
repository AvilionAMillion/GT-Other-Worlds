// Bloomery Multiblock Tweaker //

import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;

import mods.gregtech.MetaTileEntities;

import mods.gregtech.recipe.FactoryRecipeMap;

import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;

var loc = "bloomery";
var id = 4008;

// Multiblock
var bloomery_multiblock = Builder.start(loc, id)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            .aisle(
                "CBC",
                "CBC",
                "CSC")
            .aisle(
                "BBB",
                "B B",
                "BBB")
            .aisle(
                "CBC",
                "CBC",
                "CBC")
			.where("S", IBlockMatcher.controller(loc))
			.where(" ", IBlockMatcher.ANY)
			.where("B", <metastate:minecraft:brick_block>)
            .whereOr("C",
                <metastate:gregtech:metal_casing_iron:0> as IBlockMatcher,
                IBlockMatcher.abilityPartPredicate(
                    MultiblockAbility.IMPORT_ITEMS,
                    MultiblockAbility.EXPORT_ITEMS
                ))
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle(
                "IBC",
                "CBC",
                "CBC")
            .aisle(
                "SBB",
                "B B",
                "BBB")
            .aisle(
                "OBC",
                "CBC",
                "CBC")
            .where("C", <metastate:gregtech:metal_casing_iron:0>)
            .where("S", IBlockInfo.controller(loc))
            .where("I", MetaTileEntities.ITEM_IMPORT_BUS[1], IFacing.west())
            .where("O", MetaTileEntities.ITEM_EXPORT_BUS[1], IFacing.west())
            .where("B", <metastate:minecraft:brick_block>)
            .where(" ", IBlockInfo.EMPTY)
            .build())
	.withTexture(<gregtech:metal_casing_iron:0>.asBlock() as ICubeRenderer)
	.withRecipeMap(
        FactoryRecipeMap.start(loc)
		    .minInputs(1)
			.maxInputs(2)
		    .minOutputs(1)
			.maxOutputs(2)
		    .build())
    .buildAndRegister() as Multiblock;
	bloomery_multiblock.noEnergy = true;


// Bloomery Recipes
 // Wrought Iron Charcoal
bloomery_multiblock.recipeMap
	.recipeBuilder()
	.duration(1200)
	.EUt(0)
	.inputs(<minecraft:iron_ingot>,
			<minecraft:coal:1> * 2)
	.outputs(<gregtech:meta_item_1:10197>,
			 <gregtech:meta_item_1:110> * 2)
	.buildAndRegister();
// Wrought Iron Coal
bloomery_multiblock.recipeMap
	.recipeBuilder()
	.duration(800)
	.EUt(0)
	.inputs(<minecraft:iron_ingot>,
			<minecraft:coal> * 2)
	.outputs(<gregtech:meta_item_1:10197>,
			 <gregtech:meta_item_1:110> * 2)
	.buildAndRegister();
// Wrought Iron Coal Coke
bloomery_multiblock.recipeMap
	.recipeBuilder()
	.duration(600)
	.EUt(0)
	.inputs(<minecraft:iron_ingot>,
			<gregtech:meta_item_1:8357>)
	.outputs(<gregtech:meta_item_1:10197>,
			 <gregtech:meta_item_1:110> * 2)
	.buildAndRegister();