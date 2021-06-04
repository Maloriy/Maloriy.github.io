import mods.ic2.Macerator;
import mods.ic2.Compressor;

mods.ic2.Macerator.addRecipe(<super_solar_panels:toriy> * 2, <super_solar_panels:toriyore>);
mods.ic2.Compressor.addRecipe(<nuclearcraft:thorium>, <nuclearcraft:thorium:2> * 9);
mods.ic2.Compressor.addRecipe(<nuclearcraft:thorium:4>, <nuclearcraft:thorium:6> * 9);
recipes.addShaped(<super_solar_panels:toriyore> * 2, [[<lcpack:matieriia:3>, <lcpack:matieriia:3>, <lcpack:matieriia:3>],[<lcpack:matieriia:3>, <lcpack:matieriia:3>, <lcpack:matieriia:3>], [<lcpack:matieriia:3>, <lcpack:matieriia:3>, <lcpack:matieriia:3>]]);
recipes.addShaped(<super_solar_panels:toriy>, [[<nuclearcraft:thorium:4>, <nuclearcraft:thorium:4>, <nuclearcraft:thorium:4>],[<nuclearcraft:thorium>, <nuclearcraft:thorium>, <nuclearcraft:thorium>], [<nuclearcraft:thorium:4>, <nuclearcraft:thorium:4>, <nuclearcraft:thorium:4>]]);
mods.thermalexpansion.InductionSmelter.addRecipe(<lcpack:matieriia:3>, <ic2:misc_resource:3>, <thermalfoundation:material:2053>, 5000, <thermalfoundation:material:2053>, 1);

//яблоко нотча
mods.thermalexpansion.Insolator.addRecipe(<minecraft:golden_apple:1>, <minecraft:golden_apple> * 8, <minecraft:gold_block> * 16, 20000, <minecraft:gold_block>, 1, 5000);