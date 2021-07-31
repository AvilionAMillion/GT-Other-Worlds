// Railcraft
import mods.jei.JEI.removeAndHide as rh;

// Val
val treatedWood = <ore:plankTreatedWood>;
val rodBronze = <ore:stickBronze>;
var hardHammer = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();
val plateIron = <ore:plateIron>;
val screwIron = <ore:screwIron>;

// Removal
	mods.jei.JEI.removeAndHide(<railcraft:coke_oven>);
	mods.jei.JEI.removeAndHide(<railcraft:coke_oven_red>);
	mods.jei.JEI.removeAndHide(<railcraft:blast_furnace>);

// Crafting
	# Water Tank
		recipes.remove(<railcraft:tank_water>);
		recipes.addShaped(<railcraft:tank_water>,
			[[treatedWood, treatedWood, treatedWood],
			[rodBronze, hardHammer, rodBronze],
			[treatedWood, <ore:slimeball>, treatedWood]]);
			
// Boiler Items
	# Solid Fueled Boiler
	recipes.remove(<railcraft:boiler_firebox_solid>);
	recipes.addShaped(<railcraft:boiler_firebox_solid>,
		[[plateIron, craftingToolWrench, plateIron],
		[<minecraft:iron_bars>, <gregtech:machine:1>, <minecraft:iron_bars>],
		[plateIron, <gregtech:boiler_firebox_casing>, plateIron]]);
	# Low Pressure Tank
	recipes.remove(<railcraft:boiler_tank_pressure_low>);
	recipes.addShaped(<railcraft:boiler_tank_pressure_low>,
		[[plateIron, plateIron, plateIron],
		[screwIron, craftingToolScrewdriver, screwIron],
		[plateIron, plateIron, plateIron]]);
	# Liquid Fueled Boiler
	recipes.remove(<railcraft:boiler_firebox_fluid>);
	recipes.addShaped(<railcraft:boiler_firebox_fluid>,
		[[plateSteel, craftingToolWrench, plateSteel],
		[<minecraft:iron_bars>, <gregtech:machine:6>, <minecraft:iron_bars>],
		[plateSteel, <gregtech:boiler_firebox_casing>, plateSteel]]);
	# High Pressue Tank
	recipes.remove(<railcraft:boiler_tank_pressure_high>);
	recipes.addShaped(<railcraft:boiler_tank_pressure_high>,
		[[plateSteel, plateSteel, plateSteel],
		[screwSteel, craftingToolScrewdriver, screwSteel],
		[plateSteel, plateSteel, plateSteel]]);
		
// Tanks
	# Iron Tank Wall
		recipes.remove(<railcraft:tank_iron_wall>);
		recipes.addShaped(<railcraft:tank_iron_wall> * 2,
			[[screwIron, plateIron, screwIron],
			[plateIron, craftingToolScrewdriver, plateIron],
			[screwIron, plateIron, screwIron]]);
	# Iron Tank Gauge
		recipes.remove(<railcraft:tank_iron_gauge>);
		recipes.addShaped(<railcraft:tank_iron_gauge>,
			[[screwIron, craftingToolWrench, screwIron],
			[plateIron, <ore:paneGlass>, plateIron],
			[screwIron, craftingToolScrewdriver, screwIron]]);
	# Iron Tank Valve
		recipes.remove(<railcraft:tank_iron_valve>);
		recipes.addShaped(<railcraft:tank_iron_valve>,
			[[screwIron, craftingToolWrench, screwIron],
			[plateIron, <ore:pipeMediumBronze>, plateIron],
			[screwIron, craftingToolScrewdriver, screwIron]]);
	# Steel Tank Wall
		recipes.remove(<railcraft:tank_steel_wall>);
		recipes.addShaped(<railcraft:tank_steel_wall> * 2,
			[[screwSteel, plateSteel, screwSteel],
			[plateSteel, craftingToolScrewdriver, plateSteel],
			[screwSteel, plateSteel, screwSteel]]);
	# Steel Tank Gauge
		recipes.remove(<railcraft:tank_steel_gauge>);
		recipes.addShaped(<railcraft:tank_steel_gauge>,
			[[screwSteel, craftingToolWrench, screwSteel],
			[plateSteel, <ore:paneGlass>, plateSteel],
			[screwSteel, craftingToolScrewdriver, screwSteel]]);
	# Steel Tank Valve
		recipes.remove(<railcraft:tank_steel_valve>);
		recipes.addShaped(<railcraft:tank_steel_valve>,
			[[screwSteel, craftingToolWrench, screwSteel],
			[plateSteel, <ore:pipeMediumSteel>, plateSteel],
			[screwSteel, craftingToolScrewdriver, screwSteel]]);