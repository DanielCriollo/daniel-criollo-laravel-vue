-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-08-2023 a las 12:55:06
-- Versión del servidor: 5.7.33
-- Versión de PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud-laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cod_departamento` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `cod_departamento`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 114, 'Lake Rozellaville', '2023-08-14 11:00:28', '2023-08-14 11:59:57'),
(2, 12, 'West Tateport', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(3, 13, 'Bertrandbury', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(4, 14, 'South Dayne', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(5, 15, 'Port Meda', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(6, 16, 'North Orvalport', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(7, 17, 'Lake Mose', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(8, 18, 'South Ashleeberg', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(9, 19, 'Jaskolskihaven', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(10, 20, 'West Isidroberg', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(11, 21, 'Port Collinberg', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(12, 22, 'South Stanleymouth', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(13, 23, 'Port Scottieview', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(14, 24, 'Lake Valentine', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(15, 25, 'Lake Danialside', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(16, 26, 'Juwanview', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(17, 27, 'New Myrna', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(18, 28, 'New Rosa', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(19, 29, 'Lake Ronborough', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(20, 30, 'North Alysonville', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(21, 31, 'Doraport', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(22, 32, 'Adamsshire', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(23, 33, 'Port Mercedes', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(24, 34, 'Thompsonshire', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(25, 35, 'South Jennyferhaven', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(26, 36, 'Port Ernestinaport', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(27, 37, 'Keeganbury', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(28, 38, 'Sanfordberg', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(29, 39, 'East Gerardfort', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(30, 40, 'North Teresashire', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(31, 41, 'Predovicside', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(32, 42, 'East Valliehaven', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(33, 43, 'Paulbury', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(34, 44, 'Alainabury', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(35, 45, 'Clovistown', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(36, 46, 'West Bridget', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(37, 47, 'South Nadia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(38, 48, 'Lake Oswaldotown', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(39, 49, 'East Piper', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(40, 50, 'Maximilliaside', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(41, 51, 'Port Trevor', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(42, 52, 'Pfeffermouth', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(43, 53, 'Port Izabellaburgh', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(44, 54, 'Hoegermouth', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(45, 55, 'Alfredotown', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(46, 56, 'Jonathanport', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(47, 57, 'Skilesberg', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(48, 58, 'West Osborne', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(49, 59, 'Lake Jadynmouth', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(50, 60, 'Rogahnberg', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(51, 61, 'Hoseaville', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(52, 62, 'Turcotteborough', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(53, 63, 'North Colin', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(54, 64, 'Port Arielleview', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(55, 65, 'Padbergville', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(56, 66, 'Cassieborough', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(57, 67, 'Boyleside', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(58, 68, 'West Monica', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(59, 69, 'Smithfurt', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(60, 70, 'Lake Juliet', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(61, 71, 'Pollichport', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(62, 72, 'Hildaborough', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(63, 73, 'South Marquise', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(64, 74, 'Breitenbergburgh', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(65, 75, 'Lake Coltonport', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(66, 76, 'Blockchester', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(67, 77, 'Port Mayrafurt', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(68, 78, 'Mullerfurt', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(69, 79, 'Heberchester', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(70, 80, 'Wizafurt', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(71, 81, 'Lake Macfort', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(72, 82, 'Madisenhaven', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(73, 83, 'North Garrisonside', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(74, 84, 'Port Alvabury', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(75, 85, 'West Bethelshire', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(76, 86, 'Klingview', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(77, 87, 'Donnaport', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(78, 88, 'Adelafort', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(79, 89, 'Lake Allen', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(80, 90, 'Albertohaven', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(81, 91, 'Gilbertostad', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(82, 92, 'South Dereck', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(83, 93, 'Jonfort', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(84, 94, 'Port Van', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(85, 95, 'Port Neilfort', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(86, 96, 'Bessiefurt', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(87, 97, 'Aldaberg', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(88, 98, 'North Hallie', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(89, 99, 'Kossberg', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(90, 100, 'Philipton', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(91, 101, 'Mafaldaport', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(92, 102, 'Port Vincentshire', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(93, 103, 'Bartolettistad', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(94, 104, 'West Laury', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(95, 105, 'Port Jermey', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(96, 106, 'Claymouth', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(97, 107, 'Toyborough', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(98, 108, 'Lizzieborough', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(99, 109, 'Carterville', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(100, 110, 'Uliceschester', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(101, 15, 'East Brettview', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(102, 9, 'Kassulkestad', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(103, 13, 'New Herberthaven', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(104, 1, 'New Blazeton', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(105, 7, 'North Randifort', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(106, 20, 'Spinkafurt', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(107, 11, 'Ginaside', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(108, 6, 'Champlinport', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(109, 18, 'Reynoldsfort', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(110, 19, 'North Rickiefort', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(111, 4, 'Giannibury', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(112, 20, 'Abernathyberg', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(113, 8, 'Brownmouth', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(114, 18, 'Conroystad', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(115, 20, 'Hilpertport', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(116, 3, 'Lake Olliechester', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(117, 20, 'West Kacie', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(118, 6, 'Luettgenhaven', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(119, 10, 'Lake Mariam', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(120, 2, 'Schimmelfort', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(121, 10, 'Port Martin', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(122, 11, 'Flatleyborough', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(123, 19, 'North Hilario', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(124, 16, 'Everardoview', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(125, 8, 'Lake Zariamouth', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(126, 4, 'Lake Ephraimton', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(127, 2, 'Balistrerifurt', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(128, 10, 'Lake Isactown', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(129, 15, 'Lake Addison', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(130, 6, 'Londonton', '2023-08-14 11:00:29', '2023-08-14 11:00:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cod_pais` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `cod_pais`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 11, 'Minnesota', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(2, 12, 'New Mexico', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(3, 13, 'Nebraska', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(4, 14, 'Connecticut', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(5, 15, 'Oregon', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(6, 16, 'Illinois', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(7, 17, 'Florida', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(8, 18, 'New Jersey', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(9, 19, 'Pennsylvania', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(10, 20, 'Iowa', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(11, 21, 'North Carolina', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(12, 22, 'Missouri', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(13, 23, 'Tennessee', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(14, 24, 'North Dakota', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(15, 25, 'Colorado', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(16, 26, 'Hawaii', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(17, 27, 'Virginia', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(18, 28, 'North Dakota', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(19, 29, 'Indiana', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(20, 30, 'Kansas', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(21, 31, 'Maine', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(22, 32, 'Iowa', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(23, 33, 'Mississippi', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(24, 34, 'Louisiana', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(25, 35, 'Tennessee', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(26, 36, 'Utah', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(27, 37, 'Maryland', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(28, 38, 'Minnesota', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(29, 39, 'Nebraska', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(30, 40, 'Texas', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(31, 41, 'Nevada', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(32, 42, 'Georgia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(33, 43, 'Nebraska', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(34, 44, 'Delaware', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(35, 45, 'Alabama', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(36, 46, 'Idaho', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(37, 47, 'New Hampshire', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(38, 48, 'Connecticut', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(39, 49, 'Massachusetts', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(40, 50, 'Kentucky', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(41, 51, 'Wisconsin', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(42, 52, 'Tennessee', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(43, 53, 'Alaska', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(44, 54, 'Nevada', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(45, 55, 'Mississippi', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(46, 56, 'Illinois', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(47, 57, 'Nevada', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(48, 58, 'Georgia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(49, 59, 'Vermont', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(50, 60, 'Massachusetts', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(51, 61, 'Nevada', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(52, 62, 'Arizona', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(53, 63, 'Oregon', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(54, 64, 'Tennessee', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(55, 65, 'Mississippi', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(56, 66, 'Virginia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(57, 67, 'Wisconsin', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(58, 68, 'Massachusetts', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(59, 69, 'Maryland', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(60, 70, 'Oklahoma', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(61, 71, 'Illinois', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(62, 72, 'Pennsylvania', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(63, 73, 'Pennsylvania', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(64, 74, 'South Carolina', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(65, 75, 'Montana', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(66, 76, 'Delaware', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(67, 77, 'Missouri', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(68, 78, 'Louisiana', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(69, 79, 'Oregon', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(70, 80, 'District of Columbia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(71, 81, 'Washington', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(72, 82, 'Washington', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(73, 83, 'Maryland', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(74, 84, 'New Jersey', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(75, 85, 'Louisiana', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(76, 86, 'Nebraska', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(77, 87, 'New Jersey', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(78, 88, 'Florida', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(79, 89, 'Virginia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(80, 90, 'Nebraska', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(81, 91, 'Maryland', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(82, 92, 'Nevada', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(83, 93, 'Arkansas', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(84, 94, 'Arizona', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(85, 95, 'North Carolina', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(86, 96, 'Texas', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(87, 97, 'Alabama', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(88, 98, 'Montana', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(89, 99, 'Wisconsin', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(90, 100, 'Wyoming', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(91, 101, 'Maine', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(92, 102, 'Michigan', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(93, 103, 'Arkansas', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(94, 104, 'Iowa', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(95, 105, 'New Mexico', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(96, 106, 'Kentucky', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(97, 107, 'Indiana', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(98, 108, 'West Virginia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(99, 109, 'Mississippi', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(100, 110, 'South Carolina', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(101, 111, 'Hawaii', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(102, 112, 'New Hampshire', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(103, 113, 'Missouri', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(104, 114, 'Arizona', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(105, 115, 'Washington', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(106, 116, 'South Dakota', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(107, 117, 'New Mexico', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(108, 118, 'Illinois', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(109, 119, 'Montana', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(110, 120, 'South Carolina', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(111, 9, 'Rhode Island', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(112, 6, 'New Mexico', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(113, 7, 'Georgia', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(114, 4, 'New Mexico', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(115, 7, 'Idaho', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(116, 1, 'Indiana', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(117, 5, 'Maryland', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(118, 10, 'Nebraska', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(119, 8, 'Minnesota', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(120, 8, 'Maine', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(121, 6, 'Utah', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(122, 8, 'Vermont', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(123, 4, 'North Dakota', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(124, 10, 'Tennessee', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(125, 9, 'Connecticut', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(126, 10, 'Missouri', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(127, 2, 'Nevada', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(128, 9, 'Florida', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(129, 2, 'Connecticut', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(130, 9, 'New Hampshire', '2023-08-14 11:00:29', '2023-08-14 11:00:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE `inmuebles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_propietario` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_propietario` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conjunto` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `torre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apto` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cod_barrio` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`id`, `nombre_propietario`, `email_propietario`, `conjunto`, `torre`, `apto`, `direccion`, `cod_barrio`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Ben Bahringer DVM', 'baron51@yahoo.com', 'esse', 'h', '181', '879 Trevor Dale\nHowellville, VT 21924-1224', 31, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(2, 'Alene Kuhn', 'vkuhlman@gmail.com', 'non', 'm', '344', '9432 Harris Pike Apt. 865\nHarrisonburgh, HI 07838-7865', 32, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(3, 'Cooper O\'Hara', 'danika08@yahoo.com', 'perspiciatis', 'i', '689', '38938 Dewitt Fields Suite 427\nEast Lester, SC 73808', 33, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(4, 'Arvel Spinka', 'jewell70@hotmail.com', 'esse', 't', '131', '70332 Boyle Station\nNew Tristonberg, AZ 41536', 34, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(5, 'Miss Ally Kautzer', 'jackie68@yahoo.com', 'fugit', 'a', '968', '387 Kailee Field Suite 609\nSouth Johnathonfurt, SC 88508', 35, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(6, 'Dr. Caden Hills', 'bernita41@gmail.com', 'minus', 'h', '281', '950 Bo Summit\nSchambergerville, IN 43330-9535', 36, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(7, 'Ayla Ryan', 'bogisich.mathew@gusikowski.info', 'molestias', 'n', '762', '568 Lowe Spur Apt. 685\nBeattyport, FL 69391', 37, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(8, 'Prof. Hugh Brekke V', 'kkemmer@gmail.com', 'eveniet', 'e', '463', '1630 Cole Loop Suite 820\nLake Vidalside, NC 92513', 38, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(9, 'Maryjane Blick', 'keaton.botsford@hotmail.com', 'praesentium', 'u', '869', '11193 Polly Place Suite 406\nLake Leonorshire, MA 39644-6184', 39, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(10, 'Travis Ebert', 'maud67@hoeger.com', 'ipsam', 'g', '713', '32501 Delpha View Apt. 597\nNorth Gracielaland, WV 35627', 40, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(11, 'Cara Abshire', 'sebastian.kris@davis.com', 'expedita', 'r', '418', '854 Walter Course\nWest Carlie, OH 95454-4069', 41, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(12, 'Adriana Weber', 'devon38@yahoo.com', 'reprehenderit', 'x', '855', '653 Hanna Flats Apt. 309\nBlazefort, WY 49257', 42, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(13, 'Ali Fay', 'owill@hotmail.com', 'voluptas', 'x', '100', '944 Kaelyn Parkways\nPort Jacktown, ND 68311', 43, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(14, 'Gayle Champlin', 'pollich.josie@kemmer.com', 'maiores', 'w', '116', '1055 D\'Amore Motorway Apt. 504\nPort Roselyn, IL 36752-7774', 44, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(15, 'Enola Brekke', 'devin60@stanton.info', 'non', 'd', '907', '134 Otis Drives Suite 132\nLondonfurt, NE 25457-2423', 45, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(16, 'Ms. Tatyana Klocko III', 'rafaela.gibson@yahoo.com', 'consequuntur', 'k', '839', '663 Modesta Stravenue Suite 083\nVelvaborough, WV 25201-4027', 46, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(17, 'Jett Wiza I', 'fermin.leannon@hotmail.com', 'aperiam', 'v', '666', '241 Astrid Pike Suite 781\nNorth Nelschester, CA 37661-9741', 47, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(18, 'Odessa Hansen DVM', 'ustokes@oberbrunner.com', 'enim', 'z', '190', '8955 Hamill Spring\nNorth Abraham, NV 01386-3269', 48, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(19, 'Manuel Crona', 'qreichel@gmail.com', 'qui', 'g', '768', '568 Ebba Grove Suite 735\nPort Ikemouth, LA 39023', 49, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(20, 'Forest Hickle', 'benny.bergnaum@hotmail.com', 'alias', 'y', '88', '49409 Jessyca Causeway Apt. 203\nHarveystad, ME 29253-6207', 50, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(21, 'Dr. Kavon Haag', 'terry94@braun.com', 'labore', 'e', '369', '37700 Dana Circle Suite 942\nLake Jordyn, OK 46129', 51, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(22, 'Jacey Klocko IV', 'nwalsh@lehner.info', 'quibusdam', 't', '974', '2304 Kuhic Cliff Suite 689\nPort Omermouth, OR 44421', 52, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(23, 'Mrs. Minnie Nikolaus', 'torp.casimer@gmail.com', 'laudantium', 'v', '971', '592 Leanna Plaza Apt. 111\nNorth Rogelioton, NE 86846-3294', 53, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(24, 'Jamil Parker', 'lritchie@yahoo.com', 'harum', 'd', '179', '974 Erik Haven Apt. 337\nSchroederfort, NY 05465', 54, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(25, 'Leilani Borer III', 'haag.monserrate@murray.com', 'tenetur', 'z', '248', '5493 Walter Harbor\nPort Jenningsmouth, WV 31932-5905', 55, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(26, 'Charlotte Rippin Sr.', 'laurence.hermann@gorczany.com', 'consequuntur', 'k', '132', '14693 Rhett Bridge\nNew Jeramyberg, AL 67015-3400', 56, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(27, 'Dr. Tre Bauch II', 'nelson.schmidt@turner.com', 'ratione', 'g', '697', '992 Bernier Drive\nBergnaumstad, NH 72626', 57, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(28, 'Loma Ruecker', 'osbaldo.schamberger@langworth.com', 'expedita', 'a', '481', '27965 Boehm Crossing\nSouth Lina, MA 70421-7755', 58, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(29, 'Ms. Hettie Pacocha', 'moshe.walter@yahoo.com', 'rerum', 'n', '312', '7879 Clarabelle Crossroad Apt. 801\nEast Shainabury, NY 14881', 59, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(30, 'Peyton Nicolas', 'robbie.terry@tillman.com', 'officia', 'q', '173', '44092 Turner Ranch\nAngelashire, MI 55144-1369', 60, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(31, 'Mr. Jerod Carter', 'zora.muller@gmail.com', 'eum', 'h', '28', '49641 Evans Ports\nPort Dena, MO 46175-5013', 61, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(32, 'Madge Hegmann', 'beier.gaetano@hotmail.com', 'voluptates', 'y', '663', '97490 Jess Cliff\nSouth Nathen, NH 76138', 62, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(33, 'Arielle Murray', 'yarmstrong@greenfelder.com', 'aliquid', 'j', '951', '557 Maya Green\nNorth Melvinamouth, OK 35516-0532', 63, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(34, 'Hanna D\'Amore DVM', 'tferry@gmail.com', 'aut', 'z', '514', '85885 Eddie Fort Apt. 679\nNew Sofia, ND 51267-2004', 64, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(35, 'Florian Feest', 'toni.wilderman@moen.net', 'eveniet', 'r', '246', '552 Christiana Locks\nStammland, OR 29228', 65, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(36, 'Alvera Mante I', 'kaci30@hotmail.com', 'aut', 's', '942', '62545 Lenora Streets\nPort Bennie, AR 15929', 66, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(37, 'Walton Hahn', 'larson.bailee@spinka.com', 'voluptatibus', 'i', '173', '56095 Telly Pike Apt. 614\nKeeblerport, ID 74659-4441', 67, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(38, 'Dante Schamberger', 'fadel.janie@harris.biz', 'pariatur', 'x', '581', '650 Franecki Extensions\nEast Bonita, OH 03545-0277', 68, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(39, 'Lonie Towne', 'elias.torp@gmail.com', 'commodi', 'b', '444', '93585 Nadia Brooks\nCareystad, MS 13838', 69, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(40, 'Merle Corkery IV', 'hyman.lubowitz@gleason.com', 'reiciendis', 't', '796', '64097 Meaghan Ford\nNew Darrellbury, ME 25863-9758', 70, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(41, 'Cyrus Waelchi I', 'bartoletti.ettie@monahan.info', 'quo', 'j', '166', '5043 Gerald Club Apt. 741\nPort Mabelle, MS 57983-9364', 71, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(42, 'Ms. Alexandria DuBuque', 'sonny.kutch@hotmail.com', 'consequatur', 'a', '655', '468 Keeling Roads Apt. 177\nSouth Devon, MN 30117', 72, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(43, 'Mr. Grover Shanahan DDS', 'zboncak.coty@ebert.com', 'dolor', 'p', '444', '6082 Feil Estate\nLake Alene, FL 09724', 73, '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(44, 'Dr. Vito O\'Kon', 'lrowe@padberg.com', 'non', 'w', '947', '3980 Daugherty Mountain Apt. 117\nMarquardtshire, IA 28619-7415', 74, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(45, 'Christina Frami', 'romaguera.burdette@hotmail.com', 'illum', 'm', '452', '55009 Green Overpass\nNorth Vanceberg, ND 67290', 75, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(46, 'Mrs. Minerva Wehner', 'lora33@hotmail.com', 'voluptatem', 'r', '232', '974 Mann Course Suite 938\nJalonborough, IA 21608', 76, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(47, 'Gwendolyn Barrows', 'tiara.white@yahoo.com', 'molestiae', 'a', '712', '58070 Volkman Mill Apt. 173\nPort Lylahaven, AL 17599', 77, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(48, 'Shanny Kreiger', 'kiehn.guy@cartwright.com', 'voluptate', 'w', '734', '890 Gerald Walk Apt. 205\nOrtizfurt, VT 57704-8853', 78, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(49, 'Lisette Borer', 'aglae.ernser@yahoo.com', 'aut', 'n', '376', '7365 Haag River Apt. 147\nAnnabelton, CO 16873', 79, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(50, 'Samara Larkin MD', 'maufderhar@koss.biz', 'vitae', 'v', '302', '228 Walsh Burgs\nEast Helen, KY 47134', 80, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(51, 'Dante Bauch', 'ywolff@reichel.com', 'vitae', 'x', '490', '7813 Coty Ford Apt. 181\nJamilport, DC 44796', 26, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(52, 'Sadie Robel II', 'mohammad.daniel@macejkovic.org', 'placeat', 'e', '819', '42969 Terry Passage Suite 723\nJakubowskimouth, NY 98766-8882', 34, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(53, 'Marcelino Stehr', 'ayden05@howell.com', 'itaque', 'h', '796', '19647 Fidel Port Apt. 394\nKreigerfort, LA 08740-0940', 3, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(54, 'Lucie Tremblay', 'oreilly.fanny@hotmail.com', 'eveniet', 'e', '556', '3331 Eusebio Underpass\nWest Kylaland, WA 28644-8261', 17, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(55, 'Prof. Eloise Gottlieb', 'scottie46@gutkowski.info', 'architecto', 'v', '949', '8701 Jenkins Causeway\nKipton, NE 36659-2263', 17, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(56, 'Prof. Anibal Turcotte III', 'concepcion.mcdermott@kuhic.biz', 'omnis', 'w', '238', '68675 Erdman Crossroad Suite 092\nLowellberg, KS 41435-3825', 19, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(57, 'Elliott Kuvalis', 'doyle.ritchie@olson.com', 'nam', 'm', '112', '465 Jast Terrace\nPort Shana, OK 75770-1418', 3, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(58, 'Demarco Reichel', 'clementina30@gmail.com', 'quod', 'x', '46', '3066 Rowland Mountain Apt. 143\nMaggioview, NJ 16529', 11, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(59, 'Mrs. Nora Haley', 'archibald64@gmail.com', 'quod', 'l', '513', '717 Ashton Wall\nJakubowskiton, DE 81040-4067', 5, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(60, 'Mr. Orval Bode', 'kulas.laura@cronin.biz', 'ipsa', 'm', '531', '59526 Aletha Track Apt. 497\nLakinburgh, AR 12566-7115', 40, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(61, 'Dr. Darius Cassin MD', 'andres.senger@herzog.org', 'molestias', 'n', '364', '66121 Dietrich Square\nEast Jackeline, WI 70319', 17, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(62, 'Myrtice Bergstrom', 'klocko.micheal@thiel.com', 'sapiente', 's', '292', '80247 Celia Prairie\nWest Garnetbury, OH 19742', 30, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(63, 'Mrs. Zora Donnelly', 'xgoyette@gmail.com', 'ad', 'c', '860', '70100 Weber Courts\nMerlinfurt, CO 90880-7519', 32, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(64, 'Prof. Richie Schamberger MD', 'pagac.gertrude@gmail.com', 'ut', 'r', '815', '8814 Kelley Meadow\nNorth Sarahmouth, NY 69006-4046', 37, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(65, 'Nya Fay', 'hilbert32@yahoo.com', 'fugiat', 'h', '572', '8331 Tremblay Parkways\nRempelchester, OR 98854', 5, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(66, 'Eldon Reynolds', 'mbartell@hotmail.com', 'sunt', 'o', '56', '8202 Orin Neck Apt. 482\nAnsleybury, ID 08048-9622', 32, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(67, 'Tressa Mertz', 'alva.erdman@stroman.net', 'hic', 'k', '883', '716 Fadel Drives\nPagacshire, LA 76802', 7, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(68, 'Dr. Brennan D\'Amore', 'morissette.hulda@yahoo.com', 'officia', 'x', '586', '2292 Stephan Road\nNew Mike, PA 79405', 11, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(69, 'Summer Powlowski', 'grayce04@yahoo.com', 'autem', 'x', '790', '786 Kohler Prairie\nTerrancemouth, AZ 00217-1239', 23, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(70, 'Andreanne Bode', 'ischinner@hotmail.com', 'qui', 'h', '272', '891 Haley Ramp Suite 666\nWisokymouth, CT 90300', 38, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(71, 'Emanuel Huel', 'avis.sporer@gmail.com', 'cupiditate', 'k', '568', '3272 Art Bridge Apt. 187\nEast Mellie, MO 38525-9268', 12, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(72, 'Eino Hickle MD', 'isabelle81@yahoo.com', 'fuga', 'e', '877', '816 Dibbert Mountains Suite 926\nPort Myles, AL 76031', 28, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(73, 'Cyril Mueller', 'stracke.helena@dickinson.com', 'voluptatem', 'o', '17', '5627 Gaylord Islands Apt. 609\nKoelpinside, KY 79969-8869', 24, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(74, 'Haley Dickens I', 'cassie.mann@hotmail.com', 'et', 'z', '53', '75879 Miller Corner\nSouth Lelaton, NC 37823', 15, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(75, 'Mackenzie Mohr', 'kristopher24@schmeler.com', 'ut', 'f', '489', '312 Shawna Vista Suite 272\nSouth Stephany, AZ 23229-9522', 18, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(76, 'Zachary Watsica', 'kjacobi@pfeffer.com', 'tempora', 'v', '496', '92192 Ubaldo Grove Apt. 983\nEast Gussieborough, HI 73394', 14, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(77, 'Brain Strosin', 'kcrona@gmail.com', 'quos', 'u', '798', '88212 Bogan Run Apt. 906\nSouth Mayra, CA 39629', 13, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(78, 'Virgie Hauck', 'gsipes@koss.org', 'consequuntur', 'r', '799', '46601 Louisa Stravenue\nShanelleport, MI 80722', 37, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(79, 'Ferne Paucek', 'myrtle.larkin@hotmail.com', 'nostrum', 'r', '715', '3065 Tromp Points Apt. 734\nWest Marielle, MT 82213', 31, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(80, 'Jamie Blanda', 'apaucek@hahn.org', 'laboriosam', 't', '257', '966 Lynch Way\nLake Rasheedville, DC 62192-6950', 5, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(81, 'Tess Cummings', 'jordon.pollich@gmail.com', 'dicta', 'j', '157', '5324 Nolan Stravenue Suite 824\nBrownfort, MA 40313-4756', 33, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(82, 'Payton Hand', 'paolo.kunze@hotmail.com', 'aut', 'f', '792', '476 Patrick Lock Apt. 715\nJastview, DC 66321-8715', 35, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(83, 'Prof. Madonna Farrell', 'marks.markus@hotmail.com', 'ullam', 'g', '601', '6793 Daniel Manor\nWest Anjali, GA 69024-3466', 33, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(84, 'Otilia Braun', 'marvin.shania@gmail.com', 'reiciendis', 'r', '38', '102 Schulist Lights Apt. 384\nNorth Kieranland, IA 15618', 21, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(85, 'Jeanette Gutmann', 'cartwright.lexie@yahoo.com', 'dolor', 'e', '106', '37681 Karolann Valleys Apt. 139\nHellenstad, NH 62754', 35, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(86, 'Catalina Fritsch MD', 'parker.kenton@hotmail.com', 'quae', 'q', '129', '4793 O\'Connell Terrace Suite 289\nCollierborough, KS 84837', 28, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(87, 'Linnea Glover', 'kylie50@schmeler.org', 'distinctio', 'h', '114', '532 Steuber Plain Apt. 894\nNew Carmen, ID 14112-6115', 13, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(88, 'Brain Greenfelder', 'frida.terry@friesen.com', 'modi', 'd', '970', '341 Lucile Island Apt. 136\nCaitlynborough, CO 89406', 24, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(89, 'Prof. Jewel Kemmer Jr.', 'zemlak.augustus@armstrong.com', 'ut', 'm', '531', '16773 Baumbach Key Apt. 978\nLindaland, AR 63663-5258', 21, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(90, 'Elfrieda Wyman V', 'johnathan.lynch@yahoo.com', 'quod', 'p', '441', '469 Icie Terrace\nSouth Metafurt, DE 40570-6466', 14, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(91, 'Samson Schuster', 'gpagac@mcdermott.net', 'libero', 'z', '644', '3708 Santiago Plaza Apt. 221\nWest Iliana, IA 68768-4619', 6, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(92, 'Shyanne Gleichner', 'batz.maci@leuschke.com', 'ea', 'a', '156', '4715 Maynard Avenue\nWellingtonville, DE 66574', 33, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(93, 'Dr. Blaze Jacobson PhD', 'margaretta.frami@gmail.com', 'ex', 'm', '27', '670 Feest Underpass Suite 445\nAbbigailville, ME 89605', 13, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(94, 'Addison Goodwin', 'brenda16@gmail.com', 'sed', 'c', '595', '278 Boyle Pass\nNew Bricefort, IA 98321', 13, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(95, 'Evan Hansen I', 'jerde.corrine@yahoo.com', 'voluptate', 'd', '899', '590 Fausto Spurs\nSouth Martinbury, HI 13175-6017', 8, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(96, 'Samanta Fahey', 'monahan.jalon@hotmail.com', 'facilis', 'q', '9', '869 Watson Crest Apt. 850\nWest Kenyaborough, AL 44325-4671', 40, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(97, 'Eda Eichmann MD', 'felix.christiansen@gmail.com', 'sunt', 'g', '575', '79208 Joaquin Plains\nNew Simeonburgh, AR 48757', 26, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(98, 'Kathryn Kreiger', 'ikuphal@yahoo.com', 'est', 'q', '417', '608 Barrows Ferry Suite 707\nPort Janiya, KS 47096-3162', 7, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(99, 'Camden Bednar DDS', 'harvey.raymond@morissette.info', 'odit', 'l', '191', '77178 Hessel Mills\nNorth Angusburgh, AK 48434-3673', 40, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(100, 'Lottie Satterfield DVM', 'jaylan.parisian@gmail.com', 'asperiores', 's', '7', '5399 Trent Shoals\nSouth Chelsiemouth, IL 23444', 30, '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(101, 'Example', 'daniel@mail.com', 'El puente', '2', '256', 'Pasto', 37, '2023-08-14 17:26:16', '2023-08-14 17:26:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_08_220506_create_paises_table', 1),
(6, '2023_08_08_220512_create_departamentos_table', 1),
(7, '2023_08_08_220518_create_ciudades_table', 1),
(8, '2023_08_08_220522_create_sectores_table', 1),
(9, '2023_08_08_220527_create_inmuebles_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Mayotte', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(2, 'Mozambique', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(3, 'Gabon', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(4, 'Belize', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(5, 'Pakistan', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(6, 'Grenada', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(7, 'Peru', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(8, 'Russian Federation', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(9, 'Lithuania', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(10, 'Trinidad and Tobago', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(11, 'Netherlands Antilles', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(12, 'Belarus', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(13, 'China', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(14, 'Papua New Guinea', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(15, 'Angola', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(16, 'Cyprus', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(17, 'Philippines', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(18, 'Northern Mariana Islands', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(19, 'Puerto Rico', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(20, 'Japan', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(21, 'Armenia', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(22, 'Switzerland', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(23, 'United States Minor Outlying Islands', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(24, 'El Salvador', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(25, 'Congo', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(26, 'Fiji', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(27, 'Palau', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(28, 'Guatemala', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(29, 'Norfolk Island', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(30, 'Tonga', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(31, 'Ukraine', '2023-08-14 11:00:27', '2023-08-14 11:00:27'),
(32, 'Hungary', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(33, 'Montenegro', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(34, 'Dominican Republic', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(35, 'United Arab Emirates', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(36, 'Nepal', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(37, 'Syrian Arab Republic', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(38, 'Comoros', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(39, 'Seychelles', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(40, 'Niger', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(41, 'Cuba', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(42, 'Norway', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(43, 'Malta', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(44, 'Austria', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(45, 'Portugal', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(46, 'Macedonia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(47, 'Mauritania', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(48, 'Equatorial Guinea', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(49, 'Saudi Arabia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(50, 'Saint Barthelemy', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(51, 'Romania', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(52, 'Faroe Islands', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(53, 'Taiwan', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(54, 'French Southern Territories', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(55, 'Dominica', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(56, 'Vanuatu', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(57, 'Timor-Leste', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(58, 'Barbados', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(59, 'Anguilla', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(60, 'Bangladesh', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(61, 'Palestinian Territories', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(62, 'Cameroon', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(63, 'Bouvet Island (Bouvetoya)', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(64, 'Costa Rica', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(65, 'Chad', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(66, 'Liechtenstein', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(67, 'French Guiana', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(68, 'Cayman Islands', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(69, 'Madagascar', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(70, 'Mali', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(71, 'Jamaica', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(72, 'United States of America', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(73, 'Netherlands', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(74, 'Burundi', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(75, 'Uruguay', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(76, 'Poland', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(77, 'Andorra', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(78, 'Gibraltar', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(79, 'Panama', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(80, 'Guadeloupe', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(81, 'New Caledonia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(82, 'Senegal', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(83, 'Djibouti', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(84, 'Kiribati', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(85, 'Saint Vincent and the Grenadines', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(86, 'Macao', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(87, 'Bermuda', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(88, 'Morocco', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(89, 'Denmark', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(90, 'Solomon Islands', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(91, 'Liberia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(92, 'Cape Verde', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(93, 'Canada', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(94, 'Georgia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(95, 'Estonia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(96, 'Zambia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(97, 'Honduras', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(98, 'Nigeria', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(99, 'Ghana', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(100, 'Czech Republic', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(101, 'Antarctica (the territory South of 60 deg S)', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(102, 'Turks and Caicos Islands', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(103, 'French Polynesia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(104, 'Holy See (Vatican City State)', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(105, 'Oman', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(106, 'Svalbard & Jan Mayen Islands', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(107, 'Kyrgyz Republic', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(108, 'Benin', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(109, 'South Africa', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(110, 'Tokelau', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(111, 'India', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(112, 'Botswana', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(113, 'Ecuador', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(114, 'Marshall Islands', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(115, 'Greece', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(116, 'Isle of Man', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(117, 'Moldova', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(118, 'Cambodia', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(119, 'Burkina Faso', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(120, 'Finland', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(121, 'Iran', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(122, 'Swaziland', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(123, 'Aruba', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(124, 'Bulgaria', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(125, 'Guadeloupe', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(126, 'Colombia', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(127, 'French Guiana', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(128, 'United States of America', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(129, 'Lebanon', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(130, 'Tokelau', '2023-08-14 11:00:29', '2023-08-14 11:00:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sectores`
--

CREATE TABLE `sectores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cod_ciudad` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sectores`
--

INSERT INTO `sectores` (`id`, `cod_ciudad`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 21, 'aaaa', '2023-08-14 11:00:28', '2023-08-14 12:24:49'),
(2, 22, 'Ryan Island', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(3, 23, 'Marjolaine Coves', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(4, 24, 'Medhurst Ford', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(5, 25, 'Summer Drives', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(6, 26, 'Kelli Creek', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(7, 27, 'Rau Locks', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(8, 28, 'Ziemann Port', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(9, 29, 'Isabel Coves', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(10, 30, 'Mckayla Ports', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(11, 31, 'Kuvalis Landing', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(12, 32, 'Pamela Road', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(13, 33, 'Carter Squares', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(14, 34, 'Ondricka Canyon', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(15, 35, 'Keara Prairie', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(16, 36, 'Marcelle Greens', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(17, 37, 'Pfeffer Field', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(18, 38, 'Mohr Fields', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(19, 39, 'Cronin Land', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(20, 40, 'Quigley Lake', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(21, 41, 'Pfeffer River', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(22, 42, 'Brekke Points', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(23, 43, 'Roob Crest', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(24, 44, 'Frami Creek', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(25, 45, 'Ena Grove', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(26, 46, 'Von Plains', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(27, 47, 'Stark Prairie', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(28, 48, 'Gusikowski Passage', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(29, 49, 'Heller Manors', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(30, 50, 'Nikolaus Rapid', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(31, 51, 'Kunze Club', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(32, 52, 'Mike Pines', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(33, 53, 'Herman Orchard', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(34, 54, 'Schmitt Extensions', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(35, 55, 'Okey Camp', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(36, 56, 'August Skyway', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(37, 57, 'Haley Island', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(38, 58, 'DuBuque Drives', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(39, 59, 'Makayla Shoal', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(40, 60, 'Bradtke Glens', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(41, 61, 'Brown Villages', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(42, 62, 'Homenick Underpass', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(43, 63, 'Homenick Rapids', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(44, 64, 'Steuber Haven', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(45, 65, 'Nova Shores', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(46, 66, 'Oma Prairie', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(47, 67, 'Clarissa Square', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(48, 68, 'Rohan Islands', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(49, 69, 'Koby Springs', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(50, 70, 'Kuhlman Cape', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(51, 71, 'Gorczany Forge', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(52, 72, 'Quitzon Rue', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(53, 73, 'Rudy Stream', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(54, 74, 'Dante Club', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(55, 75, 'Kub Village', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(56, 76, 'Lina Isle', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(57, 77, 'Cleo Walk', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(58, 78, 'Antonietta Neck', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(59, 79, 'Isom Keys', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(60, 80, 'Mills Curve', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(61, 81, 'Noel Landing', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(62, 82, 'Kobe Overpass', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(63, 83, 'Orlo Shoals', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(64, 84, 'Gleason Pike', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(65, 85, 'Zieme Plains', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(66, 86, 'Jude Radial', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(67, 87, 'Dach Turnpike', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(68, 88, 'Ayana Rest', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(69, 89, 'Turner Highway', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(70, 90, 'Simone Fords', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(71, 91, 'Macejkovic Ridges', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(72, 92, 'Luz Valleys', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(73, 93, 'Karley Land', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(74, 94, 'Nikolaus Road', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(75, 95, 'Kling Run', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(76, 96, 'Genoveva Plains', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(77, 97, 'Braulio Shore', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(78, 98, 'Murl Estates', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(79, 99, 'Howell Fields', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(80, 100, 'Shaun Trail', '2023-08-14 11:00:28', '2023-08-14 11:00:28'),
(81, 12, 'Christelle Islands', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(82, 24, 'Tillman Squares', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(83, 10, 'Glenna Crest', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(84, 23, 'Walter Shore', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(85, 28, 'Ankunding Mill', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(86, 5, 'Prosacco Canyon', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(87, 30, 'Murazik Keys', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(88, 18, 'Quigley Way', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(89, 9, 'Wilkinson Drive', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(90, 4, 'Weissnat Lodge', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(91, 25, 'Carter Forges', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(92, 6, 'Murphy Drives', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(93, 10, 'Schultz Alley', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(94, 3, 'Maxine Landing', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(95, 14, 'Margot Summit', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(96, 10, 'Jarret Ridges', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(97, 24, 'Bogan Ranch', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(98, 28, 'Zboncak Plaza', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(99, 1, 'Larkin Port', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(100, 23, 'Jacobi Islands', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(101, 5, 'Kertzmann Mews', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(102, 3, 'Welch Harbors', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(103, 13, 'Monica Squares', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(104, 7, 'Lamont Inlet', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(105, 5, 'Tyreek Garden', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(106, 30, 'Mafalda Field', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(107, 10, 'Willms Route', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(108, 23, 'Elijah Throughway', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(109, 23, 'Maddison Mission', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(110, 10, 'Watsica Springs', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(111, 19, 'Wolff Via', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(112, 25, 'Fay Road', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(113, 27, 'Darian Brooks', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(114, 8, 'Mann Canyon', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(115, 15, 'Bosco Stravenue', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(116, 13, 'Casper Lake', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(117, 2, 'Deon Court', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(118, 11, 'Kunde Brooks', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(119, 5, 'Abernathy Meadows', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(120, 29, 'Herzog Walks', '2023-08-14 11:00:29', '2023-08-14 11:00:29'),
(122, 57, 'Jex', '2023-08-14 12:49:02', '2023-08-14 12:49:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ciudades_cod_departamento_foreign` (`cod_departamento`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departamentos_cod_pais_foreign` (`cod_pais`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inmuebles_cod_barrio_foreign` (`cod_barrio`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sectores`
--
ALTER TABLE `sectores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sectores_cod_ciudad_foreign` (`cod_ciudad`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sectores`
--
ALTER TABLE `sectores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_cod_departamento_foreign` FOREIGN KEY (`cod_departamento`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_cod_pais_foreign` FOREIGN KEY (`cod_pais`) REFERENCES `paises` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD CONSTRAINT `inmuebles_cod_barrio_foreign` FOREIGN KEY (`cod_barrio`) REFERENCES `sectores` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sectores`
--
ALTER TABLE `sectores`
  ADD CONSTRAINT `sectores_cod_ciudad_foreign` FOREIGN KEY (`cod_ciudad`) REFERENCES `ciudades` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
