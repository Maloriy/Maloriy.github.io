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
INSERT INTO `cases_items` (`id`, `case_id`, `type`, `item_name`, `minecraft_id`, `img`, `site_img`, `3d_site_top`, `3d_site_front`, `3d_site_back`, `is_animated`, `count`, `ench`, `nbt`, `command`, `rarity`, `chance`, `enabled`, `sort`) VALUES
-- голосование(бесплатное)
(1, 2, 1, 'Солнечная батарея высокого напряжения', 'compactsolars:compact_solar_block:2', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 5, 3, 1, 1),
(2, 2, 1, 'Иридиевый бур', 'ic2_iridium_drill:26', '', 'https://i.imgur.com/OPuQbcR.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 4, 5, 1, 1),
(3, 2, 1, 'Элитная солнечная панель', 'nuclearcraft_solar_panel_elite', '', 'https://i.imgur.com/OPuQbcR.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 4, 5, 1, 1),
--
(4, 2, 1, 'Радио', 'dragonsradiomod_radio', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(5, 2, 1, 'Нановолоконные шлем', 'ic2_nano_helmet:26', '', 'https://i.imgur.com/FadiOB7.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(6, 2, 1, 'Нановолоконные нагрудник', 'ic2_nano_chestplate:26', '', 'https://i.imgur.com/FDFHmeP.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(7, 2, 1, 'Нановолоконные поножи', 'ic2_nano_leggings:26', '', 'https://i.imgur.com/UP5hwns.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(8, 2, 1, 'Нановолоконные ботинки', 'ic2_nano_boots:26', '', 'https://i.imgur.com/piOT4tV.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(9, 2, 1, 'Нановолоконные сабля', 'ic2_nano_saber:26', '', 'https://i.imgur.com/Is4cSTL.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
--
(10, 2, 1, 'Электрический реактивный ранец', 'ic2_jetpack_electric:26', '', 'https://i.imgur.com/JDVYGfY.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 2, 20, 1, 1),
(11, 2, 1, 'Аккумулятор', 'ic2_re_battery:26', '', 'https://i.imgur.com/KM3r4Bn.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
(12, 2, 1, 'Электросхема', 'ic2_crafting:1', '', 'https://i.imgur.com/sReT3IT.png', NULL, NULL, NULL, 0, 24, '', '', 'NULL', 2, 20, 1, 1),
(13, 2, 1, 'Улучшенная электросхема', 'ic2_crafting:2', '', 'https://i.imgur.com/BoC00Ni.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
(14, 2, 1, 'Углепластик', 'ic2_crafting:15', '', 'https://i.imgur.com/4appUdV.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
(15, 2, 1, 'Композит', 'ic2_crafting:3', '', 'https://i.imgur.com/jbtnSgE.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
--
(16, 2, 1, 'Дёрн', 'minecraft_grass', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(17, 2, 1, 'Камень', 'STONE:0', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(18, 2, 1, 'Обсидиан', 'minecraft_obsidian', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 32, '', '', 'NULL', 1, 65, 1, 1),
(19, 2, 1, 'Книжная полка', 'minecraft_bookshelf', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(20, 2, 1, 'Эндер перл', 'minecraft_ender_pearl', '', 'https://i.imgur.com/6Nr1AiD.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(21, 2, 1, 'Огненный жезл', 'minecraft_blaze_rod', '', 'https://i.imgur.com/hzHvGtG.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(22, 2, 1, 'Пузырёк опыта', 'minecraft_experience_bottle', '', 'https://i.imgur.com/b26Y36H.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(23, 2, 1, 'Изумруд', 'minecraft_emerald', '', 'https://i.imgur.com/qD9zh4T.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(24, 2, 1, 'Железный слиток', 'minecraft_iron_ingot', '', 'https://i.imgur.com/o3DbQ4u.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(25, 2, 1, 'Золотой слиток', 'minecraft_gold_ingot', '', 'https://i.imgur.com/Uec1XZY.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(26, 2, 1, 'Медный слиток', 'thermalfoundation_material:128', '', 'https://i.imgur.com/E1lb8lX.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(27, 2, 1, 'Свинцовый слиток', 'thermalfoundation_material:131', '', 'https://i.imgur.com/3lIZbmC.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(28, 2, 1, 'Оловянный слиток', 'thermalfoundation_material:129', '', 'https://i.imgur.com/6QXVM6P.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(29, 2, 1, 'Инваровый слиток', 'thermalfoundation_material:162', '', 'https://i.imgur.com/H5QLLeV.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
(30, 2, 1, 'Эндериумный слиток', 'thermalfoundation_material:167', '', 'https://i.imgur.com/r8iMtyn.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
(31, 2, 1, 'Серебрянный слиток', 'thermalfoundation_material:130', '', 'https://i.imgur.com/rZTpKEA.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
(32, 2, 1, 'Электрумовый слиток', 'thermalfoundation_material:161', '', 'https://i.imgur.com/MBHYtaI.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
-- голосование за 30 эмов
(33, 3, 1, 'Солнечная батарея высокого напряжения', 'compactsolars:compact_solar_block:2', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 5, 3, 1, 1),
(34, 3, 1, 'Иридиевый бур', 'ic2_iridium_drill:26', '', 'https://i.imgur.com/OPuQbcR.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 4, 5, 1, 1),
(35, 3, 1, 'Элитная солнечная панель', 'nuclearcraft_solar_panel_elite', '', 'https://i.imgur.com/OPuQbcR.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 4, 5, 1, 1),
--
(36, 3, 1, 'Радио', 'dragonsradiomod_radio', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(37, 3, 1, 'Нановолоконные шлем', 'ic2_nano_helmet:26', '', 'https://i.imgur.com/FadiOB7.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(38, 3, 1, 'Нановолоконные нагрудник', 'ic2_nano_chestplate:26', '', 'https://i.imgur.com/FDFHmeP.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(39, 3, 1, 'Нановолоконные поножи', 'ic2_nano_leggings:26', '', 'https://i.imgur.com/UP5hwns.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(40, 3, 1, 'Нановолоконные ботинки', 'ic2_nano_boots:26', '', 'https://i.imgur.com/piOT4tV.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
(41, 3, 1, 'Нановолоконные сабля', 'ic2_nano_saber:26', '', 'https://i.imgur.com/Is4cSTL.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 3, 7, 1, 1),
--
(42, 3, 1, 'Электрический реактивный ранец', 'ic2_jetpack_electric:26', '', 'https://i.imgur.com/JDVYGfY.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 2, 20, 1, 1),
(43, 3, 1, 'Аккумулятор', 'ic2_re_battery:26', '', 'https://i.imgur.com/KM3r4Bn.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
(44, 3, 1, 'Электросхема', 'ic2_crafting:1', '', 'https://i.imgur.com/sReT3IT.png', NULL, NULL, NULL, 0, 24, '', '', 'NULL', 2, 20, 1, 1),
(45, 3, 1, 'Улучшенная электросхема', 'ic2_crafting:2', '', 'https://i.imgur.com/BoC00Ni.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
(46, 3, 1, 'Углепластик', 'ic2_crafting:15', '', 'https://i.imgur.com/4appUdV.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
(47, 3, 1, 'Композит', 'ic2_crafting:3', '', 'https://i.imgur.com/jbtnSgE.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 2, 20, 1, 1),
--
(48, 3, 1, 'Дёрн', 'minecraft_grass', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(49, 3, 1, 'Камень', 'STONE:0', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(50, 3, 1, 'Обсидиан', 'minecraft_obsidian', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 32, '', '', 'NULL', 1, 65, 1, 1),
(51, 3, 1, 'Книжная полка', 'minecraft_bookshelf', '', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(52, 3, 1, 'Эндер перл', 'minecraft_ender_pearl', '', 'https://i.imgur.com/6Nr1AiD.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(53, 3, 1, 'Огненный жезл', 'minecraft_blaze_rod', '', 'https://i.imgur.com/hzHvGtG.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(54, 3, 1, 'Пузырёк опыта', 'minecraft_experience_bottle', '', 'https://i.imgur.com/b26Y36H.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(55, 3, 1, 'Изумруд', 'minecraft_emerald', '', 'https://i.imgur.com/qD9zh4T.png', NULL, NULL, NULL, 0, 16, '', '', 'NULL', 1, 65, 1, 1),
(56, 3, 1, 'Железный слиток', 'minecraft_iron_ingot', '', 'https://i.imgur.com/o3DbQ4u.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(57, 3, 1, 'Золотой слиток', 'minecraft_gold_ingot', '', 'https://i.imgur.com/Uec1XZY.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(58, 3, 1, 'Медный слиток', 'thermalfoundation_material:128', '', 'https://i.imgur.com/E1lb8lX.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(59, 3, 1, 'Свинцовый слиток', 'thermalfoundation_material:131', '', 'https://i.imgur.com/3lIZbmC.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(60, 3, 1, 'Оловянный слиток', 'thermalfoundation_material:129', '', 'https://i.imgur.com/6QXVM6P.png', NULL, NULL, NULL, 0, 64, '', '', 'NULL', 1, 65, 1, 1),
(61, 3, 1, 'Инваровый слиток', 'thermalfoundation_material:162', '', 'https://i.imgur.com/H5QLLeV.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
(62, 3, 1, 'Эндериумный слиток', 'thermalfoundation_material:167', '', 'https://i.imgur.com/r8iMtyn.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
(63, 3, 1, 'Серебрянный слиток', 'thermalfoundation_material:130', '', 'https://i.imgur.com/rZTpKEA.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
(64, 3, 1, 'Электрумовый слиток', 'thermalfoundation_material:161', '', 'https://i.imgur.com/MBHYtaI.png', NULL, NULL, NULL, 0, 8, '', '', 'NULL', 1, 65, 1, 1),
-- все или ничего
(65, 4, 1, 'Mod аккаунт на 30 дней', 'Mod аккаунт на 30 дней', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, '', '', 'give %nick% 7170 1 7', 5, 3, 1, 1),
(66, 4, 1, 'Спектральная панель', 'Спектральная панель', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/LuGDv1M.png', NULL, NULL, NULL, 0, 1, '', '', 'give %nick% 7170 1 5', 4, 5, 1, 1),
(67, 4, 1, 'Радио', 'dragonsradiomod_radio', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/wOc3hyH.png', NULL, NULL, NULL, 0, 1, NULL, NULL, 'give %nick% 7170 1 5', 2, 8, 1, 1),
(68, 4, 1, 'Улучшенный алмазный бур', 'gravisuite_advanceddrill:26', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, NULL, NULL, 'give %nick% 7170 1 4', 1, 13, 1, 1),
(69, 4, 1, 'Пузырёк опыта', 'EXP_BOTTLE:0', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 64, NULL, NULL, 'give %nick% 7170 1 2', 1, 20, 1, 1),
(70, 4, 1, 'Резонирующая гибридная плата', 'maloriy_ch_31:0', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 32, NULL, NULL, 'give %nick% 7170 1 1', 1, 51, 1, 1),
-- кейс с панелями
(71, 1, 1, 'Светоадсорбционная панель', 'SUPER_SOLAR_PANELS_MACHINES:8', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 5, 3, 1, 1),
(72, 1, 1, 'Протонная солнечная панель', 'SUPER_SOLAR_PANELS_MACHINES:6', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/LuGDv1M.png', NULL, NULL, NULL, 0, 1, '', '', 'NULL', 4, 5, 1, 1),
(73, 1, 1, 'Спектральная панель', 'SUPER_SOLAR_PANELS_MACHINES:5', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/wOc3hyH.png', NULL, NULL, NULL, 0, 1, NULL, NULL, 'NULL', 3, 8, 1, 1),
(74, 1, 1, 'Квантовая панель', 'SUPER_SOLAR_PANELS_MACHINES:4', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, NULL, NULL, 'NULL', 2, 13, 1, 1),
(75, 1, 1, 'Гибридная панель', 'SUPER_SOLAR_PANELS_MACHINES:2', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, NULL, NULL, 'NULL', 1, 20, 1, 1),
(76, 1, 1, 'Улучшенная панель', 'SUPER_SOLAR_PANELS_MACHINES:1', 'https://imgur.com/YaITIdJ.png', 'https://imgur.com/YaITIdJ.png', NULL, NULL, NULL, 0, 1, NULL, NULL, 'NULL', 1, 51, 1, 1);

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
