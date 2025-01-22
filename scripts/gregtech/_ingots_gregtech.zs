// GTOW ZS File
// Made by GTOW Team
import crafttweaker.block.IBlockState;
import mods.roots.predicates.Predicates;
import mods.roots.predicates.StatePredicate;
import mods.roots.predicates.BlockStateBelow;
import mods.roots.predicates.PropertyPredicate;
import mods.roots.Transmutation;
import mods.roots.Chrysopoeia;
import mods.mekanism.reaction;

// Furnace
furnace.remove(<gregtech:meta_nugget:335>);
furnace.remove(<gregtech:meta_ingot:24008>);

// Transmutation (Roots)
Transmutation.addStateToItemRecipe("runicmetal", PropertyPredicate.create(<blockstate:gregtech:meta_block_compressed_1500:variant=ironwood> as IBlockState, "variant"), <gregtech:meta_ingot:24010>, null);

// Chrysopoeia (Roots)
Chrysopoeia.addRecipe("runicmetal", <gregtech:meta_dust:24008>, <gregtech:meta_ingot:24010>);

// PRC
mods.mekanism.reaction.addRecipe(<contenttweaker:dopedrubber> * 2, <liquid:oil> * 500, <gas:hydrogen> * 200, <gregtech:meta_dust:1015>, <gas:hydrogen> * 20, 50000, 800);