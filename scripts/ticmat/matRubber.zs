#loader gregtech
#loader contenttweaker
#modloaded tconstruct
// Tin Tinkers Construct Material File

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.tconstruct.Material;
import mods.gregtech.recipe.RecipeMap;
import mods.contenttweaker.tconstruct.Trait;

val matRubber = mods.contenttweaker.tconstruct.MaterialBuilder.create("rubber");
matRubber.color = 0x090909;
matRubber.craftable = false;
matRubber.liquid = <liquid:rubber>;
matRubber.castable = true;
matRubber.addItem(<item:gregtech:meta_item_1:10152>);
matRubber.representativeItem = <item:gregtech:meta_item_1:10152>;
matRubber.addHeadMaterialStats(30, 2.0f, 0.3f, 0);
matRubber.addHandleMaterialStats(2.0, -100);
matRubber.addExtraMaterialStats(-30);
matRubber.addArrowShaftMaterialStats(0.4f, 30);
matRubber.addFletchingMaterialStats(0.5f, 2.2f);
matRubber.addMaterialTrait("squeaky", "extra");
matRubber.addMaterialTrait("squeaky", "handle");
matRubber.addMaterialTrait("squeaky", "head");
matRubber.localizedName = "Rubber";
matRubber.register();