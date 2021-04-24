import mods.ic2.MetalFormer;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;
import mods.ic2.Compressor;
import mods.ic2.Canner;
import mods.ic2.Extractor;

//утилькоробки
recipes.remove(<ic2:crafting:24>);
recipes.addShapeless(<ic2:crafting:24>, [<ic2:crafting:23>,<ic2:misc_resource:3>]);
//электросхема
recipes.remove(<ic2:crafting:1>);
recipes.addShaped(<ic2:crafting:1>, [[<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}).onlyWithTag({type: 0 as byte, insulation: 1 as byte}), <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}).onlyWithTag({type: 4 as byte, insulation: 1 as byte}), <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}).onlyWithTag({type: 0 as byte, insulation: 1 as byte})],[<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>], [<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}).onlyWithTag({type: 0 as byte, insulation: 1 as byte}), <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}).onlyWithTag({type: 4 as byte, insulation: 1 as byte}), <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}).onlyWithTag({type: 0 as byte, insulation: 1 as byte})]]);
//улучш.схема
recipes.remove(<ic2:crafting:2>);
recipes.addShaped(<ic2:crafting:2>, [[<minecraft:redstone>, <thermalfoundation:material:33>, <minecraft:redstone>],[<thermalfoundation:material:323>, <ic2:crafting:1>, <thermalfoundation:material:323>], [<minecraft:redstone>, <thermalfoundation:material:33>, <minecraft:redstone>]]);