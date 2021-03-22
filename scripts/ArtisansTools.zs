#priority 80
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;

// Hammer
function addHammerRecipe(head_mat as IIngredient, tool_material as string, table_type as string) {
    var tool_recipe = RecipeBuilder.get(table_type)
        .setShaped([
            [null, head_mat, stick],
            [null, stick, head_mat],
            [stick, null, null]]);
    if (table_type == "blacksmith") {
        tool_recipe = tool_recipe
            .addTool(artHammer, 25);
    }
    tool_recipe
        .addOutput(itemUtils.getItem("artisanworktables:artisans_hammer_"+tool_material))
        .create();
}

// Handsaw
function addHandsawRecipe(head_mat as IIngredient, tool_material as string, table_type as string) {
    var tool_recipe = RecipeBuilder.get(table_type)
        .setShaped([
            [stick, stick, longStick],
            [head_mat, head_mat, longStick]]);
    if (table_type == "basic") {
        tool_recipe = tool_recipe
            .addTool(artHammer, 25);
    }
    else {
        tool_recipe = tool_recipe
            .addTool(artHammer, 35);
    }
    tool_recipe
        .addOutput(itemUtils.getItem("artisanworktables:artisans_handsaw_"+tool_material))
        .create();
}

// File
function addFileRecipe(head_mat as IIngredient, tool_material as string, table_type as string) {
    var tool_recipe = RecipeBuilder.get(table_type)
        .setShaped([
            [null, null, head_mat],
            [null, head_mat, null],
            [longStick, null, null]]);
    if (table_type == "blacksmith") {
        tool_recipe = tool_recipe
            .addTool(artHammer, 20)
            .addTool(artSaw, 10);
    }
    else {
        tool_recipe = tool_recipe
            .addTool(artSaw, 25);
    }
    tool_recipe
        .addOutput(itemUtils.getItem("artisanworktables:artisans_file_"+tool_material))
        .create();
}

// Mortar
function addMortarRecipe(head_mat as IIngredient, tool_material as string, table_type as string) {
    val pestle_map = {
        blacksmith: <ore:ingotIron>,
        mason: <ore:ingotTin>,
        basic: stick
    } as IIngredient[string];
    val pestle = pestle_map[table_type];
    RecipeBuilder.get(table_type)
        .setShaped([
            [null, null, stick],
            [head_mat, pestle, head_mat],
            [head_mat, head_mat, head_mat]])
        .addTool(artHammer, 35)
        .addOutput(itemUtils.getItem("artisanworktables:artisans_mortar_"+tool_material))
        .create();
}

// Needle
function addNeedleRecipe(head_mat as IIngredient, tool_material as string, table_type as string) {
    var tool_recipe = RecipeBuilder.get(table_type)
        .setShaped([
            [null, item_string, head_mat],
            [null, head_mat, item_string],
            [stick, null, null]]);
    if (table_type == "blacksmith") {
        tool_recipe = tool_recipe
            .addTool(artFile, 25)
            .addTool(artSaw, 15);
    }
    else {
        tool_recipe = tool_recipe
            .addTool(artFile, 25);
    }
    tool_recipe
        .addOutput(itemUtils.getItem("artisanworktables:artisans_needle_"+tool_material))
        .create();
}

// Shears
function addShearsRecipe(head_mat as IIngredient, tool_material as string, table_type as string) {
    var tool_recipe = RecipeBuilder.get(table_type)
        .setShaped([
            [null, head_mat, null],
            [stick, item_string, head_mat],
            [null, stick, null]])
        .addTool(artSaw, 25);
    if (table_type == "blacksmith") {
        tool_recipe = tool_recipe
            .addTool(artHammer, 20);
    }
    tool_recipe = tool_recipe
        .addOutput(itemUtils.getItem("artisanworktables:artisans_shears_"+tool_material))
        .create();
}

 # Materials Used
val artisan_materials = [
    "Wood", "Stone", "Iron", "Gold", "Diamond", "Flint", "Bone", "Aluminum",
    "Bronze", "Constantan", "Copper", "Electrum", "Invar", "Lead", "Nickel",
    "Platinum", "Silver", "Steel", "Tin", "Manasteel", "Elementium", "Terrasteel"
] as string[];
val materials_exceptions = {
    Elementium: <ore:plateElvenElementium>,
    Wood: wood,
    Stone: cobble,
    Bone: bone,
    Flint: flint
} as IIngredient[string];
val tables_exceptions = {
    Wood: "basic",
    Stone: "mason",
    Bone: "mason",
    Flint: "mason"
} as string[string];

 # Miscellaneous
val plateAluminum = <ore:plateAluminum>;
val plateConstantan = <ore:plateConstantan>;

// Ore Dict
plateAluminum.mirror(<ore:plateAluminium>);
plateConstantan.mirror(<ore:plateCupronickel>);


for mat in artisan_materials {
    val toolmat = mat.toLowerCase();
    
    var table_name = tables_exceptions[mat];
    if (isNull(table_name)) {
        table_name = "blacksmith";
    }
    
    var head_material = materials_exceptions[mat];
    if (isNull(head_material)) {
        head_material = oreDict.get("plate" + mat);
    }
    
    addHammerRecipe(head_material, toolmat, table_name);
    addHandsawRecipe(head_material, toolmat, table_name);
    addFileRecipe(head_material, toolmat, table_name);
    addMortarRecipe(head_material, toolmat, table_name);
    addNeedleRecipe(head_material, toolmat, table_name);
    addShearsRecipe(head_material, toolmat, table_name);
}

// Tool Removal
recipes.remove(<ore:artisansHammer>);
recipes.remove(<ore:artisansHandsaw>);
recipes.remove(<ore:artisansFile>);
recipes.remove(<ore:artisansMortar>);
recipes.remove(<ore:artisansNeedle>);
recipes.remove(<ore:artisansShears>);
