-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2020 a las 03:46:57
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificador`
--

CREATE TABLE `identificador` (
  `ci` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechanac` date DEFAULT NULL,
  `residencia` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `identificador`
--

INSERT INTO `identificador` (`ci`, `nombre`, `fechanac`, `residencia`, `imagen`) VALUES
('10018355', 'Cayo Nina', '1996-05-03', 'lp', 'gato.jpg'),
('46231504', 'Pepe Santana', '1998-01-01', 'sc', 'mono.jpg'),
('26242257', 'Ana Perez', '1999-06-23', 'tr', 'loro.jpg'),
('36985277', 'Simon Sanchez', '2000-04-19', 'sc', 'perro.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `materia` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ci` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nota` float DEFAULT NULL,
  `residencia` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`materia`, `ci`, `nota`, `residencia`) VALUES
('inf-121', '10018355', 80, 'lp'),
('inf-125', '46231504', 70, 'sc'),
('inf-125', '10018355', 60, 'lp'),
('inf-125', '36985277', 50, 'sc'),
('inf-133', '36985277', 90, 'sc'),
('inf-133', '46231504', 20, 'sc'),
('inf-141', '36985277', 60, 'sc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clave` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `color` varchar(7) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `clave`, `color`) VALUES
('10018355', '123456', '#aa98ff'),
('46231504', '123456', '#ff33a0'),
('26242257', '987654', ''),
('36985277', '456789', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
