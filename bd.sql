-- Volcando estructura de base de datos para sinbed
DROP DATABASE IF EXISTS `sinbed`;
CREATE DATABASE IF NOT EXISTS `sinbed`;
USE `sinbed`;

-- Volcando estructura para tabla sinbed.docente
DROP TABLE IF EXISTS `docente`;
CREATE TABLE IF NOT EXISTS `docente` (
  `id_docente` int(11) NOT NULL AUTO_INCREMENT,
  `nom_docente` varchar(100) DEFAULT NULL,
  `carnet_docente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_docente`)
);

-- Volcando datos para la tabla sinbed.docente: 22 rows
DELETE FROM `docente`;
INSERT INTO `docente` (`id_docente`, `nom_docente`, `carnet_docente`) VALUES
	(1, 'Carlos Melendez', 1010),
	(2, 'Maria Guardado', 1011),
	(3, 'Manuel Iglesias', 1012),
	(4, 'Sofia Velasquez', 1013),
	(5, 'Jonathan Martinez', 1014),
	(6, 'Eugenia Mendoza', 1015),
	(7, 'Juan Perez', 1016),
	(8, 'Laura Escalante', 1017),
	(9, 'Diego Cortez', 1018),
	(10, 'Karla Torres', 1019),
	(11, 'Kevin Gomez', 1020),
	(12, 'Helena Murillo', 1021),
	(13, 'Hector Morataya', 1022),
	(14, 'Ines Aguirre', 1023),
	(15, 'Humberto Reyes', 1024),
	(16, 'Elena Jurado', 1025),
	(17, 'Jose Sorto', 1026),
	(18, 'Esperanza Cruz', 1027),
	(19, 'Julio Mena', 1028),
	(20, 'Patricia Carrillo', 1029),
	(21, 'Raul Arce', 1030),
	(22, 'Elisa Sandoval', 1031);

-- Volcando estructura para tabla sinbed.estado
DROP TABLE IF EXISTS `estado`;
CREATE TABLE IF NOT EXISTS `estado` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ;

-- Volcando datos para la tabla sinbed.estado: 2 rows
DELETE FROM `estado`;
INSERT INTO `estado` (`id_estado`, `estado`) VALUES
	(1, 'Activo'),
	(2, 'Inactivo');

-- Volcando estructura para tabla sinbed.evaluacion
DROP TABLE IF EXISTS `evaluacion`;
CREATE TABLE IF NOT EXISTS `evaluacion` (
  `id_evaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_materia` int(11) NOT NULL,
  `nombre_evaluacion` varchar(100) NOT NULL,
  `codigo_evaluacion` varchar(100) DEFAULT NULL,
  `ponderacion` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id_evaluacion`),
  KEY `id_materia` (`id_materia`)
);

-- Volcando datos para la tabla sinbed.evaluacion: 0 rows
DELETE FROM `evaluacion`;

-- Volcando estructura para tabla sinbed.grado
DROP TABLE IF EXISTS `grado`;
CREATE TABLE IF NOT EXISTS `grado` (
  `id_grado` int(11) NOT NULL AUTO_INCREMENT,
  `id_turno` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `anio` varchar(10) DEFAULT NULL,
  `codigo_grado` varchar(10) NOT NULL,
  `nom_grado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_grado`),
  KEY `id_turno` (`id_turno`),
  KEY `id_docente` (`id_docente`)
);

-- Volcando datos para la tabla sinbed.grado: 22 rows
DELETE FROM `grado`;
INSERT INTO `grado` (`id_grado`, `id_turno`, `id_docente`, `anio`, `codigo_grado`, `nom_grado`) VALUES
	(1, 1, 1, '2020', '1A', 'Primero A'),
	(2, 1, 2, '2020', '1B', 'Primero B'),
	(3, 1, 3, '2020', '2A', 'Segundo A'),
	(4, 1, 4, '2020', '2B', 'Segundo B'),
	(5, 1, 5, '2020', '3A', 'Tercero A'),
	(6, 1, 6, '2020', '3B', 'Tercero B'),
	(7, 1, 7, '2020', '4A', 'Cuarto A'),
	(8, 1, 8, '2020', '4B', 'Cuarto B'),
	(9, 1, 9, '2020', '5A', 'Quinto A'),
	(10, 1, 10, '2020', '5B', 'Quinto B'),
	(11, 1, 11, '2020', '6A', 'Sexto A'),
	(12, 1, 12, '2020', '6B', 'Sexto B'),
	(13, 1, 13, '2020', '7A', 'Septimo A'),
	(14, 1, 14, '2020', '7B', 'Septimo B'),
	(15, 1, 15, '2020', '8A', 'Octavo A'),
	(16, 1, 16, '2020', '8B', 'Octavo B'),
	(17, 1, 17, '2020', '9A', 'Noveno A'),
	(18, 1, 18, '2020', '9B', 'Noveno B'),
	(19, 1, 19, '2020', '1GA', 'Primero General A'),
	(20, 1, 20, '2020', '1GB', 'Primero General B'),
	(21, 1, 21, '2020', '2GA', 'Segundo General A'),
	(22, 1, 22, '2020', '2GB', 'Segundo General B');

-- Volcando estructura para tabla sinbed.grado_materia
DROP TABLE IF EXISTS `grado_materia`;
CREATE TABLE IF NOT EXISTS `grado_materia` (
  `id_gradoMateria` int(11) NOT NULL AUTO_INCREMENT,
  `id_grado` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_gradoMateria`),
  KEY `id_grado` (`id_grado`),
  KEY `id_materia` (`id_materia`),
  KEY `id_docente` (`id_docente`)
);

-- Volcando datos para la tabla sinbed.grado_materia: 162 rows
DELETE FROM `grado_materia`;
INSERT INTO `grado_materia` (`id_gradoMateria`, `id_grado`, `id_materia`, `id_docente`) VALUES
	(1, 1, 1, 1),
	(2, 1, 2, 1),
	(3, 1, 3, 1),
	(4, 1, 4, 1),
	(5, 1, 5, 15),
	(6, 1, 6, 7),
	(7, 1, 7, 20),
	(8, 2, 1, 2),
	(9, 2, 2, 2),
	(10, 2, 3, 2),
	(11, 2, 4, 2),
	(12, 2, 5, 22),
	(13, 2, 6, 18),
	(14, 2, 7, 19),
	(15, 3, 1, 3),
	(16, 3, 2, 3),
	(17, 3, 3, 3),
	(18, 3, 4, 3),
	(19, 3, 5, 8),
	(20, 3, 6, 21),
	(21, 3, 7, 20),
	(22, 4, 1, 4),
	(23, 4, 2, 4),
	(24, 4, 3, 4),
	(25, 4, 4, 4),
	(26, 4, 5, 14),
	(27, 4, 6, 21),
	(28, 4, 7, 16),
	(29, 5, 1, 5),
	(30, 5, 2, 5),
	(31, 5, 3, 5),
	(32, 5, 4, 5),
	(33, 5, 5, 19),
	(34, 5, 6, 17),
	(35, 5, 7, 9),
	(36, 6, 1, 6),
	(37, 6, 2, 6),
	(38, 6, 3, 6),
	(39, 6, 4, 6),
	(40, 6, 5, 20),
	(41, 6, 6, 17),
	(42, 6, 7, 9),
	(43, 7, 1, 7),
	(44, 7, 2, 7),
	(45, 7, 3, 8),
	(46, 7, 4, 8),
	(47, 7, 6, 19),
	(48, 7, 6, 17),
	(49, 7, 7, 10),
	(50, 8, 1, 7),
	(51, 8, 2, 7),
	(52, 8, 3, 8),
	(53, 8, 4, 8),
	(54, 8, 5, 12),
	(55, 8, 6, 22),
	(56, 8, 7, 13),
	(57, 9, 1, 9),
	(58, 9, 2, 9),
	(59, 9, 3, 10),
	(60, 9, 4, 10),
	(61, 9, 5, 18),
	(62, 9, 6, 16),
	(63, 9, 7, 15),
	(64, 10, 1, 9),
	(65, 10, 2, 9),
	(66, 10, 3, 10),
	(67, 10, 4, 10),
	(68, 10, 5, 21),
	(69, 10, 6, 16),
	(70, 10, 7, 4),
	(71, 11, 1, 11),
	(72, 11, 2, 11),
	(73, 11, 3, 12),
	(74, 11, 4, 12),
	(75, 11, 5, 18),
	(76, 11, 6, 5),
	(77, 11, 7, 14),
	(78, 12, 1, 11),
	(79, 12, 2, 11),
	(80, 12, 3, 12),
	(81, 12, 4, 12),
	(82, 12, 5, 2),
	(83, 12, 6, 3),
	(84, 12, 7, 14),
	(85, 13, 1, 13),
	(86, 13, 2, 13),
	(87, 13, 3, 14),
	(88, 13, 4, 14),
	(89, 13, 5, 15),
	(90, 13, 6, 3),
	(91, 13, 7, 10),
	(92, 14, 1, 13),
	(93, 14, 2, 13),
	(94, 14, 3, 14),
	(95, 14, 4, 14),
	(96, 14, 5, 6),
	(97, 14, 6, 3),
	(98, 14, 7, 12),
	(99, 15, 1, 15),
	(100, 15, 2, 15),
	(101, 15, 3, 16),
	(102, 15, 4, 16),
	(103, 15, 5, 22),
	(104, 15, 6, 1),
	(105, 15, 7, 4),
	(106, 16, 1, 15),
	(107, 16, 2, 15),
	(108, 16, 3, 16),
	(109, 16, 4, 16),
	(110, 16, 5, 8),
	(111, 16, 6, 1),
	(112, 16, 7, 4),
	(113, 17, 1, 17),
	(114, 17, 2, 17),
	(115, 17, 3, 18),
	(116, 17, 4, 18),
	(117, 17, 5, 8),
	(118, 17, 6, 13),
	(119, 17, 7, 7),
	(120, 18, 1, 17),
	(121, 18, 2, 17),
	(122, 18, 3, 18),
	(123, 18, 4, 18),
	(124, 18, 5, 11),
	(125, 18, 6, 2),
	(126, 18, 7, 7),
	(127, 19, 1, 19),
	(128, 19, 2, 19),
	(129, 19, 3, 20),
	(130, 19, 4, 20),
	(131, 19, 5, 5),
	(132, 19, 6, 2),
	(133, 19, 7, 6),
	(134, 19, 8, 11),
	(135, 19, 9, 8),
	(136, 20, 1, 19),
	(137, 20, 2, 19),
	(138, 20, 3, 20),
	(139, 20, 4, 20),
	(140, 20, 5, 5),
	(141, 20, 6, 2),
	(142, 20, 7, 6),
	(143, 20, 8, 11),
	(144, 20, 9, 12),
	(145, 21, 1, 21),
	(146, 21, 2, 21),
	(147, 21, 3, 22),
	(148, 21, 4, 22),
	(149, 21, 5, 9),
	(150, 21, 6, 3),
	(151, 21, 7, 6),
	(152, 21, 8, 13),
	(153, 21, 9, 4),
	(154, 22, 1, 21),
	(155, 22, 2, 21),
	(156, 22, 3, 22),
	(157, 22, 4, 22),
	(158, 22, 5, 7),
	(159, 22, 6, 10),
	(160, 22, 7, 5),
	(161, 22, 8, 1),
	(162, 22, 9, 1);

-- Volcando estructura para tabla sinbed.materia
DROP TABLE IF EXISTS `materia`;
CREATE TABLE IF NOT EXISTS `materia` (
  `id_materia` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_materia` varchar(10) NOT NULL,
  `nombre_materia` varchar(30) NOT NULL,
  PRIMARY KEY (`id_materia`)
);

-- Volcando datos para la tabla sinbed.materia: 11 rows
DELETE FROM `materia`;
INSERT INTO `materia` (`id_materia`, `codigo_materia`, `nombre_materia`) VALUES
	(1, 'LNG', 'Lenguaje'),
	(2, 'SOC', 'Sociales'),
	(3, 'MAT', 'Matematica'),
	(4, 'CYS', 'Ciencia y Salud'),
	(5, 'ART', 'Artistica'),
	(6, 'ING', 'Ingles'),
	(7, 'INF', 'Informatica'),
	(8, 'EDUF', 'Educacion Fisica'),
	(9, 'OPV', 'Orientacion para la vida'),
	(10, 'COS', 'Costos'),
	(11, 'CONTA', 'Contabilidad');

-- Volcando estructura para tabla sinbed.matricula
DROP TABLE IF EXISTS `matricula`;
CREATE TABLE IF NOT EXISTS `matricula` (
  `id_matricula` int(11) NOT NULL AUTO_INCREMENT,
  `carnet` varchar(20) DEFAULT NULL,
  `nom_alumno` varchar(100) NOT NULL,
  `apellido_alumno` varchar(100) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `departamento` varchar(100) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `f_nacimiento` date NOT NULL,
  `tel_casa` varchar(20) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `nom_madre` varchar(50) DEFAULT NULL,
  `correo_madre` varchar(50) DEFAULT NULL,
  `trab_madre` varchar(50) DEFAULT NULL,
  `prof_madre` varchar(50) DEFAULT NULL,
  `tel_madre` varchar(20) DEFAULT NULL,
  `nom_padre` varchar(50) DEFAULT NULL,
  `correo_padre` varchar(50) DEFAULT NULL,
  `trab_padre` varchar(50) DEFAULT NULL,
  `prof_padre` varchar(50) DEFAULT NULL,
  `tel_padre` varchar(20) DEFAULT NULL,
  `nom_tutor` varchar(50) DEFAULT NULL,
  `correo_tutor` varchar(50) DEFAULT NULL,
  `trab_tutor` varchar(50) DEFAULT NULL,
  `prof_tutor` varchar(50) DEFAULT NULL,
  `tel_tutor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_matricula`),
  KEY `id_grado` (`id_grado`),
  KEY `id_estado` (`id_estado`)
);

-- Volcando datos para la tabla sinbed.matricula: 0 rows
DELETE FROM `matricula`;

-- Volcando estructura para tabla sinbed.permiso
DROP TABLE IF EXISTS `permiso`;
CREATE TABLE IF NOT EXISTS `permiso` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `rol` int(11) NOT NULL,
  `recurso` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `rol` (`rol`),
  KEY `recurso` (`recurso`)
);

-- Volcando datos para la tabla sinbed.permiso: 0 rows
DELETE FROM `permiso`;

-- Volcando estructura para tabla sinbed.recurso
DROP TABLE IF EXISTS `recurso`;
CREATE TABLE IF NOT EXISTS `recurso` (
  `id_recurso` int(11) NOT NULL AUTO_INCREMENT,
  `nom_recurso` varchar(100) DEFAULT NULL,
  `recurso_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id_recurso`)
);

-- Volcando datos para la tabla sinbed.recurso: 0 rows
DELETE FROM `recurso`;

-- Volcando estructura para tabla sinbed.registro_academico
DROP TABLE IF EXISTS `registro_academico`;
CREATE TABLE IF NOT EXISTS `registro_academico` (
  `id_matricula` int(11) DEFAULT NULL,
  `id_evaluacion` int(11) DEFAULT NULL,
  `id_trimestre` int(11) DEFAULT NULL,
  `id_gradoMateria` int(11) DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `anio` date DEFAULT NULL,
  KEY `id_matricula` (`id_matricula`),
  KEY `id_evaluacion` (`id_evaluacion`),
  KEY `id_trimestre` (`id_trimestre`),
  KEY `id_gradoMateria` (`id_gradoMateria`),
  KEY `id_docente` (`id_docente`)
);

-- Volcando datos para la tabla sinbed.registro_academico: 0 rows
DELETE FROM `registro_academico`;

-- Volcando estructura para tabla sinbed.rol
DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nom_rol` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
);

-- Volcando datos para la tabla sinbed.rol: 4 rows
DELETE FROM `rol`;
INSERT INTO `rol` (`id_rol`, `nom_rol`) VALUES
	(1, 'Docente'),
	(2, 'Registro Academico'),
	(3, 'Administracion'),
	(4, 'Coordinación Educativa');

-- Volcando estructura para tabla sinbed.trimestre
DROP TABLE IF EXISTS `trimestre`;
CREATE TABLE IF NOT EXISTS `trimestre` (
  `id_trimestre` int(11) NOT NULL AUTO_INCREMENT,
  `nom_trimestre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_trimestre`)
);

-- Volcando datos para la tabla sinbed.trimestre: 4 rows
DELETE FROM `trimestre`;
INSERT INTO `trimestre` (`id_trimestre`, `nom_trimestre`) VALUES
	(1, 'Periodo 1'),
	(2, 'Periodo 2'),
	(3, 'Periodo 3'),
	(4, 'Periodo 4');

-- Volcando estructura para tabla sinbed.turno_grado
DROP TABLE IF EXISTS `turno_grado`;
CREATE TABLE IF NOT EXISTS `turno_grado` (
  `id_turno` int(11) NOT NULL AUTO_INCREMENT,
  `nom_turno` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_turno`)
) ;

-- Volcando datos para la tabla sinbed.turno_grado: 2 rows
DELETE FROM `turno_grado`;
INSERT INTO `turno_grado` (`id_turno`, `nom_turno`) VALUES
	(1, 'Matutino'),
	(2, 'Vespertino');

-- Volcando estructura para tabla sinbed.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `rol` int(11) NOT NULL,
  `nom_usuario` varchar(100) DEFAULT NULL,
  `pass_usuario` varchar(255) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `rol` (`rol`)
);

-- Volcando datos para la tabla sinbed.usuario: 4 rows
DELETE FROM `usuario`;
INSERT INTO `usuario` (`id_usuario`, `rol`, `nom_usuario`, `pass_usuario`) VALUES
	(1, 3, 'admin', '$2y$12$fkVxGNg2FilMcVZZYGmpUeQwcTmsbjC8Gw8RgMEXgmoUc.v7vJJzK'),
	(2, 1, 'docente', 'docente'),
	(3, 2, 'registro', 'RA'),
	(4, 4, 'coordinacion', 'CE');
