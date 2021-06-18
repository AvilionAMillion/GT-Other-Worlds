// GT Machines

print("Starting GT Machines.zs");

// Val
val bronzePlate = <ore:plateBronze>;
val brickBlock = <minecraft:brick_block>;
val steamCoalBoiler = <gregtech:machine:1>;
val furnaceController = <tconstruct:seared_furnace_controller>;
val bronzeRod=<ore:stickBronze>;
val firebrick = <gregtech:metal_casing:1>;

// Removal
	# Firebricks
	recipes.remove(<gregtech:metal_casing:1>);

// Crafting
	# Small Steam Coal Boiler
		recipes.remove(steamCoalBoiler);
		recipes.addShaped(steamCoalBoiler, [
			[bronzePlate, bronzePlate, bronzePlate],
			[bronzePlate, craftingToolWrench, bronzePlate],
			[brickBlock, furnaceController, brickBlock]]);
	# Primitive Blast Furnace
		recipes.remove(<gregtech:machine:510>);
		recipes.addShaped(<gregtech:machine:510>,
			[[firebrick, craftingToolWrench, firebrick],
			[craftingToolScrewdriver, <ore:furnaceBlock>, hardHammer],
			[firebrick, <contenttweaker:wroughtironheater>, firebrick]]);
			
// Machine Components
	# Firebox Casings
		recipes.remove(<gregtech:boiler_firebox_casing>);
		recipes.addShaped(<gregtech:boiler_firebox_casing>,
			[[bronzePlate, bronzeRod, bronzePlate],
			[bronzeRod, <ore:frameGtBronze>, bronzeRod],
			[bronzePlate, bronzeRod, bronzePlate]]);
			
			