//Nuking things from JEI
 var FoundRefract = <foundry:component:1>;
    var tinyFoundRefract = <foundry:component:16>;
 var RefractBrick = <foundry:component:2>;

    mods.jei.JEI.removeAndHide(FoundRefract);
        mods.jei.JEI.removeAndHide(tinyFoundRefract);
    mods.jei.JEI.removeAndHide(RefractBrick);
    mods.jei.JEI.removeAndHide(<foundry:alloyfurnace>);    

    furnace.remove(RefractBrick, FoundRefract);

 var RefractCan = <foundry:fluidcontainer>;
    mods.jei.JEI.removeAndHide(RefractCan);