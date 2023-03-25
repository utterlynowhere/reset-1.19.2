import mods.jeitweaker.Jei;
import crafttweaker.api.item.IItemStack;

Jei.hideIngredientsByRegex(".*spawn_egg.*");
Jei.hideIngredientsByRegex(".*enchanted_book.*");
Jei.hideIngredientsByRegex(".*tipped_arrow.*");
Jei.hideIngredientsByRegex(".*bamboo_spikes_tipped.*");
Jei.hideIngredientsByRegex(".*infested.*");
Jei.hideIngredientsByRegex(".*trapped_chest.*");
Jei.hideIngredientsByRegex("fluid:.*");
Jei.hideIngredientsByRegex(".*debug.*");

function i(m as IItemStack, s as string) as void {
	Jei.addIngredientInformation(m, [s]);	
}

// for Quark

//Automation Part
i(<item:minecraft:chain>, "Chains can connect blocks together when a piston moves them.");

i(<item:minecraft:dispenser>, "Dispensers are able to place blocks in the world. Blocks placed by the dispenser are placed forward from the dispenser.");

i(<item:quark:ender_watcher>, "The Ender Watcher emits a redstone signal if a player is directly looking at it.");

i(<item:quark:feeding_trough>, "Animals eat food placed inside the wooden trough. However, if there's over 32 animals in a 10 block radius, they'll eat, but won't breed.");

i(<item:quark:gravisand>, "Gravisand will not fall unless primed with redstone. However, if gravisand receives a signal, and can not fall, it'll instead float up. Additionally, gravisand will propagate the signal to any adjacent gravisand blocks, causing them to fall or float as well.");

//Toretoise Ores
var s = "Toretoises can have these on their back. Try hitting its back with a pickaxe to get the ore! Iron rods can also automate this process.";
i(<item:minecraft:iron_ingot>, s);
i(<item:minecraft:iron_nugget>, s);
i(<item:minecraft:copper_ingot>, s);
i(<item:minecraft:redstone>, s);
i(<item:minecraft:coal>, s);
i(<item:minecraft:lapis_lazuli>, s);
i(<item:minecraft:raw_iron>, s);
i(<item:minecraft:raw_copper>, s);
