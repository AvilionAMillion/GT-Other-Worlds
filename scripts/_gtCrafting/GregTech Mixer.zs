import mods.gregtech.recipe.RecipeMap;

//Variables
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");

var stoneDust = <gregtech:meta_item_1:2328>;
var clayDust = <gregtech:meta_item_1:2105>;
var liquidWater = <liquid:water>;
var liquidConcrete = <liquid:concrete>;
var gtFirebrick = <gregtech:meta_item_2:32015>;
var gypsumDust = <gregtech:meta_item_1:2287>;
var calciteDust = <gregtech:meta_item_1:2097>;
var sandDust = <gregtech:meta_item_1:2960>;

// Removal
mixer.findRecipe(16, [stoneDust * 3, clayDust, <gregtech:meta_item_1:32766>], [liquidWater * 500]).remove();

// LV Tier
		

