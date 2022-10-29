// GTOW Twilight Forest File
// Made by GTOW Team
import mods.roots.Fey;

// Val
val torchberries = <twilightforest:torchberries>;
val torch = <minecraft:torch>;

// Fey Crafter
Fey.addRecipe("liveroot", <twilightforest:liveroot>, [<roots:wildroot>, torchberries, torchberries, torchberries, torchberries]);
Fey.addRecipe("liveroot", torchberries * 5, [torchberries, torch, torch, torch, torch]);