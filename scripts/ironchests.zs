// Iron Chest ZS File
	
// Removal
recipes.remove(<ironchest:iron_chest>);
recipes.remove(<ironchest:iron_chest:1>);
recipes.remove(<ironchest:iron_chest:2>);
recipes.remove(<ironchest:iron_chest:3>);
recipes.remove(<ironchest:iron_chest:4>);
recipes.remove(<ironchest:wood_copper_chest_upgrade>);
recipes.remove(<ironchest:wood_iron_chest_upgrade>);
recipes.remove(<ironchest:copper_silver_chest_upgrade>);
recipes.remove(<ironchest:copper_iron_chest_upgrade>);
recipes.remove(<ironchest:silver_gold_chest_upgrade>);
recipes.remove(<ironchest:iron_gold_chest_upgrade>);
recipes.remove(<ironchest:gold_diamond_chest_upgrade>);

// Crafting
# Copper Chest
recipes.addShaped(<ironchest:iron_chest:3>,
	[[<ore:screwCopper>, <ore:plateDoubleCopper>, <ore:screwCopper>],
	[<ore:plateDoubleCopper>, <ore:chestWood>, <ore:plateDoubleCopper>],
	[gtHammer, <ore:plateDoubleCopper>, gtFile]]);
# Iron Chest
recipes.addShaped(<ironchest:iron_chest>,
	[[<ore:screwIron>, <ore:plateDoubleIron>, <ore:screwIron>],
	[<ore:plateDoubleIron>, <ironchest:iron_chest:3>, <ore:plateDoubleIron>],
	[gtHammer, <ore:plateDoubleIron>, gtFile]]);
# Silver Chest
recipes.addShaped(<ironchest:iron_chest:4>,
	[[<ore:screwSilver>, <ore:plateDoubleSilver>, <ore:screwSilver>],
	[<ore:plateDoubleSilver>, <ironchest:iron_chest>, <ore:plateDoubleSilver>],
	[gtHammer, <ore:plateDoubleSilver>, gtFile]]);
# Gold Chest
recipes.addShaped(<ironchest:iron_chest:1>,
	[[<ore:screwGold>, <ore:plateDoubleGold>, <ore:screwGold>],
	[<ore:plateDoubleGold>, <ironchest:iron_chest:4>, <ore:plateDoubleGold>],
	[gtHammer, <ore:plateDoubleGold>, gtFile]]);
# Diamond Chest
recipes.addShaped(<ironchest:iron_chest:2>,
	[[<ore:screwDiamond>, <ore:plateDiamond>, <ore:screwDiamond>],
	[<ore:plateDiamond>, <ironchest:iron_chest:1>, <ore:plateDiamond>],
	[gtHammer, <ore:plateDiamond>, gtFile]]);