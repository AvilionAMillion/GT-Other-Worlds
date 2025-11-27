// Ore Processing Changes
// Changes to centrifuge/electrolyzer/other recipes

// Zeolite
mods.gregtech.electrolyzer.removeByInput(120, [metaitem('dustZeolite') * 41], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustZeolite') * 62])
        .outputs(item('gregtech:meta_dust:101') * 1, item('gregtech:meta_dust:16') * 4, item('gregtech:meta_dust:356') * 42, item('gregtech:meta_dust:24013') * 15)
        .duration(656)
        .EUt(120)
        .buildAndRegister()

// Bentonite
mods.gregtech.electrolyzer.removeByInput(120, [metaitem('dustBentonite') * 30], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustBentonite') * 37])
        .outputs(item('gregtech:meta_dust:101') * 1, item('gregtech:meta_dust:59') * 6, item('gregtech:meta_dust:356') * 30)
        .duration(480)
        .EUt(120)
        .buildAndRegister()

// Almandine
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustAlmandine') * 20], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustAlmandine') * 17])
        .outputs(item('gregtech:meta_dust:24013') * 5, item('gregtech:meta_dust:51') * 3, item('gregtech:meta_dust:356') * 9)
        .duration(480)
        .EUt(60)
        .buildAndRegister()

// Andradite
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustAndradite') * 20], null)
mods.gregtech.electrolyzer.recipeBuilder()
    .inputs([metaitem('dustAndradite') * 14])
    .outputs(item('gregtech:meta_dust:16') * 3, item('gregtech:meta_dust:51') * 2, item('gregtech:meta_dust:356') * 9)
    .duration(480)
    .EUt(60)
    .buildAndRegister()

// Asbestos
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustAsbestos') * 18], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustAsbestos') * 18])
        .outputs(item('gregtech:meta_dust:59') * 3, item('gregtech:meta_dust:356') * 6)
        .fluidOutputs(fluid('water') * 2000, fluid('oxygen') * 3000)
        .duration(490)
        .EUt(60)
        .buildAndRegister()

// Blue Topaz
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustBlueTopaz') * 13], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustBlueTopaz') * 13])
        .outputs(item('gregtech:meta_dust:24013') * 5, item('gregtech:meta_dust:356') * 3)
        .fluidOutputs(fluid('fluorine') * 2000, fluid('water') * 1000)
        .duration(205)
        .EUt(60)
        .buildAndRegister()

// Emerald
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustEmerald') * 29], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustEmerald') * 29])
        .outputs(item('gregtech:meta_dust:10') * 3, item('gregtech:meta_dust:24013') * 5, item('gregtech:meta_dust:356') * 18)
        .fluidOutputs(fluid('oxygen') * 3000)
        .duration(522)
        .EUt(60)
        .buildAndRegister()

// Grossular
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustGrossular') * 20], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustGrossular') * 20])
        .outputs(item('gregtech:meta_dust:16') * 3, item('gregtech:meta_dust:24013') * 5, item('gregtech:meta_dust:356') * 9)
        .fluidOutputs(fluid('oxygen') * 3000)
        .duration(440)
        .EUt(60)
        .buildAndRegister()

// Lazurite
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustLazurite') * 14], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustLazurite') * 49])
        .outputs(item('gregtech:meta_dust:24013') * 15, item('gregtech:meta_dust:356') * 18, item('gregtech:meta_dust:16') * 8, item('gregtech:meta_dust:101') * 8)
        .duration(392)
        .EUt(60)
        .buildAndRegister()

// Obsidian
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustObsidian') * 8], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustObsidian') * 8])
        .outputs(item('gregtech:meta_dust:59') * 1, item('gregtech:meta_dust:51') * 1, item('gregtech:meta_dust:356') * 6)
        .duration(192)
        .EUt(60)
        .buildAndRegister()

// Biotite
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustBiotite') * 22], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustBiotite') * 44])
        .outputs(metaitem('dustPotassium') * 2, metaitem('dustBiotite') * 6, metaitem('dustAlumina') * 15, metaitem('dustSiliconDioxide') * 18)
        .fluidOutputs(fluid('fluorine') * 4000)
        .duration(880)
        .EUt(60)
        .buildAndRegister()

// Pyrope
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustPyrope') * 20], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustPyrope') * 20])
        .outputs(metaitem('dustAlumina') * 5, metaitem('dustMagnesium') * 3, metaitem('dustSiliconDioxide') * 9)
        .fluidOutputs(fluid('oxygen') * 3000)
        .duration(400)
        .EUt(60)
        .buildAndRegister()

// Sodalite
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustSodalite') * 11], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustSodalite') * 43])
        .outputs(metaitem('dustAlumina') * 15, metaitem('dustSiliconDioxide') * 18, metaitem('dustSodium') * 8)
        .fluidOutputs(fluid('chlorine') * 2000)
        .duration(264)
        .EUt(60)
        .buildAndRegister()

// Spessartine
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustSpessartine') * 20], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustSpessartine') * 20])
        .outputs(metaitem('dustAlumina') * 5, metaitem('dustManganese') * 3, metaitem('dustSiliconDioxide') * 9)
        .fluidOutputs(fluid('oxygen') * 3000)
        .duration(440)
        .EUt(60)
        .buildAndRegister()

//  Topaz
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustTopaz') * 6], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustTopaz') * 6])
        .outputs(metaitem('dustAlumina') * 5, metaitem('dustSiliconDioxide') * 3)
        .fluidOutputs(fluid('fluorine') * 1000, fluid('water') * 1000)
        .duration(96)
        .EUt(60)
        .buildAndRegister()

// Uvarovite
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustUvarovite') * 20], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustUvarovite') * 20])
        .outputs(metaitem('dustCalcium') * 3, metaitem('dustChrome') * 2, metaitem('dustSiliconDioxide') * 9)
        .fluidOutputs(fluid('oxygen') * 6000)
        .duration(480)
        .EUt(60)
        .buildAndRegister()

// Spodumene
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustSpodumene') * 10], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustSpodumene') * 20])
        .outputs(metaitem('dustLithium') * 2, metaitem('dustAlumina') * 5, metaitem('dustSiliconDioxide') * 12)
        .fluidOutputs(fluid('oxygen') * 1000)
        .duration(360)
        .EUt(60)
        .buildAndRegister()

// Mica
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustMica') * 19], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustMica') * 38])
        .outputs(metaitem('dustPotassium') * 2, metaitem('dustAlumina') * 15, metaitem('dustSiliconDioxide') * 18)
        .fluidOutputs(fluid('fluorine') * 2000, fluid('oxygen') * 1000)
        .duration(760)
        .EUt(60)
        .buildAndRegister()

// Alunite
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustAlunite') * 26], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustAlunite') * 52])
        .outputs(metaitem('dustPotassium') * 2, metaitem('dustAlumina') * 15, metaitem('dustSiliconDioxide') * 12)
        .fluidOutputs(fluid('water') * 6000, fluid('oxygen') * 5000)
        .duration(728)
        .EUt(60)
        .buildAndRegister()

// Soapstone
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustSoapstone') * 21], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustSoapstone') * 21])
        .outputs(metaitem('dustMagnesium') * 3, metaitem('dustSiliconDioxide') * 12)
        .fluidOutputs(fluid('water') * 1000, fluid('oxygen') * 3000)
        .duration(360)
        .EUt(60)
        .buildAndRegister()

// Kyanite
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustKyanite') * 8], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustKyanite') * 8])
        .outputs(metaitem('dustSiliconDioxide') * 3, metaitem('dustAlumina') * 5)
        .duration(160)
        .EUt(60)
        .buildAndRegister()

// Potassium Feldspar
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustPotassiumFeldspar') * 11], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustPotassiumFeldspar') * 11])
        .outputs(metaitem('dustPotassium') * 1, metaitem('dustSiliconDioxide') * 3, metaitem('dustAlumina') * 5)
        .fluidOutputs(fluid('oxygen') * 1000)
        .duration(220)
        .EUt(60)
        .buildAndRegister()

// Pollucite
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustPollucite') * 11], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustPollucite') * 22])
        .outputs(metaitem('dustCaesium') * 2, metaitem('dustSiliconDioxide') * 12, metaitem('dustAlumina') * 5)
        .fluidOutputs(fluid('water') * 2000, fluid('oxygen') * 1000)
        .duration(572)
        .EUt(60)
        .buildAndRegister()

// Fullers Earth
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustFullersEarth') * 21], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustFullersEarth') * 21])
        .outputs(metaitem('dustMagnesium') * 1, metaitem('dustSiliconDioxide') * 12)
        .fluidOutputs(fluid('water') * 4000, fluid('hydrogen') * 1000, fluid('oxygen') * 3000)
        .duration(336)
        .EUt(60)
        .buildAndRegister()

// Talc
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustTalc') * 21], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustTalc') * 21])
        .outputs(metaitem('dustMagnesium') * 3, metaitem('dustSiliconDioxide') * 12)
        .fluidOutputs(fluid('hydrogen') * 2000, fluid('oxygen') * 4000)
        .duration(378)
        .EUt(60)
        .buildAndRegister()

// Ferrosilite
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustFerrosilite') * 5], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustFerrosilite') * 5])
        .outputs(metaitem('dustIron') * 1, metaitem('dustSiliconDioxide') * 3)
        .fluidOutputs(fluid('oxygen') * 1000)
        .duration(120)
        .EUt(60)
        .buildAndRegister()

// Bauxite
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustBauxite') * 15], null)

// Sapphires (Arc Furnace Recipes Into Alumina Instead)
mods.gregtech.electrolyzer.removeByInput(30, [metaitem('dustGreenSapphire') * 5], null)
mods.gregtech.electrolyzer.removeByInput(30, [metaitem('dustSapphire') * 5], null)

// Ruby
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustRuby') * 6], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustRuby') * 12])
        .outputs(metaitem('dustAlumina') * 10)
        .chancedOutput(item('gregtech:meta_dust:22'), 3000, 400)
        .duration(320)
        .EUt(120)
        .buildAndRegister()

// Glauconite Sand
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustGlauconiteSand') * 21], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustGlauconiteSand') * 21])
        .outputs(metaitem('dustPotassium') * 1, metaitem('dustMagnesium') * 2, metaitem('dustAlumina') * 10)
        .fluidOutputs(fluid('hydrogen') * 2000, fluid('oxygen') * 6000)
        .duration(378)
        .EUt(60)
        .buildAndRegister()

// Red Granite
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustGraniteRed') * 6], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustGraniteRed') * 6])
        .outputs(metaitem('dustAlumina') * 5, metaitem('dustPotassiumFeldspar') * 1)
        .duration(120)
        .EUt(60)
        .buildAndRegister()

// Lepidolite
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustLepidolite') * 20], null)
mods.gregtech.electrolyzer.recipeBuilder()
        .inputs([metaitem('dustLepidolite') * 20])
        .outputs(metaitem('dustPotassium') * 1, metaitem('dustLithium') * 3, metaitem('dustAlumina') * 10)
        .fluidOutputs(fluid('fluorine') * 2000, fluid('oxygen') * 4000)
        .duration(378)
        .EUt(60)
        .buildAndRegister()


