import crafttweaker.formatting.IFormattedText;
//§
function gen_day(gen_day as string) as IFormattedText {
    return format.darkGreen("Генерация днем: ") + format.gold(format.bold(gen_day + " eu/t"));
}
function gen_night(gen_night as string) as IFormattedText {
    return format.darkGreen("Генерация ночью: ") + format.gold(format.bold(gen_night + " eu/t"));
}
//просто панель
<super_solar_panels:machines:1>.addTooltip(gen_day("4"));
<super_solar_panels:machines:1>.addTooltip(gen_night("4"));
<super_solar_panels:machines:2>.addTooltip(gen_day("32"));
<super_solar_panels:machines:2>.addTooltip(gen_night("8"));
<super_solar_panels:machines:3>.addTooltip(gen_day("256"));
<super_solar_panels:machines:3>.addTooltip(gen_night("64"));
<super_solar_panels:machines:4>.addTooltip(gen_day("1.02k"));
<super_solar_panels:machines:4>.addTooltip(gen_night("512"));
<super_solar_panels:machines:5>.addTooltip(gen_day("8.19k"));
<super_solar_panels:machines:5>.addTooltip(gen_night("5k"));
<super_solar_panels:machines:11>.addTooltip(gen_day("32.8k"));
<super_solar_panels:machines:11>.addTooltip(gen_night("20k"));
<super_solar_panels:machines:6>.addTooltip(gen_day("131k"));
<super_solar_panels:machines:6>.addTooltip(gen_night("105k"));
<super_solar_panels:machines:7>.addTooltip(gen_day("554k"));
<super_solar_panels:machines:7>.addTooltip(gen_night("554k"));
<super_solar_panels:machines:8>.addTooltip(gen_day("2.62M"));
<super_solar_panels:machines:8>.addTooltip(gen_night("2.62M"));
<super_solar_panels:machines:9>.addTooltip(gen_day("10.5M"));
<super_solar_panels:machines:9>.addTooltip(gen_night("10.5M"));
/*/дождевые панели
<super_solar_panels:machines:36>.addTooltip(gen_day("0"));
<super_solar_panels:machines:36>.addTooltip(gen_night("4"));
<super_solar_panels:machines:37>.addTooltip(gen_day("0"));
<super_solar_panels:machines:37>.addTooltip(gen_night("8"));
<super_solar_panels:machines:38>.addTooltip(gen_day("0"));
<super_solar_panels:machines:38>.addTooltip(gen_night("64"));
<super_solar_panels:machines:39>.addTooltip(gen_day("0"));
<super_solar_panels:machines:39>.addTooltip(gen_night("1.02k"));
<super_solar_panels:machines:40>.addTooltip(gen_day("0"));
<super_solar_panels:machines:40>.addTooltip(gen_night("5k"));
<super_solar_panels:machines:49>.addTooltip(gen_day("0"));
<super_solar_panels:machines:49>.addTooltip(gen_night("20k"));
<super_solar_panels:machines:41>.addTooltip(gen_day("0"));
<super_solar_panels:machines:41>.addTooltip(gen_night("105k"));
<super_solar_panels:machines:42>.addTooltip(gen_day("0"));
<super_solar_panels:machines:42>.addTooltip(gen_night("554k"));
<super_solar_panels:machines:43>.addTooltip(gen_day("0"));
<super_solar_panels:machines:43>.addTooltip(gen_night("2.62M"));
<super_solar_panels:machines:44>.addTooltip(gen_day("0"));
<super_solar_panels:machines:44>.addTooltip(gen_night("10.5M"));*/
/*/солнечные
<super_solar_panels:machines:16>.addTooltip(gen_day("8"));
<super_solar_panels:machines:16>.addTooltip(gen_night("0"));
<super_solar_panels:machines:17>.addTooltip(gen_day("64"));
<super_solar_panels:machines:17>.addTooltip(gen_night("0"));
<super_solar_panels:machines:18>.addTooltip(gen_day("512"));
<super_solar_panels:machines:18>.addTooltip(gen_night("0"));
<super_solar_panels:machines:19>.addTooltip(gen_day("4.1k"));
<super_solar_panels:machines:19>.addTooltip(gen_night("0"));
<super_solar_panels:machines:20>.addTooltip(gen_day("16.4k"));
<super_solar_panels:machines:20>.addTooltip(gen_night("0"));
<super_solar_panels:machines:50>.addTooltip(gen_day("65.5k"));
<super_solar_panels:machines:50>.addTooltip(gen_night("0"));
<super_solar_panels:machines:21>.addTooltip(gen_day("262M"));
<super_solar_panels:machines:21>.addTooltip(gen_night("0"));
<super_solar_panels:machines:22>.addTooltip(gen_day("1.11M"));
<super_solar_panels:machines:22>.addTooltip(gen_night("0"));
<super_solar_panels:machines:23>.addTooltip(gen_day("5.24M"));
<super_solar_panels:machines:23>.addTooltip(gen_night("0"));
<super_solar_panels:machines:24>.addTooltip(gen_day("21M"));
<super_solar_panels:machines:24>.addTooltip(gen_night("0"));*/

//реакторы
<ic2:te:22>.addTooltip(format.green("§c§lОсторожно: §aпри перегреве реактора происходит §c§lвзрыв!"));
<ic2:te:22>.addTooltip(format.green("§a§lНи в коем случае, во время лагов не пытайтесь греть реактор!"));
<ic2:te:22>.addTooltip(format.green("§c§lДля защиты вашего дома укутайте реактор в два слоя §7§lукрепленного камня "));

//укреп
<ic2:resource:11>.addTooltip(format.green("§c§lКрафт:"));
<ic2:resource:11>.addTooltip(format.green("§6§lПоставьте §dжелезные леса §6и распылите на них §dжидкую строительную пену"));

//