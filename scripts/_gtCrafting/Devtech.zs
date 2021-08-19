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
import mods.gregtech.recipe.FuelRecipe;
import mods.gtadditions.recipe.GARecipeMaps;

// Devtech

//Pre-Existing Machines
 # ULV Turbine
RegisterMachine.CreateSimpleGenerator(4009, "steam_turbine.ulv", RecipeMaps.STEAM_TURBINE_FUELS, Overlays.get("steam_turbine"), 0);
 # ULV Circuit Assembler
RegisterMachine.CreateSimpleMachine(4010, "assembler.ulv", RecipeMaps.ASSEMBLER_RECIPES, Overlays.get("assembler"), 0);
 # ULV Polarizer
RegisterMachine.CreateSimpleMachine(4011, "polarizer.ulv", RecipeMaps.POLARIZER_RECIPES, Overlays.get("polarizer"), 0);

// Tanks
 # ULV Small Tank
RegisterMachine.CreateQuantumTank(1018, "tank.ulv", 0, 32000);
 # LV Small Tank
RegisterMachine.CreateQuantumTank(1019, "tank.lv", 1, 128000);

// Chests
RegisterMachine.CreateChest(800, "woodchest", MaterialCasting.toSolid(<material:wood>), 9, 1);
RegisterMachine.CreateChest(801, "ironchest", MaterialCasting.toSolid(<material:iron>), 9, 4);