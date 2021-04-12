import mods.ic2.MetalFormer;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;
import mods.ic2.Compressor;
import mods.ic2.Canner;
import mods.ic2.Extractor;

//медные провода
//катушка
recipes.remove(<ic2:crafting:5>);
recipes.addShaped(<ic2:crafting:5>, [[<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})],[<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <minecraft:iron_ingot>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})], [<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})]]);
//силовой агрегат
recipes.remove(<ic2:crafting:12>);
recipes.addShaped(<ic2:crafting:12>, [[<ic2:re_battery:*>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:casing:3>],[<ic2:re_battery:*>, <ic2:crafting:1>, <ic2:crafting:6>], [<ic2:re_battery:*>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:casing:3>]]);
//малый силовой агрегат
recipes.remove(<ic2:crafting:11>);
recipes.addShaped(<ic2:crafting:11>, [[null, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:casing:3>],[<ic2:re_battery:*>, <ic2:crafting:1>, <ic2:crafting:6>], [null, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:casing:3>]]);
//медный провод изолированный крафт
recipes.remove(<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}));
recipes.addShapeless(<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), [<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}),<ic2:crafting>]);
recipes.addShapeless(<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}) * 4, [<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}),<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}),<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}),<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}),<ic2:crafting>,<ic2:crafting>,<ic2:crafting>,<ic2:crafting>]);
//провода изоляция
//запрет
recipes.remove(<ic2:cable:1>);
recipes.removeShapeless(<ic2:cable:3>, []);
recipes.removeShapeless(<ic2:cable:3>, []);
recipes.removeShapeless(<ic2:cable:3>, []);
recipes.removeShapeless(<ic2:cable:4>, []);
recipes.removeShapeless(<ic2:cable:2>, []);
recipes.removeShapeless(<ic2:cable:2>, []);
//крафт
recipes.addShaped(<ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte}), [[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],[<ic2:dust:6>, <ore:dustSilver>, <ic2:dust:6>], [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]]);
recipes.addShapeless(<ic2:cable:3>, [<ic2:cable:3>.withTag({type: 3 as byte, insulation: 2 as byte}).onlyWithTag({type: 3 as byte, insulation: 2 as byte}),<ic2:crafting>]);
recipes.addShapeless(<ic2:cable:3>, [<ic2:cable:3>.withTag({type: 3 as byte, insulation: 1 as byte}).onlyWithTag({type: 3 as byte, insulation: 1 as byte}),<ic2:crafting>,<ic2:crafting>]);
recipes.addShapeless(<ic2:cable:3>, [<ic2:cable:3>.withTag({type: 3 as byte, insulation: 1 as byte}).onlyWithTag({type: 3 as byte, insulation: 1 as byte}),<ic2:crafting>]);
recipes.addShapeless(<ic2:cable:3>, [<ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}).onlyWithTag({type: 3 as byte, insulation: 0 as byte}),<ic2:crafting>,<ic2:crafting>,<ic2:crafting>]);
recipes.addShapeless(<ic2:cable:3>, [<ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}).onlyWithTag({type: 3 as byte, insulation: 0 as byte}),<ic2:crafting>,<ic2:crafting>]);
recipes.addShapeless(<ic2:cable:3>, [<ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}).onlyWithTag({type: 3 as byte, insulation: 0 as byte}),<ic2:crafting>]);
recipes.addShapeless(<ic2:cable:4>, [<ic2:cable:4>.withTag({type: 4 as byte, insulation: 0 as byte}).onlyWithTag({type: 4 as byte, insulation: 0 as byte}),<ic2:crafting>]);
recipes.addShapeless(<ic2:cable:2>, [<ic2:cable:2>.withTag({type: 2 as byte, insulation: 1 as byte}).onlyWithTag({type: 2 as byte, insulation: 1 as byte}),<ic2:crafting>]);
recipes.addShapeless(<ic2:cable:2>, [<ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte}).onlyWithTag({type: 2 as byte, insulation: 0 as byte}),<ic2:crafting>,<ic2:crafting>]);
recipes.addShapeless(<ic2:cable:2>, [<ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte}).onlyWithTag({type: 2 as byte, insulation: 0 as byte}),<ic2:crafting>]);