import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;
import mods.rustic.Condenser;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;

// Val
val healElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 0}]});

// Alchemy
mods.rustic.Condenser.addRecipe(<harvestcraft:aridgarden>, healElixir, <rustic:aloe_vera>);
mods.rustic.Condenser.addRecipe(<harvestcraft:frostgarden>, healElixir, <rustic:cloudsbluff>);
mods.rustic.Condenser.addRecipe(<harvestcraft:shadedgarden>, healElixir, <rustic:chamomile>);
mods.rustic.Condenser.addRecipe(<harvestcraft:soggygarden>, healElixir, <rustic:cohosh>);
mods.rustic.Condenser.addRecipe(<harvestcraft:tropicalgarden>, healElixir, <rustic:marsh_mallow>);
mods.rustic.Condenser.addRecipe(<harvestcraft:windygarden>, healElixir, <rustic:wind_thistle>);


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
        rb = RecipeBuilder.get("basic");
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
    hc_tools[toolname].maxDamage = 17;
}

val all_recipes as [ICraftingRecipe] = recipes.all;
for recipe in all_recipes {
    if ("harvestcraft" == recipe.resourceDomain) {
        detect_tool_recipe(recipe);
    }
}
 

















