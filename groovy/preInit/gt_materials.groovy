import gregtech.api.unification.material.properties.PropertyKey
import gregtech.api.unification.material.event.PostMaterialEvent

event_manager.listen { PostMaterialEvent event ->
 def nickel = material('nickel').getProperty(PropertyKey.ORE)
 def nickelbyproducts = nickel.getOreByProducts()
 nickelbyproducts.clear()
 nickelbyproducts.add(material('iron'))
 nickelbyproducts.add(material('cobalt'))
 nickelbyproducts.add(material('platinum_crude'))
}