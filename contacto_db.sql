-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-02-2025 a las 18:40:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contacto_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `mensaje` text DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `nombre`, `correo`, `mensaje`, `fecha`) VALUES
(0, 'jkk', 'luiscarlos@3i44', 'idohvhdcb jzbscjlbl-n ñn -ñ', '2025-02-27 04:48:20'),
(0, 'jkk', 'luiscarlos@3i44', 'idohvhdcb jzbscjlbl-n ñn -ñ', '2025-02-27 05:02:14'),
(0, 'pohiuoñ', 'luiscarlos@3i44', 'mñkñ', '2025-02-27 05:02:26'),
(0, 'Luis Carlos Mora Murillo', 'luismora@ihdod', 'Hola me gustaria conctarte', '2025-02-27 05:04:11'),
(0, 'Hacker 123', 'Luiscarlosmoramurill063@gmail.com', 'HOPLQ COMO ESTAS ?', '2025-02-27 17:19:37'),
(0, 'Hacker 123', 'luiscarlosmoramurilloelguapo52@gmail.com', 'lllll', '2025-02-27 17:21:32'),
(0, 'cdebfhkiwpjejbniwjo', 'luiscarlosmoramurilloelguapo52@gmail.com', 'kkpsiçohivuoñvuos', '2025-02-27 17:23:14'),
(0, 'Hacker 123', 'luiscarlosmoramurilloelguapo52@gmail.com', 'kk', '2025-02-27 17:37:09');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
