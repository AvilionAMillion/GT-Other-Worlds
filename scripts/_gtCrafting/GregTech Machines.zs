// GT Machines

print("Starting GT Machines.zs");

// Val
val bronzePlate = <ore:plateBronze>;
val brickBlock = <minecraft:brick_block>;
val steamCoalBoiler = <gregtech:machine:1>;
val furnaceController = <tconstruct:seared_furnace_controller>;

// Crafting
	# Small Steam Coal Boiler
		recipes.remove(steamCoalBoiler);
		recipes.addShaped(steamCoalBoiler, [
			[bronzePlate, bronzePlate, bronzePlate],
			[bronzePlate, craftingToolWrench, bronzePlate],
			[brickBlock, furnaceController, brickBlock]]);