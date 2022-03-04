-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2022 a las 23:23:02
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `institucionedu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `carne_alumno` int(11) NOT NULL,
  `nombre_alumno` varchar(60) DEFAULT NULL,
  `direccion_alumno` varchar(60) DEFAULT NULL,
  `telefono_alumno` varchar(60) DEFAULT NULL,
  `email_alumno` varchar(60) DEFAULT NULL,
  `status_alumno` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosalumno`
--

CREATE TABLE `asignacioncursosalumno` (
  `carrera_cod` varchar(20) DEFAULT NULL,
  `sede_cod` varchar(20) DEFAULT NULL,
  `jornada_cod` varchar(20) DEFAULT NULL,
  `seccion_cod` varchar(60) DEFAULT NULL,
  `aula_cod` varchar(60) DEFAULT NULL,
  `curso_cod` varchar(60) DEFAULT NULL,
  `facultad_cod` varchar(30) DEFAULT NULL,
  `carne_alumno` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosmaestro`
--

CREATE TABLE `asignacioncursosmaestro` (
  `carrera_cod` varchar(20) DEFAULT NULL,
  `sede_cod` varchar(20) DEFAULT NULL,
  `jornada_cod` varchar(20) DEFAULT NULL,
  `seccion_cod` varchar(60) DEFAULT NULL,
  `aula_cod` varchar(60) DEFAULT NULL,
  `curso_cod` varchar(60) DEFAULT NULL,
  `codigo_maestro` varchar(60) NOT NULL,
  `facultad_cod` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `codigo_aula` int(11) NOT NULL,
  `nombre_aula` varchar(60) DEFAULT NULL,
  `estatus_aula` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `carrera_cod` varchar(60) DEFAULT NULL,
  `carrera_nom` varchar(60) DEFAULT NULL,
  `carrera_estat` varchar(20) DEFAULT NULL,
  `facultad_cod` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `codigo_curso` varchar(60) NOT NULL,
  `nombre_curso` varchar(60) DEFAULT NULL,
  `estatus_curso` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `facultad_cod` int(11) NOT NULL,
  `facultad_nom` varchar(60) DEFAULT NULL,
  `facultad_estat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

CREATE TABLE `jornadas` (
  `codigo_jornada` int(11) NOT NULL,
  `nombre_jornada` varchar(60) DEFAULT NULL,
  `estatus_jornada` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro`
--

CREATE TABLE `maestro` (
  `codigo_maestro` int(11) NOT NULL,
  `nombre_maestro` varchar(60) DEFAULT NULL,
  `direccion_maestro` varchar(60) DEFAULT NULL,
  `telefono_maestro` varchar(60) DEFAULT NULL,
  `email_maestro` varchar(60) DEFAULT NULL,
  `status_maestro` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `codigo_seccion` int(11) NOT NULL,
  `nombre_seccion` varchar(60) DEFAULT NULL,
  `estatus_seccion` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `codigo_sedes` int(11) NOT NULL,
  `nombre_sedes` varchar(60) DEFAULT NULL,
  `estatus_sedes` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`carne_alumno`);

--
-- Indices de la tabla `asignacioncursosalumno`
--
ALTER TABLE `asignacioncursosalumno`
  ADD PRIMARY KEY (`carne_alumno`);

--
-- Indices de la tabla `asignacioncursosmaestro`
--
ALTER TABLE `asignacioncursosmaestro`
  ADD PRIMARY KEY (`codigo_maestro`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`codigo_aula`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`facultad_cod`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codigo_curso`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`facultad_cod`);

--
-- Indices de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  ADD PRIMARY KEY (`codigo_jornada`);

--
-- Indices de la tabla `maestro`
--
ALTER TABLE `maestro`
  ADD PRIMARY KEY (`codigo_maestro`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`codigo_seccion`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`codigo_sedes`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `carne_alumno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `codigo_aula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `facultad_cod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  MODIFY `codigo_jornada` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `maestro`
--
ALTER TABLE `maestro`
  MODIFY `codigo_maestro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `codigo_seccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `codigo_sedes` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
