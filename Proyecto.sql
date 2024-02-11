-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql
-- Tiempo de generación: 09-02-2024 a las 09:48:27
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico_datos`
--

CREATE TABLE `historico_datos` (
  `fecha` timestamp NOT NULL,
  `temperatura` double(8,2) NOT NULL,
  `humedad` double(8,2) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `historico_datos`
--

INSERT INTO `historico_datos` (`fecha`, `temperatura`, `humedad`, `nombre`) VALUES
('2024-02-07 12:55:50', 16.00, 48.00, 'Bilbao'),
('2024-02-07 12:56:05', 16.00, 48.00, 'Bilbao'),
('2024-02-07 12:57:05', 16.00, 48.00, 'Bilbao'),
('2024-02-07 12:57:20', 16.00, 48.00, 'Bilbao'),
('2024-02-07 12:57:35', 16.00, 48.00, 'Bilbao'),
('2024-02-07 12:57:50', 16.00, 48.00, 'Bilbao'),
('2024-02-07 12:58:05', 16.00, 48.00, 'Bilbao'),
('2024-02-07 12:58:20', 16.00, 48.00, 'Bilbao'),
('2024-02-07 12:58:35', 16.00, 48.00, 'Bilbao'),
('2024-02-07 12:58:50', 16.00, 48.00, 'Bilbao'),
('2024-02-07 13:00:10', 16.00, 47.00, 'Bilbao'),
('2024-02-07 13:15:07', 16.00, 47.00, 'Bilbao'),
('2024-02-08 07:15:02', 15.00, 52.00, 'Bilbao'),
('2024-02-08 07:30:02', 15.00, 52.00, 'Bilbao'),
('2024-02-08 07:45:03', 15.00, 55.00, 'Bilbao'),
('2024-02-08 08:00:05', 14.00, 57.00, 'Bilbao'),
('2024-02-08 08:15:03', 14.00, 57.00, 'Bilbao'),
('2024-02-08 08:30:06', 14.00, 57.00, 'Bilbao'),
('2024-02-08 08:45:07', 14.00, 57.00, 'Bilbao'),
('2024-02-08 09:00:06', 15.00, 52.00, 'Bilbao'),
('2024-02-08 09:15:07', 15.00, 52.00, 'Bilbao'),
('2024-02-08 09:30:08', 15.00, 52.00, 'Bilbao'),
('2024-02-08 09:45:08', 15.00, 52.00, 'Bilbao'),
('2024-02-08 10:00:11', 15.00, 49.00, 'Bilbao'),
('2024-02-08 10:15:11', 15.00, 49.00, 'Bilbao'),
('2024-02-08 10:30:13', 15.00, 49.00, 'Bilbao'),
('2024-02-08 10:45:03', 15.00, 49.00, 'Bilbao'),
('2024-02-08 11:00:04', 13.00, 42.00, 'Bilbao'),
('2024-02-08 11:15:03', 13.00, 42.00, 'Bilbao'),
('2024-02-08 11:30:03', 13.00, 42.00, 'Bilbao'),
('2024-02-08 11:45:02', 13.00, 42.00, 'Bilbao'),
('2024-02-08 12:00:02', 14.00, 42.00, 'Bilbao'),
('2024-02-08 12:15:03', 14.00, 42.00, 'Bilbao'),
('2024-02-08 12:30:05', 14.00, 42.00, 'Bilbao'),
('2024-02-08 12:45:07', 14.00, 46.00, 'Bilbao'),
('2024-02-08 13:00:09', 15.00, 47.00, 'Bilbao'),
('2024-02-08 13:15:03', 15.00, 47.00, 'Bilbao'),
('2024-02-09 07:45:03', 13.00, 69.00, 'Bilbao'),
('2024-02-09 08:00:07', 14.00, 67.00, 'Bilbao'),
('2024-02-09 08:15:03', 14.00, 67.00, 'Bilbao'),
('2024-02-09 08:30:15', 14.00, 67.00, 'Bilbao'),
('2024-02-09 08:45:07', 14.00, 67.00, 'Bilbao'),
('2024-02-09 09:00:09', 14.00, 66.00, 'Bilbao'),
('2024-02-09 09:15:06', 14.00, 66.00, 'Bilbao'),
('2024-02-09 09:30:12', 14.00, 66.00, 'Bilbao'),
('2024-02-09 09:45:08', 14.00, 66.00, 'Bilbao'),
('2024-02-07 12:55:49', 16.00, 46.00, 'Donostia'),
('2024-02-07 12:56:04', 16.00, 46.00, 'Donostia'),
('2024-02-07 12:57:04', 16.00, 46.00, 'Donostia'),
('2024-02-07 12:57:18', 16.00, 46.00, 'Donostia'),
('2024-02-07 12:57:34', 16.00, 46.00, 'Donostia'),
('2024-02-07 12:57:49', 16.00, 46.00, 'Donostia'),
('2024-02-07 12:58:04', 16.00, 46.00, 'Donostia'),
('2024-02-07 12:58:19', 16.00, 46.00, 'Donostia'),
('2024-02-07 12:58:34', 16.00, 46.00, 'Donostia'),
('2024-02-07 12:58:49', 16.00, 46.00, 'Donostia'),
('2024-02-07 13:00:09', 17.00, 49.00, 'Donostia'),
('2024-02-07 13:15:06', 17.00, 49.00, 'Donostia'),
('2024-02-08 07:15:02', 14.00, 58.00, 'Donostia'),
('2024-02-08 07:30:02', 14.00, 58.00, 'Donostia'),
('2024-02-08 07:45:02', 14.00, 58.00, 'Donostia'),
('2024-02-08 08:00:05', 14.00, 60.00, 'Donostia'),
('2024-02-08 08:15:03', 14.00, 60.00, 'Donostia'),
('2024-02-08 08:30:05', 15.00, 59.00, 'Donostia'),
('2024-02-08 08:45:06', 15.00, 59.00, 'Donostia'),
('2024-02-08 09:00:04', 14.00, 61.00, 'Donostia'),
('2024-02-08 09:15:07', 14.00, 61.00, 'Donostia'),
('2024-02-08 09:30:07', 14.00, 61.00, 'Donostia'),
('2024-02-08 09:45:07', 14.00, 61.00, 'Donostia'),
('2024-02-08 10:00:09', 14.00, 56.00, 'Donostia'),
('2024-02-08 10:15:09', 14.00, 56.00, 'Donostia'),
('2024-02-08 10:30:11', 14.00, 56.00, 'Donostia'),
('2024-02-08 10:45:02', 14.00, 56.00, 'Donostia'),
('2024-02-08 11:00:03', 14.00, 54.00, 'Donostia'),
('2024-02-08 11:15:02', 14.00, 54.00, 'Donostia'),
('2024-02-08 11:30:02', 14.00, 54.00, 'Donostia'),
('2024-02-08 11:45:02', 14.00, 54.00, 'Donostia'),
('2024-02-08 12:00:02', 14.00, 52.00, 'Donostia'),
('2024-02-08 12:15:02', 14.00, 52.00, 'Donostia'),
('2024-02-08 12:30:04', 14.00, 52.00, 'Donostia'),
('2024-02-08 12:45:06', 14.00, 52.00, 'Donostia'),
('2024-02-08 13:00:08', 14.00, 54.00, 'Donostia'),
('2024-02-08 13:15:02', 14.00, 54.00, 'Donostia'),
('2024-02-09 07:45:02', 12.00, 71.00, 'Donostia'),
('2024-02-09 08:00:03', 12.00, 73.00, 'Donostia'),
('2024-02-09 08:15:03', 12.00, 73.00, 'Donostia'),
('2024-02-09 08:30:15', 12.00, 73.00, 'Donostia'),
('2024-02-09 08:45:06', 12.00, 73.00, 'Donostia'),
('2024-02-09 09:00:08', 12.00, 72.00, 'Donostia'),
('2024-02-09 09:15:05', 12.00, 72.00, 'Donostia'),
('2024-02-09 09:30:11', 12.00, 72.00, 'Donostia'),
('2024-02-09 09:45:06', 12.00, 72.00, 'Donostia'),
('2024-02-07 12:55:49', 16.00, 46.00, 'Getaria'),
('2024-02-07 12:56:05', 16.00, 46.00, 'Getaria'),
('2024-02-07 12:57:05', 16.00, 46.00, 'Getaria'),
('2024-02-07 12:57:19', 16.00, 46.00, 'Getaria'),
('2024-02-07 12:57:34', 16.00, 46.00, 'Getaria'),
('2024-02-07 12:57:49', 16.00, 46.00, 'Getaria'),
('2024-02-07 12:58:04', 16.00, 46.00, 'Getaria'),
('2024-02-07 12:58:19', 16.00, 46.00, 'Getaria'),
('2024-02-07 12:58:34', 16.00, 46.00, 'Getaria'),
('2024-02-07 12:58:49', 16.00, 46.00, 'Getaria'),
('2024-02-07 13:00:09', 17.00, 47.00, 'Getaria'),
('2024-02-07 13:15:07', 17.00, 47.00, 'Getaria'),
('2024-02-08 07:15:02', 15.00, 50.00, 'Getaria'),
('2024-02-08 07:30:02', 15.00, 50.00, 'Getaria'),
('2024-02-08 07:45:02', 15.00, 50.00, 'Getaria'),
('2024-02-08 08:00:05', 15.00, 48.00, 'Getaria'),
('2024-02-08 08:15:03', 15.00, 48.00, 'Getaria'),
('2024-02-08 08:30:05', 16.00, 49.00, 'Getaria'),
('2024-02-08 08:45:06', 16.00, 49.00, 'Getaria'),
('2024-02-08 09:00:05', 16.00, 45.00, 'Getaria'),
('2024-02-08 09:15:07', 16.00, 45.00, 'Getaria'),
('2024-02-08 09:30:07', 16.00, 45.00, 'Getaria'),
('2024-02-08 09:45:08', 16.00, 45.00, 'Getaria'),
('2024-02-08 10:00:10', 15.00, 42.00, 'Getaria'),
('2024-02-08 10:15:10', 15.00, 42.00, 'Getaria'),
('2024-02-08 10:30:12', 15.00, 42.00, 'Getaria'),
('2024-02-08 10:45:03', 15.00, 42.00, 'Getaria'),
('2024-02-08 11:00:04', 15.00, 48.00, 'Getaria'),
('2024-02-08 11:15:02', 15.00, 48.00, 'Getaria'),
('2024-02-08 11:30:03', 15.00, 48.00, 'Getaria'),
('2024-02-08 11:45:02', 15.00, 48.00, 'Getaria'),
('2024-02-08 12:00:02', 14.00, 48.00, 'Getaria'),
('2024-02-08 12:15:03', 14.00, 48.00, 'Getaria'),
('2024-02-08 12:30:04', 14.00, 48.00, 'Getaria'),
('2024-02-08 12:45:06', 14.00, 50.00, 'Getaria'),
('2024-02-08 13:00:09', 14.00, 58.00, 'Getaria'),
('2024-02-08 13:15:03', 14.00, 58.00, 'Getaria'),
('2024-02-09 07:45:02', 13.00, 65.00, 'Getaria'),
('2024-02-09 08:00:05', 13.00, 65.00, 'Getaria'),
('2024-02-09 08:15:03', 13.00, 65.00, 'Getaria'),
('2024-02-09 08:30:15', 13.00, 64.00, 'Getaria'),
('2024-02-09 08:45:06', 13.00, 64.00, 'Getaria'),
('2024-02-09 09:00:08', 13.00, 64.00, 'Getaria'),
('2024-02-09 09:15:06', 13.00, 64.00, 'Getaria'),
('2024-02-09 09:30:12', 13.00, 64.00, 'Getaria'),
('2024-02-09 09:45:07', 13.00, 64.00, 'Getaria'),
('2024-02-07 12:55:48', 18.00, 41.00, 'Hondarribia'),
('2024-02-07 12:56:03', 18.00, 41.00, 'Hondarribia'),
('2024-02-07 12:57:03', 18.00, 41.00, 'Hondarribia'),
('2024-02-07 12:57:17', 18.00, 41.00, 'Hondarribia'),
('2024-02-07 12:57:32', 18.00, 41.00, 'Hondarribia'),
('2024-02-07 12:57:48', 18.00, 41.00, 'Hondarribia'),
('2024-02-07 12:58:03', 18.00, 41.00, 'Hondarribia'),
('2024-02-07 12:58:17', 18.00, 41.00, 'Hondarribia'),
('2024-02-07 12:58:32', 18.00, 41.00, 'Hondarribia'),
('2024-02-07 12:58:48', 18.00, 41.00, 'Hondarribia'),
('2024-02-07 13:00:06', 18.00, 42.00, 'Hondarribia'),
('2024-02-07 13:15:05', 18.00, 42.00, 'Hondarribia'),
('2024-02-08 07:15:01', 14.00, 56.00, 'Hondarribia'),
('2024-02-08 07:30:02', 14.00, 56.00, 'Hondarribia'),
('2024-02-08 07:45:02', 14.00, 56.00, 'Hondarribia'),
('2024-02-08 08:00:04', 14.00, 55.00, 'Hondarribia'),
('2024-02-08 08:15:02', 14.00, 55.00, 'Hondarribia'),
('2024-02-08 08:30:03', 14.00, 55.00, 'Hondarribia'),
('2024-02-08 08:45:04', 14.00, 55.00, 'Hondarribia'),
('2024-02-08 09:00:03', 14.00, 55.00, 'Hondarribia'),
('2024-02-08 09:15:05', 14.00, 55.00, 'Hondarribia'),
('2024-02-08 09:30:05', 14.00, 55.00, 'Hondarribia'),
('2024-02-08 09:45:06', 14.00, 55.00, 'Hondarribia'),
('2024-02-08 10:00:06', 15.00, 52.00, 'Hondarribia'),
('2024-02-08 10:15:08', 15.00, 52.00, 'Hondarribia'),
('2024-02-08 10:30:10', 15.00, 52.00, 'Hondarribia'),
('2024-02-08 10:45:02', 15.00, 52.00, 'Hondarribia'),
('2024-02-08 11:00:02', 16.00, 52.00, 'Hondarribia'),
('2024-02-08 11:15:01', 16.00, 52.00, 'Hondarribia'),
('2024-02-08 11:30:02', 16.00, 52.00, 'Hondarribia'),
('2024-02-08 11:45:01', 16.00, 52.00, 'Hondarribia'),
('2024-02-08 12:00:01', 16.00, 48.00, 'Hondarribia'),
('2024-02-08 12:15:01', 16.00, 48.00, 'Hondarribia'),
('2024-02-08 12:30:02', 16.00, 48.00, 'Hondarribia'),
('2024-02-08 12:45:05', 16.00, 49.00, 'Hondarribia'),
('2024-02-08 13:00:07', 15.00, 49.00, 'Hondarribia'),
('2024-02-08 13:15:01', 15.00, 49.00, 'Hondarribia'),
('2024-02-09 07:45:01', 13.00, 69.00, 'Hondarribia'),
('2024-02-09 08:00:01', 13.00, 67.00, 'Hondarribia'),
('2024-02-09 08:15:02', 13.00, 66.00, 'Hondarribia'),
('2024-02-09 08:30:14', 13.00, 66.00, 'Hondarribia'),
('2024-02-09 08:45:04', 13.00, 66.00, 'Hondarribia'),
('2024-02-09 09:00:06', 13.00, 65.00, 'Hondarribia'),
('2024-02-09 09:15:03', 13.00, 65.00, 'Hondarribia'),
('2024-02-09 09:30:10', 13.00, 65.00, 'Hondarribia'),
('2024-02-09 09:45:05', 13.00, 65.00, 'Hondarribia'),
('2024-02-07 12:55:48', 17.00, 51.00, 'Pasaia'),
('2024-02-07 12:56:04', 17.00, 51.00, 'Pasaia'),
('2024-02-07 12:57:04', 17.00, 51.00, 'Pasaia'),
('2024-02-07 12:57:18', 17.00, 51.00, 'Pasaia'),
('2024-02-07 12:57:33', 17.00, 51.00, 'Pasaia'),
('2024-02-07 12:57:48', 17.00, 51.00, 'Pasaia'),
('2024-02-07 12:58:03', 17.00, 51.00, 'Pasaia'),
('2024-02-07 12:58:18', 17.00, 51.00, 'Pasaia'),
('2024-02-07 12:58:33', 17.00, 51.00, 'Pasaia'),
('2024-02-07 12:58:48', 17.00, 51.00, 'Pasaia'),
('2024-02-07 13:00:07', 17.00, 51.00, 'Pasaia'),
('2024-02-07 13:15:06', 17.00, 51.00, 'Pasaia'),
('2024-02-08 07:15:01', 14.00, 65.00, 'Pasaia'),
('2024-02-08 07:30:02', 14.00, 65.00, 'Pasaia'),
('2024-02-08 07:45:02', 14.00, 65.00, 'Pasaia'),
('2024-02-08 08:00:04', 14.00, 65.00, 'Pasaia'),
('2024-02-08 08:15:03', 14.00, 65.00, 'Pasaia'),
('2024-02-08 08:30:04', 14.00, 65.00, 'Pasaia'),
('2024-02-08 08:45:05', 14.00, 65.00, 'Pasaia'),
('2024-02-08 09:00:03', 14.00, 65.00, 'Pasaia'),
('2024-02-08 09:15:06', 14.00, 65.00, 'Pasaia'),
('2024-02-08 09:30:06', 14.00, 65.00, 'Pasaia'),
('2024-02-08 09:45:06', 14.00, 65.00, 'Pasaia'),
('2024-02-08 10:00:08', 15.00, 62.00, 'Pasaia'),
('2024-02-08 10:15:09', 15.00, 62.00, 'Pasaia'),
('2024-02-08 10:30:11', 15.00, 62.00, 'Pasaia'),
('2024-02-08 10:45:02', 15.00, 62.00, 'Pasaia'),
('2024-02-08 11:00:03', 15.00, 60.00, 'Pasaia'),
('2024-02-08 11:15:02', 15.00, 60.00, 'Pasaia'),
('2024-02-08 11:30:02', 15.00, 60.00, 'Pasaia'),
('2024-02-08 11:45:02', 15.00, 60.00, 'Pasaia'),
('2024-02-08 12:00:02', 15.00, 59.00, 'Pasaia'),
('2024-02-08 12:15:02', 15.00, 59.00, 'Pasaia'),
('2024-02-08 12:30:03', 15.00, 59.00, 'Pasaia'),
('2024-02-08 12:45:06', 15.00, 59.00, 'Pasaia'),
('2024-02-08 13:00:08', 14.00, 56.00, 'Pasaia'),
('2024-02-08 13:15:02', 14.00, 56.00, 'Pasaia'),
('2024-02-09 07:45:01', 13.00, 72.00, 'Pasaia'),
('2024-02-09 08:00:02', 12.00, 74.00, 'Pasaia'),
('2024-02-09 08:15:02', 13.00, 74.00, 'Pasaia'),
('2024-02-09 08:30:14', 13.00, 74.00, 'Pasaia'),
('2024-02-09 08:45:05', 13.00, 74.00, 'Pasaia'),
('2024-02-09 09:00:07', 13.00, 73.00, 'Pasaia'),
('2024-02-09 09:15:04', 13.00, 73.00, 'Pasaia'),
('2024-02-09 09:30:11', 13.00, 73.00, 'Pasaia'),
('2024-02-09 09:45:06', 13.00, 73.00, 'Pasaia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitud` double(8,2) NOT NULL,
  `longitud` double(8,2) NOT NULL,
  `lluvia` double(8,2) NOT NULL,
  `temperatura` double(8,2) NOT NULL,
  `humedad` double(8,2) NOT NULL,
  `viento` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`nombre`, `latitud`, `longitud`, `lluvia`, `temperatura`, `humedad`, `viento`) VALUES
('Bilbao', 43.26, -2.92, 40.99, 13.63, 65.19, 19.56),
('Donostia', 43.32, -1.98, 81.12, 10.54, 72.36, 18.67),
('Getaria', 43.30, -2.20, 75.78, 12.38, 65.13, 37.80),
('Hondarribia', 43.36, -1.79, 77.33, 12.26, 63.87, 24.74),
('Pasaia', 43.32, -1.92, 75.29, 14.25, 72.99, 29.07);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(20, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(21, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(22, '2016_06_01_000004_create_oauth_clients_table', 1),
(23, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(28, '2014_10_12_000000_create_users_table', 2),
(29, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(30, '2019_08_19_000000_create_failed_jobs_table', 2),
(31, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(32, '2024_01_26_113424_create_lugares_table', 2),
(33, '2024_01_26_121315_create_historicos_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('969a5282b8f7f80c37864c4857f731f35a213d898fca3f28f0c38a8a9ca74d26614b8e9f894e1716', 1, 3, 'MyApp', '[]', 0, '2024-02-09 08:37:53', '2024-02-09 08:37:53', '2025-02-09 08:37:53'),
('f1972554336c14533ffc1045dde9ec82f443c0921db9ca76bb4244f179529931affd5415ee742de6', 2, 1, 'MyApp', '[]', 0, '2024-02-07 11:46:30', '2024-02-07 11:46:30', '2025-02-07 11:46:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'WMstvFN6JGfknHB584IPpNEGe182QVIyEvwpg5hu', NULL, 'http://localhost', 1, 0, 0, '2024-02-05 08:33:47', '2024-02-05 08:33:47'),
(2, NULL, 'Laravel Password Grant Client', 'HIYHZMoTHqHiuVeiNLe6RmVBezYEoeZ8yzlRggpO', 'users', 'http://localhost', 0, 1, 0, '2024-02-05 08:33:47', '2024-02-05 08:33:47'),
(3, NULL, 'Laravel Personal Access Client', 'AXK8vkHDu9h3PNw4hmYug8vpUeIP9qcdqguDjrsd', NULL, 'http://localhost', 1, 0, 0, '2024-02-09 07:54:58', '2024-02-09 07:54:58'),
(4, NULL, 'Laravel Password Grant Client', '4bkVZwyym4t8R4uN6lSN13zPaKPT8iTSKwM5onrm', 'users', 'http://localhost', 0, 1, 0, '2024-02-09 07:54:58', '2024-02-09 07:54:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-02-05 08:33:47', '2024-02-05 08:33:47'),
(2, 3, '2024-02-09 07:54:58', '2024-02-09 07:54:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'zipi', 'zipi@latia.com', NULL, '$2y$12$KCoXIsZa2MH0TLuGtvh0NOqWEY7Bf7sfL4p85yKLdyTUrb/QSGvg.', NULL, '2024-02-07 12:57:33', '2024-02-07 12:57:33'),
(4, 'zape', 'zape@latia.com', NULL, '$2y$12$3ydo5knpHncLc6.2vNui0u43yXW14pZoocOGsrC5LtggQ9tRcTN2K', NULL, '2024-02-07 13:06:26', '2024-02-07 13:06:26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `historico_datos`
--
ALTER TABLE `historico_datos`
  ADD PRIMARY KEY (`nombre`,`fecha`);

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historico_datos`
--
ALTER TABLE `historico_datos`
  ADD CONSTRAINT `historico_datos_nombre_foreign` FOREIGN KEY (`nombre`) REFERENCES `lugares` (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
