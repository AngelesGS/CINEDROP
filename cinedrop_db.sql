-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2026 a las 05:26:58
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
-- Base de datos: `cinedrop_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_comprado`
--

CREATE TABLE `contenido_comprado` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_pelicula` int(11) DEFAULT NULL,
  `fecha_compra` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre_genero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre_genero`) VALUES
(1, 'Terror'),
(2, 'Suspenso'),
(3, 'Acción'),
(4, 'Documental'),
(5, 'Guerra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `portada_link` varchar(255) DEFAULT NULL,
  `pelicula_link` varchar(255) DEFAULT NULL,
  `subtitulos_link` varchar(255) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT 'Español Latino',
  `precio` decimal(10,2) DEFAULT 0.00,
  `id_genero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id`, `nombre`, `descripcion`, `autor`, `portada_link`, `pelicula_link`, `subtitulos_link`, `idioma`, `precio`, `id_genero`) VALUES
(1, 'Pulse (Kairo)', 'Espíritus invaden el mundo de los vivos a través de internet en este clásico del J-Horror.', 'Kiyoshi Kurosawa', 'https://archive.org/services/img/pulse-kairo-kiyoshi-kurosawa-2001-eng-sub-1301306804834', 'https://archive.org/download/pulse-kairo-kiyoshi-kurosawa-2001-eng-sub-1301306804834/Pulse_-_Kairo_Kiyoshi_Kurosawa_2001_EngSub-1301306804834.mp4', NULL, 'Japonés', 95.00, 1),
(2, '100 Days In The Jungle', 'Basada en hechos reales sobre el secuestro de trabajadores petroleros en la selva ecuatoriana.', 'Can Film Archive', 'https://archive.org/services/img/can-film-archive', 'https://archive.org/download/can-film-archive/100%20Days%20In%20The%20Jungle%20%282002%29.mp4', NULL, 'Inglés', 60.00, 4),
(3, 'Blade', 'Un híbrido humano-vampiro protege a la humanidad de los vampiros sedientos de sangre.', 'Stephen Norrington', 'https://archive.org/services/img/blade_202210', 'https://archive.org/download/blade_202210/BLADE.mp4', NULL, 'Inglés', 55.00, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `codigo_verificacion` varchar(6) DEFAULT NULL,
  `verificado` tinyint(1) NOT NULL DEFAULT 0,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `email`, `password`, `codigo_verificacion`, `verificado`, `creado_en`) VALUES
(1, 'AngelesGS', 'guillensanchezangeles@gmail.com', '$2y$10$fZFtZSqstoP7JinrlV8as.txWxK6EiHXLBHGXjkCUB95coWat5Z1.', NULL, 1, '2026-05-19 18:49:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contenido_comprado`
--
ALTER TABLE `contenido_comprado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_pelicula` (`id_pelicula`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contenido_comprado`
--
ALTER TABLE `contenido_comprado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contenido_comprado`
--
ALTER TABLE `contenido_comprado`
  ADD CONSTRAINT `contenido_comprado_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contenido_comprado_ibfk_2` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
