import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

var oak_log = <tag:items:minecraft:oak_logs>;
var oak_planks = <item:minecraft:oak_planks>;

//remove ladder and chest from sawmill

Sawmill.removeRecipe(<item:woodworks:spruce_ladder>);
Sawmill.removeRecipe(<item:woodworks:birch_ladder>);
Sawmill.removeRecipe(<item:woodworks:jungle_ladder>);
Sawmill.removeRecipe(<item:woodworks:acacia_ladder>);
Sawmill.removeRecipe(<item:woodworks:dark_oak_ladder>);
Sawmill.removeRecipe(<item:woodworks:mangrove_ladder>);
Sawmill.removeRecipe(<item:woodworks:crimson_ladder>);
Sawmill.removeRecipe(<item:woodworks:warped_ladder>);
Sawmill.removeRecipe(<item:woodworks:oak_chest>);
Sawmill.removeRecipe(<item:woodworks:spruce_chest>);
Sawmill.removeRecipe(<item:woodworks:birch_chest>);
Sawmill.removeRecipe(<item:woodworks:jungle_chest>);
Sawmill.removeRecipe(<item:woodworks:acacia_chest>);
Sawmill.removeRecipe(<item:woodworks:dark_oak_chest>);
Sawmill.removeRecipe(<item:woodworks:mangrove_chest>);
Sawmill.removeRecipe(<item:woodworks:crimson_chest>);
Sawmill.removeRecipe(<item:woodworks:warped_chest>);
Sawmill.removeRecipe(<item:woodworks:oak_trapped_chest>);
Sawmill.removeRecipe(<item:woodworks:spruce_trapped_chest>);
Sawmill.removeRecipe(<item:woodworks:birch_trapped_chest>);
Sawmill.removeRecipe(<item:woodworks:jungle_trapped_chest>);
Sawmill.removeRecipe(<item:woodworks:acacia_trapped_chest>);
Sawmill.removeRecipe(<item:woodworks:dark_oak_trapped_chest>);
Sawmill.removeRecipe(<item:woodworks:mangrove_trapped_chest>);
Sawmill.removeRecipe(<item:woodworks:crimson_trapped_chest>);
Sawmill.removeRecipe(<item:woodworks:warped_trapped_chest>);




// ============================================================================================================
// Sawmill for Seat
// ============================================================================================================

function sawmillSeat(name as string, out as IItemStack, plank as IIngredient, log as IIngredient) as void {
	Sawmill.addRecipe(name + "_seat_plank", out, plank);
	Sawmill.addRecipe(name + "_seat_log", out * 4, log);
}

sawmillSeat("oak", <item:decorative_blocks:oak_seat>, oak_planks, oak_log);

// ============================================================================================================
// Sawmill for Support
// ============================================================================================================

function sawmillSupport(name as string, out as IItemStack, plank as IIngredient, log as IIngredient) as void {
	Sawmill.addRecipe(name + "_support_plank", out, plank);
	Sawmill.addRecipe(name + "_support_log", out * 4, log);
}




//for button

//for fence

//for vertical plank

//for slab

//for vertical slab

//for stairs

//for boards

//for ladder

//for shelf