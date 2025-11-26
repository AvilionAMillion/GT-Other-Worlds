// Removal of Various Default GT Recipes

// EBF
mods.gregtech.chemical_bath.removeByInput(120, [metaitem('ingotHotSilicon')], [fluid('water') * 100 * 100])
mods.gregtech.chemical_bath.removeByInput(120, [metaitem('ingotHotSilicon')], [fluid('distilled_water') * 100 * 100])


// Electrolyzer
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustClay') * 13], null)

// Assembler
mods.gregtech.assembler.removeByInput(120, [metaitem('wireGtDoubleKanthal') * 8, metaitem('foilAluminium') * 8], [fluid('copper') * 144 * 144])
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleTin') * 2, metaitem('stickIron') * 2, metaitem('stickIronMagnetic'), metaitem('wireGtSingleCopper') * 4], null)
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleTin') * 2, metaitem('stickSteel') * 2, metaitem('stickSteelMagnetic'), metaitem('wireGtSingleCopper') * 4], null)
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleTin'), metaitem('pipeNormalFluidBronze'), metaitem('screwTin'), metaitem('rotorTin'), metaitem('ringStyreneButadieneRubber') * 2, metaitem('electric.motor.lv')], null)
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleTin'), metaitem('pipeNormalFluidBronze'), metaitem('screwTin'), metaitem('rotorTin'), metaitem('ringSiliconeRubber') * 2, metaitem('electric.motor.lv')], null)
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleTin'), metaitem('pipeNormalFluidBronze'), metaitem('screwTin'), metaitem('rotorTin'), metaitem('ringRubber') * 2, metaitem('electric.motor.lv')], null)
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleTin'), metaitem('electric.motor.lv') * 2, metaitem('circuit.integrated').withNbt(['Configuration': 1])], [fluid('styrene_butadiene_rubber') * 864 * 864])
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleTin'), metaitem('electric.motor.lv') * 2, metaitem('circuit.integrated').withNbt(['Configuration': 1])], [fluid('silicone_rubber') * 864 * 864])
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleTin'), metaitem('electric.motor.lv') * 2, metaitem('circuit.integrated').withNbt(['Configuration': 1])], [fluid('rubber') * 864 * 864])
mods.gregtech.assembler.removeByInput(30, [metaitem('stickSteel') * 2, metaitem('cableGtSingleTin') * 2, metaitem('plateSteel') * 3, metaitem('gearSmallSteel'), metaitem('electric.motor.lv')], null)
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleTin') * 3, metaitem('stickSteel') * 2, metaitem('electric.motor.lv') * 2, metaitem('electric.piston.lv'), metaitem('circuit.electronic')], null)
mods.gregtech.assembler.removeByInput(120, [metaitem('plateSilicon'), metaitem('wireFineTin') * 6], [fluid('plastic') * 144 * 144])
mods.gregtech.assembler.removeByInput(120, [metaitem('foilPlastic'), metaitem('foilAluminium') * 2], [fluid('plastic') * 144 * 144])







// Chemical Bath
mods.gregtech.chemical_bath.removeByInput(120, [metaitem('ingotHotKanthal')], [fluid('water') * 100 * 100])
mods.gregtech.chemical_bath.removeByInput(120, [metaitem('ingotHotKanthal')], [fluid('distilled_water') * 100 * 100])

// Chemical Reactor
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(['Configuration': 1])], [fluid('air') * 1000 * 1000, fluid('ethylene') * 144 * 144])
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(['Configuration': 1])], [fluid('oxygen') * 1000 * 1000, fluid('ethylene') * 144 * 144])

// Electrolyzer
mods.gregtech.electrolyzer.removeByInput(30, [metaitem('dustSiliconDioxide') * 3], null)

// Circuit Assembler
mods.gregtech.circuit_assembler.removeByInput(16, [metaitem('circuit_board.good'), metaitem('circuit.electronic') * 2, metaitem('component.diode') * 2, metaitem('wireGtSingleCopper') * 2], [fluid('soldering_alloy') * 72 * 72])
mods.gregtech.circuit_assembler.removeByInput(16, [metaitem('circuit_board.good'), metaitem('circuit.electronic') * 2, metaitem('component.diode') * 2, metaitem('wireGtSingleCopper') * 2], [fluid('tin') * 144 * 144])

