var air = <item:minecraft:air>;
var stick = <item:minecraft:stick>;
var logs = <tag:items:minecraft:logs>;
var ender_pearl = <item:minecraft:ender_pearl>;
var honey = <item:minecraft:honeycomb>;
var blaze_powder = <item:minecraft:blaze_powder>;
var prismarine_crystal = <item:minecraft:prismarine_crystals>;
var emerald = <item:minecraft:emerald>;
var leather = <item:minecraft:leather>;
var honey_bottle = <item:minecraft:honey_bottle>;
var paper = <item:minecraft:paper>;
var map = <item:minecraft:map>;
var planks = <tag:items:minecraft:planks>;
var ironpick = <item:minecraft:iron_pickaxe>;
var ironaxe = <item:minecraft:iron_axe>;
var ironshovel = <item:minecraft:iron_shovel>;
var ironblock = <item:minecraft:iron_block>;
var ironhoe = <item:minecraft:iron_hoe>;
var wood_button = <tag:items:minecraft:wooden_buttons>;
var iron_nugget = <item:minecraft:iron_nugget>;
var andesite = <item:minecraft:andesite>;

var andesite_casing = <item:create:andesite_casing>;
var iron_sheet = <item:create:iron_sheet>;
var andesite_alloy = <item:create:andesite_alloy>;
var brasscasing = <item:create:brass_casing>;
var brasshand = <item:create:brass_hand>;
var whisk = <item:create:whisk>;
var propeller = <item:create:propeller>;
var zinc_nugget = <item:create:zinc_nugget>;

var sapling = <tag:items:minecraft:saplings>;
var mimicream = <item:alexsmobs:mimicream>;
var kelp = <item:minecraft:kelp>;
var holy_sapball = <item:malum:holy_sapball>;
var unholy_sapball = <item:malum:unholy_sapball>;

var soft_blocks = <tag:items:mnm:soft_blocks>;

var mixing = <recipetype:create:mixing>;

<tag:items:forge:slimeballs>.add(honey_bottle);

//remove unnecessary recipes;
craftingTable.removeByName("minecraft:lead");
craftingTable.removeByName("malum:lead_from_sapballs");
craftingTable.removeByRegex(".*boards.*");
craftingTable.removeByName("quark:tweaks/crafting/utility/misc/easy_sticks");
craftingTable.remove(<item:waystones:waystone>);
craftingTable.remove(<item:paraglider:paraglider>);

craftingTable.addShapeless("kousa_sapling", <item:atmospheric:kousa_sapling>, [holy_sapball, sapling]);
craftingTable.addShapeless("grimwood_sapling", <item:atmospheric:grimwood_sapling>, [unholy_sapball, sapling]);

craftingTable.addShapeless("tongue_kelp", <item:upgrade_aquatic:tongue_kelp>, [unholy_sapball, kelp]);
craftingTable.addShapeless("thorny_kelp", <item:upgrade_aquatic:thorny_kelp>, [mimicream, <item:upgrade_aquatic:tongue_kelp>]);
craftingTable.addShapeless("ochre_kelp", <item:upgrade_aquatic:ochre_kelp>, [holy_sapball, kelp]);
craftingTable.addShapeless("polar_kelp", <item:upgrade_aquatic:polar_kelp>, [mimicream, <item:upgrade_aquatic:ochre_kelp>]);

craftingTable.remove(<item:hexcasting:edified_staff>);
craftingTable.addShaped("edified_wand_logs", <item:hexcasting:edified_staff>,
	[[air, stick, <item:hexcasting:charged_amethyst>],
	[air, logs, stick],
	[stick, air, air]]);

craftingTable.remove(<item:minecraft:ender_eye>);
craftingTable.addShapeless("ender_eye_renewed", <item:minecraft:ender_eye>, [ender_pearl, honey, blaze_powder, prismarine_crystal, emerald]);

craftingTable.addShaped("feather_white_bed", <item:minecraft:white_bed>,
	[[soft_blocks, soft_blocks, soft_blocks],
	[planks, planks, planks]]);

craftingTable.remove(map);
craftingTable.addShaped("paper_map", map, [
	[paper, paper, paper],
	[paper, paper, paper],
	[paper, paper, paper]]);

furnace.addRecipe("rf2leather", <item:minecraft:leather>, <item:minecraft:rotten_flesh>, 0.0, 200);

// create adjustments

craftingTable.remove(<item:create:mechanical_drill>);
craftingTable.remove(<item:create:mechanical_press>);
craftingTable.remove(<item:create:mechanical_mixer>);
craftingTable.remove(<item:create:mechanical_saw>);
craftingTable.remove(<item:create:mechanical_harvester>);
craftingTable.remove(<item:create:mechanical_plough>);
craftingTable.remove(<item:create:deployer>);
craftingTable.remove(<item:create:encased_fan>);


smithing.addRecipe("mechanical_drill_adjusted", <item:create:mechanical_drill>, andesite_casing, ironpick);
smithing.addRecipe("mechanical_press_adjusted", <item:create:mechanical_press>, andesite_casing, ironblock);
smithing.addRecipe("mechanical_mixer_adjusted", <item:create:mechanical_mixer>, andesite_casing, whisk);
smithing.addRecipe("mechanical_saw_adjusted", <item:create:mechanical_saw>, andesite_casing, ironaxe);
smithing.addRecipe("mechanical_harvester_adjusted", <item:create:mechanical_harvester>, andesite_casing, ironhoe);
smithing.addRecipe("mechanical_plough_adjusted", <item:create:mechanical_plough>, andesite_casing, ironshovel);
smithing.addRecipe("deployer_adjusted", <item:create:deployer>, andesite_casing, brasshand);
smithing.addRecipe("encased_fan_adjusted", <item:create:encased_fan>, andesite_casing, propeller);

craftingTable.remove(<item:create:large_cogwheel>);
craftingTable.addShaped("large_cogwheel_buff", <item:create:large_cogwheel>*2, [
	[wood_button, planks, wood_button],
	[planks, andesite_alloy, planks],
	[wood_button, planks, wood_button]]);

craftingTable.remove(<item:create:cogwheel>);
craftingTable.addShaped("cogwheel_buff", <item:create:cogwheel>*4, [
	[wood_button, wood_button, wood_button],
	[wood_button, andesite_alloy, wood_button],
	[wood_button, wood_button, wood_button]]);

craftingTable.remove(andesite_alloy);
craftingTable.addShapeless("andesite_alloy_buff_iron", andesite_alloy*2, [iron_nugget, iron_nugget, andesite, andesite]);
craftingTable.addShapeless("andesite_alloy_buff_zinc", andesite_alloy*2, [zinc_nugget, zinc_nugget, andesite, andesite]);

mixing.remove(andesite_alloy);
mixing.addRecipe("andesite_alloy_mixing_buff_iron", <constant:create:heat_condition:none>, [andesite_alloy*2], [iron_nugget, andesite], [], 100);
mixing.addRecipe("andesite_alloy_mixing_buff_zinc", <constant:create:heat_condition:none>, [andesite_alloy*2], [zinc_nugget, andesite], [], 100);

