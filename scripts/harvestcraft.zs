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
    var rb as RecipeBuilder = RecipeBuilder.get("chef");
    var copy = Copy.byRecipe(recipe);

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
        rb.create();
        recipes.removeByRecipeName(recipe.resourceDomain + ":" +recipe.name);
    }
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
 
// Crafting
recipes.remove(<harvestcraft:market>);
recipes.remove(<harvestcraft:shippingbin>);
recipes.remove(<harvestcraft:well>);
recipes.remove(<harvestcraft:waterfilter>);
recipes.remove(<harvestcraft:grinder>);
recipes.remove(<harvestcraft:presser>);
# Cutting Board
recipes.remove(<harvestcraft:cuttingboarditem>);
recipes.addShaped(<harvestcraft:cuttingboarditem>,
	[[plateIron, gtFile, null],
	[plateIron, plateIron, null],
	[<ore:slabWood>, stick, gtHammer]]);
# Pot
recipes.remove(<harvestcraft:potitem>);
recipes.addShaped(<harvestcraft:potitem>,
	[[plateIron, gtHammer, plateIron],
	[screwIron, plateIron, screwIron]]);
# Skillet
recipes.remove(<harvestcraft:skilletitem>);
recipes.addShaped(<harvestcraft:skilletitem>,
	[[null, plateIron, plateIron],
	[gtFile, plateIron, plateIron],
	[stick, gtHammer, null]]);
# Saucepan
recipes.remove(<harvestcraft:saucepanitem>);
recipes.addShaped(<harvestcraft:saucepanitem>,
	[[null, null, stick],
	[gtFile, plateIron, screwIron],
	[plateIron, plateIron, gtHammer]]);
# Bakeware
recipes.remove(<harvestcraft:bakewareitem>);
recipes.addShaped(<harvestcraft:bakewareitem>,
	[[plateIron, null, plateIron],
	[plateIron, gtHammer, plateIron],
	[screwIron, plateIron, screwIron]]);
# Mortar and Pestle
recipes.remove(<harvestcraft:mortarandpestleitem>);
recipes.addShaped(<harvestcraft:mortarandpestleitem>, 
	[[null, null, stick],
	[<pyrotech:material:16>, ringIron, <pyrotech:material:16>],
	[null, <pyrotech:material:16>, gtFile]]);
# Mixing Bowl
recipes.remove(<harvestcraft:mixingbowlitem>);
recipes.addShaped(<harvestcraft:mixingbowlitem>,
	[[null, null, stick],
	[<gregtech:planks:1>, ringIron, <gregtech:planks:1>],
	[null, <gregtech:planks:1>, gtFile]]);
# Juicer
recipes.remove(<harvestcraft:juiceritem>);
recipes.addShaped(<harvestcraft:juiceritem>,
	[[gtFile, plateIron],
	[plateIron, screwIron]]);















