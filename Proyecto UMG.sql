-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 20:19:18
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
-- Base de datos: `umg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `carnet_alumno` varchar(15) NOT NULL,
  `nombre_alumno` varchar(45) DEFAULT NULL,
  `direccion_alumno` varchar(45) DEFAULT NULL,
  `telefono_alumno` varchar(45) DEFAULT NULL,
  `email_alumno` varchar(45) DEFAULT NULL,
  `estatus_alumno` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`carnet_alumno`, `nombre_alumno`, `direccion_alumno`, `telefono_alumno`, `email_alumno`, `estatus_alumno`) VALUES
('9959-23-1494', 'Andy Alfonso Garcia Lopez', 'Zona 18 colonia los alamos', '3021-9932', 'agarcial32@miumg.edu.gt', '1'),
('9959-23-1902', 'Oscar Emilio Morales Lemus', 'Zona 18 las tapias', '2290-9931', 'emiliom@miumg.edu.gt', '1'),
('9959-23-3390', 'Andre De Jesus Gonzales Camey', 'Zona 18 Pinares ', '9812-4412', 'andreG@miumg.edu.gt', '1'),
('9959-23-8821', 'Lilian Jeaneth Garcia', 'Jardines Del Norte', '2290-2011', 'JeanethGar@miumg.edu.gt', '1'),
('9959-23-8912', 'Elvia Patricia Catalan', 'Zona 18 colonia los alamos', '2260-9931', 'elviaC@miumg.edu.gt', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_cursos_estudiantes`
--

CREATE TABLE `asignacion_cursos_estudiantes` (
  `codigo_carrera` varchar(5) DEFAULT NULL,
  `codigo_sede` varchar(5) DEFAULT NULL,
  `codigo_jornada` varchar(5) DEFAULT NULL,
  `codigo_seccion` varchar(5) DEFAULT NULL,
  `codigo_aula` varchar(5) DEFAULT NULL,
  `codigo_curso` varchar(5) DEFAULT NULL,
  `carnet_alumno` varchar(15) DEFAULT NULL,
  `nota_asignacion_curso_alumnos` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `asignacion_cursos_estudiantes`
--

INSERT INTO `asignacion_cursos_estudiantes` (`codigo_carrera`, `codigo_sede`, `codigo_jornada`, `codigo_seccion`, `codigo_aula`, `codigo_curso`, `carnet_alumno`, `nota_asignacion_curso_alumnos`) VALUES
('09001', '9901', '0011', '001', 'g-005', '01S5', '9959-23-1494', 94.00),
('09002', '9901', '0022', '001', 'g-005', '02S5', '9959-23-1902', 82.00),
('09003', '9901', '0033', '001', 'g-005', '03S5', '9959-23-3390', 64.00),
('09004', '9901', '0044', '001', 'g-005', '04S5', '9959-23-8821', 78.00),
('09005', '9901', '0055', '001', 'g-005', '05S5', '9959-23-8912', 98.00),
('09001', '9901', '0011', '001', 'g-005', '01S5', '9959-23-1494', 94.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_cursos_maestros`
--

CREATE TABLE `asignacion_cursos_maestros` (
  `codigo_carrera` varchar(5) DEFAULT NULL,
  `codigo_sede` varchar(5) DEFAULT NULL,
  `codigo_jornada` varchar(5) DEFAULT NULL,
  `codigo_seccion` varchar(5) DEFAULT NULL,
  `codigo_aula` varchar(5) DEFAULT NULL,
  `codigo_curso` varchar(5) DEFAULT NULL,
  `codigo_maestro` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `asignacion_cursos_maestros`
--

INSERT INTO `asignacion_cursos_maestros` (`codigo_carrera`, `codigo_sede`, `codigo_jornada`, `codigo_seccion`, `codigo_aula`, `codigo_curso`, `codigo_maestro`) VALUES
('09001', '9901', '0011', '001', 'g-005', '01S5', '23-12'),
('09002', '9901', '0022', '001', 'g-005', '02S5', '23-73'),
('09003', '9901', '0033', '001', 'g-005', '03S5', '23-78'),
('09004', '9901', '0044', '001', 'g-005', '04S5', '23-83'),
('09005', '9901', '0055', '001', 'g-005', '05S5', '23-99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `codigo_aula` varchar(5) NOT NULL,
  `nombre_aula` varchar(45) DEFAULT NULL,
  `estatus_aula` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`codigo_aula`, `nombre_aula`, `estatus_aula`) VALUES
('g-005', '3005', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `codigo_carrera` varchar(5) NOT NULL,
  `nombre_carrera` varchar(45) DEFAULT NULL,
  `codigo_facultad` varchar(5) DEFAULT NULL,
  `estatus_carrera` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`codigo_carrera`, `nombre_carrera`, `codigo_facultad`, `estatus_carrera`) VALUES
('09001', 'Ingenieria En Sistemas', '9959', '1'),
('09002', 'Ingenieria En Software', '9959', '1'),
('09003', 'Ingenieria En Telecomunicaciones', '9959', '1'),
('09004', 'Ciencias de la Computación', '9959', '1'),
('09005', 'Licenciatura en Computación', '9959', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `codigo_curso` varchar(5) NOT NULL,
  `nombre_curso` varchar(45) DEFAULT NULL,
  `estatus_curso` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`codigo_curso`, `nombre_curso`, `estatus_curso`) VALUES
('01S5', 'Electronica Analogica', '1'),
('02S5', 'Emprendedores De Negocios', '1'),
('03S5', 'Estadistica II', '1'),
('04S5', 'Metodos Numericos', '1'),
('05S5', 'Programacion III', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `codigo_facultad` varchar(5) NOT NULL,
  `nombre_facultad` varchar(45) DEFAULT NULL,
  `estatus_facultad` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`codigo_facultad`, `nombre_facultad`, `estatus_facultad`) VALUES
('9959', 'Ingenieria En Sistemas y C.C', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

CREATE TABLE `jornadas` (
  `codigo_jornada` varchar(5) NOT NULL,
  `nombre_jornada` varchar(45) DEFAULT NULL,
  `estatus_jornada` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `jornadas`
--

INSERT INTO `jornadas` (`codigo_jornada`, `nombre_jornada`, `estatus_jornada`) VALUES
('0011', 'Matutina', '1'),
('0022', 'Nocturna', '1'),
('0033', 'Vespertina', '1'),
('0044', 'Sabatina', '1'),
('0055', 'Domingo', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `codigo_maestro` varchar(5) NOT NULL,
  `nombre_maestro` varchar(45) DEFAULT NULL,
  `direccion_maestro` varchar(45) DEFAULT NULL,
  `telefono_maestro` varchar(45) DEFAULT NULL,
  `email_maestro` varchar(45) DEFAULT NULL,
  `estatus_maestro` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`codigo_maestro`, `nombre_maestro`, `direccion_maestro`, `telefono_maestro`, `email_maestro`, `estatus_maestro`) VALUES
('23-12', 'Lilian Carrillo', 'Zona 4', '9832-1451', 'LiliCarrillo@miumg.edu.gt', '1'),
('23-73', 'Byron Morales', 'Zona 10', '5392-8313', 'ByronMorales@miumg.edu.gt', '1'),
('23-78', 'Alfonso Lopez', 'Zona 18', '8931-0392', 'AlfonsoL@miumg.edu.gt', '1'),
('23-83', 'Viviana Camey', 'Zona 6', '9913-4231', 'ViviCamey@miumg.edu.gt', '1'),
('23-99', 'Eduardo Florian', 'Zona 1', '2323-1222', 'Eflorian@miumg.edu.gt', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `codigo_seccion` varchar(5) NOT NULL,
  `nombre_seccion` varchar(45) DEFAULT NULL,
  `estatus_seccion` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`codigo_seccion`, `nombre_seccion`, `estatus_seccion`) VALUES
('001', 'A', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `codigo_sede` varchar(5) NOT NULL,
  `nombre_sede` varchar(45) DEFAULT NULL,
  `estatus_sede` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`codigo_sede`, `nombre_sede`, `estatus_sede`) VALUES
('9901', 'Portales', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`carnet_alumno`);

--
-- Indices de la tabla `asignacion_cursos_estudiantes`
--
ALTER TABLE `asignacion_cursos_estudiantes`
  ADD KEY `codigo_carrera` (`codigo_carrera`),
  ADD KEY `codigo_sede` (`codigo_sede`),
  ADD KEY `codigo_jornada` (`codigo_jornada`),
  ADD KEY `codigo_seccion` (`codigo_seccion`),
  ADD KEY `codigo_aula` (`codigo_aula`),
  ADD KEY `codigo_curso` (`codigo_curso`),
  ADD KEY `carnet_alumno` (`carnet_alumno`);

--
-- Indices de la tabla `asignacion_cursos_maestros`
--
ALTER TABLE `asignacion_cursos_maestros`
  ADD KEY `codigo_carrera` (`codigo_carrera`),
  ADD KEY `codigo_sede` (`codigo_sede`),
  ADD KEY `codigo_jornada` (`codigo_jornada`),
  ADD KEY `codigo_seccion` (`codigo_seccion`),
  ADD KEY `codigo_aula` (`codigo_aula`),
  ADD KEY `codigo_curso` (`codigo_curso`),
  ADD KEY `codigo_maestro` (`codigo_maestro`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`codigo_aula`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`codigo_carrera`),
  ADD KEY `codigo_facultad` (`codigo_facultad`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codigo_curso`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`codigo_facultad`);

--
-- Indices de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  ADD PRIMARY KEY (`codigo_jornada`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`codigo_maestro`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`codigo_seccion`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`codigo_sede`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacion_cursos_estudiantes`
--
ALTER TABLE `asignacion_cursos_estudiantes`
  ADD CONSTRAINT `asignacion_cursos_estudiantes_ibfk_1` FOREIGN KEY (`codigo_carrera`) REFERENCES `carreras` (`codigo_carrera`),
  ADD CONSTRAINT `asignacion_cursos_estudiantes_ibfk_2` FOREIGN KEY (`codigo_sede`) REFERENCES `sede` (`codigo_sede`),
  ADD CONSTRAINT `asignacion_cursos_estudiantes_ibfk_3` FOREIGN KEY (`codigo_jornada`) REFERENCES `jornadas` (`codigo_jornada`),
  ADD CONSTRAINT `asignacion_cursos_estudiantes_ibfk_4` FOREIGN KEY (`codigo_seccion`) REFERENCES `secciones` (`codigo_seccion`),
  ADD CONSTRAINT `asignacion_cursos_estudiantes_ibfk_5` FOREIGN KEY (`codigo_aula`) REFERENCES `aulas` (`codigo_aula`),
  ADD CONSTRAINT `asignacion_cursos_estudiantes_ibfk_6` FOREIGN KEY (`codigo_curso`) REFERENCES `cursos` (`codigo_curso`),
  ADD CONSTRAINT `asignacion_cursos_estudiantes_ibfk_7` FOREIGN KEY (`carnet_alumno`) REFERENCES `alumnos` (`carnet_alumno`);

--
-- Filtros para la tabla `asignacion_cursos_maestros`
--
ALTER TABLE `asignacion_cursos_maestros`
  ADD CONSTRAINT `asignacion_cursos_maestros_ibfk_1` FOREIGN KEY (`codigo_carrera`) REFERENCES `carreras` (`codigo_carrera`),
  ADD CONSTRAINT `asignacion_cursos_maestros_ibfk_2` FOREIGN KEY (`codigo_sede`) REFERENCES `sede` (`codigo_sede`),
  ADD CONSTRAINT `asignacion_cursos_maestros_ibfk_3` FOREIGN KEY (`codigo_jornada`) REFERENCES `jornadas` (`codigo_jornada`),
  ADD CONSTRAINT `asignacion_cursos_maestros_ibfk_4` FOREIGN KEY (`codigo_seccion`) REFERENCES `secciones` (`codigo_seccion`),
  ADD CONSTRAINT `asignacion_cursos_maestros_ibfk_5` FOREIGN KEY (`codigo_aula`) REFERENCES `aulas` (`codigo_aula`),
  ADD CONSTRAINT `asignacion_cursos_maestros_ibfk_6` FOREIGN KEY (`codigo_curso`) REFERENCES `cursos` (`codigo_curso`),
  ADD CONSTRAINT `asignacion_cursos_maestros_ibfk_7` FOREIGN KEY (`codigo_maestro`) REFERENCES `maestros` (`codigo_maestro`);

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`codigo_facultad`) REFERENCES `facultad` (`codigo_facultad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
