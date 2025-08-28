 import gregtech.common.metatileentities.MetaTileEntities

 import classes.MetaTileEntityWoodOven

 if (isReloading()) return

 MetaTileEntities.registerMetaTileEntity(32000, new MetaTileEntityWoodOven(new ResourceLocation("gtow", "woodoven")))
