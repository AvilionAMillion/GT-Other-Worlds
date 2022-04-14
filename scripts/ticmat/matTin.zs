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

val matTin = mods.contenttweaker.tconstruct.MaterialBuilder.create("tin");
matTin.color = 0xE9E9E9;
matTin.craftable = false;
matTin.liquid = <liquid:tin>;
matTin.castable = true;
matTin.addItem(<item:gregtech:meta_item_1:10071>);
matTin.representativeItem = <item:gregtech:meta_item_1:10071>;
matTin.addHeadMaterialStats(95, 11.0f, 1.0f, 1);
matTin.addHandleMaterialStats(0.3, 0);
matTin.addExtraMaterialStats(0);
matTin.addBowMaterialStats(0.4f, 0.6f, 0.8f);
matTin.addArrowShaftMaterialStats(0.9f, 8);
matTin.addMaterialTrait("lightweight", "extra");
matTin.addMaterialTrait("stonebound", "head");
matTin.localizedName = "Tin";
matTin.register();