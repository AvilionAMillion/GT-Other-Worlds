# priority 95

// This is for more general OreDict unification
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

 # Immersive Engineering Wire Replacement
<ore:wireCopper>.add(<gregtech:cable:18>);
mods.jei.JEI.removeAndHide(<immersiveengineering:material:20>);
<ore:wireCopper>.remove(<immersiveengineering:material:20>);

