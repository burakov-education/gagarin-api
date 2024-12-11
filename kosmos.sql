-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 11 2024 г., 08:06
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kosmos`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `flights`
--

INSERT INTO `flights` (`id`, `data`, `created_at`, `updated_at`) VALUES
(1, '{\r\n        \"name\": \" Apollo-11\",\r\n        \"crew_capacity\": 3,\r\n        \"cosmonaut\": [\r\n            {\r\n                \"name\": \"Neil Armstrong \",\r\n                \"role\": \"Commander \"\r\n            },\r\n            {\r\n                \"name\": \"Buzz Aldrin\",\r\n                \"role\": \"Lunar module pilot \"\r\n            },\r\n            {\r\n                \"name\": \"Michael Collins\",\r\n                \"role\": \"Command Module Pilot\"\r\n            }\r\n        ],\r\n        \"launch_details\": {\r\n            \"launch_date\": \"1969-07-16\",\r\n            \"launch_site\": {\r\n                \"name\": \"Kennedy Space Center\",\r\n                \"latitude\": 28.5721000,\r\n                \"longitude\": -80.6480000\r\n            }\r\n        },\r\n        \"landing_details\": {\r\n            \"landing_date\": \"1969-07-20\",\r\n            \"landing_site\": {\r\n                \"name\": \"Sea of tranquility\",\r\n                \"latitude\": 0.6740000,\r\n                \"longitude\": 23.4720000\r\n            }\r\n        }\r\n    }\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `gagarin_flights`
--

CREATE TABLE `gagarin_flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mission` text NOT NULL,
  `landing` text NOT NULL,
  `cosmonaut` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gagarin_flights`
--

INSERT INTO `gagarin_flights` (`id`, `mission`, `landing`, `cosmonaut`, `created_at`, `updated_at`) VALUES
(1, '{\r\n                \"name\": \"Восток 1\",\r\n                \"launch_details\": {\r\n                    \"launch_date\": \"1961-04-12\",\r\n                    \"launch_site\": {\r\n                        \"name\": \"Космодром Байконур\",\r\n                        \"location\": {\r\n                            \"latitude\": 45.965,\r\n                            \"longitude\": 63.305\r\n                        }\r\n                    }\r\n                },\r\n                \"flight_duration\": {\r\n                    \"hours\": 1,\r\n                    \"minutes\": 48\r\n                },\r\n                \"spacecraft\": {\r\n                    \"name\": \"Восток 3KA\",\r\n                    \"manufacturer\": \"OKB-1\",\r\n                    \"crew_capacity\": 1\r\n                }\r\n            }', '{\r\n                \"date\": \"1961-04-12\",\r\n                \"site\": {\r\n                    \"name\": \"Смеловка\",\r\n                    \"country\": \"СССР\",\r\n                    \"coordinates\": {\r\n                        \"latitude\": 51.27,\r\n                        \"longitude\": 45.997\r\n                    }\r\n                },\r\n                \"details\": {\r\n                    \"parachute_landing\": true,\r\n                    \"mpc\": 7\r\n                }\r\n            }', '{\r\n                \"name\": \"Юрий Гагарин\",\r\n                \"birthdate\": \"1934-03-09\",\r\n                \"rank\": \"Старший лейтенант\",\r\n                \"bio\": {\r\n                    \"early_life\": \"Родился в Клушино, Россия..\",\r\n                    \"career\": \"Отобран в отряд космонавтов в 1960 году...\",\r\n                    \"post_flight\": \"Стал международным героем..\"\r\n                }\r\n            }', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lunar_missions`
--

CREATE TABLE `lunar_missions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `launch_details` text NOT NULL,
  `landing_details` text NOT NULL,
  `spacecraft` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lunar_missions`
--

INSERT INTO `lunar_missions` (`id`, `name`, `launch_details`, `landing_details`, `spacecraft`, `created_at`, `updated_at`, `user_id`) VALUES
(4, 'Apollo-18', '{\"launch_date\":\"1972-12-07\",\"launch_site\":{\"name\":\"Kennedy Space Center\",\"location\":{\"latitude\":28.5721,\"longitude\":-80.648}}}', '{\"landing_date\":\"1972-12-19\",\"landing_site\":{\"name\":\"Taurus-Littrov\",\"coordinates\":{\"latitude\":20.1908,\"longitude\":30.7717}}}', '{\"command_module\":\"America\",\"lunar_module\":\"Challenger\",\"crew\":[{\"name\":\"Evgeniy Cernan\",\"role\":\"Commander\"},{\"name\":\"Harrison Schmitt\",\"role\":\"Lunar module pilot\"},{\"name\":\"Ronald Evans\",\"role\":\"Lunar module pilot\"}]}', '2024-12-10 01:26:13', '2024-12-10 01:26:13', 8),
(6, 'Apollo-17', '{\"launch_date\":\"1972-12-07\",\"launch_site\":{\"name\":\"Kennedy Space Center\",\"location\":{\"latitude\":28.5721,\"longitude\":-80.648}}}', '{\"landing_date\":\"1972-12-19\",\"landing_site\":{\"name\":\"Taurus-Littrov\",\"coordinates\":{\"latitude\":20.1908,\"longitude\":30.7717}}}', '{\"command_module\":\"America\",\"lunar_module\":\"Challenger\",\"crew\":[{\"name\":\"Evgeniy Cernan\",\"role\":\"Commander\"},{\"name\":\"Harrison Schmitt\",\"role\":\"Lunar module pilot\"},{\"name\":\"Ronald Evans\",\"role\":\"Lunar module pilot\"}]}', '2024-12-10 02:03:36', '2024-12-11 01:53:05', 1),
(7, 'Apollo-20', '{\"launch_date\":\"1972-12-07\",\"launch_site\":{\"name\":\"Kennedy Space Center\",\"location\":{\"latitude\":28.5721,\"longitude\":-80.648}}}', '{\"landing_date\":\"1972-12-19\",\"landing_site\":{\"name\":\"Taurus-Littrov\",\"coordinates\":{\"latitude\":20.1908,\"longitude\":30.7717}}}', '{\"command_module\":\"America\",\"lunar_module\":\"Challenger\",\"crew\":[{\"name\":\"Evgeniy Cernan\",\"role\":\"Commander\"},{\"name\":\"Harrison Schmitt\",\"role\":\"Lunar module pilot\"},{\"name\":\"Ronald Evans\",\"role\":\"Lunar module pilot\"}]}', '2024-12-10 02:05:00', '2024-12-10 02:05:00', 1),
(8, 'Other Apollo-17', '{\"launch_date\":\"1972-12-07\",\"launch_site\":{\"name\":\"Kennedy Space Center\",\"location\":{\"latitude\":28.5721,\"longitude\":-80.648}}}', '{\"landing_date\":\"1972-12-19\",\"landing_site\":{\"name\":\"Taurus-Littrov\",\"coordinates\":{\"latitude\":20.1908,\"longitude\":30.7717}}}', '{\"command_module\":\"America\",\"lunar_module\":\"Challenger\",\"crew\":[{\"name\":\"Evgeniy Cernan\",\"role\":\"Commander\"},{\"name\":\"Harrison Schmitt\",\"role\":\"Lunar module pilot\"},{\"name\":\"Ronald Evans\",\"role\":\"Lunar module pilot\"}]}', '2024-12-10 02:05:48', '2024-12-10 02:05:48', 1),
(9, 'Apollo-17', '{\"launch_date\":\"1972-12-07\",\"launch_site\":{\"name\":\"Kennedy Space Center\",\"location\":{\"latitude\":28.5721,\"longitude\":-80.648}}}', '{\"landing_date\":\"1972-12-19\",\"landing_site\":{\"name\":\"Taurus-Littrov\",\"coordinates\":{\"latitude\":20.1908,\"longitude\":30.7717}}}', '{\"command_module\":\"America\",\"lunar_module\":\"Challenger\",\"crew\":[{\"name\":\"Evgeniy Cernan\",\"role\":\"Commander\"},{\"name\":\"Harrison Schmitt\",\"role\":\"Lunar module pilot\"},{\"name\":\"Ronald Evans\",\"role\":\"Lunar module pilot\"}]}', '2024-12-11 01:25:56', '2024-12-11 01:25:56', 1),
(10, 'Apollo-17', '{\"launch_date\":\"1972-12-07\",\"launch_site\":{\"name\":\"Kennedy Space Center\",\"location\":{\"latitude\":-28.5721,\"longitude\":-80.648}}}', '{\"landing_date\":\"1972-12-19\",\"landing_site\":{\"name\":\"Taurus-Littrov\",\"coordinates\":{\"latitude\":20.1908,\"longitude\":30.7717}}}', '{\"command_module\":\"America\",\"lunar_module\":\"Challenger\",\"crew\":[{\"name\":\"Evgeniy Cernan\",\"role\":\"Commander\"},{\"name\":\"Harrison Schmitt\",\"role\":\"Lunar module pilot\"},{\"name\":\"Ronald Evans\",\"role\":\"Lunar module pilot\"}]}', '2024-12-11 01:26:00', '2024-12-11 01:26:00', 1),
(11, 'Apollo-17', '{\"launch_date\":\"1972-12-07\",\"launch_site\":{\"name\":\"Kennedy Space Center\",\"location\":{\"latitude\":28.5721,\"longitude\":-80.648}}}', '{\"landing_date\":\"1972-12-19\",\"landing_site\":{\"name\":\"Taurus-Littrov\",\"coordinates\":{\"latitude\":20.1908,\"longitude\":30.7717}}}', '{\"command_module\":\"America\",\"lunar_module\":\"Challenger\",\"crew\":[{\"name\":\"Evgeniy Cernan\",\"role\":\"Commander\"},{\"name\":\"Harrison Schmitt\",\"role\":\"Lunar module pilot\"},{\"name\":\"Ronald Evans\",\"role\":\"Lunar module pilot\"}]}', '2024-12-11 01:26:37', '2024-12-11 01:26:37', 1),
(12, 'Apollo-17', '{\"launch_date\":\"1972-12-07\",\"launch_site\":{\"name\":\"Kennedy Space Center\",\"location\":{\"latitude\":28.5721,\"longitude\":80.648}}}', '{\"landing_date\":\"1972-12-19\",\"landing_site\":{\"name\":\"Taurus-Littrov\",\"coordinates\":{\"latitude\":20.1908,\"longitude\":30.7717}}}', '{\"command_module\":\"America\",\"lunar_module\":\"Challenger\",\"crew\":[{\"name\":\"Evgeniy Cernan\",\"role\":\"Commander\"},{\"name\":\"Harrison Schmitt\",\"role\":\"Lunar module pilot\"},{\"name\":\"Ronald Evans\",\"role\":\"Lunar module pilot\"}]}', '2024-12-11 01:26:51', '2024-12-11 01:26:51', 1),
(13, 'Apollo-17', '{\"launch_date\":\"1972-12-07\",\"launch_site\":{\"name\":\"Kennedy Space Center\",\"location\":{\"latitude\":28.5721,\"longitude\":80.648}}}', '{\"landing_date\":\"1972-12-19\",\"landing_site\":{\"name\":\"Taurus-Littrov\",\"coordinates\":{\"latitude\":20.1908,\"longitude\":30.7717}}}', '{\"command_module\":\"America\",\"lunar_module\":\"Challenger\",\"crew\":[{\"name\":\"Evgeniy Cernan\",\"role\":\"Commander\"},{\"name\":\"Harrison Schmitt\",\"role\":\"Lunar module pilot\"},{\"name\":\"Ronald Evans\",\"role\":\"Lunar module pilot\"}]}', '2024-12-11 01:29:34', '2024-12-11 01:29:34', 1),
(14, 'apollo-17', '{\"launch_date\":\"1972-12-07\",\"launch_site\":{\"name\":\"Kennedy Space Center\",\"location\":{\"latitude\":28.5721,\"longitude\":80.648}}}', '{\"landing_date\":\"1972-12-19\",\"landing_site\":{\"name\":\"Taurus-Littrov\",\"coordinates\":{\"latitude\":20.1908,\"longitude\":30.7717}}}', '{\"command_module\":\"America\",\"lunar_module\":\"Challenger\",\"crew\":[{\"name\":\"Evgeniy Cernan\",\"role\":\"Commander\"},{\"name\":\"Harrison Schmitt\",\"role\":\"Lunar module pilot\"},{\"name\":\"Ronald Evans\",\"role\":\"Lunar module pilot\"}]}', '2024-12-11 01:34:09', '2024-12-11 01:34:09', 1),
(15, 'Apollo-17', '{\"launch_date\":\"1972-12-07\",\"launch_site\":{\"name\":\"Kennedy Space Center\",\"location\":{\"latitude\":28.5721,\"longitude\":80.648}}}', '{\"landing_date\":\"1972-12-19\",\"landing_site\":{\"name\":\"Taurus-Littrov\",\"coordinates\":{\"latitude\":20.1908,\"longitude\":30.7717}}}', '{\"command_module\":\"America\",\"lunar_module\":\"Challenger\",\"crew\":[{\"name\":\"Evgeniy Cernan\",\"role\":\"Commander\"},{\"name\":\"Harrison Schmitt\",\"role\":\"Lunar module pilot\"},{\"name\":\"Ronald Evans\",\"role\":\"Lunar module pilot\"}]}', '2024-12-11 01:34:45', '2024-12-11 01:34:45', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_09_051526_create_personal_access_tokens_table', 1),
(5, '2024_12_10_045929_create_gagarin_flights_table', 2),
(6, '2024_12_10_051435_create_flights_table', 3),
(8, '2024_12_10_054235_create_lunar_missions_table', 4),
(10, '2024_12_10_060955_add_user_id_to_lunar_missions_table', 5),
(11, '2024_12_11_044451_create_space_flights_table', 6),
(12, '2024_12_11_054520_create_space_flight_books_table', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'api', '153c994337c968f938a278aab80e804bfe760fa46b2cb920c9259e5bfd657e82', '[\"*\"]', NULL, NULL, '2024-12-09 23:24:42', '2024-12-09 23:24:42'),
(2, 'App\\Models\\User', 1, 'api', 'b5d6e37764a7650e245dac72cdfe2aa63845b9d595f35d9a37e1b07e66d7f8db', '[\"*\"]', NULL, NULL, '2024-12-09 23:25:16', '2024-12-09 23:25:16'),
(4, 'App\\Models\\User', 1, 'api', '33ebf11cf15155e9b0e3d120830b48685b6b69d97acfea56991dbc59f919a56e', '[\"*\"]', NULL, NULL, '2024-12-09 23:43:17', '2024-12-09 23:43:17'),
(5, 'App\\Models\\User', 1, 'api', 'ba6ac81a732f59f7e103364061f6f58761169b0d874a0f689a7eb0961ac76396', '[\"*\"]', '2024-12-09 23:47:27', NULL, '2024-12-09 23:46:05', '2024-12-09 23:47:27'),
(6, 'App\\Models\\User', 1, 'api', 'd529a5d44c99a02d8ebee5792c39267087f696bb33dcb764ec59e6a6de3b49e5', '[\"*\"]', NULL, NULL, '2024-12-09 23:48:35', '2024-12-09 23:48:35'),
(9, 'App\\Models\\User', 1, 'api', 'd9738a507dc5363b7b70d86c59dc805785d88dd7bfba733c2a403dde6b962dd3', '[\"*\"]', NULL, NULL, '2024-12-09 23:49:32', '2024-12-09 23:49:32'),
(10, 'App\\Models\\User', 1, 'api', '000f5450d8f47ebd029849a7d950b4e29044bf831b171cb82f08ba9eb087125c', '[\"*\"]', '2024-12-11 01:59:04', NULL, '2024-12-09 23:54:55', '2024-12-11 01:59:04');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `space_flights`
--

CREATE TABLE `space_flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flight_number` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `launch_date` varchar(255) NOT NULL,
  `seats_available` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `space_flights`
--

INSERT INTO `space_flights` (`id`, `flight_number`, `destination`, `launch_date`, `seats_available`, `created_at`, `updated_at`) VALUES
(1, 'AAA2', 'Mars', '2025-05-15', 6, '2024-12-11 00:04:04', '2024-12-11 00:04:04'),
(2, 'AAA1', 'Mars', '2025-05-15', 5, '2024-12-11 00:05:22', '2024-12-11 00:26:21'),
(3, 'AAA', 'Mars', '2025-05-15', 6, '2024-12-11 01:36:49', '2024-12-11 01:36:49'),
(4, 'AAA', 'Mars', '2025-05-15', 6, '2024-12-11 01:38:18', '2024-12-11 01:38:18');

-- --------------------------------------------------------

--
-- Структура таблицы `space_flight_books`
--

CREATE TABLE `space_flight_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `flight_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `space_flight_books`
--

INSERT INTO `space_flight_books` (`id`, `user_id`, `flight_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-12-11 00:49:05', '2024-12-11 00:49:05'),
(2, 1, 2, '2024-12-11 01:00:44', '2024-12-11 01:00:44'),
(3, 1, 2, '2024-12-11 01:00:48', '2024-12-11 01:00:48'),
(4, 1, 1, '2024-12-11 01:02:04', '2024-12-11 01:02:04'),
(5, 1, 1, '2024-12-11 01:06:55', '2024-12-11 01:06:55'),
(6, 1, 1, '2024-12-11 01:55:22', '2024-12-11 01:55:22'),
(7, 1, 1, '2024-12-11 01:55:30', '2024-12-11 01:55:30'),
(8, 1, 1, '2024-12-11 01:55:31', '2024-12-11 01:55:31'),
(9, 1, 1, '2024-12-11 01:55:33', '2024-12-11 01:55:33');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `patronymic` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birth_date` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic`, `email`, `password`, `birth_date`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '123123', 'Smirnov', 'Ivanovich', 'user@prof.ru', '$2y$12$sS4Bda/nG1BnG.9rJ.bLXuPKsGCFdhLHZz8cRo.kQTCTdrv.urRUe', '2001-02-15', NULL, '2024-12-09 01:28:33', '2024-12-09 01:28:33'),
(2, '123123', 'Smirnov', 'Ivanovich', 'user@prof.ru1', '$2y$12$2kow/c.tFKtYW/24DQmhjOooFV4R2ayWRf.NjUhEWLyptemnKGBYi', '2001-02-15', NULL, '2024-12-09 01:29:45', '2024-12-09 01:29:45'),
(3, '123123', 'Smirnov', 'Ivanovich', 'user@prof.r1u1', '$2y$12$e6vHhoI.m7vUh.kUkqUrBeVPjauHF3H4XvQ9LliZB.Q6.5rI2Mpp2', '2001-02-15', NULL, '2024-12-09 01:29:50', '2024-12-09 01:29:50'),
(4, '123123', 'Smirnov', 'Ivanovich', 'user@prof.r1u11', '$2y$12$zqlTtFmKKyZAxp37WpJ8MuXSSp7Uisn6w/zITYjuTaou.EaCW.zXq', '2001-02-15', NULL, '2024-12-09 01:30:07', '2024-12-09 01:30:07'),
(5, '123123', 'Smirnov', 'Ivanovich', 'user@prof.r11u11', '$2y$12$mqSqsH5QkQFwbLTKRgJr1eXHDutKdmohLTsqEISC96HMrs1Tg6QKK', '2001-02-15', NULL, '2024-12-09 01:30:12', '2024-12-09 01:30:12'),
(6, '123123', 'Smirnov', 'Ivanovich', 'user@prof.r111u11', '$2y$12$2tHAPDT0Zhm9g0/AQcX1Z.i3qeVX.8QZnmlzXOB6fTrrPQpSVPKk.', '2001-02-15', NULL, '2024-12-09 01:33:56', '2024-12-09 01:33:56'),
(7, '123123', 'Smirnov', 'Ivanovich', 'user@prof.r111u111', '$2y$12$7ZxfPbr7YAU3Cz.GQfsLzu0hD8F0M4.3O7ynLv58pyHQSvnA0L2ce', '2001-02-15', NULL, '2024-12-09 01:34:23', '2024-12-09 01:34:23'),
(8, '123123', 'Smirnov', 'Ivanovich', 'user@prof.r1111u111', '$2y$12$F76lqzrym4SSy6v81Bp.qODB7EqTKr5d0jDjZX/0aSrPu57zgRodG', '2001-02-15', NULL, '2024-12-09 01:35:31', '2024-12-09 01:35:31'),
(9, '123123', 'Smirnov', 'Ivanovich', 'use1r@prof.r1111u111', '$2y$12$1DbZXTC8WeEVwXyCKWwcHOOOheRd2tTNRcPojHwvudSakXV3oXgve', '2001-02-15', NULL, '2024-12-09 23:45:49', '2024-12-09 23:45:49'),
(10, '123123', 'Smirnov', 'Ivanovich', 'passenger@moon.ru', '$2y$12$/tJJiBi2EjYgWEpLuXJ6Y.j6G/x/8Oz6yAJiMeEMC7IUwkHTq1Hcq', '2001-02-15', NULL, '2024-12-10 02:07:47', '2024-12-10 02:07:47'),
(11, '123123', 'Smirnov', 'Ivanovich', 'passenger@mars.ru', '$2y$12$GEVD4U5tyGWmZEmxEPrWMuoNTYro3I0xgB8UO8bakxJxqV56Qu89S', '2001-02-15', NULL, '2024-12-10 02:08:06', '2024-12-10 02:08:06'),
(12, 'Aaaa', 'Smirnov', 'Ivanovich', 'passengaaer@mars.ru', '$2y$12$ax7hwJbqNAiUmF2oz0hXyOc/cohnOdu08OdklDMibkrz5p24Cr.VO', '2001-02-15', NULL, '2024-12-11 01:36:00', '2024-12-11 01:36:00'),
(13, 'Aaaa', 'Smirnov', 'Ivanovich', 'passengaaaaer@mars.ru', '$2y$12$ZRajNUKE57/cMegYNgiDPeA0K7tZHt5nIpJT5xar1duEC3RPbVpK.', '2001-02-15', NULL, '2024-12-11 01:40:30', '2024-12-11 01:40:30');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gagarin_flights`
--
ALTER TABLE `gagarin_flights`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lunar_missions`
--
ALTER TABLE `lunar_missions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lunar_missions_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `space_flights`
--
ALTER TABLE `space_flights`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `space_flight_books`
--
ALTER TABLE `space_flight_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `space_flight_books_user_id_foreign` (`user_id`),
  ADD KEY `space_flight_books_flight_id_foreign` (`flight_id`);

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
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `gagarin_flights`
--
ALTER TABLE `gagarin_flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lunar_missions`
--
ALTER TABLE `lunar_missions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `space_flights`
--
ALTER TABLE `space_flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `space_flight_books`
--
ALTER TABLE `space_flight_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `lunar_missions`
--
ALTER TABLE `lunar_missions`
  ADD CONSTRAINT `lunar_missions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `space_flight_books`
--
ALTER TABLE `space_flight_books`
  ADD CONSTRAINT `space_flight_books_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `space_flights` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `space_flight_books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
