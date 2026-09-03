import gregtech.api.unification.material.properties.PropertyKey
import gregtech.api.unification.material.event.PostMaterialEvent

event_manager.listen { PostMaterialEvent event ->
 def nickel = material('nickel').getProperty(PropertyKey.ORE)
 def nickelbyproducts = nickel.getOreByProducts()
 nickelbyproducts.clear()
 nickelbyproducts.add(material('iron'))
 nickelbyproducts.add(material('cobalt'))
 nickelbyproducts.add(material('platinum_crude'))

 def bauxite = material('bauxite').getProperty(PropertyKey.ORE)
 def bxbyproducts = bauxite.getOreByProducts()
 bxbyproducts.clear()
 bxbyproducts.add(material('bauxilmenite'))
 bxbyproducts.add(material('gallium'))
 bxbyproducts.add(material('gallium'))

 def ilmenite = material('ilmenite').getProperty(PropertyKey.ORE)
 def ilmenitebyproducts = ilmenite.getOreByProducts()
 ilmenitebyproducts.clear()
 ilmenitebyproducts.add(material('bauxilmenite'))
 ilmenitebyproducts.add(material('bauxilmenite'))
 ilmenitebyproducts.add(material('iron'))

 def ironTL = material('iron').getProperty(PropertyKey.TOOL)
 ironTL.setToolHarvestLevel(3)

 def steelTL = material('steel').getProperty(PropertyKey.TOOL)
 steelTL.setToolHarvestLevel(5)

 def wironTL = material('wrought_iron').getProperty(PropertyKey.TOOL)
 wironTL.setToolHarvestLevel(4)

}