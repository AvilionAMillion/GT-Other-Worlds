import mods.devtech.machines.RegisterMachine;
import mods.devtech.machines.Overlays;
import mods.devtech.IRecipeMap;
import mods.devtech.GUITextures;
import mods.devtech.OverlaySlot;
import mods.devtech.MoveType;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialCasting;
import mods.devtech.OverlayRenderer;
import mods.devtech.OverlayFace;
import mods.devtech.TextureArea;
import mods.gregtech.recipe.FuelRecipe;

// Steam Recipe
RecipeMaps.STEAM_TURBINE_FUELS.addRecipe(FuelRecipe.create(<liquid:steam> * 160, 40, 8));

// Var
var motorULV = <contenttweaker:ulv_motor>;
var rotorTinAlloy = <gregtech:meta_item_2:18189>;
var redAlloyCable = <gregtech:cable:5237>;
var hullULV = <gregtech:machine:500>;
var tinAlloyCable2 = <gregtech:cable:1189>;
var conveyorULV = <contenttweaker:ulv_conveyor>;
var robotarmULV = <contenttweaker:ulv_robotarm>;
var pipeWood = <gregtech:fluid_pipe:2196>;

// ULV Machines
	# ULV Turbine
	recipes.addShaped(<gregtech:machine:4009>,
		[[pipeWood, circuitULV, pipeWood],
		[rotorTinAlloy, hullULV, rotorTinAlloy],
		[motorULV, redAlloyCable, motorULV]]);
	# ULV Polarizer
	recipes.addShaped(<gregtech:machine:4011>,
		[[tinAlloyCable2, rodIron, tinAlloyCable2],
		[redAlloyCable, hullULV, redAlloyCable],
		[tinAlloyCable2, rodIron, tinAlloyCable2]]);
	# ULV Assembling Machine
	recipes.addShaped(<gregtech:machine:4010>,
		[[robotarmULV, circuitULV, robotarmULV],
		[conveyorULV, hullULV, conveyorULV],
		[redAlloyCable, circuitULV, redAlloyCable]]);
		
// Small Tanks
	# ULV Tank
	recipes.addShaped(<gregtech:machine:1018>,
		[[plateIron, circuitULV, plateIron],
		[plateIron, <contenttweaker:ulv_pump>, plateIron],
		[plateIron, pipeWood, plateIron]]);
