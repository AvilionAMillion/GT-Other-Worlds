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
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtSingleCopper> * 2, <metaitem:stickAluminium> * 2, <metaitem:stickSteelMagnetic>, <metaitem:wireGtDoubleCupronickel> * 4], null).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtSingleCopper>, <metaitem:pipeNormalFluidSteel>, <metaitem:screwBronze>, <metaitem:rotorBronze>, <metaitem:ringStyreneButadieneRubber> * 2, <metaitem:electric.motor.mv>], null).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtSingleCopper>, <metaitem:pipeNormalFluidSteel>, <metaitem:screwBronze>, <metaitem:rotorBronze>, <metaitem:ringSiliconeRubber> * 2, <metaitem:electric.motor.mv>], null).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtSingleCopper>, <metaitem:pipeNormalFluidSteel>, <metaitem:screwBronze>, <metaitem:rotorBronze>, <metaitem:ringRubber> * 2, <metaitem:electric.motor.mv>], null).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtSingleCopper>, <metaitem:electric.motor.mv> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:styrene_butadiene_rubber> * 864]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtSingleCopper>, <metaitem:electric.motor.mv> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:silicone_rubber> * 864]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtSingleCopper>, <metaitem:electric.motor.mv> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:rubber> * 864]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:stickAluminium> * 2, <metaitem:cableGtSingleCopper> * 2, <metaitem:plateAluminium> * 3, <metaitem:gearSmallAluminium>, <metaitem:electric.motor.mv>], null).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtSingleCopper> * 3, <metaitem:stickAluminium> * 2, <metaitem:electric.motor.mv> * 2, <metaitem:electric.piston.mv>, <metaitem:circuit.good_electronic>], null).remove();
<recipemap:assembler>.findRecipe(30, [<minecraft:ender_eye:0>, <metaitem:plateAluminium> * 2, <metaitem:circuit.good_electronic> * 2, <metaitem:wireGtQuadrupleMagnesiumDiboride> * 4], null).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:stickElectrum> * 4, <metaitem:cableGtSingleCopper> * 2, <metaitem:circuit.good_electronic> * 2, <metaitem:gemFlawlessEmerald>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:stickElectrum>, <metaitem:plateAluminium> * 4, <metaitem:circuit.good_electronic>, <metaitem:gemFlawlessEmerald>], null).remove();


// MV Components
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvmotor>, <gas:hydrogen> * 100, <gregtech:meta_item_1:128>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvpiston>, <gas:hydrogen> * 100, <gregtech:meta_item_1:173>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvpump>, <gas:hydrogen> * 100, <gregtech:meta_item_1:143>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvconveyer>, <gas:hydrogen> * 100, <gregtech:meta_item_1:158>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvrobotarm>, <gas:hydrogen> * 100, <gregtech:meta_item_1:188>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvemitter>, <gas:hydrogen> * 100, <gregtech:meta_item_1:218>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvsensor>, <gas:hydrogen> * 100, <gregtech:meta_item_1:233>);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:mvfieldgenerator>, <gas:hydrogen> * 100, <gregtech:meta_item_1:203>);