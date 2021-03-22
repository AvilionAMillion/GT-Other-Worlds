#priority 100
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

function hasItem(entry_name as string) as bool{
    if (oreDict has entry_name) {
        // print("oredict " + entry_name + " exists...");
        val entry as IOreDictEntry = oreDict.get(entry_name);
        val item as IItemStack = entry.firstItem;
        if (!isNull(item)) {
            // print("oredict " + entry_name + " is not empty!");
            return true;
        }
    }
    return false;
}

function tryGetModItem(entry as IOreDictEntry, modName as string) as IItemStack {
    for item in entry.items as IItemStack[] {
        if (item.definition.id.startsWith(modName + ":")) {
            return item;
        }
    }
    print("WARNING! No " + modName + " item for oredict " + entry.name + " was found");
    return entry.firstItem;
}

function tryGetGTItem(entry as IOreDictEntry) as IItemStack {
    return tryGetModItem(entry, "gregtech");
}

function toSnakeCase(inp as string) as string{
    val regex = "([a-z])([A-Z]+)";
    val replacement = "$1_$2";
    return inp.replaceAll(regex, replacement).toLowerCase();
}
