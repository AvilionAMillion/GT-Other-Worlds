// GTOW ZS File
// Made by GTOW Team

// Val
val treatedStick = <gregtech:meta_stick:1648>;

// Crafting
# Pyre
recipes.remove(<roots:pyre>);
recipes.addShaped(<roots:pyre>, 
	[[gtSaw, treatedStick, gtFile],
	[treatedStick, <pyrotech:log_pile>, treatedStick],
	[stone, <pyrotech:tinder>, stone]]);