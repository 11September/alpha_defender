-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Хост: eventren.mysql.ukraine.com.ua
-- Время создания: Дек 23 2017 г., 21:45
-- Версия сервера: 5.7.16-10-log
-- Версия PHP: 7.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `eventren_alpha`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'author_id', 'text', 'Автор', 1, 0, 1, 1, 0, 1, NULL, 2),
(4, 1, 'title', 'text', 'Назва', 1, 1, 1, 1, 1, 1, NULL, 4),
(5, 1, 'excerpt', 'text_area', 'Короткий опис', 0, 0, 1, 1, 1, 1, NULL, 5),
(6, 1, 'body', 'rich_text_box', 'Новина', 1, 0, 1, 1, 1, 1, NULL, 6),
(7, 1, 'image', 'image', 'Зображення новини', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(9, 1, 'meta_description', 'text_area', 'meta_description', 0, 0, 1, 1, 1, 1, NULL, 8),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 0, 0, 1, 1, 1, 1, NULL, 9),
(11, 1, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 10),
(12, 1, 'created_at', 'timestamp', 'Час створення', 0, 1, 1, 0, 0, 0, NULL, 3),
(13, 1, 'updated_at', 'timestamp', 'Час оновлення', 0, 0, 0, 0, 0, 0, NULL, 11),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'title', 'text', 'Назва сторiнки', 1, 1, 1, 1, 1, 1, NULL, 5),
(17, 2, 'excerpt', 'text_area', 'Короткий опис сторiнки', 0, 0, 1, 1, 1, 1, NULL, 4),
(18, 2, 'body', 'rich_text_box', 'Змiст сторiнки', 0, 0, 1, 1, 1, 1, NULL, 7),
(19, 2, 'slug', 'text', 'Посилання сторiнки', 1, 0, 0, 0, 0, 0, '{\"slugify\":{\"origin\":\"title\"}}', 8),
(20, 2, 'meta_description', 'text', 'meta_description', 0, 0, 0, 0, 0, 0, NULL, 9),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 0, 0, 0, 0, 0, 0, NULL, 10),
(22, 2, 'status', 'select_dropdown', 'Статус сторiнки', 1, 0, 0, 0, 0, 0, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 12),
(23, 2, 'created_at', 'timestamp', 'Час створення', 0, 1, 1, 0, 0, 0, NULL, 2),
(24, 2, 'updated_at', 'timestamp', 'Час оновлення', 0, 0, 0, 0, 0, 0, NULL, 11),
(25, 2, 'image', 'image', 'Зображення сторiнки', 0, 0, 1, 1, 1, 1, NULL, 6),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'Seo заголовок', 0, 0, 1, 1, 1, 1, NULL, 13),
(52, 1, 'featured', 'checkbox', 'Обрана новина', 1, 1, 1, 1, 1, 1, NULL, 12),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(62, 8, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(63, 8, 'name', 'text', 'Iм\'я', 0, 1, 1, 1, 1, 1, '{}', 3),
(64, 8, 'position', 'text', 'Посада', 0, 1, 1, 1, 1, 1, NULL, 4),
(65, 8, 'image', 'image', 'Фото', 0, 1, 1, 1, 1, 1, NULL, 5),
(66, 8, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, NULL, 6),
(67, 8, 'phone', 'text', 'Телефон', 0, 1, 1, 1, 1, 1, NULL, 7),
(68, 8, 'created_at', 'timestamp', 'Час створення', 0, 1, 0, 0, 0, 0, NULL, 2),
(69, 8, 'updated_at', 'timestamp', 'Час оновлення', 0, 0, 0, 0, 0, 0, NULL, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '2017-12-12 10:07:51', '2017-12-18 15:42:33'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '2017-12-12 10:07:51', '2017-12-21 11:25:30'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2017-12-12 10:07:51', '2017-12-12 10:07:51'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2017-12-12 10:07:51', '2017-12-12 10:07:51'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2017-12-12 10:07:51', '2017-12-12 10:07:51'),
(8, 'persons', 'persons', 'Person', 'People', 'voyager-people', 'App\\Person', NULL, NULL, NULL, 1, 0, '2017-12-16 15:46:58', '2017-12-16 15:46:58');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-12-12 10:07:51', '2017-12-12 10:07:51');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Приладова панель\r\n', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2017-12-12 10:07:51', '2017-12-16 16:06:53', 'voyager.dashboard', 'null'),
(2, 1, 'Медіа', '', '_self', 'voyager-images', NULL, NULL, 4, '2017-12-12 10:07:51', '2017-12-16 16:07:18', 'voyager.media.index', NULL),
(3, 1, 'Новини', '', '_self', 'voyager-news', '#000000', NULL, 5, '2017-12-12 10:07:51', '2017-12-16 16:07:18', 'voyager.posts.index', 'null'),
(4, 1, 'Користувачі', '', '_self', 'voyager-person', NULL, NULL, 3, '2017-12-12 10:07:51', '2017-12-12 10:07:51', 'voyager.users.index', NULL),
(6, 1, 'Cторінки', '', '_self', 'voyager-file-text', '#000000', NULL, 6, '2017-12-12 10:07:51', '2017-12-16 16:07:18', 'voyager.pages.index', 'null'),
(7, 1, 'Ролі', '', '_self', 'voyager-lock', NULL, NULL, 2, '2017-12-12 10:07:51', '2017-12-12 10:07:51', 'voyager.roles.index', NULL),
(8, 1, 'Інструменти', '', '_self', 'voyager-tools', NULL, NULL, 7, '2017-12-12 10:07:51', '2017-12-16 16:07:18', NULL, NULL),
(9, 1, 'Конструктор меню', '', '_self', 'voyager-list', NULL, 8, 1, '2017-12-12 10:07:51', '2017-12-16 16:07:18', 'voyager.menus.index', NULL),
(10, 1, 'База даних', '', '_self', 'voyager-data', NULL, 8, 2, '2017-12-12 10:07:51', '2017-12-16 16:07:18', 'voyager.database.index', NULL),
(11, 1, 'Компас', '', '_self', 'voyager-compass', NULL, 8, 3, '2017-12-12 10:07:51', '2017-12-16 16:07:18', 'voyager.compass.index', NULL),
(12, 1, 'Гачки', '', '_self', 'voyager-hook', NULL, 8, 4, '2017-12-12 10:07:51', '2017-12-16 16:07:18', 'voyager.hooks', NULL),
(13, 1, 'Налаштування', '', '_self', 'voyager-settings', '#000000', NULL, 9, '2017-12-12 10:07:51', '2017-12-16 16:07:20', 'voyager.settings.index', 'null'),
(14, 1, 'Контакти', '/admin/persons', '_self', 'voyager-people', '#000000', NULL, 8, '2017-12-16 15:40:37', '2017-12-16 16:07:20', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Про нас', 'about page', '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: #000000;\">Where does it come from?</h2>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'about', 'about', 'about', 'ACTIVE', '2017-12-16 10:56:05', '2017-12-21 11:28:02'),
(3, 1, 'ІНКАСАЦІЯ ЮРИДИЧНИХ ОСІБ', 'ІНКАСАЦІЯ ЮРИДИЧНИХ ОСІБ', '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: #000000;\">Where can I get some?</h2>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, 'inkasaciya-yuridichnih-osib', 'inkasaciya-yuridichnih-osib', 'inkasaciya-yuridichnih-osib', 'ACTIVE', '2017-12-16 14:50:45', '2017-12-16 14:50:45'),
(4, 1, 'ІНКАСАЦІЯ ФІЗИЧНИХ ОСІБ', 'ІНКАСАЦІЯ ФІЗИЧНИХ ОСІБ', '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: #000000;\">Where can I get some?</h2>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, 'inkasaciya-fizichnih-osib', 'inkasaciya-fizichnih-osib', 'inkasaciya-fizichnih-osib', 'ACTIVE', '2017-12-16 14:52:34', '2017-12-16 14:52:34'),
(5, 1, 'ІНКАСАЦІЯ БАНКІВ', 'ІНКАСАЦІЯ БАНКІВ', '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: #000000;\">Why do we use it?</h2>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', NULL, 'inkasaciya-bankiv', 'inkasaciya-bankiv', 'inkasaciya-bankiv', 'ACTIVE', '2017-12-16 14:54:13', '2017-12-16 14:54:13'),
(6, 1, 'ОХОРОННА ДІЯЛЬНІСТЬ', 'ОХОРОННА ДІЯЛЬНІСТЬ', '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: #000000;\">Why do we use it?</h2>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).ф</p>', NULL, 'ohoronna-diyal-nist', 'ohoronna-diyal-nist', 'ohoronna-diyal-nist', 'ACTIVE', '2017-12-16 14:54:50', '2017-12-17 14:47:15');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(2, 'browse_database', NULL, '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(3, 'browse_media', NULL, '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(4, 'browse_compass', NULL, '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(5, 'browse_menus', 'menus', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(6, 'read_menus', 'menus', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(7, 'edit_menus', 'menus', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(8, 'add_menus', 'menus', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(9, 'delete_menus', 'menus', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(10, 'browse_pages', 'pages', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(11, 'read_pages', 'pages', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(12, 'edit_pages', 'pages', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(13, 'add_pages', 'pages', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(14, 'delete_pages', 'pages', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(15, 'browse_roles', 'roles', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(16, 'read_roles', 'roles', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(17, 'edit_roles', 'roles', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(18, 'add_roles', 'roles', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(19, 'delete_roles', 'roles', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(20, 'browse_users', 'users', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(21, 'read_users', 'users', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(22, 'edit_users', 'users', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(23, 'add_users', 'users', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(24, 'delete_users', 'users', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(25, 'browse_posts', 'posts', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(26, 'read_posts', 'posts', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(27, 'edit_posts', 'posts', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(28, 'add_posts', 'posts', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(29, 'delete_posts', 'posts', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(35, 'browse_settings', 'settings', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(36, 'read_settings', 'settings', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(37, 'edit_settings', 'settings', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(38, 'add_settings', 'settings', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(39, 'delete_settings', 'settings', '2017-12-12 10:07:51', '2017-12-12 10:07:51', NULL),
(45, 'browse_persons', 'persons', '2017-12-16 15:46:58', '2017-12-16 15:46:58', NULL),
(46, 'read_persons', 'persons', '2017-12-16 15:46:58', '2017-12-16 15:46:58', NULL),
(47, 'edit_persons', 'persons', '2017-12-16 15:46:58', '2017-12-16 15:46:58', NULL),
(48, 'add_persons', 'persons', '2017-12-16 15:46:58', '2017-12-16 15:46:58', NULL),
(49, 'delete_persons', 'persons', '2017-12-16 15:46:58', '2017-12-16 15:46:58', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(39, 1),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `persons`
--

CREATE TABLE `persons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` longtext COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `persons`
--

INSERT INTO `persons` (`id`, `name`, `position`, `image`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum', 'Lorem Ipsum', 'persons/December2017/2CLHjmCMtXQMZtVlwgCH.png', 'mail@mail.ru', '+38066589654', '2017-12-16 15:55:57', '2017-12-20 20:34:11'),
(7, 'Lorem Ipsum', 'Lorem Ipsum', 'persons/December2017/2CLHjmCMtXQMZtVlwgCH.png', 'mail@mail.ru', '+38066589654', '2017-12-16 15:55:57', '2017-12-20 20:34:11'),
(8, 'Lorem Ipsum', 'Lorem Ipsum', 'persons/December2017/2CLHjmCMtXQMZtVlwgCH.png', 'mail@mail.ru', '+38066589654', '2017-12-16 15:55:57', '2017-12-20 20:34:11');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem Ipsum Post', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: #000000;\">Where does it come from?</h2>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<br /><br /></p>\r\n<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: #000000;\">Where does it come from?</h2>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\"> </p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'posts/December2017/QXB62gWMNk5nEh2qC5ht.png', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-12-12 10:07:52', '2017-12-18 15:52:27'),
(2, 2, 'My Lorem Sample Post', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/December2017/gHJ4niEn2ZFk2nQQUU2N.png', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-12-12 10:07:52', '2017-12-18 15:52:46'),
(3, 2, 'Latest Post', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>This is the body for the latest post</p>', 'posts/December2017/CbNfetogBWMXkx609eBu.png', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-12-12 10:07:52', '2017-12-18 15:53:14'),
(5, 1, 'Текст', 'dasdadad', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: #000000;\">Where does it come from?</h2>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'posts/December2017/43Es94kewGJBGtJ4Cr0A.png', 'ada', 'dasda', 'PUBLISHED', 1, '2017-12-12 14:13:54', '2017-12-18 15:52:08'),
(8, 2, 'sadasda', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'slug', 'posts/December2017/2KvieA0NvPKrd7Ml4Niz.png', NULL, NULL, 'PUBLISHED', 1, '2017-12-17 15:08:35', '2017-12-17 15:08:48'),
(9, 1, 'Lorem Ipsum Post', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: #000000;\">Where does it come from?</h2>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<br /><br /></p>\r\n<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: #000000;\">Where does it come from?</h2>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\"> </p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'posts/December2017/QXB62gWMNk5nEh2qC5ht.png', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-12-12 10:07:52', '2017-12-18 15:52:27'),
(10, 2, 'My Lorem Sample Post', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/December2017/gHJ4niEn2ZFk2nQQUU2N.png', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-12-12 10:07:52', '2017-12-18 15:52:46'),
(11, 2, 'Latest Post', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>This is the body for the latest post</p>', 'posts/December2017/CbNfetogBWMXkx609eBu.png', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-12-12 10:07:52', '2017-12-18 15:53:14'),
(12, 1, 'Текст', 'dasdadad', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: #000000;\">Where does it come from?</h2>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'posts/December2017/43Es94kewGJBGtJ4Cr0A.png', 'ada', 'dasda', 'PUBLISHED', 1, '2017-12-12 14:13:54', '2017-12-18 15:52:08'),
(13, 2, 'sadasda', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'slug', 'posts/December2017/2KvieA0NvPKrd7Ml4Niz.png', NULL, NULL, 'PUBLISHED', 1, '2017-12-17 15:08:35', '2017-12-17 15:08:48');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-12-12 10:07:51', '2017-12-12 10:07:51'),
(2, 'user', 'Normal User', '2017-12-12 10:07:51', '2017-12-12 10:07:51'),
(3, 'moderator', 'Moderator', '2017-12-16 16:05:07', '2017-12-16 16:05:07');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Заголовок сайту\r\n', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Опис сайту', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Логотип сайту', 'settings/December2017/9IEhISj91F1XqtgbE7H0.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Ідентифікатор відстеження Google Analytics', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Фонове зображення адміністратора', 'settings/December2017/O1hgPFSkfDkbN5fU4v1U.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Назва адміністратора', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Опис адміністратора', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Завантажувач', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Значок адміністратора зображення', 'settings/December2017/88RjhUzTQ91jWX9l5DfP.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Ідентифікатор клієнта Google Analytics ', '', '', 'text', 1, 'Admin'),
(12, 'site.youtube', 'Посилання youtube ', 'https://www.youtube.com/', NULL, 'text', 6, 'Site'),
(13, 'site.facebook', 'Посилання  facebook', 'https://www.facebook.com/', NULL, 'text', 7, 'Site'),
(14, 'site.twitter', 'Посилання twitter', 'https://twitter.com/', NULL, 'text', 8, 'Site'),
(15, 'site.rrs', 'Посилання rrs', 'https://en.wikipedia.org/wiki/RRS', NULL, 'text', 9, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2017-12-12 10:07:52', '2017-12-12 10:07:52'),
(30, 'menu_items', 'title', 13, 'pt', 'Configurações', '2017-12-12 10:07:52', '2017-12-12 10:07:52');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'shiptya@icloud.com', 'users/default.png', '$2y$10$zkCZGH1E0xhtIm3UItwKze.HNh3su3HxbLMr12JcRW.XgHLQULbF2', 'CqOLwwOaXPPQXy3JcI6aeive26w1MPTCLkCRH6yKI6yMNVJwSyMEqRxlD74X', '2017-12-12 10:07:52', '2017-12-17 15:23:29'),
(2, 3, 'Модератор', 'alpha@admin.com', 'users/default.png', '$2y$10$xT5PD4QngrTo/BGSMLkc/OB1FuD2R71ep4hWdJVuxsVtayp7BbBL6', 'Nf27EYjg5Ce4nwrCbMPOqdY7y3JheqsRxYrtmXnjYAkGuRpAvpteZgzoxNcb', '2017-12-16 16:04:18', '2017-12-16 16:05:22');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
