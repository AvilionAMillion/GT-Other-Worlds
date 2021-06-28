#loader gregtech
#loader contenttweaker
#modloaded tconstruct
// Wrought Iron Tinkers Construct Material File

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.tconstruct.Material;
import mods.gregtech.recipe.RecipeMap;
import mods.contenttweaker.tconstruct.Trait;

val matWroughtIron = mods.contenttweaker.tconstruct.MaterialBuilder.create("wrought_iron");
matWroughtIron.color = 0xA99898;
matWroughtIron.craftable = false;
matWroughtIron.liquid = <liquid:wrought_iron>;
matWroughtIron.castable = true;
matWroughtIron.addItem(<item:gregtech:meta_item_1:10197>);
matWroughtIron.representativeItem = <item:gregtech:meta_item_1:10197>;
matWroughtIron.addHeadMaterialStats(315, 7.0f, 4.0f, 4);
matWroughtIron.addHandleMaterialStats(1.3, 80);
matWroughtIron.addExtraMaterialStats(55);
matWroughtIron.addBowMaterialStats(1.43f, 1.5f, 1.2f);
matWroughtIron.addMaterialTrait("dense", "extra");
matWroughtIron.addMaterialTrait("lightweight", "head");
matWroughtIron.localizedName = "Wrought Iron";
matWroughtIron.register();