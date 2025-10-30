// Removal of Various Default GT Recipes

// Electrolyzer
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustClay') * 13], null)

// Assembler
mods.gregtech.assembler.removeByInput(120, [metaitem('wireGtDoubleKanthal') * 8, metaitem('foilAluminium') * 8], [fluid('copper') * 144 * 144])

// Chemical Bath
mods.gregtech.chemical_bath.removeByInput(120, [metaitem('ingotHotKanthal')], [fluid('water') * 100 * 100])
mods.gregtech.chemical_bath.removeByInput(120, [metaitem('ingotHotKanthal')], [fluid('distilled_water') * 100 * 100])
