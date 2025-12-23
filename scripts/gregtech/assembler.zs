// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val assembler as RecipeMap = <recipemap:assembler>;

// Removal
<recipemap:assembler>.findRecipe(30, [<metaitem:wireGtDoubleCupronickel> * 8, <metaitem:foilBronze> * 8], [<liquid:tin_alloy> * 144]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:glue> * 500]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:plastic> * 144]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:polytetrafluoroethylene> * 72]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:polybenzimidazole> * 9]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:glue> * 500]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:plastic> * 144]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:polytetrafluoroethylene> * 72]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:polybenzimidazole> * 9]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:glue> * 500]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:plastic> * 144]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:polytetrafluoroethylene> * 72]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:polybenzimidazole> * 9]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:glue> * 500]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:plastic> * 144]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:polytetrafluoroethylene> * 72]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:polybenzimidazole> * 9]).remove();



// LV
# LV Control Module
assembler.recipeBuilder()
	.inputs(circuitLV * 4, plateSteel * 4, <gregtech:cable_single:112> * 4, <gregtech:meta_item_1:301>)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.outputs(<contenttweaker:controllv>)
	.EUt(32)
	.duration(860)
	.buildAndRegister();
# Cupronickel Coil Block
assembler.recipeBuilder()
	.inputs(<gregtech:wire_double:274> * 8, <contenttweaker:micainsulation> * 4)
	.fluidInputs(<fluid:tin_alloy> * 288)
	.outputs(<gregtech:wire_coil>)
	.EUt(32)
	.duration(200)
	.buildAndRegister();
# Wood Casing
recipes.remove(<actuallyadditions:block_misc:4>);
assembler.recipeBuilder()
	.inputs(<ore:logWood> * 16)
	.fluidInputs(<fluid:creosote> * 2000)
	.outputs(<actuallyadditions:block_misc:4>)
	.EUt(20)
	.duration(400)
	.buildAndRegister();
# Coated Circuit Board
assembler.recipeBuilder()
	.inputs(<gregtech:meta_plate:1648>)
	.fluidInputs(<fluid:glue> * 50)
	.circuit(1)
	.outputs(<gregtech:meta_item_1:381>)
	.EUt(24)
	.duration(150)
	.buildAndRegister();
# Thermal Evaporation Casing
assembler.recipeBuilder()
	.inputs(plateBronze * 6, <gregtech:meta_block_frame_20:4>)
	.circuit(6)
	.outputs(<mekanism:basicblock2> * 3)
	.EUt(24)
	.duration(100)
	.buildAndRegister();
# Thermal Evaporation Valve
assembler.recipeBuilder()
	.inputs(<mekanism:basicblock2>, pumpLV, <gregtech:meta_rotor:324>)
	.circuit(1)
	.outputs(<mekanism:basicblock:15>)
	.EUt(24)
	.duration(100)
	.buildAndRegister();
# Light Steel Machine Casing
assembler.recipeBuilder()
	.inputs(<gregtech:meta_block_frame_20:4>, plateSteel * 2)
	.fluidInputs(<liquid:plastic> * 576)
	.outputs(<gtow:casing_lightsteel> * 2)
	.circuit(6)
	.EUt(16)
	.duration(50)
	.buildAndRegister();
# Pressure Gauge
assembler.recipeBuilder()
	.inputs(<gregtech:meta_plate:1068>, <gregtech:meta_item_1:301>)
	.outputs(<pneumaticcraft:pressure_gauge>)
	.circuit(2)
	.EUt(16)
	.duration(400)
	.buildAndRegister();
# Drill Program
assembler.recipeBuilder()
	.inputs(<gregtech:meta_plate:24018>, circuitLV)
	.outputs(<pneumaticcraft:assembly_program>)
	.circuit(1)
	.EUt(20)
	.duration(400)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<pneumaticcraft:assembly_program:1>)
	.outputs(<pneumaticcraft:assembly_program>)
	.circuit(1)
	.EUt(20)
	.duration(400)
	.buildAndRegister();
# Laser Program
assembler.recipeBuilder()
	.inputs(<gregtech:meta_plate:24018>, circuitLV)
	.outputs(<pneumaticcraft:assembly_program:1>)
	.circuit(2)
	.EUt(20)
	.duration(400)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<pneumaticcraft:assembly_program>)
	.outputs(<pneumaticcraft:assembly_program:1>)
	.circuit(1)
	.EUt(20)
	.duration(400)
	.buildAndRegister();
# Dual Program
assembler.recipeBuilder()
	.inputs(<pneumaticcraft:assembly_program>, <pneumaticcraft:assembly_program:1>)
	.outputs(<pneumaticcraft:assembly_program:2>)
	.EUt(32)
	.duration(1000)
	.buildAndRegister();
# Copper Chest
assembler.recipeBuilder()
	.inputs(<ore:chestWood>, <ore:plateDoubleCopper> * 2)
	.outputs(<ironchest:iron_chest:3>)
	.EUt(15)
	.duration(500)
	.buildAndRegister();
# Iron Chest
assembler.recipeBuilder()
	.inputs(<ironchest:iron_chest:3>, <ore:plateDoubleIron> * 2)
	.outputs(<ironchest:iron_chest>)
	.EUt(30)
	.duration(500)
	.buildAndRegister();
# Personal Chest
assembler.recipeBuilder()
	.inputs(<ironchest:iron_chest>, circuitLV, plateSteel * 4)
	.outputs(<mekanism:machineblock:13>)
	.EUt(30)
	.duration(150)
	.buildAndRegister();
	
	
// MV
# Phenolic Circuit Board
<recipemap:assembler>.findRecipe(30, [<metaitem:dustWood>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:glue> * 50]).remove();
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:381>)
	.fluidInputs(<fluid:phenol> * 100)
	.circuit(1)
	.outputs(<gregtech:meta_item_1:382>)
	.EUt(48)
	.duration(150)
	.buildAndRegister();
# Thermal Insulation
assembler.recipeBuilder()
	.inputs(<contenttweaker:micainsulation> * 3, <gtow:yeticlippings> * 1, <gregtech:meta_foil:2> * 6)
	.fluidInputs(<fluid:plastic> * 432)
	.outputs(<gtow:yetiinsulation> * 3)
	.EUt(120)
	.duration(400)
	.buildAndRegister();
# Kanthal Coil Block
assembler.recipeBuilder()
	.inputs(<gregtech:wire_double:288> * 8, <gtow:yetiinsulation> * 4)
	.fluidInputs(<fluid:cupronickel> * 288)
	.outputs(<gregtech:wire_coil:1>)
	.EUt(128)
	.duration(200)
	.buildAndRegister();
# Pressure Chamber Wall
assembler.recipeBuilder()
	.inputs(<gregtech:meta_block_frame_125:11>, <gregtech:meta_plate:2011> * 6)
	.fluidInputs(<fluid:plastic> * 288)
	.outputs(<pneumaticcraft:pressure_chamber_wall> * 2)
	.EUt(90)
	.duration(200)
	.buildAndRegister();
# MV Control Module
assembler.recipeBuilder()
	.inputs(circuitMV * 4, plateAluminium * 4, <gregtech:cable_single:25> * 4, <gregtech:meta_item_1:301>)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.outputs(<gtow:controlmv>)
	.EUt(128)
	.duration(860)
	.buildAndRegister();
# Assembly Line Controller
assembler.recipeBuilder()
	.inputs(<rftools:machine_base>, <gtow:controlmv>, <pneumaticcraft:pressure_tube> * 2, <gregtech:meta_block_frame_125:11>)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.outputs(<pneumaticcraft:assembly_controller>)
	.EUt(90)
	.duration(800)
	.buildAndRegister();
# Assembly Line IO Unit
assembler.recipeBuilder()
	.inputs(<rftools:machine_base>, <gregtech:meta_item_1:188>, <gregtech:meta_plate:24018> * 6, <gregtech:meta_screw:24018> * 4)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.outputs(<pneumaticcraft:assembly_io_unit>)
	.EUt(90)
	.duration(800)
	.buildAndRegister();
# Assembly Line Drill Unit
assembler.recipeBuilder()
	.inputs(<rftools:machine_base>, <gregtech:meta_tool_head_drill:276>, <gregtech:meta_item_1:188>, <gregtech:meta_plate:24018> * 6, <gregtech:meta_screw:24018> * 4)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.outputs(<pneumaticcraft:assembly_drill>)
	.EUt(90)
	.duration(800)
	.buildAndRegister();
# Assembly Line Laser
assembler.recipeBuilder()
	.inputs(<rftools:machine_base>, <gtow:laser>, <gregtech:meta_item_1:188>, <gregtech:meta_plate:24018> * 6, <gregtech:meta_screw:24018> * 4)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.outputs(<pneumaticcraft:assembly_laser>)
	.EUt(90)
	.duration(800)
	.buildAndRegister();
# Assembly Platform
assembler.recipeBuilder()
	.inputs(<rftools:machine_base>, <gregtech:meta_plate:24018> * 8, <gregtech:meta_stick:24018> * 4)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.outputs(<pneumaticcraft:assembly_platform>)
	.EUt(90)
	.duration(800)
	.buildAndRegister();
# Low Frequency Laser
assembler.recipeBuilder()
	.inputs(emitterMV, <ore:craftingLensRed>, plateSteel * 4, <gregtech:meta_item_1:521> * 2, <gregtech:meta_item_1:517>)
	.outputs(<gtow:laser>)
	.EUt(60)
	.duration(2000)
	.buildAndRegister();
# Diss. HV Motor
assembler.recipeBuilder()
	.inputs(<gregtech:cable_double:100> * 2, <gregtech:meta_stick:323> * 2, <gregtech:meta_stick:2035>, <gregtech:wire_double:277> * 4)
	.outputs(<gtow:motorhv>)
	.EUt(90)
	.duration(100)
	.buildAndRegister();
# Diss. HV Piston
assembler.recipeBuilder()
	.inputs(<gregtech:meta_stick:323> * 2, <gregtech:cable_single:41> * 2, plateStainlessSteel * 3, <gregtech:meta_gear_small:323>, <gregtech:meta_item_1:129>)
	.outputs(<gtow:pistonhv>)
	.EUt(90)
	.duration(100)
	.buildAndRegister();
# Diss. HV Pump
assembler.recipeBuilder()
	.inputs(<gregtech:cable_single:41>, <gregtech:fluid_pipe_normal:323>, <gregtech:meta_screw:324>, <gregtech:meta_rotor:324>, <gregtech:meta_ring:1012>, <gregtech:meta_item_1:144>)
	.outputs(<gtow:pumphv>)
	.EUt(90)
	.duration(100)
	.buildAndRegister();
# Diss. HV Conveyor
assembler.recipeBuilder()
	.inputs(<gregtech:cable_single:41>, <gregtech:meta_item_1:144> * 2, <gregtech:meta_plate:1012> * 6)
	.outputs(<gtow:conveyorhv>)
	.EUt(90)
	.duration(100)
	.buildAndRegister();
# Diss. HV Arm
assembler.recipeBuilder()
	.inputs(<gregtech:cable_single:41> * 3, <gregtech:meta_stick:323> * 2, <gregtech:meta_item_1:129> * 2, <gregtech:meta_item_1:174>, circuitHV)
	.outputs(<gtow:armhv>)
	.EUt(90)
	.duration(100)
	.buildAndRegister();
# Pressure Chamber Interface
assembler.recipeBuilder()
	.inputs(<pneumaticcraft:pressure_chamber_wall> * 4, circuitMV, conveyorMV)
	.outputs(<pneumaticcraft:pressure_chamber_interface>)
	.EUt(60)
	.duration(240)
	.buildAndRegister();
# RFTools Machine Hull
assembler.recipeBuilder()
	.inputs(hullMV, plateSteel * 4, <gregtech:meta_stick:2011> * 4)
	.outputs(<rftools:machine_frame>)
	.circuit(8)
	.EUt(48)
	.duration(40)
	.buildAndRegister();
# RFTools Machine Base
assembler.recipeBuilder()
	.inputs(hullMV, <gregtech:meta_plate:2011> * 5)
	.outputs(<rftools:machine_base>)
	.circuit(13)
	.EUt(48)
	.duration(40)
	.buildAndRegister();
# Silver Chest
assembler.recipeBuilder()
	.inputs(<ironchest:iron_chest>, <ore:plateDoubleSilver> * 2)
	.outputs(<ironchest:iron_chest:4>)
	.EUt(60)
	.duration(500)
	.buildAndRegister();
# Gold Chest
assembler.recipeBuilder()
	.inputs(<ironchest:iron_chest:4>, <ore:plateDoubleGold> * 2)
	.outputs(<ironchest:iron_chest:1>)
	.EUt(120)
	.duration(500)
	.buildAndRegister();
# Modular Storage
assembler.recipeBuilder()
	.inputs(<rftools:machine_frame>, <mekanism:machineblock:13>, <gregtech:meta_item_1:291> * 2, <gregtech:meta_item_1:591> * 2, platePlastic * 4)
	.outputs(<rftools:modular_storage>)
	.EUt(100)
	.duration(800)
	.buildAndRegister();
# Storage 1 Module
assembler.recipeBuilder()
	.inputs(circuitMV * 2, plateAluminium, <gregtech:meta_wire_fine:277> * 8)
	.fluidInputs(<fluid:plastic> * 288)
	.outputs(<rftools:storage_module>)
	.EUt(90)
	.duration(240)
	.buildAndRegister();
# Storage 2 Module
assembler.recipeBuilder()
	.inputs(circuitHV * 2, plateStainlessSteel, <gregtech:meta_wire_fine:277> * 16)
	.fluidInputs(<fluid:plastic> * 576)
	.outputs(<rftools:storage_module:1>)
	.EUt(120)
	.duration(240)
	.buildAndRegister();

// HV
# Diamond Chest
assembler.recipeBuilder()
	.inputs(<ironchest:iron_chest:1>, <ore:plateDiamond> * 2)
	.outputs(<ironchest:iron_chest:2>)
	.EUt(240)
	.duration(500)
	.buildAndRegister();
# Storage 3 Module
assembler.recipeBuilder()
	.inputs(circuitEV * 2, plateTitanium, <gregtech:meta_wire_fine:104> * 8)
	.fluidInputs(<fluid:polytetrafluoroethylene> * 288)
	.outputs(<rftools:storage_module:2>)
	.EUt(240)
	.duration(240)
	.buildAndRegister();
