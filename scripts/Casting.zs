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

print("===[ Start of Casting.zs ]===");

// Casts
static castPlate as IItemStack = <tconstruct:cast_custom:3>;
static castGear as IItemStack = <tconstruct:cast_custom:4>;

static casts as IItemStack[string] = {
    plate: castPlate,
    gear: castGear
};

static cast_types as string[] = ["plate", "gear"];
static cast_cost as int[string] = {
    plate: 2,
    gear: 8
};

// Functions

function clearCastingRecipes(entry as IOreDictEntry) {
    for item in entry.items as IItemStack[] {
        mods.tconstruct.Casting.removeTableRecipe(item);
    }
}

function proceedCasting(part_type as string, material_name as string, liquid as ILiquidStack) {
    val part_name as string = part_type + material_name;
    if (hasItem(part_name)) {
        val part_entry = oreDict.get(part_name);
        clearCastingRecipes(part_entry);
        val part as IItemStack = tryGetGTItem(part_entry);
        mods.tconstruct.Casting.addTableRecipe(part, casts[part_type], liquid, 144 * cast_cost[part_type]);
    }
}

// TODO: rework to use GT materials system instead

val ingot_entries = <ore:ingot*>;
for ingot_entry in ingot_entries {
    val ingot_name as string = ingot_entry.name;
    print(ingot_name);
    if (hasItem(ingot_name)) {
        val material_name as string = ingot_name.replaceAll("ingot(.*)", "$1");
        val liquid as ILiquidStack = game.getLiquid(toSnakeCase(material_name));
        if (isNull(liquid)) {
            print("Liquid " + material_name + " not found");
        } else{
            // print("Liquid " + material_name + " found, adding casting recipes");
            // print("Properties: d=" + liquid.density + " t=" + liquid.temperature + " v=" + liquid.viscosity);
            for cast_type in cast_types {
                proceedCasting(cast_type, material_name, liquid);
            }
        }
    }
}
print("===[ End of Casting.zs ]===");

