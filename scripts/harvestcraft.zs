import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;

// CB - Cutting Board, P - Pot, S - Skillet, SP - Saucepan, B - Bakeware, MP - Mortar and Pestle, MB - Mixing Bowl, J - Juicer

static hc_toolnames as string[] = ["CB", "P", "S", "SP", "B", "MP", "MB", "J"];

static hc_tools as IItemStack[string] = {
    CB: <harvestcraft:cuttingboarditem>,
    P: <harvestcraft:potitem>,
    S: <harvestcraft:skilletitem>,
    SP: <harvestcraft:saucepanitem>,
    B: <harvestcraft:bakewareitem>,
    MP: <harvestcraft:mortarandpestleitem>,
    MB: <harvestcraft:mixingbowlitem>,
    J: <harvestcraft:juiceritem>
};

function detect_tool_recipe(recipe as ICraftingRecipe) {
    var rb as RecipeBuilder = null;
    var copy = Copy.byRecipe(recipe);

    if (<ore:listAllseed> has recipe.output | <ore:treeSapling> has recipe.output) {
        rb = RecipeBuilder.get("farmer");
    } else {
        rb = RecipeBuilder.get("chef");
    }

    var ingredients as IIngredient[] = recipe.ingredients1D;
    var is_tool_recipe = false;
    var used_tool = "";
    for i, ingredient in ingredients {
        for toolname in hc_toolnames {
            if (isNull(ingredient)) {
                break;
            }
            if (ingredient.matches(hc_tools[toolname])) {
                is_tool_recipe = true;
                copy = copy.replaceInput(ingredient, null);
                val tool as IItemStack = hc_tools[toolname];
                rb = rb.addTool(tool.marked("tool"), 1);
            }
        }
    }
    
    rb = rb.setCopy(copy);
    if (is_tool_recipe) {
        rb = rb.setRecipeFunction(
            function(out, ins, cInfo){
            if (!isNull(ins.tool)){
                if(ins.tool.maxDamage - ins.tool.damage <= 1){
                    return null;
                }
            }
            return out;
            }
        );
    }
    rb.create();
    recipes.removeByRecipeName(recipe.resourceDomain + ":" +recipe.name);
}

for toolname in hc_toolnames {
    hc_tools[toolname].maxDamage = 10;
}

val all_recipes as [ICraftingRecipe] = recipes.all;
for recipe in all_recipes {
    if ("harvestcraft" == recipe.resourceDomain) {
        detect_tool_recipe(recipe);
    }
}
