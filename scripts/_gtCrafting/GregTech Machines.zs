// GT Machines

print("Starting GT Machines.zs");

// Val
val bronzePlate = <ore:plateBronze>;
val brickBlock = <minecraft:brick_block>;
val steamCoalBoiler = <gregtech:machine:1>;
val furnaceController = <tconstruct:seared_furnace_controller>;
val bronzeRod=<ore:stickBronze>;
val firebrick = <gregtech:metal_casing:1>;
val bronzeMCasing = <gregtech:metal_casing_bronze>;
val tinPlate = <ore:plateTin>;
val advAlloy = <gregtech:meta_item_2:32433>;
val chest = <minecraft:chest>;
val plateWood = <ore:plateWood>;
val redAlloyCable = <gregtech:cable:5237>;
val hullULV = <gregtech:machine:500>;
val cableTin1x = <gregtech:cable:5189>;
val cableTin4x = <gregtech:cable:7189>;
val cableTin8x = <gregtech:cable:8189>;
val cableTin16x = <gregtech:cable:9189>;

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
			[craftingToolScrewdriver, <ore:craftingFurnace>, hardHammer],
			[firebrick, <contenttweaker:wroughtironheater>, firebrick]]);
	# Steam Oven
		recipes.remove(<gregtech:machine:4197>);
		recipes.addShaped(<gregtech:machine:4197>,
			[[bronzeMCasing, craftingToolWrench, bronzeMCasing],
			[<ore:gearSteel>, <gregtech:machine:16>, <ore:gearSteel>],
			[bronzeMCasing, <contenttweaker:steelheater>, bronzeMCasing]]);
	# Steam Grinder
		recipes.remove(<gregtech:machine:4178>);
		recipes.addShaped(<gregtech:machine:4178>,
			[[bronzeMCasing, <gregtech:meta_item_1:32722>, bronzeMCasing],
			[<ore:gearSteel>, <gregtech:machine:10>, <ore:gearSteel>],
			[bronzeMCasing, <contenttweaker:steelheater>, bronzeMCasing]]);
			
// Machine Components
	# Firebox Casings
		recipes.remove(<gregtech:boiler_firebox_casing>);
		recipes.addShaped(<gregtech:boiler_firebox_casing>,
			[[bronzePlate, bronzeRod, bronzePlate],
			[bronzeRod, <ore:frameGtBronze>, bronzeRod],
			[bronzePlate, bronzeRod, bronzePlate]]);
	# Steam Input Bus
		recipes.remove(<gregtech:machine:4176>);
		recipes.addShaped(<gregtech:machine:4176>,
			[[bronzePlate, advAlloy, bronzePlate],
			[tinPlate, chest, tinPlate],
			[bronzePlate, advAlloy, bronzePlate]]);
	# Steam Output Bus
		recipes.remove(<gregtech:machine:4177>);
		recipes.addShaped(<gregtech:machine:4177>,
			[[bronzePlate, tinPlate, bronzePlate],
			[advAlloy, chest, advAlloy],
			[bronzePlate, tinPlate, bronzePlate]]);
	# ULV Machine Casing
		recipes.remove(<gregtech:machine_casing>);
		recipes.addShaped(<gregtech:machine_casing>,
			[[plateIron, plateIron, plateIron],
			[plateIron, craftingToolWrench, plateIron],
			[plateIron, plateIron, plateIron]]);
	# ULV Machine Hull
		recipes.remove(<gregtech:machine:500>);
		recipes.addShaped(<gregtech:machine:500>,
			[[plateWood, plateIron, plateWood],
			[redAlloyCable, <gregtech:machine_casing>, redAlloyCable]]);
	# Bloomery Controller
		recipes.addShaped(<gregtech:machine:4008>,
			[[plateIron, <ore:craftingFurnace>, plateIron],
			[craftingToolScrewdriver, <gregtech:machine_casing>, craftingToolWrench],
			[plateIron, <gregtech:cable:1237>, plateIron]]);
			
// ULV Machines
	# GTEU to FE 1x
		recipes.remove(<gregtech:machine:2900>);
		recipes.addShaped(<gregtech:machine:2900>,
			[[cableTin1x, chest, cableTin1x],
			[redAlloyCable, hullULV, redAlloyCable],
			[cableTin1x, circuitULV, cableTin1x]]);
	# GTEU to FE 4x
		recipes.remove(<gregtech:machine:2902>);
		recipes.addShaped(<gregtech:machine:2902>,
			[[cableTin4x, chest, cableTin4x],
			[<gregtech:cable:7237>, hullULV, <gregtech:cable:7237>],
			[cableTin4x, circuitULV, cableTin4x]]);
	# GTEU to FE 9x
		recipes.remove(<gregtech:machine:2904>);
		recipes.addShaped(<gregtech:machine:2904>,
			[[cableTin8x, chest, cableTin8x],
			[<gregtech:cable:8237>, hullULV, <gregtech:cable:8237>],
			[cableTin8x, circuitULV, cableTin8x]]);
	# GTEU to FE 16x
		recipes.remove(<gregtech:machine:2906>);
		recipes.addShaped(<gregtech:machine:2906>,
			[[cableTin16x, chest, cableTin16x],
			[<gregtech:cable:9237>, hullULV, <gregtech:cable:9237>],
			[cableTin16x, circuitULV, cableTin16x]]);
	# Remove LV Transformer
		recipes.remove(<gregtech:machine:600>);