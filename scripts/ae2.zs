// AE2 ZS File

// Removal
recipes.remove(<appliedenergistics2:charger>);
recipes.remove(<appliedenergistics2:inscriber>);
recipes.remove(<appliedenergistics2:quartz_glass>);
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.remove(<appliedenergistics2:controller>);
recipes.remove(<appliedenergistics2:material:35>);
recipes.remove(<appliedenergistics2:material:36>);
recipes.remove(<appliedenergistics2:material:37>);
recipes.remove(<appliedenergistics2:material:38>);
recipes.remove(<appliedenergistics2:part:180>);
recipes.remove(<appliedenergistics2:part:380>);
recipes.remove(<appliedenergistics2:part:360>);
recipes.remove(<appliedenergistics2:part:340>);
recipes.remove(<appliedenergistics2:part:480>);
recipes.remove(<appliedenergistics2:part:341>);
recipes.remove(<appliedenergistics2:material:52>);
recipes.remove(<appliedenergistics2:part:140>);
recipes.removeShapeless(<appliedenergistics2:part:16>, [<appliedenergistics2:part:140>, <ore:crystalFluix>, <ore:crystalFluix>]);
recipes.removeShapeless(<appliedenergistics2:part:36>, [<appliedenergistics2:part:16>, <ore:wool>]);
recipes.removeShapeless(<appliedenergistics2:part:56>, [<appliedenergistics2:part:36>, <minecraft:redstone>, <minecraft:glowstone_dust>]);
recipes.remove(<appliedenergistics2:chest>);
recipes.remove(<appliedenergistics2:drive>);
recipes.removeShaped(<appliedenergistics2:interface>, [
	[ingotIron, glass, ingotIron],
	[<appliedenergistics2:material:44>, null, <appliedenergistics2:material:43>],
	[ingotIron, glass, ingotIron]]);
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.remove(<appliedenergistics2:material:43>);
recipes.remove(<appliedenergistics2:material:44>);
recipes.remove(<appliedenergistics2:material:39>);
recipes.remove(<appliedenergistics2:storage_cell_1k>);
recipes.remove(<appliedenergistics2:storage_cell_4k>);
recipes.remove(<appliedenergistics2:storage_cell_16k>);
recipes.remove(<appliedenergistics2:storage_cell_64k>);
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.remove(<appliedenergistics2:crafting_storage_1k>);
recipes.remove(<appliedenergistics2:crafting_storage_4k>);
recipes.remove(<appliedenergistics2:crafting_storage_16k>);
recipes.remove(<appliedenergistics2:crafting_storage_64k>);
recipes.remove(<appliedenergistics2:crafting_accelerator>);


// Crafting
# ME Terminal
recipes.addShaped(<appliedenergistics2:part:380>, [
	[<gregtech:meta_screw:323>, <appliedenergistics2:material:23>, <gregtech:meta_screw:323>],
	[gtWrench, <appliedenergistics2:part:180>, gtScrewdriver],
	[<gregtech:meta_screw:323>, <appliedenergistics2:material:23>, <gregtech:meta_screw:323>]]);
# ME Crafting Terminal
recipes.addShaped(<appliedenergistics2:part:360>, [
	[<gregtech:meta_screw:323>, <artisanworktables:workshop:5>, <gregtech:meta_screw:323>],
	[gtWrench, <appliedenergistics2:part:380>, gtScrewdriver],
	[<gregtech:meta_screw:323>, <appliedenergistics2:material:24>, <gregtech:meta_screw:323>]]);
# ME Pattern Terminal
recipes.addShaped(<appliedenergistics2:part:340>, [
	[<gregtech:meta_screw:113>, <appliedenergistics2:material:52>, <gregtech:meta_screw:113>],
	[gtWrench, <appliedenergistics2:part:380>, gtScrewdriver],
	[<gregtech:meta_screw:113>, <appliedenergistics2:material:24>, <gregtech:meta_screw:113>]]);
# ME Interface Terminal
recipes.addShaped(<appliedenergistics2:part:480>, [
	[<gregtech:meta_screw:113>, <appliedenergistics2:part:440>, <gregtech:meta_screw:113>],
	[gtWrench, <appliedenergistics2:part:380>, gtScrewdriver],
	[<gregtech:meta_screw:113>, <appliedenergistics2:material:24>, <gregtech:meta_screw:113>]]);
# ME Chest
recipes.addShaped(<appliedenergistics2:chest>, [
	[plateStainlessSteel, <appliedenergistics2:part:180>, plateStainlessSteel],
	[<appliedenergistics2:part:16>, <ironchest:iron_chest>, <appliedenergistics2:part:16>],
	[plateStainlessSteel, circuitMV, plateStainlessSteel]]);
# ME Drive
recipes.addShaped(<appliedenergistics2:drive>, [
	[plateStainlessSteel, <appliedenergistics2:material:24>, plateStainlessSteel],
	[<appliedenergistics2:part:16>, <appliedenergistics2:chest>, <appliedenergistics2:part:16>],
	[plateStainlessSteel, circuitHV, plateStainlessSteel]]);