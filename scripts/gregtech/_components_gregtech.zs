// Gregtech Circuit File
// Made by GTOW Team

// This File is pertaining to all gregtech component crafting recipes
import mods.mekanism.reaction;
import mods.mekanism.chemical.injection;

// Val

// Removal
recipes.remove(<gregtech:meta_item_1:128>);
recipes.remove(<gregtech:meta_item_1:173>);
recipes.remove(<gregtech:meta_item_1:143>);
recipes.remove(<gregtech:meta_item_1:158>);
recipes.remove(<gregtech:meta_item_1:188>);
recipes.remove(<gregtech:meta_item_1:218>);
recipes.remove(<gregtech:meta_item_1:233>);
recipes.remove(<gregtech:meta_item_1:203>);

// MV Components
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvmotor>, <gas:hydrogen> * 100, <gregtech:meta_item_1:128>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvpiston>, <gas:hydrogen> * 100, <gregtech:meta_item_1:173>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvpump>, <gas:hydrogen> * 100, <gregtech:meta_item_1:143>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvconveyer>, <gas:hydrogen> * 100, <gregtech:meta_item_1:158>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvrobotarm>, <gas:hydrogen> * 100, <gregtech:meta_item_1:188>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvemitter>, <gas:hydrogen> * 100, <gregtech:meta_item_1:218>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvsensor>, <gas:hydrogen> * 100, <gregtech:meta_item_1:233>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvfieldgenerator>, <gas:hydrogen> * 100, <gregtech:meta_item_1:203>);