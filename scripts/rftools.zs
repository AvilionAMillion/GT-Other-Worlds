// RFTools File
// Made by GTOW Team

// Val
val rodBSteel = <gregtech:meta_stick:2011>;
val plateBSteel = <gregtech:meta_plate:2011>;

// Crafting
# Machine Frame
recipes.remove(<rftools:machine_frame>);
recipes.addShaped(<rftools:machine_frame>, 
	[[<gregtech:machine_casing>, rodBSteel, <gregtech:machine_casing>],
	[rodBSteel, hullMV, rodBSteel],
	[<gregtech:machine_casing>, rodBSteel, <gregtech:machine_casing>]]);
recipes.remove(<rftools:machine_base>);
recipes.addShaped(<rftools:machine_base>, 
	[[plateBSteel, plateBSteel, plateBSteel],
	[plateBSteel, hullMV, plateBSteel]]);

