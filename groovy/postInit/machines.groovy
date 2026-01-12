 import gregtech.common.metatileentities.MetaTileEntities

 import classes.MetaTileEntityFlotationTank
 import classes.MetaTileEntityBBBF

 if (isReloading()) return

 MetaTileEntities.registerMetaTileEntity(32001, new MetaTileEntityFlotationTank(new ResourceLocation("gtow", "flotation_tank")))
 MetaTileEntities.registerMetaTileEntity(32002, new MetaTileEntityBBBF(new ResourceLocation("gtow", "bbbf")))