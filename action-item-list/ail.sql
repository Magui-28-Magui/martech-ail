-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 11:10 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ail`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `detailed_status` text NOT NULL,
  `department_id` int(11) NOT NULL,
  `problem` text NOT NULL,
  `action` text NOT NULL,
  `date` date NOT NULL,
  `ecd` date NOT NULL,
  `completed_date` date NOT NULL,
  `completed` int(1) NOT NULL,
  `extension` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `meeting_id`, `user_id`, `status_id`, `detailed_status`, `department_id`, `problem`, `action`, `date`, `ecd`, `completed_date`, `completed`, `extension`) VALUES
(12, 1, 0, 4, '', 0, 'Implementar', 'Probar el software AIL', '2019-06-07', '2019-06-07', '2019-08-12', 0, 0),
(13, 2, 0, 4, 'Esto era una prueba. ', 0, 'prueba ', 'mejora1', '2019-07-24', '2019-07-25', '2019-08-12', 0, 0),
(14, 3, 0, 1, 'Platos de impresiÃ³n de ensamble del tercer turno en muy mala calidad', 0, 'Platos de ImpresiÃ³n', 'El Ing. De calidad del Ã¡rea se presentarÃ¡ en todos los turnos a verificar condiciones de los platos de impresiÃ³n en el Ã¡rea y sugerencias de personal. ', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(15, 3, 0, 1, 'Personal de limpieza insuficiente en el tercer turno.', 0, 'Personal de limpieza insuficiente en el 3er turno.', 'Completar la matricula de Auxiliares de limpieza por parte de RH', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(16, 3, 0, 1, 'Que una de las rutas Rutas 37 o 38 se desvÃ­e por  la calle Roa (ya hay ruta por ahi por la maÃ±ana y tarde). Son 12 personas que se beneficiarÃ¡n del cambio (de las rutas 37, 38 y 33) â€“ Griselda Amarillas lo viÃ³ con Rene Sanchez y se quedÃ³ en espera de respuesta', 0, 'Ruta 37 y/o 38', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(17, 3, 0, 1, 'Las fixturas para hacer el trimming en tipping no funcionan o no estÃ¡n a la mano las correctas para cada numero de parte.', 0, 'Fixturas', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(18, 3, 0, 1, 'Fondo y vales- causa de fuga de personal', 0, 'Vales y fondo de ahorro', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(19, 3, 0, 1, 'Descuento de vales de puntualidad y asistencia - no descontar si se compensa el tiempo o si se pide permiso', 0, 'No quitar prestaciones por permisos.', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(20, 3, 0, 1, 'Renovar fotos de la base de recursos humanos (al menos una vez al aÃ±o)', 0, 'RenovaciÃ³n de fotos del personal', 'Mandar un correo informativo y poner en los pizarrones de la TIER que todo el personal que quiera renovar su foto, se puede acercar a RH para tomarse una nueva.', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(21, 3, 0, 1, 'Sigue piso resbaloso en ST y en el Ã¡rea de drilles - porque quitaron los conos?', 0, 'Piso resbaloso en ST', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(22, 3, 0, 1, 'Usar eMaintenance para requerir servicios correctivos de mantenimiento o necesidades de edificio.', 0, 'E-maintenance para servicios de Mantenimiento.', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(23, 3, 0, 1, 'Las mÃ¡quinas para secarte las manos en los baÃ±os, jalan el aire con las eses fecales y es antihigiÃ©nico. ', 0, 'Secadores de aire', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(24, 3, 0, 1, 'En la medida de lo posible avisar cuando se tenga alguna notificaciÃ³n de CESPM por mantenimiento en el agua de uso. El departamento de calidad tienen que tomar las medidas necesarias, asÃ­ como otros departamentos involucrados.  ', 0, 'Notificaciones de CESPM', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(25, 3, 0, 1, 'Control de plagas , se inspeccionaron unos kits en planta 3 y tenÃ­an cochitos, favor de aumentar la frecuencia en fumigaciones, tambiÃ©n el Ã¡rea de comedores, con frecuencia salen cucarachitas entre los microondas. ', 0, 'Control de plagas', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(26, 3, 0, 1, 'Colocar cortinas de plÃ¡stico en la entrada de almacÃ©n de planta 4, al momento de descargar material se meten muchas moscas (tomar referencia de planta 3). ', 0, 'AlmacÃ©n de planta 4', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(27, 3, 0, 1, 'Los lunes por la maÃ±ana se reciben muy sucios los baÃ±os en Markel, favor de asignar a una persona que los limpie a las 6 am y que la menos los revisen 2 veces al dÃ­a para retirar papeles, limpiar piso, etc, una de las observaciones con frecuencia fue que en los baÃ±os no habÃ­a mucha atenciÃ³n del personal de limpieza. Verificar con seguridad quien usa estos baÃ±os durante el fin de semana. ', 0, 'Limpieza de baÃ±os planta 4', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(28, 3, 0, 1, 'En los baÃ±os de hombres de planta 3 constantemente esta muy lleno el bote de basura, pedir a la seÃ±ora de limpieza que saque papeles con mas frecuencia. La sugerencia inicial fue que se pusiera un letrero para tirar el papel por el W.C pero los drenajes de MÃ©xico no estÃ¡n diseÃ±ados para esta practica, terminarÃ­amos saturando nuestro propio drenaje. Usar botes con tapa en los baÃ±os si no se puede tirar papel en el WC.', 0, 'BaÃ±os de hombres planta 3', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(29, 3, 0, 1, 'Limpieza de comedor , cuando limpian el comedor suben las sillas a la mesa , dejar de hacer esta practica ya que las sillas estÃ¡n sucias y ensucian la superficie de la mesa.  ', 0, 'Limpieza en comedores', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(30, 3, 0, 1, 'Extender el programa de 5s a bodega 5, estÃ¡ muy desordenado el almacÃ©n y no se sabe que hay y es un desperdicio de espacio. Publicar inventario de equipo disponible por departamento en esa Ã¡rea. Buscar desocupar o disposicionar con una frecuencia definida.', 0, 'AlmacÃ©n Planta 5', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(31, 3, 0, 1, 'Hacer limpieza profunda de los refrigeradores al menos una vez por semana, tirando lo que se deje. ', 0, 'Limpieza de refrigeradores en comedor.', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(32, 3, 0, 1, 'Asegurar que el personal de nuevo ingreso tiene lugar y equipo asignado. Hacer referencia al procedimiento aplicable por favor.\r\n- hacer checklist cuando se contrata a alguien\r\n', 0, 'Check list de contrataciones', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(33, 3, 0, 1, 'Bajas - avisar a IT.  Hacer referencia al procedimiento interno aplicable por favor.', 0, 'Bajas de usuarios', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(34, 3, 0, 1, 'Ãrea de entrenamiento - que el personal no llegue directo a piso, para que no se sientan presionados y hagan mejor trabajo.', 0, 'Falta de entrenamiento a nuevo personal', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(35, 3, 0, 1, 'Poner un Ã¡rea afuera para las personas que vienen a solicitar empleo, poner agua en las casetas y un Ã¡rea de sillas para las personas nuevas. ', 0, 'No hay Ã¡rea para informaciÃ³n de vacantes.', '', '2019-08-12', '2019-08-16', '0000-00-00', 0, 0),
(36, 3, 0, 3, 'En los baÃ±os personal administrativo sale sin lavarse las manos, reforzar las campaÃ±as ! . REFORZAR CAMPAÃ‘A  DE HIGIENE (Correo y tableros) 8/28', 0, 'Falta de higiene en manos.', ' REFORZAR CAMPAÃ‘A  DE HIGIENE (Correo y tableros)', '2019-08-12', '2019-08-28', '0000-00-00', 0, 0),
(37, 18, 0, 1, '8/8/19: Quote sent today for approval. PO request will be sent, to be processed under IT budget.\r\nLeandro to coordinate installation with Maintenance.\r\n6/13/19: Pending status.\r\n12/13/18: Pending follow up meeting with phone system supplier after required information is provided by Leandro\r\nCarolina verificarÃ¡ con Mike la proxima semana las opciones que el recomienda para el sistema de audio (Tracy recomendÃ³ preguntar a MIke su opiniÃ³n)\r\n7/5/18: Still pending to complete quote - to be included in 2019 budget\r\n1/22/18: $19K, waiting for a second quote\r\n11/27/17: Quote requested to Leandro to include in FY18 budget\r\nNeed to improve work environment and to have the option to page personnel - EHS best practice', 0, 'Paying system', 'Install paging system using existing telephone equipment.', '2019-08-12', '2019-08-30', '0000-00-00', 0, 0),
(38, 18, 0, 4, '', 0, 'wIFI', 'Install WIFI in the production areas', '2019-08-12', '2019-08-30', '2019-08-12', 0, 0),
(39, 18, 0, 1, 'Need internet access in the production areas for the Andon and eMaintenance systems', 0, 'WIFI', 'Install WIFI in the production areas', '2019-08-12', '2019-08-30', '0000-00-00', 0, 0),
(40, 18, 0, 1, 'Information shared in the intranet page. Leandro will send an e-mail to inform the support personnel the link with instructions', 0, 'Conference call', 'Communicate all personnel the diferent options we have for conference calls/meetings and how to use them (order of preference: phone conference, *408 and Goto Meeting)', '2019-08-12', '2019-08-30', '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecd`
--

CREATE TABLE `ecd` (
  `id` int(11) NOT NULL,
  `ecd` date NOT NULL,
  `action_id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecd`
--

INSERT INTO `ecd` (`id`, `ecd`, `action_id`, `meeting_id`) VALUES
(1, '2019-08-16', 36, 3);

-- --------------------------------------------------------

--
-- Table structure for table `meeting_department`
--

CREATE TABLE `meeting_department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meeting_department`
--

INSERT INTO `meeting_department` (`id`, `department`) VALUES
(1, 'Ingenieria  Engineering'),
(4, 'Calidad  Quality'),
(5, 'Cadena de Suministro  Supply Chain'),
(6, 'Operaciones de produccion   Production Operations'),
(7, 'Logistica  Logistics'),
(8, 'Seguridad e Higiene  EHS'),
(9, 'Finanzas  Finance'),
(10, 'Mejora Continua  Lean'),
(11, 'RH  HR'),
(12, 'Gestion de Programas  Program Management'),
(13, 'Customer Service'),
(14, 'Maintenance'),
(15, 'Document Control'),
(16, 'Planning'),
(17, 'Information Technologies'),
(18, 'Buyer'),
(19, 'Gestion de Demanda');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_name`
--

CREATE TABLE `meeting_name` (
  `id` int(11) NOT NULL,
  `meeting_name` varchar(255) NOT NULL,
  `manager_only` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meeting_name`
--

INSERT INTO `meeting_name` (`id`, `meeting_name`, `manager_only`) VALUES
(1, 'Staff Managers meeting actions', 1),
(2, 'Skip level ', 0),
(3, 'ALL HANDS', 0),
(4, 'Quality Staff meeting actions', 0),
(5, 'Supply Chain Staff meeting actions', 0),
(6, 'Engineering Staff meeting actions', 0),
(7, 'Operations Staff meetings actions', 0),
(8, 'Tier 2  yyy', 0),
(9, 'Tier 2  xxx', 0),
(10, 'Tier 3   Plant 1', 0),
(11, 'Tier 3   Plant 2', 0),
(12, 'Tier 3   Plant 3', 0),
(13, 'VSM Long Term', 0),
(14, 'Kaizen Long Term', 0),
(15, 'Junta mensual de Supervisores', 0),
(16, 'EHS Gemba and check lists', 0),
(18, 'IT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `responsible`
--

CREATE TABLE `responsible` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `lead` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responsible`
--

INSERT INTO `responsible` (`id`, `user_id`, `action_id`, `meeting_id`, `lead`) VALUES
(38, 21, 12, 1, 1),
(39, 34, 12, 1, 0),
(41, 114, 14, 3, 0),
(42, 89, 15, 3, 0),
(43, 217, 16, 3, 0),
(44, 114, 17, 3, 0),
(45, 217, 18, 3, 0),
(46, 217, 19, 3, 0),
(47, 217, 20, 3, 0),
(48, 205, 21, 3, 0),
(49, 89, 22, 3, 0),
(50, 89, 23, 3, 0),
(51, 89, 24, 3, 0),
(52, 89, 25, 3, 0),
(53, 89, 26, 3, 0),
(54, 89, 27, 3, 0),
(55, 89, 28, 3, 0),
(56, 89, 29, 3, 0),
(57, 89, 30, 3, 0),
(58, 89, 31, 3, 0),
(59, 217, 32, 3, 0),
(60, 217, 33, 3, 0),
(61, 217, 34, 3, 0),
(62, 217, 35, 3, 0),
(63, 217, 36, 3, 0),
(64, 218, 37, 18, 0),
(65, 218, 38, 18, 0),
(66, 218, 39, 18, 0),
(67, 218, 40, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'Abierto  Open'),
(2, 'Se mantiene en marcha  To be on going'),
(3, 'En proceso  In progress'),
(4, 'Cerrado  Done');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `fecha` date NOT NULL,
  `user_nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_puesto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_numero` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `user_telefono` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `isadmin` int(1) NOT NULL,
  `staff_manager` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password_hash`, `user_email`, `fecha`, `user_nombre`, `user_apellido`, `user_puesto`, `user_numero`, `user_telefono`, `department_id`, `isadmin`, `staff_manager`) VALUES
(21, 'jgomez', '$2y$10$8xoAj3no7DSsRbLtbjCBsenRtFfLrkcSSq4Xs0IOQDoarhlJeWvZq', 'jgomez@martechmedical.com', '2018-08-09', 'Jose Luis', 'Gomez Cecena', 'software', '43044', '(687) 259-4318', 10, 1, 0),
(22, 'gabriel', '$2y$10$7yySqdF22Gw/Ipp/9QPzG.Xrhul1W6SxNjx6CgrDT5UMy7G2lQtvG', 'gabriel@martechmedical.com', '2018-08-10', 'Gabriel ', 'Perez Mendez', 'gerente produccion', '1012', '', 6, 1, 0),
(23, 'esepulveda', '$2y$10$0LeYHKh9r3Flf.UHUdCHougBrStxqiNZbhLQ15JDvb0ZQS6l4TOwi', 'esepulveda@martechmedical.com', '2018-08-10', 'Eduardo ', 'Sepulveda', 'gerente produccion', '2', '', 6, 0, 0),
(24, 'teresa', '$2y$10$B23H38GM3R4RT2NaBBuLIuL8Vlo/5LFbvd1Zv4Zn8jyXgZAXR1Kd2', 'teresa@martechmedical.com', '2018-08-10', 'Teresa ', 'Cervantes', 'gerente produccion', '3', '', 6, 0, 0),
(31, 'fnava', '$2y$10$mHKN.VuPbiYPujSWnWDvieZzQc67LdZKoKRL7VARgh7O/ROxNpn/2', 'fnava@martechmedical.com', '2018-08-21', 'Edmundo', 'Nava', 'gerente operaciones', '1285', '', 6, 0, 0),
(34, 'avalle', '$2y$10$aIG3lNYLFIO.1Z6SaOrNFeeANalLsteN8P9rtn25N70a4VGXrPoxK', 'avalle@martechmedical.com', '2018-08-28', 'Anabel', 'Valle', 'gerente planta', '78954', '(686) 262-7297', 12, 1, 1),
(42, 'sruiz', '$2y$10$tsBcS3jBbsyqYQ7tYrGvcOD6TN5L9rYCKXJp3BWBMN2K881NqW0WC', 'sruiz@martechmedical.com', '2018-10-03', 'Saul ', 'Ruiz Lopez', 'maquinas', '28885', '', 6, 0, 0),
(43, 'vvalenzuela', '$2y$10$RHt6SwA/9rY4LgAvAadtqe8Gw1a1t7/gncMjnpRJFmGLgoJta1ty2', 'vvalenzuela@martechmedical.com', '2018-10-05', 'Victor', 'Valenzuela', 'materiales', '45678', '(686) 316-9232', 5, 0, 0),
(46, 'cvillalobos', '$2y$10$qxKKgW7wui1j3nuD/5UuYufMlvJb5ZvIsCkkyDzp7T709ZNrxL/pa', 'cvillalobos@martechmedical.com', '2018-10-15', 'Cristina ', 'Villalobos de la Cruz', 'supervisor', '15027', '', 6, 0, 0),
(51, 'bchacon', '$2y$10$47IQP0y7gyzxmFI9KLbkcedlZF8HpW9JaQVUUtENTFGzyTEyXD/wu', 'bchacon@martechmedical.com', '2018-11-19', 'Benjamin', 'Chacon Acevedo', 'supervisor', '42649', '', 6, 0, 0),
(57, 'azazueta', '$2y$10$r1d6oIX38AUGxZ5DmiSsJusQUfQaFjyzOV1afDFuvqpOtOxBbcRLW', 'azazueta@martechmedical.com', '2018-11-19', 'Armando', 'Moreno Zazueta', 'supervisor', '40951', '', 6, 0, 0),
(60, 'mmeza', '$2y$10$SPuksy1HVTAHwLRpn3SS0.i6KluXHLf3lzdGUuZGR/MdJ8VxB2gL6', 'mmeza@martechmedical.com', '2018-11-19', 'Martha Elena', 'Meza Murgos', 'supervisor', '21519', '', 6, 0, 0),
(69, 'aluciano', '$2y$10$O4kdeU0wM/ejKdJL1q8APuwuVqf1Ew1XlrtGw7z1jktZQxDKUckG.', 'aluciano@martechmedical.com', '2018-11-26', 'Anita ', 'Luciano', 'supervisor', '16303', '', 6, 0, 0),
(88, 'jcovarrubias', '$2y$10$Iua.vqLCBF1ZrxzKmKxmce9IlLPfPclDRRzAaetqXNvbn1sjok5N2', 'jcovarrubias@martechmedical.com', '0000-00-00', 'Jose Hiram', 'Covarrubias Magana', '', '', '', 6, 0, 0),
(89, 'jruiz', '$2y$10$0o9Wqzmssm6VSdYXpK6HAu2YDUxQ1xEq2YF9rBOf.1gtSsvEavwd.', 'jruiz@martechmedical.com', '0000-00-00', 'Jesus', 'Ruiz', '', '', '', 6, 0, 0),
(90, 'msalazar', '$2y$10$g4OijTNlaiBWqNfgp7Kw1uyIlVQjqfTGyoqNeUoTTDeBL9.2CoFIe', 'msalazar@martechmedical.com', '0000-00-00', 'Myrna Araceli', 'Salazar Contreras', '', '', '', 10, 1, 0),
(91, 'jmoreno', '$2y$10$CGQ.SMWZrY/Egmxv.ynfOuanjGhEM1Ud/Dgok8LqferS10eKzIkO6', 'jmoreno@martechmedical.com', '0000-00-00', 'Jesus Manuel', 'Garcia Moreno', '', '', '', 6, 0, 0),
(92, 'czepeda', '$2y$10$ynLjr0MWkyTNP4cX3KgWnOrSnRIVj..Zuo5CbElCw5R0iXyr3kg6G', 'czepeda@martechmedical.com', '0000-00-00', 'Carlos', 'Zepeda', '', '', '', 1, 0, 0),
(93, 'asiqueiros', '$2y$10$1tU/opS3ZBi9deg6ysgffOlRvczsO2xHdHruWBzDcK9Kx/W0t3M1m', 'asiqueiros@martechmedical.com', '0000-00-00', 'Aaron', 'Siqueiros Villa', '', '', '', 1, 0, 0),
(94, 'asoto', '$2y$10$tMMjCgEyz1kUb5niTgIAq.Yf3VyJ0u0OW2lL0.JjG1F./v07CdjWy', 'asoto@martechmedical.com', '0000-00-00', 'Adriana', 'Soto', '', '', '', 12, 0, 0),
(95, 'azamora', '$2y$10$QFos2zLl8RnVgfjRLXwmMuAWg641QHI.oAd3eF0mrdXTNLhw8Rkry', 'azamora@martechmedical.com', '0000-00-00', 'Adriana ', 'Zamora Lopez', '', '', '', 1, 0, 0),
(96, 'acuadras', '$2y$10$h51ZtjRkFwqR.9PCKj7PsOAv6gC/yePgiKiCQ/MMfbMtDFEiQjwmW', 'acuadras@martechmedical.com', '0000-00-00', 'Alan Adrian', 'Cuadras Morales', '', '', '', 1, 0, 0),
(97, 'acastro', '$2y$10$JDMc.2sMBIuMzV.wEupBr.Slw5I9rxTQrtu7oOQvBPMTpBsmp5LDq', 'acastro@martechmedical.com', '0000-00-00', 'Alba', 'Castro', '', '', '', 4, 0, 0),
(98, 'aarizaga', '$2y$10$s5CmyVYVhgerMSmMAKTTCucqJ8ZWectmutu1DOsByuOWTvOPby98K', 'aarizaga@martechmedical.com', '0000-00-00', 'Alejandro ', 'Arizaga', '', '', '', 1, 0, 0),
(99, 'avaldez', '$2y$10$0W6IxtmrCjQsWQid0fWkyuIXZnmFDFM8FU/N0LrnzOrvQzQtrCI4u', 'avaldez@martechmedical.com', '0000-00-00', 'Alejandro', 'Lau Valdez', '', '', '', 1, 0, 0),
(100, 'aramirez', '$2y$10$6lBkGBJnS4XSQNRmCu1VzeJlAEu3UyXuxW.B8o.Du/ljPBZisUU0S', 'aramirez@martechmedical.com', '0000-00-00', 'Alejandro', 'Ramirez Villa', '', '', '', 1, 0, 0),
(101, 'amunoz', '$2y$10$MjGiQzLrq6DUGarq953ke.LH.Qbq121KJEU3XqJ2WEpqnpxJqi7UK', 'amunoz@martechmedical.com', '0000-00-00', 'Alejandro Roberto ', 'Munoz Mendoza', '', '', '', 1, 0, 0),
(102, 'asilva', '$2y$10$frxYNFHraQg6aF7d6eH8suBAjqtSnobWO4vBkV18ds1ROgcIYbSZO', 'asilva@martechmedical.com', '0000-00-00', 'Alejandro', 'Silva Rubio', '', '', '', 1, 0, 0),
(103, 'amedrano', '$2y$10$KT0TMm5JgrhOh0WG8ziDFuUcQwAk732OIluymws9hrIMtTbcAfnrO', 'amedrano@martechmedical.com', '0000-00-00', 'Alfredo Manuel', 'Medrano Mendez', '', '', '', 13, 0, 0),
(104, 'aavila', '$2y$10$FdSMMUTIjfOItcUOhIX.Ne8L1t27N7cbHKPoeIAiYLgSKYfOE6Y/y', 'aavila@martechmedical.com', '0000-00-00', 'Alheli', 'Avila', '', '', '', 4, 0, 0),
(105, 'asalas', '$2y$10$jGtzcRF6yYWv0QHyjM4fMeJxpb4uTzP8QRl6dXdwYZAXF3g7y.bXW', 'asalas@martechmedical.com', '0000-00-00', 'Alix Stephany', 'Salas Llamas', '', '', '', 1, 0, 0),
(106, 'amontano', '$2y$10$ZarnLVMfDBhW0QrRqmNBN.PNmdaFBIl15cwkIYkjVAFrFa9ilmUhm', 'amontano@martechmedical.com', '0000-00-00', 'Alma', 'Montano', '', '', '', 15, 0, 0),
(107, 'aramos', '$2y$10$EknPP/xAxErAsWh3iUMvQe8sTGXoxiZr4LT25XDku4yep4cq/G0Q2', 'aramos@martechmedical.com', '0000-00-00', 'Alva', 'Ramos', '', '', '', 11, 1, 1),
(108, 'alagos', '$2y$10$DDd4l6kun8QB4AsBetktBegEgjEyp3hK1r6zcORD4Ud2tg1O0wz4W', 'alagos@martechmedical.com', '0000-00-00', 'Alvaro ', 'Lagos', '', '', '', 12, 1, 0),
(109, 'cvalenzuela', '$2y$10$RP2M7HpeuUL9.rb/aETWcuTzFXcCRFouz0RezsIFVt8.LRo5EqFbm', 'cvalenzuela@martechmedical.com', '0000-00-00', 'Ana Carolina', 'Valenzuela', '', '', '', 16, 0, 0),
(110, 'acalderon', '$2y$10$n2RQw2sLEzVHaTp1NTeKTu931D/IBp9X/z3uQMl6KTTQVsfRDgESu', 'acalderon@martechmedical.com', '0000-00-00', 'Ana Celia', 'Calderon Beltran', '', '', '', 6, 0, 0),
(111, 'atellez', '$2y$10$aQmupNXAbFWVpnBTijh4/eweGmol.v4E86iWy3jW55qDuCXlIxb9e', 'atellez@martechmedical.com', '0000-00-00', 'Ana', 'Hernandez Tellez', '', '', '', 1, 0, 0),
(112, 'aruiz', '$2y$10$BeuG2r4bYvS9FgD/4i/DKursDb/fyHhyJLHkz1Q7XY9w80hJk7A3m', 'aruiz@martechmedical.com', '0000-00-00', 'Ana Ivonne', 'Ruiz Diaz', '', '', '', 1, 0, 0),
(113, 'avilla', '$2y$10$xzE0U2.4G5AFQhaYU964ne5/NI6nIoMDtmNlPVsajLN6MvUtLln4W', 'avilla@martechmedical.com', '0000-00-00', 'Ana Julia', 'Villa zavala', '', '', '', 1, 0, 0),
(114, 'aduran', '$2y$10$Oj2qx59j03nsJC/eqto1JePMMM/87frgJzHHtM.1Q1sDafDBE8nxm', 'aduran@martechmedical.com', '0000-00-00', 'Ana Maria', 'Duran Saborit', '', '', '', 4, 1, 1),
(115, 'aesquivias', '$2y$10$I4Z/Lg2bSA.x9nJxOMdVNeAY8RyB1G8zrqrz06qDSbMTJ9eAzB3gK', 'aesquivias@martechmedical.com', '0000-00-00', 'Anahi', 'Esquivias', '', '', '', 4, 0, 0),
(116, 'avillegas', '$2y$10$dOWoM10hwRIVIAeeTgCXQ.peP4D9CswiU/H737oqA.jxeZOhjrNNG', 'avillegas@martechmedical.com', '0000-00-00', 'Anali', 'Villegas Navarrete', '', '', '', 11, 0, 0),
(117, 'abaylon', '$2y$10$4JPrWt3iophfyarydGyUVeW3rqOwmPx8LMHEv0YU/AMA7tlvIaVYO', 'abaylon@martechmedical.com', '0000-00-00', 'Andrea', 'Baylon', '', '', '', 16, 0, 0),
(118, 'aencinas', '$2y$10$ljjV2LXGhf1PT9evDyLk3.sJMIVfvvNhMf5y8RNNyO9917y0Lvvfy', 'aencinas@martechmedical.com', '0000-00-00', 'Andrea', 'Encinas', '', '', '', 1, 0, 0),
(119, 'ainiguez', '$2y$10$j6kGBFwU5b0VfHsLlgp0SuTQ5ReiUlPYtlmdKjtSv3.kkn6oy49kC', 'ainiguez@martechmedical.com', '0000-00-00', 'Andrea', 'Iniguez Chavolla', '', '', '', 5, 0, 0),
(120, 'aconcilio', '$2y$10$7Fn2boOXhOM3rDfLu47sHuUoPoKFIZb.YuyVRBIWi25G.3dIcJCVO', 'aconcilio@martechmedical.com', '0000-00-00', 'Angela', 'Concilio Gonzalez', '', '', '', 15, 0, 0),
(121, 'asandoval', '$2y$10$X.Rb3N.fDzF0yE3qAubxo.LgUYb0KewiN.Qt3fXDbNcCN20UrL3EC', 'asandoval@martechmedical.com', '0000-00-00', 'Angela', 'Sandoval Chavez', '', '', '', 16, 1, 1),
(122, 'acsandoval', '$2y$10$nl8LF9tlDjBZdC5W3UwIT.C24bufNI.B65rj/Py4ARqgDFMP7PSCC', 'acsandoval@martechmedical.com', '0000-00-00', 'Ariadna', 'Sandoval Pina', '', '', '', 1, 0, 0),
(123, 'agodinez', '$2y$10$KS189gTnwHKQByYjbx77h.Cn4xIO6UXE1ef2FhjeoEAik9PStN3.q', 'agodinez@martechmedical.com', '0000-00-00', 'Armando Francisco', 'Godinez Gongora', '', '', '', 14, 0, 0),
(124, 'aperez', '$2y$10$PiS0vqx1EO2KXd34d3mJ.uUCiEp0MBrU0g0Pyq9fhDXrt2NWKKONW', 'aperez@martechmedical.com', '0000-00-00', 'Armando ', 'Perez Torres', '', '', '', 16, 0, 0),
(125, 'aprieto', '$2y$10$L8eRIRzH.cIjuCAiVJK2Se5uTsVduosB5o4AZVwWTD51m.uwjGZqC', 'aprieto@martechmedical.com', '0000-00-00', 'Armando', 'Prieto', '', '', '', 4, 0, 0),
(126, 'aeslava', '$2y$10$G3dM/K8saH30.d6j/vxwleCNGC5rJnzMVERvoXlO6pyALEQ8UjXlu', 'aeslava@martechmedical.com', '0000-00-00', 'Aurora', 'Eslava', '', '', '', 16, 0, 0),
(127, 'bangulo', '$2y$10$8w2Av2MGpIA5erz.IWrPCu9EK9aevojpRMSyPKUskOfNTbcYhy4JK', 'bangulo@martechmedical.com', '0000-00-00', 'Bernabe', 'Angulo', '', '', '', 1, 0, 0),
(128, 'blara', '$2y$10$zBzZ2ML/WOh/Qx7UnVyzL.x6EtxfIbGYcpoDB9Q6pruJwAvD9yFR.', 'blara@martechmedical.com', '0000-00-00', 'Bernardo', 'Lara Fregoso', '', '', '', 1, 0, 0),
(129, 'cfonseca', '$2y$10$hqU3pSACoCqEJRiYamDr5OTCfB/EorVAtvmp5k7ErDb6gna.AIJ62', 'cfonseca@martechmedical.com', '0000-00-00', 'Carlo', 'Fonseca Flores', '', '', '', 1, 0, 0),
(130, 'ccelaya', '$2y$10$C9ZOmDkzQ3DOQc3zcbODGeDSfr6lAjIIaeIqf03mNe6FNx6L3uV7C', 'ccelaya@martechmedical.com', '0000-00-00', 'Carlos', 'Celaya', '', '', '', 1, 0, 0),
(131, 'cgastelum', '$2y$10$7aPmlcz.yp/1Fjq.zoHZduwOT5tUHJsBGepjUCBk3EqOstnGErvpa', 'cgastelum@martechmedical.com', '0000-00-00', 'Carlos', 'Gastelum', '', '', '', 5, 0, 0),
(132, 'cleon', '$2y$10$v9UgzSmW1g1mbupcqRqwnudyav4QilargTZrsSW2JSPRB5lUUxlVu', 'cleon@martechmedical.com', '0000-00-00', 'Carlos Leon', 'Silva', '', '', '', 1, 0, 0),
(133, 'cmeza', '$2y$10$uJWtDIor4X1YRzuR4sCGn.Kb7RXf31Y54/skH88tzpEP21/CUz4ZG', 'cmeza@martechmedical.com', '0000-00-00', 'Carlos ', 'Meza', '', '', '', 4, 0, 0),
(134, 'cpadilla', '$2y$10$rjkR7h5eqe1FkYeHKXzcrO2CqKE/H3X/CI3Yqo5uPU/UBO2gTMod6', 'cpadilla@martechmedical.com', '0000-00-00', 'Carlos', 'Padilla Valle', '', '', '', 5, 0, 0),
(135, 'csanmiguel', '$2y$10$ujB12IXS6RlzfWjDCphlW.scTFimwrsqt2OICsyZugOnHZ7bptW9i', 'csanmiguel@martechmedical.com', '0000-00-00', 'Carlos', 'Sanmiguel', '', '', '', 14, 0, 0),
(136, 'cvazquez', '$2y$10$1K/oU0T0b1Z5s5dmlImrSuPxi54z7BpHqf9n9rx1vD2qboQ3RRV/u', 'cvazquez@martechmedical.com', '0000-00-00', 'Carlos', 'Vazquez', '', '', '', 1, 0, 0),
(137, 'cflores', '$2y$10$StvS90m9K1OoADyvRfphreVvCoPmy1sVZDp.ErpSGq5pD3AwXi4PC', 'cflores@martechmedical.com', '0000-00-00', 'Carolina', 'Flores Aguayo', '', '', '', 15, 0, 0),
(138, 'cobregon', '$2y$10$Lg.fHHwCm1e0sg2bLZMf1Oi6l4sj9hrJ5ZTdvdDmBE6X/DUw3MI6.', 'cobregon@martechmedical.com', '0000-00-00', 'Carolina', 'Obregon Zarate', '', '', '', 12, 1, 1),
(139, 'ccruz', '$2y$10$sIzOP2alXziLQKShzGNt4O0TSOc3ttrTLV7WGknNjxSPxk.mO05Oa', 'ccruz@martechmedical.com', '0000-00-00', 'Carolina', 'Zarate Cruz', '', '', '', 1, 0, 0),
(140, 'cnunez', '$2y$10$C.yRpobQV.UR.eaglP9cXuSIwAYZzPrbOqkeJx/bytov/gR1NaAIm', 'cnunez@martechmedical.com', '0000-00-00', 'Cesar', 'Nunez', '', '', '', 1, 0, 0),
(141, 'ctoledo', '$2y$10$vSnDXdWvuDt6xNvzSdTlt.e8rHf2sNiAFIrFfgsr3BY0xhiKRYUWu', 'ctoledo@martechmedical.com', '0000-00-00', 'Cesar', 'Toledo Reynoso', '', '', '', 14, 0, 0),
(142, 'ccoronado', '$2y$10$9fgdbcJc4KcBloTStdYcHOgBUoT.vNeLAYzLOPi7CDnwA9/nSwcIe', 'ccoronado@martechmedical.com', '0000-00-00', 'Clariza E.', 'Coronado', '', '', '', 12, 0, 0),
(143, 'csalazar', '$2y$10$CBFdNoE/Nn7B1ykAubcn1uyMWNFsxovsofbWyrsUg5CbQMmNM4Zge', 'csalazar@martechmedical.com', '0000-00-00', 'Claudia', 'Salazar', '', '', '', 16, 0, 0),
(144, 'ccano', '$2y$10$/41XZ1J3pY.LtiQXyT0oS.v2gvYP2QptseUiXsKRkWgYhQK2i497a', 'ccano@martechmedical.com', '0000-00-00', 'Cristian', 'Cano Cuevas', '', '', '', 5, 0, 0),
(145, 'caceves', '$2y$10$0MXBpSBG9rKK8deRtYnU5eGJvUQESkQtw8J5gBSgyfAjL6o5gKyKe', 'caceves@martechmedical.com', '0000-00-00', 'Cristina', 'Aceves Castro', '', '', '', 4, 0, 0),
(146, 'cmorales', '$2y$10$Wck5YRQtM7dDfbWZXiKFPO2HnhchTMMEBfLJUiKbYlPosg4h2ex1a', 'cmorales@martechmedical.com', '0000-00-00', 'Cuauhtemoc', 'Morales', '', '', '', 4, 0, 0),
(147, 'dperez', '$2y$10$OQq6ZVUPhVErUL/GQ8C.muLSLzA/InSFnCqFSYfiKOTSj5woL0.La', 'dperez@martechmedical.com', '0000-00-00', 'Damian', 'Perez Esparza', '', '', '', 9, 0, 0),
(148, 'ddamian', '$2y$10$DXEbROjOQjwmhdvqrQPedOxK87thnTRe6Corim0TsVEYaz/rS2/82', 'ddamian@martechmedical.com', '0000-00-00', 'Dana Fernanda', 'Damian Perez', '', '', '', 4, 0, 0),
(149, 'dalvarez', '$2y$10$VYtRZ1EnTkOdBLpsvo32z.zFFACiBq7xae4iGc.QIaVx2XluDXUba', 'dalvarez@martechmedical.com', '0000-00-00', 'Daniel ', 'Alvarez V', '', '', '', 5, 0, 0),
(150, 'dpaniagua', '$2y$10$vSVmM1BKrnY7oIj0CCfJQ.KStKIVVbZxP6eo7kjYlM4/eoTV0RWpe', 'dpaniagua@martechmedical.com', '0000-00-00', 'Daniel', 'Paniagua Lizarraga', '', '', '', 1, 0, 0),
(151, 'dramirez', '$2y$10$.rQvqWeIFdsE4OVoC/XTqOCCs89QFow4tcos78Tq7ilDqYRfITNqu', 'dramirez@martechmedical.com', '0000-00-00', 'Daniel', 'Ramirez', '', '', '', 1, 0, 0),
(152, 'dsanchez', '$2y$10$PG/0xHwK975f7fgu45ZLjeP8F/lFAM6l1ATHo4xV7rBdFcE5T9/62', 'dsanchez@martechmedical.com', '0000-00-00', 'Daniel', 'Sanchez Soto', '', '', '', 15, 0, 0),
(153, 'dcayeros', '$2y$10$bG6w1OraAIJtmmL4UX.ytOdGcxsSKkY/Af6ys9L4OJHl2A6.Wdts6', 'dcayeros@martechmedical.com', '0000-00-00', 'David Alberto', 'Cayeros', '', '', '', 4, 0, 0),
(154, 'dcabrera', '$2y$10$xgzeiLWAzpXJJBkBtixFN.tzKZQEWiSlTZMvvDXwHtM5gbhevzADC', 'dcabrera@martechmedical.com', '0000-00-00', 'David', 'Cabrera', '', '', '', 12, 0, 0),
(155, 'dinzunza', '$2y$10$SUScdz7hE4oFH.Y9OJMti.KMboObUWVGaQgVNxPyzp9f3eNYFc.he', 'dinzunza@martechmedical.com', '0000-00-00', 'David', 'Inzunza Hernandez', '', '', '', 17, 0, 0),
(156, 'dreal', '$2y$10$rEf2/aaClRzs0aITkC9kROExyl8Jbqw9U66jSeqrxgpVsf109HVRe', 'dreal@martechmedical.com', '0000-00-00', 'Delma', 'Real Cardenas', '', '', '', 15, 0, 0),
(157, 'dmojarra', '$2y$10$OtU37bHtxgAOvOSA9KaMxe75y/tkDuEtLuNtCpoTH/nelH6RykGeq', 'dmojarra@martechmedical.com', '0000-00-00', 'Diana Lizbeth', 'Mojarra Argil', '', '', '', 1, 0, 0),
(158, 'dlopez', '$2y$10$oWZOi1K3sKZg41KH6OZHIOZtHbOMEf3c/N1jD2qjLTZD3DcWQuT.q', 'dlopez@martechmedical.com', '0000-00-00', 'Diana', 'Lopez Moreno', '', '', '', 16, 0, 0),
(159, 'deslava', '$2y$10$qWQ6GP9A6PphW698RxJ/fO1vEt2mFcI.j8k7APNs2Fpae4vlZjgvO', 'deslava@martechmedical.com', '0000-00-00', 'Dolores', 'Eslava', '', '', '', 15, 0, 0),
(160, 'destarrona', '$2y$10$05hRzIfIpLlm.Kj1/DXzE.IQ5If0HTIHHC5rBlLQryH01HsL17qsW', 'destarrona@martechmedical.com', '0000-00-00', 'Donaldo', 'Estarrona Contreras', '', '', '', 1, 0, 0),
(161, 'ecabrera', '$2y$10$oFO0OOn8sF2zM1JhShpUke4bw5.e9CDvEteJ6hkGxSoBZ9mA3nPc6', 'ecabrera@martechmedical.com', '0000-00-00', 'Edgar', 'Cabrera Salazar', '', '', '', 15, 0, 0),
(162, 'imorales', '$2y$10$/sGxkgTIo1mm/3MfMqKYFevMdoWT070Vr99vTNjXTR9F9vQ3vgC1u', 'imorales@martechmedical.com', '0000-00-00', 'Edgar Ivan', 'Morales Carranza', '', '', '', 1, 0, 0),
(163, 'emorales', '$2y$10$f4kUJgP92TaVUaEV7LFuH.0w4SwvY05KGvExO/0EQSTcdB16LNgxS', 'emorales@martechmedical.com', '0000-00-00', 'Edgar ', 'Morales', '', '', '', 4, 0, 0),
(164, 'ehuaraqui', '$2y$10$ofhGCJFl30PpzINWSg298.U09ZoW/K90Hv222bYRr5B7agHruhzui', 'ehuaraqui@martechmedical.com', '0000-00-00', 'Edgardo', 'Huaraqui Ruiz', '', '', '', 6, 0, 0),
(165, 'ecadena', '$2y$10$SulxsCUewsHZiSVVt/DQDu2R6JDm8C9LQPqbonP9xncpYdj.cfLGK', 'ecadena@martechmedical.com', '0000-00-00', 'Edith', 'Cadena', '', '', '', 18, 0, 0),
(166, 'emartinez', '$2y$10$0eYWScvLmC/gqIkd8Ck0Y.4Z4gKYSKkoMq2uwSeza7l1izMEQ3WDm', 'emartinez@martechmedical.com', '0000-00-00', 'Edoardo', 'Martinez Pacheco', '', '', '', 11, 0, 0),
(167, 'earce', '$2y$10$YeGfRkDkgqRCXrrPboOflOO5vTcZ3hZGSCGgkHsRHs43a6jQM95p6', 'earce@martechmedical.com', '0000-00-00', 'Eduardo', 'Arce', '', '', '', 6, 0, 0),
(168, 'ediaz', '$2y$10$wFbjG2a.v9m0DLmT8MRAS.xZQPX54ieqzziy5i2B9Vs0NuPQqg9pi', 'ediaz@martechmedical.com', '0000-00-00', 'Elizabeth ', 'Diaz Solano', '', '', '', 4, 0, 0),
(169, 'egonzalez', '$2y$10$WnyAKZvSax3Pm3dghc7LuuaaDz961QRmvNSWvo.Cx2qMT.O6PFqDi', 'egonzalez@martechmedical.com', '0000-00-00', 'Elizabeth', 'Gonzalez', '', '', '', 16, 0, 0),
(170, 'eherrera', '$2y$10$avwoJua9MJ0b0tnbl1aCxeym.A3WV8FyOQAL4sUf698r27UagrJ..', 'eherrera@martechmedical.com', '0000-00-00', 'Elsy', 'Herrera Aramburo', '', '', '', 13, 0, 0),
(171, 'emunoz', '$2y$10$xA48BxYXoavL/8UgtU98h.cdr7f7sLP2I9iTueAIVNL7gT6ZvH3cC', 'emunoz@martechmedical.com', '0000-00-00', 'Elvira', 'Munoz Salas', '', '', '', 13, 0, 0),
(172, 'ehinojos', '$2y$10$thaBXR.ZWp4CLGRnThCo8ubEHTyDhFqijwCt1psBYGUsxNKUcJqHe', 'ehinojos@martechmedical.com', '0000-00-00', 'Emilio', 'Hinojos', '', '', '', 1, 0, 0),
(173, 'ealapizco', '$2y$10$.Y9gOdfZWoQAAokPgEEw3O3iBf1d4vzXLFbb/OE4WXEIodfjal78C', 'ealapizco@martechmedical.com', '0000-00-00', 'Erendida', 'Alapizco', '', '', '', 1, 0, 0),
(174, 'edemara', '$2y$10$ZuIW19f10rbC02JKrMNJ0OpN1y1.98wRl.Lldk5RQdGW9jFuWRrhq', 'edemara@martechmedical.com', '0000-00-00', 'Erik Omar', 'Demara Martinez', '', '', '', 5, 0, 0),
(175, 'emelendez', '$2y$10$H0xOvwrO531OLdad1AT5vOLBJd12MF3I88skBBySQXPIurYj2fEhq', 'emelendez@martechmedical.com', '0000-00-00', 'Erika Melendez', 'Ruelas', '', '', '', 1, 0, 0),
(176, 'eaguilar', '$2y$10$MY/y0NTqVfl8LV4wKac55OQpoeTXfAVgGF1UOdDj9wTxUdVpfDNSW', 'eaguilar@martechmedical.com', '0000-00-00', 'Eugenia', 'Aguilar', '', '', '', 4, 0, 0),
(177, 'fharispuru', '$2y$10$gf7Qigabi6to8e7sgu3Jke6iC8gXB9IBxQ/AYWgMLLpXLIQMKaJUi', 'fharispuru@martechmedical.com', '0000-00-00', 'Fernando', 'Gutierrez Haispuru', '', '', '', 1, 0, 0),
(178, 'frubio', '$2y$10$yGQYIddAvvuR0ZOL5iepGe209udwZ48nLaZvAHwBA1QChIMFXTIy2', 'frubio@martechmedical.com', '0000-00-00', 'Fernado', 'Rubio Borquez', '', '', '', 1, 0, 0),
(179, 'fagundez', '$2y$10$MZ8yseQPI8Crz7SLbHsiLODHON0nB4tMXmzA67pJkIywxKhNfTFS2', 'fagundez@martechmedical.com', '0000-00-00', 'Francisco', 'Agundez Velasco', '', '', '', 13, 0, 0),
(180, 'fgarcia', '$2y$10$OW9iG8YWEyPzj02zdVBkSeGY3CTR25TR2GJlHpQ7vzOf7MJnMd83W', 'fgarcia@martechmedical.com', '0000-00-00', 'Francisco Fernando', 'Garcia', '', '', '', 16, 0, 0),
(181, 'fmerino', '$2y$10$n4q1lZ2UnC2OwR44qpFHNeu0XP3ulnjLDlAxQvkhL.LzjV1v0z5Mi', 'fmerino@martechmedical.com', '0000-00-00', 'Francisco', 'Merino Zazueta', '', '', '', 9, 1, 0),
(182, 'galopez', '$2y$10$L1fjTue80pLCvG3qk1ijiuXL0h2nt.dXXmQmOKxUl6OCWbwH27Inm', 'galopez@martechmedical.com', '0000-00-00', 'Gabriel Alfonso', 'Lopez Sanchez', '', '', '', 12, 0, 0),
(183, 'ggarcia', '$2y$10$jKV7EEMy8H9Vd/dsrJeo.uUO7q0odN5jxfTBUEcinD8NmgBXL.fB6', 'ggarcia@martechmedical.com', '0000-00-00', 'Gabriela', 'Garcia Salcedo', '', '', '', 4, 0, 0),
(184, 'ggutierrez', '$2y$10$qGTd0QIPtUUO5DeCu.DgXuv51QL8TwkRtH.8MEiKcNBQaCO0WCiJm', 'ggutierrez@martechmedical.com', '0000-00-00', 'Gabriela', 'Gutierrez', '', '', '', 1, 0, 0),
(185, 'gleal', '$2y$10$TF.iEAiWFUMldMp0nquZu.29y8DomY9c62qTZ1EsB9R57RSR3W0TO', 'gleal@martechmedical.com', '0000-00-00', 'Gabriela', 'Leal', '', '', '', 1, 0, 0),
(186, 'gsalas', '$2y$10$Ejr5h945PiKNHJ6nrDM20eL.2QJRFVy6NpxWAEcfSE7AP6Gh.PEsS', 'gsalas@martechmedical.com', '0000-00-00', 'Gabriela', 'Salas', '', '', '', 1, 0, 0),
(187, 'gmacedo', '$2y$10$eqgl9ihPSkF.rLF3SG1Z2eeFYY8wizFf/f5xRuLSoX65RI1KEwUzq', 'gmacedo@martechmedical.com', '0000-00-00', 'Gema Guillermina', 'Macedo Becerra', '', '', '', 4, 0, 0),
(188, 'gyhernandez', '$2y$10$5cNzBWtPZPOpwWAKIJLxSOPn2nquQ2vjjv6vE8JX0c2xBHqtdldPW', 'gyhernandez@martechmedical.com', '0000-00-00', 'Gema Yammel', 'Hernandez Garcia', '', '', '', 1, 0, 0),
(189, 'gmartinez', '$2y$10$A/WaaJmx9jAfStdcL5N1b.ScV.gk2ib4dNJ0AwMOEH1O0WHWZoTcK', 'gmartinez@martechmedical.com', '0000-00-00', 'Gerardo', 'Martinez Leyva', '', '', '', 5, 0, 0),
(190, 'gvaca', '$2y$10$TxzfIsgzpUn0CDbDoLcTvOmlD35wUafSRiFxrhXONXMca3qAw0GkC', 'gvaca@martechmedical.com', '0000-00-00', 'Gerardo', 'Vaca Gaspar', '', '', '', 1, 0, 0),
(191, 'gponce', '$2y$10$S9HVuP6mlr2PTOSj9A1NUuvsmqAT8kqzV.NtpaAPAsldtubyiVz7.', 'gponce@martechmedical.com', '0000-00-00', 'Gloria ', 'Ponce Velazquez', '', '', '', 5, 0, 0),
(192, 'ggonzalez', '$2y$10$POObVapR3rsmnHRFDoLWQe9DhrOhZ.UO0pV98udAtGix6WuHwSP8W', 'ggonzalez@martechmedical.com', '0000-00-00', 'Guillermo', 'Gonzalez', '', '', '', 1, 0, 0),
(193, 'gorduno', '$2y$10$M7V366nKAosrSwbm.xdYLO6n/pfvuirDckj6VWO1Gf12DyhC/uOby', 'gorduno@martechmedical.com', '0000-00-00', 'Guillermo', 'Orduno', '', '', '', 6, 0, 0),
(194, 'galcala', '$2y$10$RuvYwBo9InGMNPmMEWAH8u70kt0tBlR68ukcyMJ4skczT9..iiE.a', 'galcala@martechmedical.com', '0000-00-00', 'Gustavo', 'Alcala Rodriguez', '', '', '', 4, 0, 0),
(195, 'gmiramontes', '$2y$10$Hw/aClcWVqr9Rf0UZmC.QemsBfIjiYJ7ZayO1DBFPkf5/BwXYR0LW', 'gmiramontes@martechmedical.com', '0000-00-00', 'Gustavo', 'Miramontes Orozco', '', '', '', 5, 0, 0),
(196, 'haguilar', '$2y$10$.ya0v0QOcaFLl3M5N8f/S.oxRY7KJrfngSMa7GACteC7M9qZQRX4G', 'haguilar@martechmedical.com', '0000-00-00', 'Hector Axel', 'Aguilar Cano', '', '', '', 1, 0, 0),
(197, 'hcastro', '$2y$10$vddXEkIu88XKuzKLlnqEbu.wGwjnuzRiWrKYimCjnlFdPJ9IOta7q', 'hcastro@martechmedical.com', '0000-00-00', 'Heriberto', 'Castro', '', '', '', 6, 0, 0),
(198, 'hplata', '$2y$10$J8V/HuWFrGSLweJI/qpjwOBawJxUr43uBNblMbzzlZovvwwRiikwW', 'hplata@martechmedical.com', '0000-00-00', 'Horacio', 'Plata Castaneda', '', '', '', 4, 0, 0),
(199, 'iestrada', '$2y$10$TrdMo3KWkpVLXJCOiRaGDu5X.WGzcxbT86bQeWzfUWDJxsyqoKXNy', 'iestrada@martechmedical.com', '0000-00-00', 'Iliana', 'Estrada Robles', '', '', '', 5, 0, 0),
(200, 'icortes', '$2y$10$f051Q5dsAveETc2dNjsRb.a/7DHCKuIURKKLWwwXv2j8pVTSbi4BC', 'icortes@martechmedical.com', '0000-00-00', 'Irma Ayleth', 'Cortes', '', '', '', 1, 0, 0),
(201, 'ioleta', '$2y$10$UE.RdZNdCxRpw9438oC05.UIrP3lLJOinDhZ6EJYRygHUb9xAUkry', 'ioleta@martechmedical.com', '0000-00-00', 'Isacc', 'Oleta', '', '', '', 4, 0, 0),
(202, 'rortiz', '$2y$10$nzuVshYv6VMoWpd7A0LH2.TIyZLMfSLOMIZkoXglfHWuGhosBLft6', 'rortiz@martechmedical.com', '0000-00-00', 'Isela', 'Ortiz Mejia', '', '', '', 4, 0, 0),
(203, 'igutierrez', '$2y$10$pHZDY4sUU4i5c046XodHp.8KEYp7JHhyGzzbuaMPaSUBpvZScR7NG', 'igutierrez@martechmedical.com', '0000-00-00', 'Ismael', 'Gutierrez', '', '', '', 1, 1, 1),
(204, 'ilicea', '$2y$10$VOS8T2OjsCekVsh6hSZbounkkHud3veyEIKNVfUsBHbQTVjkTdRKy', 'ilicea@martechmedical.com', '0000-00-00', 'Ivan', 'Licea', '', '', '', 1, 0, 0),
(205, 'jguevara', '$2y$10$F447zXpJ0nhroYjcMCZrru9V4Al4iGf0M09UMLThgxhw5EtFVMpJW', 'jguevara@martechmedical.com', '0000-00-00', 'Jaime', 'Guevara', '', '', '', 8, 1, 1),
(206, 'jsandoval', '$2y$10$jPjvR4f9bewpEUQEW4.iwOTRqktdnHIrdmmpejPn//5j0VwCTmCjC', 'jsandoval@martechmedical.com', '0000-00-00', 'Javier Alonso', 'Sandoval Ramirez', '', '', '', 17, 0, 0),
(207, 'jduran', '$2y$10$Pqd7B0WT4VxOG6LGKoy4Y.zzqID9yELK1jXkHl3VEpMMlgZYPzuQ.', 'jduran@martechmedical.com', '0000-00-00', 'Jesus Alberto ', 'Duran Acosta', '', '', '', 1, 0, 0),
(208, 'jcbermudez', '$2y$10$AW8mN7mEgszqhFROwLcsBeN0K1wowLW3cw6CB4RX.JW8RPCwQozRq', 'jcbermudez@martechmedical.com', '0000-00-00', 'Jesus ', 'Campos Bermudez', '', '', '', 4, 0, 0),
(209, 'jledezma', '$2y$10$OHj1MUlHZ0RPgrsA.KVE8.iN8QyNzbd3Kssx7MTr739G56e6AU10.', 'jledezma@martechmedical.com', '0000-00-00', 'Jibram', 'Garcia Ledezma', '', '', '', 4, 0, 0),
(210, 'jagonzalez', '$2y$10$cbPIw7IJOdDhH1DBFLqfdu/3vEbwspqcvXSmy195F.e1XOKX5hZEe', 'jagonzalez@martechmedical.com', '0000-00-00', 'Joel Antonio ', 'Gonzalez Angulo', '', '', '', 1, 0, 0),
(211, 'jflores', '$2y$10$yRwUNdwJlGBfuH8q5Fv4X.rllZCtuqgFuZa8KphgE6/nxvIbw6cgK', 'jflores@martechmedical.com', '0000-00-00', 'Joel', 'Flores', '', '', '', 1, 0, 0),
(212, 'jhernandez', '$2y$10$WTiDInkMRQdPgVYWrwbx0.V/0XrGH/3AUg9m6vxFT/Sr9Z.n473oO', 'jhernandez@martechmedical.com', '0000-00-00', 'Jorge', 'Marquez Hernandez', '', '', '', 1, 0, 0),
(213, 'jalcala', '$2y$10$qHaRvM/qHJHX6C708hSP0uPq5iuzQfoP3GI2Y4SQPOV3pc96bcJzC', 'jalcala@martechmedical.com', '0000-00-00', 'Jose', 'Alcala', '', '', '', 5, 0, 0),
(214, 'japerez', '$2y$10$oiaxOVbGyY/GAOPvW4hLVuRDvSb2Symrp7KS/KZBYYZeSlv6E.1wy', 'japerez@martechmedical.com', '0000-00-00', 'Jose Angel ', 'Perez Arzac', '', '', '', 15, 0, 0),
(215, 'jmarquez', '$2y$10$Hb0ApDCL9beOPlwf7ycknOeKnLX4gNZj0PFOAjpYGoIlJmtDRrjKK', 'jmarquez@martechmedical.com', '0000-00-00', 'Jose Antonio', 'Marquez Salgado', '', '', '', 13, 0, 0),
(216, 'jgonzalez', '$2y$10$a/4CBLw0pWEcUY.I0XREz.FUvGB8aL04VUftA/RH8g1xUwkKGp1Ce', 'jgonzalez@martechmedical.com', '0000-00-00', 'Jose ', 'Gonzalez Burgara', '', '', '', 5, 0, 0),
(217, 'MMORUA', '$2y$10$2Xb4ZZri9fKQxG2zU4S4zuWV8F8eA5/9drMAzjiO2OcKhnTD6xqpO', 'MMorua@martechmedical.com', '0000-00-00', 'Monica', 'Morua', '', '', '', 11, 0, 1),
(218, 'LJAUREGUI', '$2y$10$XXk90poa7ieqexH/Y9SzRuU0z.IbBRslDWUVTmUKVbAtH./ItxgIG', 'ljauregui@martechmedical.com', '0000-00-00', 'Leandro', 'Jauregui', '', '', '', 12, 0, 0),
(219, 'LMORENO', '$2y$10$6QpfvWx.6Yq5kpxWhTDV3uCPXa85/KmYw.cEIvDnZxnYa0gk5qsku', 'lmoreno@martechmedical.com', '0000-00-00', 'Lourdes', 'Juarez', '', '', '', 4, 0, 0),
(220, 'RECEPCION', '$2y$10$S6yOVafFy.9FAkY.u545YuYObxkqt/rQRZOZVof2bxFrI4vdJZECO', 'recepcion@martechmedical.com', '0000-00-00', 'Silvia', 'Alba', '', '', '', 9, 0, 0),
(221, 'MNUNEZ', '$2y$10$nXKo5te.dgpK98UB8JOSOO6hpv8e56Z6QC.aB.kERYDJVzalmaoBW', 'mnunez@martechmedical.com', '0000-00-00', 'Maria Luisa', 'Nunez', '', '', '', 5, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecd`
--
ALTER TABLE `ecd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_department`
--
ALTER TABLE `meeting_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_name`
--
ALTER TABLE `meeting_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responsible`
--
ALTER TABLE `responsible`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `ecd`
--
ALTER TABLE `ecd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meeting_department`
--
ALTER TABLE `meeting_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `meeting_name`
--
ALTER TABLE `meeting_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `responsible`
--
ALTER TABLE `responsible`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=222;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
