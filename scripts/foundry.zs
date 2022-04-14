// GTOW Dev
//Nuking things from JEI
 //Refractory Material
 var FoundRefract = <foundry:component:1>;
 var tinyFoundRefract = <foundry:component:16>;
 var RefractBrick = <foundry:component:2>;

    mods.jei.JEI.removeAndHide(FoundRefract);
	mods.jei.JEI.removeAndHide(tinyFoundRefract);
	mods.jei.JEI.removeAndHide(RefractBrick);
	mods.jei.JEI.removeAndHide(<foundry:alloyfurnace>);   

    furnace.remove(RefractBrick, FoundRefract);
 
 //JEI Fluid containers
 var RefractCan = <foundry:fluidcontainer>;
    mods.jei.JEI.removeAndHide(RefractCan);

    mods.jei.JEI.hide(<forge:bucketfilled>);
        mods.jei.JEI.hide(<foundry:liquidiron>);
        mods.jei.JEI.hide(<foundry:liquidgold>);
        mods.jei.JEI.hide(<foundry:liquidcopper>);
        mods.jei.JEI.hide(<foundry:liquidtin>);  
        mods.jei.JEI.hide(<foundry:liquidbronze>);
        mods.jei.JEI.hide(<foundry:liquidelectrum>);
        mods.jei.JEI.hide(<foundry:liquidinvar>);
        mods.jei.JEI.hide(<foundry:liquidnickel>);    