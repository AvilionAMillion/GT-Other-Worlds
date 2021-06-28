#loader gregtech
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

// Devtech

//Pre-Existing Machines
 # ULV Turbine
RegisterMachine.CreateSimpleGenerator(4009, "steam_turbine.ulv", RecipeMaps.STEAM_TURBINE_FUELS, Overlays.get("steam_turbine"), 0);
		

