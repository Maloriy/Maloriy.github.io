-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Мар 05 2021 г., 18:29
-- Версия сервера: 10.3.27-MariaDB-0+deb10u1
-- Версия PHP: 7.3.27-2+0~20210213.78+debian10~1.gbpc9cf23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cases_looprich`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cases_items`
--

CREATE TABLE `cases_items` (
  `id` int(10) NOT NULL,
  `case_id` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `minecraft_id` varchar(128) NOT NULL DEFAULT '',
  `img` varchar(128) NOT NULL DEFAULT '',
  `site_img` varchar(255) DEFAULT NULL COMMENT 'Картинка для сайта. Только для премок',
  `3d_site_top` varchar(256) DEFAULT NULL COMMENT 'Вид сверху для 3д рендера',
  `3d_site_front` varchar(256) DEFAULT NULL COMMENT 'Вид спереди для 3д рендера',
  `3d_site_back` varchar(256) DEFAULT NULL COMMENT 'Вид сзади для 3д рендера',
  `is_animated` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Определяет, будет ли предмет крутиться',
  `count` int(10) NOT NULL DEFAULT 1,
  `ench` varchar(255) DEFAULT NULL,
  `nbt` varchar(255) DEFAULT NULL,
  `command` varchar(255) NOT NULL,
  `rarity` tinyint(1) NOT NULL DEFAULT 5,
  `chance` int(3) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `sort` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cases_items`
--
--кейс с панелями
INSERT INTO `cases_items` (`id`, `case_id`, `type`, `item_name`, `minecraft_id`, `img`, `site_img`, `3d_site_top`, `3d_site_front`, `3d_site_back`, `is_animated`, `count`, `ench`, `nbt`, `command`, `rarity`, `chance`, `enabled`, `sort`) VALUES
(1, 1, 3, 'Светоадсорбционная панель', 'Светоадсорбционная панель', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, '', '', 'give %nick% 7170 1 7', 5, 3, 1, 1),
(2, 1, 3, 'Протонная солнечная панель', 'Протонная солнечная панель', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/LuGDv1M.png', NULL, NULL, NULL, 0, 1, '', '', 'give %nick% 7170 1 11', 4, 5, 1, 1),
(3, 1, 3, 'Спектральная панель', 'Спектральная панель', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/wOc3hyH.png', NULL, NULL, NULL, 0, 1, NULL, NULL, 'give %nick% 7170 1 5', 3, 8, 1, 1),
(4, 1, 3, 'Квантовая панель', 'Квантовая панель', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, NULL, NULL, 'give %nick% 7170 1 4', 2, 13, 1, 1),
(5, 1, 3, 'Гибридная панель', 'Гибридная панель', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, NULL, NULL, 'give %nick% 7170 1 2', 1, 20, 1, 1),
(6, 1, 3, 'Улучшенная панель', 'Улучшенная панель', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, NULL, NULL, 'give %nick% 7170 1 1', 1, 51, 1, 1),
--голосование(бесплатное)
(1, 2, 1, 'Солнечная батарея высокого напряжения', 'compactsolars:compact_solar_block:2', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 5, 3, 1, 1),
(2, 2, 1, 'Иридиевый бур', 'ic2:iridium_drill:26', '', 'https://i.imgur.com/OPuQbcR.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 4, 5, 1, 1),
(3, 2, 1, 'Элитная солнечная панель', 'nuclearcraft:solar_panel_elite', '', 'https://i.imgur.com/OPuQbcR.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 4, 5, 1, 1),
--
(4, 2, 1, 'Радио', 'dragonsradiomod:radio', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(5, 2, 1, 'Нановолоконные шлем', 'ic2:nano_helmet:26', '', 'https://i.imgur.com/FadiOB7.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(6, 2, 1, 'Нановолоконные нагрудник', 'ic2:nano_chestplate:26', '', 'https://i.imgur.com/FDFHmeP.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(7, 2, 1, 'Нановолоконные поножи', 'ic2:nano_leggings:26', '', 'https://i.imgur.com/UP5hwns.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(8, 2, 1, 'Нановолоконные ботинки', 'ic2:nano_boots:26', '', 'https://i.imgur.com/piOT4tV.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(9, 2, 1, 'Нановолоконные сабля', 'ic2:nano_saber:26', '', 'https://i.imgur.com/Is4cSTL.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
--
(10, 2, 1, 'Электрический реактивный ранец', 'ic2:jetpack_electric:26', '', 'https://i.imgur.com/JDVYGfY.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 2, 20, 1, 1),
(11, 2, 1, 'Аккумулятор', 'ic2:re_battery:26', '', 'https://i.imgur.com/KM3r4Bn.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
(12, 2, 1, 'Электросхема', 'ic2:crafting:1', '', 'https://i.imgur.com/sReT3IT.png', NULL, NULL, NULL, 0, 24, '', '', 'NULL', 2, 20, 1, 1),
(13, 2, 1, 'Улучшенная электросхема', 'ic2:crafting:2', '', 'https://i.imgur.com/BoC00Ni.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
(14, 2, 1, 'Углепластик', 'ic2:crafting:15', '', 'https://i.imgur.com/4appUdV.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
(15, 2, 1, 'Композит', 'ic2:crafting:3', '', 'https://i.imgur.com/jbtnSgE.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
--
(16, 2, 1, 'Дёрн', 'minecraft:grass', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(17, 2, 1, 'Камень', 'minecraft:stone', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(18, 2, 1, 'Обсидиан', 'minecraft:obsidian', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 32, '', '', 'NULL', 1, 65, 1, 1),
(19, 2, 1, 'Книжная полка', 'minecraft:bookshelf', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(20, 2, 1, 'Эндер перл', 'minecraft:ender_pearl', '', 'https://i.imgur.com/6Nr1AiD.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(21, 2, 1, 'Огненный жезл', 'minecraft:blaze_rod', '', 'https://i.imgur.com/hzHvGtG.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(22, 2, 1, 'Пузырёк опыта', 'minecraft:experience_bottle', '', 'https://i.imgur.com/b26Y36H.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(23, 2, 1, 'Изумруд', 'minecraft:emerald', '', 'https://i.imgur.com/qD9zh4T.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(24, 2, 1, 'Железный слиток', 'minecraft:iron_ingot', '', 'https://i.imgur.com/o3DbQ4u.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(25, 2, 1, 'Золотой слиток', 'minecraft:gold_ingot', '', 'https://i.imgur.com/Uec1XZY.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(26, 2, 1, 'Медный слиток', 'thermalfoundation:material:128', '', 'https://i.imgur.com/E1lb8lX.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(27, 2, 1, 'Свинцовый слиток', 'thermalfoundation:material:131', '', 'https://i.imgur.com/3lIZbmC.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(28, 2, 1, 'Оловянный слиток', 'thermalfoundation:material:129', '', 'https://i.imgur.com/6QXVM6P.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(29, 2, 1, 'Инваровый слиток', 'thermalfoundation:material:162', '', 'https://i.imgur.com/H5QLLeV.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
(30, 2, 1, 'Эндериумный слиток', 'thermalfoundation:material:167', '', 'https://i.imgur.com/r8iMtyn.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
(31, 2, 1, 'Серебрянный слиток', 'thermalfoundation:material:130', '', 'https://i.imgur.com/rZTpKEA.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
(32, 2, 1, 'Электрумовый слиток', 'thermalfoundation:material:161', '', 'https://i.imgur.com/MBHYtaI.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1);
--голосование за 30 эмов
(1, 3, 1, 'Солнечная батарея высокого напряжения', 'compactsolars:compact_solar_block:2', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 5, 3, 1, 1),
(2, 3, 1, 'Иридиевый бур', 'ic2:iridium_drill:26', '', 'https://i.imgur.com/OPuQbcR.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 4, 5, 1, 1),
(3, 3, 1, 'Элитная солнечная панель', 'nuclearcraft:solar_panel_elite', '', 'https://i.imgur.com/OPuQbcR.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 4, 5, 1, 1),
--
(4, 3, 1, 'Радио', 'dragonsradiomod:radio', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(5, 3, 1, 'Нановолоконные шлем', 'ic2:nano_helmet:26', '', 'https://i.imgur.com/FadiOB7.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(6, 3, 1, 'Нановолоконные нагрудник', 'ic2:nano_chestplate:26', '', 'https://i.imgur.com/FDFHmeP.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(7, 3, 1, 'Нановолоконные поножи', 'ic2:nano_leggings:26', '', 'https://i.imgur.com/UP5hwns.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(8, 3, 1, 'Нановолоконные ботинки', 'ic2:nano_boots:26', '', 'https://i.imgur.com/piOT4tV.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(9, 3, 1, 'Нановолоконные сабля', 'ic2:nano_saber:26', '', 'https://i.imgur.com/Is4cSTL.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
--
(10, 3, 1, 'Электрический реактивный ранец', 'ic2:jetpack_electric:26', '', 'https://i.imgur.com/JDVYGfY.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 2, 20, 1, 1),
(11, 3, 1, 'Аккумулятор', 'ic2:re_battery:26', '', 'https://i.imgur.com/KM3r4Bn.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
(12, 3, 1, 'Электросхема', 'ic2:crafting:1', '', 'https://i.imgur.com/sReT3IT.png', NULL, NULL, NULL, 0, 24, '', '', 'NULL', 2, 20, 1, 1),
(13, 3, 1, 'Улучшенная электросхема', 'ic2:crafting:2', '', 'https://i.imgur.com/BoC00Ni.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
(14, 3, 1, 'Углепластик', 'ic2:crafting:15', '', 'https://i.imgur.com/4appUdV.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
(15, 3, 1, 'Композит', 'ic2:crafting:3', '', 'https://i.imgur.com/jbtnSgE.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
--
(16, 3, 1, 'Дёрн', 'minecraft:grass', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(17, 3, 1, 'Камень', 'minecraft:stone', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(18, 3, 1, 'Обсидиан', 'minecraft:obsidian', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 32, '', '', 'NULL', 1, 65, 1, 1),
(19, 3, 1, 'Книжная полка', 'minecraft:bookshelf', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(20, 3, 1, 'Эндер перл', 'minecraft:ender_pearl', '', 'https://i.imgur.com/6Nr1AiD.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(21, 3, 1, 'Огненный жезл', 'minecraft:blaze_rod', '', 'https://i.imgur.com/hzHvGtG.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(22, 3, 1, 'Пузырёк опыта', 'minecraft:experience_bottle', '', 'https://i.imgur.com/b26Y36H.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(23, 3, 1, 'Изумруд', 'minecraft:emerald', '', 'https://i.imgur.com/qD9zh4T.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(24, 3, 1, 'Железный слиток', 'minecraft:iron_ingot', '', 'https://i.imgur.com/o3DbQ4u.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(25, 3, 1, 'Золотой слиток', 'minecraft:gold_ingot', '', 'https://i.imgur.com/Uec1XZY.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(26, 3, 1, 'Медный слиток', 'thermalfoundation:material:128', '', 'https://i.imgur.com/E1lb8lX.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(27, 3, 1, 'Свинцовый слиток', 'thermalfoundation:material:131', '', 'https://i.imgur.com/3lIZbmC.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(28, 3, 1, 'Оловянный слиток', 'thermalfoundation:material:129', '', 'https://i.imgur.com/6QXVM6P.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(29, 3, 1, 'Инваровый слиток', 'thermalfoundation:material:162', '', 'https://i.imgur.com/H5QLLeV.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
(30, 3, 1, 'Эндериумный слиток', 'thermalfoundation:material:167', '', 'https://i.imgur.com/r8iMtyn.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
(31, 3, 1, 'Серебрянный слиток', 'thermalfoundation:material:130', '', 'https://i.imgur.com/rZTpKEA.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
(32, 3, 1, 'Электрумовый слиток', 'thermalfoundation:material:161', '', 'https://i.imgur.com/MBHYtaI.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
--все или ничего
(1, 4, 3, 'Mod аккаунт на 30 дней', 'Mod аккаунт на 30 дней', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, '', '', 'give %nick% 7170 1 7', 5, 3, 1, 1),
(2, 4, 3, 'Спектральная панель', 'Спектральная панель', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/LuGDv1M.png', NULL, NULL, NULL, 0, 1, '', '', 'give %nick% 7170 1 5', 4, 5, 1, 1),
(3, 4, 3, 'Радио', 'dragonsradiomod:radio', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/wOc3hyH.png', NULL, NULL, NULL, 0, 1, NULL, NULL, 'give %nick% 7170 1 5', 2, 8, 1, 1),
(4, 4, 3, 'Улучшенный алмазный бур', 'gravisuite:advanceddrill:26', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, NULL, NULL, 'give %nick% 7170 1 4', 1, 13, 1, 1),
(5, 4, 3, 'Пузырёк опыта', 'minecraft:experience_bottle', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 64, NULL, NULL, 'give %nick% 7170 1 2', 1, 20, 1, 1),
(6, 4, 3, 'Резонирующая гибридная плата', '<maloriy:ch_31>', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 32, NULL, NULL, 'give %nick% 7170 1 1', 1, 51, 1, 1),

-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cases_items`
--
ALTER TABLE `cases_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cases_items_fk0` (`case_id`);
ALTER TABLE `cases_items` ADD FULLTEXT KEY `minecraft_id` (`minecraft_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cases_items`
--
ALTER TABLE `cases_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5966;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
