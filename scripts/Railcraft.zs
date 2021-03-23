// Railcraft
import mods.jei.JEI.removeAndHide as rh;

// Val
val treatedWood = <ore:plankTreatedWood>;
val rodBronze = <ore:stickBronze>;
var hardHammer = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();

// Removal
	mods.jei.JEI.removeAndHide(<railcraft:coke_oven>);
	mods.jei.JEI.removeAndHide(<railcraft:coke_oven_red>);

// Crafting
	# Water Tank
		recipes.remove(<railcraft:tank_water>);
		recipes.addShaped(<railcraft:tank_water>,
			[[treatedWood, treatedWood, treatedWood],
			[rodBronze, hardHammer, rodBronze],
			[treatedWood, <gregtech:meta_item_1:32627>, treatedWood]]);