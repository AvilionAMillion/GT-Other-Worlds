// Storage Drawers Zenscript

// Val
val smallChest = <gregtech:machine:808>;
val oakWood = <minecraft:log>;
val oakPlank = <minecraft:planks>;
val spruceWood = <minecraft:log:1>;
val sprucePlank = <minecraft:planks:1>;
val birchWood = <minecraft:log:2>;
val birchPlank = <minecraft:planks:2>;
val jungleWood = <minecraft:log:3>;
val junglePlank = <minecraft:planks:3>;
val acaciaWood = <minecraft:log2>;
val acaciaPlank = <minecraft:planks:4>;
val darkWood = <minecraft:log2:1>;
val darkPlank = <minecraft:planks:5>;

// Oak Drawers
	recipes.remove(<storagedrawers:basicdrawers>.withTag({material: "oak"}));
	recipes.addShaped(<storagedrawers:basicdrawers>.withTag({material: "oak"}),
		[[oakWood, oakPlank, oakWood],
		[oakWood, smallChest, oakWood],
		[oakWood, oakPlank, oakWood]]);
	recipes.remove(<storagedrawers:basicdrawers:1>.withTag({material: "oak"}));
	recipes.addShaped(<storagedrawers:basicdrawers:1>.withTag({material: "oak"}),
		[[oakWood, smallChest, oakWood],
		[oakWood, oakPlank, oakWood],
		[oakWood, smallChest, oakWood]]);
	recipes.remove(<storagedrawers:basicdrawers:2>.withTag({material: "oak"}));
	recipes.addShaped(<storagedrawers:basicdrawers:2>.withTag({material: "oak"}),
		[[smallChest, oakWood, smallChest],
		[oakPlank, oakWood, oakPlank],
		[smallChest, oakWood, smallChest]]);
	recipes.remove(<storagedrawers:basicdrawers:3>.withTag({material: "oak"}));
	recipes.addShapeless(<storagedrawers:basicdrawers:3>.withTag({material: "oak"}) * 2,
		[craftingToolSaw, <storagedrawers:basicdrawers:1>.withTag({material: "oak"})]);
	recipes.remove(<storagedrawers:basicdrawers:4>.withTag({material: "oak"}));
	recipes.addShapeless(<storagedrawers:basicdrawers:4>.withTag({material: "oak"}) * 2,
		[craftingToolSaw, <storagedrawers:basicdrawers:2>.withTag({material: "oak"})]);
		
// Spruce Drawers
	recipes.remove(<storagedrawers:basicdrawers>.withTag({material: "spruce"}));
	recipes.addShaped(<storagedrawers:basicdrawers>.withTag({material: "spruce"}),
		[[spruceWood, sprucePlank, spruceWood],
		[spruceWood, smallChest, spruceWood],
		[spruceWood, sprucePlank, spruceWood]]);
	recipes.remove(<storagedrawers:basicdrawers:1>.withTag({material: "spruce"}));
	recipes.addShaped(<storagedrawers:basicdrawers:1>.withTag({material: "spruce"}),
		[[spruceWood, smallChest, spruceWood],
		[spruceWood, sprucePlank, spruceWood],
		[spruceWood, smallChest, spruceWood]]);
	recipes.remove(<storagedrawers:basicdrawers:2>.withTag({material: "spruce"}));
	recipes.addShaped(<storagedrawers:basicdrawers:2>.withTag({material: "spruce"}),
		[[smallChest, spruceWood, smallChest],
		[sprucePlank, spruceWood, sprucePlank],
		[smallChest, spruceWood, smallChest]]);
	recipes.remove(<storagedrawers:basicdrawers:3>.withTag({material: "spruce"}));
	recipes.addShapeless(<storagedrawers:basicdrawers:3>.withTag({material: "spruce"}) * 2,
		[craftingToolSaw, <storagedrawers:basicdrawers:1>.withTag({material: "spruce"})]);
	recipes.remove(<storagedrawers:basicdrawers:4>.withTag({material: "spruce"}));
	recipes.addShapeless(<storagedrawers:basicdrawers:4>.withTag({material: "spruce"}) * 2,
		[craftingToolSaw, <storagedrawers:basicdrawers:2>.withTag({material: "spruce"})]);
		
// Birch Drawers
	recipes.remove(<storagedrawers:basicdrawers>.withTag({material: "birch"}));
	recipes.addShaped(<storagedrawers:basicdrawers>.withTag({material: "birch"}),
		[[birchWood, birchPlank, birchWood],
		[birchWood, smallChest, birchWood],
		[birchWood, birchPlank, birchWood]]);
	recipes.remove(<storagedrawers:basicdrawers:1>.withTag({material: "birch"}));
	recipes.addShaped(<storagedrawers:basicdrawers:1>.withTag({material: "birch"}),
		[[birchWood, smallChest, birchWood],
		[birchWood, birchPlank, birchWood],
		[birchWood, smallChest, birchWood]]);
	recipes.remove(<storagedrawers:basicdrawers:2>.withTag({material: "birch"}));
	recipes.addShaped(<storagedrawers:basicdrawers:2>.withTag({material: "birch"}),
		[[smallChest, birchWood, smallChest],
		[birchPlank, birchWood, birchPlank],
		[smallChest, birchWood, smallChest]]);
	recipes.remove(<storagedrawers:basicdrawers:3>.withTag({material: "birch"}));
	recipes.addShapeless(<storagedrawers:basicdrawers:3>.withTag({material: "birch"}) * 2,
		[craftingToolSaw, <storagedrawers:basicdrawers:1>.withTag({material: "birch"})]);
	recipes.remove(<storagedrawers:basicdrawers:4>.withTag({material: "birch"}));
	recipes.addShapeless(<storagedrawers:basicdrawers:4>.withTag({material: "birch"}) * 2,
		[craftingToolSaw, <storagedrawers:basicdrawers:2>.withTag({material: "birch"})]);
		
// Jungle Drawers
	recipes.remove(<storagedrawers:basicdrawers>.withTag({material: "jungle"}));
	recipes.addShaped(<storagedrawers:basicdrawers>.withTag({material: "jungle"}),
		[[jungleWood, junglePlank, jungleWood],
		[jungleWood, smallChest, jungleWood],
		[jungleWood, junglePlank, jungleWood]]);
	recipes.remove(<storagedrawers:basicdrawers:1>.withTag({material: "jungle"}));
	recipes.addShaped(<storagedrawers:basicdrawers:1>.withTag({material: "jungle"}),
		[[jungleWood, smallChest, jungleWood],
		[jungleWood, junglePlank, jungleWood],
		[jungleWood, smallChest, jungleWood]]);
	recipes.remove(<storagedrawers:basicdrawers:2>.withTag({material: "jungle"}));
	recipes.addShaped(<storagedrawers:basicdrawers:2>.withTag({material: "jungle"}),
		[[smallChest, jungleWood, smallChest],
		[junglePlank, jungleWood, junglePlank],
		[smallChest, jungleWood, smallChest]]);
	recipes.remove(<storagedrawers:basicdrawers:3>.withTag({material: "jungle"}));
	recipes.addShapeless(<storagedrawers:basicdrawers:3>.withTag({material: "jungle"}) * 2,
		[craftingToolSaw, <storagedrawers:basicdrawers:1>.withTag({material: "jungle"})]);
	recipes.remove(<storagedrawers:basicdrawers:4>.withTag({material: "jungle"}));
	recipes.addShapeless(<storagedrawers:basicdrawers:4>.withTag({material: "jungle"}) * 2,
		[craftingToolSaw, <storagedrawers:basicdrawers:2>.withTag({material: "jungle"})]);
		
// Acacia Drawers
	recipes.remove(<storagedrawers:basicdrawers>.withTag({material: "acacia"}));
	recipes.addShaped(<storagedrawers:basicdrawers>.withTag({material: "acacia"}),
		[[acaciaWood, acaciaPlank, acaciaWood],
		[acaciaWood, smallChest, acaciaWood],
		[acaciaWood, acaciaPlank, acaciaWood]]);
	recipes.remove(<storagedrawers:basicdrawers:1>.withTag({material: "acacia"}));
	recipes.addShaped(<storagedrawers:basicdrawers:1>.withTag({material: "acacia"}),
		[[acaciaWood, smallChest, acaciaWood],
		[acaciaWood, acaciaPlank, acaciaWood],
		[acaciaWood, smallChest, acaciaWood]]);
	recipes.remove(<storagedrawers:basicdrawers:2>.withTag({material: "acacia"}));
	recipes.addShaped(<storagedrawers:basicdrawers:2>.withTag({material: "acacia"}),
		[[smallChest, acaciaWood, smallChest],
		[acaciaPlank, acaciaWood, acaciaPlank],
		[smallChest, acaciaWood, smallChest]]);
	recipes.remove(<storagedrawers:basicdrawers:3>.withTag({material: "acacia"}));
	recipes.addShapeless(<storagedrawers:basicdrawers:3>.withTag({material: "acacia"}) * 2,
		[craftingToolSaw, <storagedrawers:basicdrawers:1>.withTag({material: "acacia"})]);
	recipes.remove(<storagedrawers:basicdrawers:4>.withTag({material: "acacia"}));
	recipes.addShapeless(<storagedrawers:basicdrawers:4>.withTag({material: "acacia"}) * 2,
		[craftingToolSaw, <storagedrawers:basicdrawers:2>.withTag({material: "acacia"})]);
		
// Dark Oak Drawers
	recipes.remove(<storagedrawers:basicdrawers>.withTag({material: "dark_oak"}));
	recipes.addShaped(<storagedrawers:basicdrawers>.withTag({material: "dark_oak"}),
		[[darkWood, darkPlank, darkWood],
		[darkWood, smallChest, darkWood],
		[darkWood, birchPlank, darkWood]]);
	recipes.remove(<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}));
	recipes.addShaped(<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}),
		[[darkWood, smallChest, darkWood],
		[darkWood, darkPlank, darkWood],
		[darkWood, smallChest, darkWood]]);
	recipes.remove(<storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"}));
	recipes.addShaped(<storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"}),
		[[smallChest, darkWood, smallChest],
		[darkPlank, darkWood, darkPlank],
		[smallChest, darkWood, smallChest]]);
	recipes.remove(<storagedrawers:basicdrawers:3>.withTag({material: "dark_oak"}));
	recipes.addShapeless(<storagedrawers:basicdrawers:3>.withTag({material: "dark_oak"}) * 2,
		[craftingToolSaw, <storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"})]);
	recipes.remove(<storagedrawers:basicdrawers:4>.withTag({material: "dark_oak"}));
	recipes.addShapeless(<storagedrawers:basicdrawers:4>.withTag({material: "dark_oak"}) * 2,
		[craftingToolSaw, <storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"})]);
