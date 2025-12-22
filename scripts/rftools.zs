// RFTools File
// Made by GTOW Team

// Val
val rodBSteel = <gregtech:meta_stick:2011>;
val plateBSteel = <gregtech:meta_plate:2011>;

// Removal
recipes.remove(<rftools:modular_storage>);
recipes.remove(<rftools:storage_scanner>);
recipes.remove(<rftools:storage_module>);
recipes.remove(<rftools:storage_module:1>);
recipes.remove(<rftools:storage_module:2>);
recipes.remove(<rftools:storage_module:6>);
recipes.remove(<rftools:storage_module_tablet>);

// Crafting
# Machine Frame
recipes.remove(<rftools:machine_frame>);
recipes.addShaped(<rftools:machine_frame>, 
	[[plateSteel, rodBSteel, plateSteel],
	[rodBSteel, hullMV, rodBSteel],
	[plateSteel, rodBSteel, plateSteel]]);
recipes.remove(<rftools:machine_base>);
recipes.addShaped(<rftools:machine_base>, 
	[[plateBSteel, plateBSteel, plateBSteel],
	[plateBSteel, hullMV, plateBSteel]]);


