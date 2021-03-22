#priority 80
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.Functions.tryGetGTItem;
import scripts.Functions.hasItem;
import scripts.Functions.toSnakeCase;


function addPlateRecipe(ingot as IIngredient, plate as IItemStack, name as string) {
    RecipeBuilder.get("mason")
        .setShaped([
            [ingot, ingot],
            [ingot, ingot]])
            .addTool(artHammer, 100)
        .addOutput(plate)
        .setName("plate_" + name.toLowerCase())
        .create();
    RecipeBuilder.get("engineer")
        .setShaped([
            [ingot, ingot],
            [ingot, ingot]])
            .addTool(artHammer, 10)
        .addOutput(plate)
        .setName("plate_" + name.toLowerCase())
        .create();
}

function clearCastingRecipes(entry as IOreDictEntry) {
    for item in entry.items as IItemStack[] {
        mods.tconstruct.Casting.removeTableRecipe(item);
    }
}

val plate_entries = <ore:plate*>;
for plate_entry in plate_entries{
    val plate_name as string = plate_entry.name;
    // Safe check just in case
    if (hasItem(plate_name)) {
        // val plate_entry as IOreDictEntry = oreDict.get(plate_name);
        val material_name as string = plate_name.replaceAll("plate(.*)", "$1");
        val ingot_name as string = "ingot" + material_name;
        if (hasItem(ingot_name)) {
            val plate as IItemStack = tryGetGTItem(plate_entry);
            val ingot as IIngredient = oreDict.get(ingot_name);
            addPlateRecipe(ingot, plate, material_name);
        }
    }
}
