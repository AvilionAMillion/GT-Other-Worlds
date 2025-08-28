import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
print("Starting Tools.zs");

# Tool Nerfings
val toolsToNerf = [
	
	<actuallyadditions:wooden_paxel>,
	<actuallyadditions:stone_paxel>,
	<actuallyadditions:iron_paxel>,
	<actuallyadditions:gold_paxel>,
	<actuallyadditions:diamond_paxel>,
	<actuallyadditions:emerald_paxel>,
	<actuallyadditions:obsidian_paxel>,
	<actuallyadditions:quartz_paxel>,
	<actuallyadditions:item_paxel_crystal_red>,
	<actuallyadditions:item_paxel_crystal_blue>,
	<actuallyadditions:item_paxel_crystal_light_blue>,
	<actuallyadditions:item_paxel_crystal_black>,
	<actuallyadditions:item_paxel_crystal_green>,
	<actuallyadditions:item_paxel_crystal_white>,
			
	<appliedenergistics2:nether_quartz_axe>,
	<appliedenergistics2:nether_quartz_spade>,
	<appliedenergistics2:nether_quartz_hoe>,
	<appliedenergistics2:nether_quartz_pickaxe>,
	<appliedenergistics2:nether_quartz_sword>,
				
	<appliedenergistics2:certus_quartz_axe>,
	<appliedenergistics2:certus_quartz_spade>,
	<appliedenergistics2:certus_quartz_hoe>,
	<appliedenergistics2:certus_quartz_pickaxe>,
	<appliedenergistics2:certus_quartz_sword>,
			
	<actuallyadditions:item_axe_crystal_white>,
	<actuallyadditions:item_shovel_crystal_white>,
	<actuallyadditions:item_hoe_crystal_white>,
	<actuallyadditions:item_pickaxe_crystal_white>,
	<actuallyadditions:item_sword_crystal_white>,
			
	<actuallyadditions:item_axe_crystal_black>,
	<actuallyadditions:item_shovel_crystal_black>,
	<actuallyadditions:item_hoe_crystal_black>,
	<actuallyadditions:item_pickaxe_crystal_black>,
	<actuallyadditions:item_sword_crystal_black>,
			
	<actuallyadditions:item_axe_crystal_light_blue>,
	<actuallyadditions:item_shovel_crystal_light_blue>,
	<actuallyadditions:item_hoe_crystal_light_blue>,
	<actuallyadditions:item_pickaxe_crystal_light_blue>,
	<actuallyadditions:item_sword_crystal_light_blue>,
			
	<actuallyadditions:item_axe_crystal_blue>,
	<actuallyadditions:item_shovel_crystal_blue>,
	<actuallyadditions:item_hoe_crystal_blue>,
	<actuallyadditions:item_pickaxe_crystal_blue>,
	<actuallyadditions:item_sword_crystal_blue>,
			
	<actuallyadditions:item_axe_crystal_red>,
	<actuallyadditions:item_shovel_crystal_red>,
	<actuallyadditions:item_hoe_crystal_red>,
	<actuallyadditions:item_pickaxe_crystal_red>,
	<actuallyadditions:item_sword_crystal_red>,
	
	<actuallyadditions:item_axe_quartz>,
	<actuallyadditions:item_shovel_quartz>,
	<actuallyadditions:item_hoe_quartz>,
	<actuallyadditions:item_pickaxe_quartz>,
	<actuallyadditions:item_sword_quartz>,
		
	<actuallyadditions:item_axe_emerald>,
	<actuallyadditions:item_shovel_emerald>,
	<actuallyadditions:item_hoe_emerald>,
	<actuallyadditions:item_pickaxe_emerald>,
	<actuallyadditions:item_sword_emerald>,
	
	<actuallyadditions:item_axe_obsidian>,
	<actuallyadditions:item_shovel_obsidian>,
	<actuallyadditions:item_hoe_obsidian>,
	<actuallyadditions:item_pickaxe_obsidian>,
	<actuallyadditions:item_sword_obsidian>,
	
	<minecraft:golden_axe>,
	<minecraft:golden_shovel>,
	<minecraft:golden_hoe>,
	<minecraft:golden_pickaxe>,
	<minecraft:golden_sword>,
	
	<minecraft:diamond_shovel>,
	<minecraft:diamond_axe>,
	<minecraft:diamond_pickaxe>,
	<minecraft:diamond_hoe>,
	<minecraft:diamond_sword>,
	
	<minecraft:iron_shovel>,
	<minecraft:iron_axe>,
	<minecraft:iron_pickaxe>,
	<minecraft:iron_hoe>,
	<minecraft:iron_sword>,
		
	<minecraft:wooden_pickaxe>,
	<minecraft:wooden_sword>,
	<minecraft:wooden_hoe>,
	<minecraft:wooden_shovel>,
	<minecraft:wooden_axe>,
	
	<minecraft:stone_pickaxe>,
	<minecraft:stone_hoe>,
	<minecraft:stone_axe>,
	<minecraft:stone_shovel>,
	<minecraft:stone_sword>,
	
	<pyrotech:flint_sword>,
	<pyrotech:flint_pickaxe>,
	<pyrotech:flint_axe>,
	<pyrotech:flint_shovel>,
	<pyrotech:flint_hoe>,
	
	<astralsorcery:itemcrystalpickaxe>,
	<astralsorcery:itemcrystalsword>,
	<astralsorcery:itemcrystalaxe>,
	<astralsorcery:itemcrystalshovel>,
	
	<astralsorcery:itemchargedcrystalpickaxe>,
	<astralsorcery:itemchargedcrystalsword>,
	<astralsorcery:itemchargedcrystalaxe>,
	<astralsorcery:itemchargedcrystalshovel>,
	
	<bloodmagic:sentient_sword>,
	<bloodmagic:sentient_pickaxe>,
	<bloodmagic:sentient_axe>,
	<bloodmagic:sentient_shovel>,
	<bloodmagic:sentient_bow>,
	
	<botania:manasteelsword>,
	<botania:manasteelpick>,
	<botania:manasteelaxe>,
	<botania:manasteelshovel>,
	
	<botania:elementiumsword>,
	<botania:elementiumpick>,
	<botania:elementiumaxe>,
	<botania:elementiumshovel>,
	
	<botania:glasspick>,
	
	
	
		] as IItemStack[];
		
	for tool in toolsToNerf {
		tool.maxDamage = 1;
		tool.addTooltip(format.red("These tools are deprecated"));	
		tool.addTooltip(format.red("Use Gregtech Tools instead."));			
	}