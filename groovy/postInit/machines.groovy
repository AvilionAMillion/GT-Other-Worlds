 import gregtech.common.metatileentities.MetaTileEntities

 import classes.MetaTileEntityFlotationTank

 if (isReloading()) return

 MetaTileEntities.registerMetaTileEntity(32001, new MetaTileEntityFlotationTank(new ResourceLocation("gtow", "flotation_tank")))