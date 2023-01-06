// GTOW Twilight Forest File
// Made by GTOW Team
import mods.roots.Fey;

// Val
val lich = <entity:twilightforest:lich>;
val torchberries = <twilightforest:torchberries>;
val torch = <minecraft:torch>;

// Fey Crafter
Fey.addRecipe("liveroot", <twilightforest:liveroot> * 2, [<roots:wildroot>, <roots:wildroot>, torchberries, torchberries, torchberries]);
Fey.addRecipe("torchberries", torchberries * 5, [torch, torch, torch, torch, torch]);
Fey.addRecipe("magic map", <twilightforest:magic_map_focus>, [<twilightforest:raven_feather>, <mysticalworld:antlers>, <mysticalworld:carapace>, <mysticalworld:pelt>, torchberries]);

// Mob Drops
lich.addDrop(<contenttweaker:ancientbone>, 1, 1, 1.0);
