-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-03-2022 a las 05:51:23
-- Versión del servidor: 10.2.43-MariaDB
-- Versión de PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `renesan1_fact`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antena`
--

CREATE TABLE `antena` (
  `id` int(11) NOT NULL,
  `codi_antena` text NOT NULL,
  `equipo_antena` text NOT NULL,
  `nombre_antena` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `antena`
--

INSERT INTO `antena` (`id`, `codi_antena`, `equipo_antena`, `nombre_antena`) VALUES
(1, 'NSM2', ' 1 ', 'NANOSTATION M2'),
(2, 'NS2', ' 1 ', 'NANOSTATION 2'),
(3, 'NSML2', ' 1 ', 'NANOSTATION LOCO M2'),
(4, 'NSM5', ' 1 ', 'NANOSTATION M5'),
(5, 'NS5L', ' 1 ', 'NANOSTATION 5 LOCO'),
(6, 'RBG5HPAcD', ' 2 ', 'RB SXT G-5HPAcD'),
(7, 'RB5HPnD r2', ' 2 ', 'RB SXT 5HPnD r2'),
(8, 'RBG-5HPnD r2', ' 2 ', 'RB SXT G-5HPnD r2'),
(9, 'RBG-5HPacD r2', ' 2 ', 'RB SXT G-5HPacD r2'),
(10, 'RB5HPnD', ' 2 ', 'RB SXT 5HPnD'),
(11, 'RBOTU-5HnD', ' 2 ', 'RB OmniTik U-5HnD'),
(12, 'RBM5SHPn', ' 2 ', 'RB Metal 5SHPn'),
(13, 'TLCPE', ' 3 ', 'TL-CPE610');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antena_nudo`
--

CREATE TABLE `antena_nudo` (
  `id_an_nudo` int(11) NOT NULL,
  `fecha_ant` date NOT NULL,
  `tipo_an` text NOT NULL,
  `an_enlace` int(11) NOT NULL,
  `an_enlace_antena` text NOT NULL,
  `nudo_an` varchar(11) NOT NULL,
  `an_antena` text NOT NULL,
  `an_ip` text NOT NULL,
  `an_frecuencia` varchar(11) NOT NULL,
  `an_potencia` varchar(11) NOT NULL,
  `estado_an` varchar(11) NOT NULL,
  `an_detalle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `antena_nudo`
--

INSERT INTO `antena_nudo` (`id_an_nudo`, `fecha_ant`, `tipo_an`, `an_enlace`, `an_enlace_antena`, `nudo_an`, `an_antena`, `an_ip`, `an_frecuencia`, `an_potencia`, `estado_an`, `an_detalle`) VALUES
(1, '2019-03-07', 'Ap', 0, '0', '2', '4', '192.168.10.207', '5745', '27', 'Activo', 'ANTENA ap pijal bajo'),
(2, '2019-03-07', 'Ap', 0, '', '3', '1', '10.0.0.52', '2439', '28', 'Activo', 'ANTENA PRINCIPAL'),
(3, '2020-02-27', 'Ap', 0, '0', '3', '9', '192.168.10.203', '5840', '30', 'Activo', 'ptp centro pijal'),
(5, '2019-03-07', 'Ap', 0, '0', '3', '8', '192.168.10.202', '5730', '28', 'Activo', 'ptp atahualpa'),
(6, '2019-03-07', 'Ap', 0, '0', '3', '11', '192.168.10.210', '5320', '17', 'Activo', 'Omni'),
(7, '2019-03-07', 'Ap', 0, '0', '2', '1', '192.168.10.206', '2422', '28', 'Activo', 'pijal bajo'),
(8, '2019-03-07', 'Estacion', 3, '8', '1', '7', '192.168.10.205', '', '', 'Activo', ''),
(9, '2019-03-07', 'Estacion', 3, '9', '2', '10', '192.168.10.208', '', '', 'Activo', ''),
(10, '2019-03-07', 'Ap', 0, '0', '1', '1', '192.168.10.208', '2457', '28', 'Activo', 'ahahualpa'),
(11, '2019-03-07', 'Ap', 0, '0', '1', '6', '192.168.10.212', '5240', '30', 'Activo', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `id` int(11) DEFAULT NULL,
  `anuncios` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`id`, `anuncios`) VALUES
(1, 'Gracias por preferirnos'),
(2, 'Publicidad'),
(1, 'Gracias por preferirnos'),
(2, 'Publicidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campoadicional`
--

CREATE TABLE `campoadicional` (
  `id` int(11) NOT NULL,
  `liquidacioncompra_id` int(11) DEFAULT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `valor` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `Factura_id` int(11) DEFAULT NULL,
  `Proforma_id` int(11) DEFAULT NULL,
  `NotaCredito_id` int(11) DEFAULT NULL,
  `NotaDebito_id` int(11) DEFAULT NULL,
  `Retencion_id` int(11) DEFAULT NULL,
  `Guia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargaarchivo`
--

CREATE TABLE `cargaarchivo` (
  `id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dirArchivo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `procesoAutomatico` tinyint(1) DEFAULT NULL,
  `inicioProcesamiento` datetime DEFAULT NULL,
  `finProcesamiento` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargaerror`
--

CREATE TABLE `cargaerror` (
  `id` int(11) NOT NULL,
  `carga_archivo_id` int(11) NOT NULL,
  `message` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipoIdentificacion` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `identificacion` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correoElectronico` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `emisor_id`, `nombre`, `tipoIdentificacion`, `identificacion`, `direccion`, `celular`, `correoElectronico`, `createdAt`, `updatedAt`, `createdBy_id`, `updatedBy_id`, `deletedBy_id`) VALUES
(1, 1, 'aaa', '04', '1706034756001', 'SI', '11123331', 'alexander2714@gmail.com', '2021-06-30 00:26:13', '2021-09-23 11:53:03', 1, 1, NULL),
(3, 1, 'FONSECA ESCALANTE JORGE LUIS', '04', '1801367705001', 'MIravalle 54', '0995551312', 'jorgefonseca58@outlook.com', '2021-09-23 11:18:30', '2022-03-21 00:08:43', 1, 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `establecimiento_id` int(11) NOT NULL,
  `claveAcceso` varchar(49) COLLATE utf8_unicode_ci NOT NULL,
  `numeroAutorizacion` varchar(49) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaAutorizacion` datetime DEFAULT NULL,
  `numeroFactura` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fechaEmision` date NOT NULL,
  `razonSocialProveedor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombreComercialProveedor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identificacionProveedor` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `direccionMatrizProveedor` longtext COLLATE utf8_unicode_ci NOT NULL,
  `direccionEstabProveedor` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalSinImpuestos` decimal(10,2) NOT NULL,
  `totalDescuento` decimal(10,2) NOT NULL,
  `valorICE` decimal(10,2) NOT NULL,
  `subTotalIva0` decimal(10,2) NOT NULL,
  `subTotalIva12` decimal(10,2) NOT NULL,
  `iva12` decimal(10,2) NOT NULL,
  `propina` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  `retencionCreadaId` int(11) DEFAULT NULL,
  `facturaFisica` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id`, `emisor_id`, `establecimiento_id`, `claveAcceso`, `numeroAutorizacion`, `fechaAutorizacion`, `numeroFactura`, `fechaEmision`, `razonSocialProveedor`, `nombreComercialProveedor`, `identificacionProveedor`, `direccionMatrizProveedor`, `direccionEstabProveedor`, `totalSinImpuestos`, `totalDescuento`, `valorICE`, `subTotalIva0`, `subTotalIva12`, `iva12`, `propina`, `valorTotal`, `retencionCreadaId`, `facturaFisica`, `createdAt`, `updatedAt`, `createdBy_id`, `updatedBy_id`, `deletedBy_id`) VALUES
(1, 1, 1, '2904201901070202304500110010010000000051234567810', '2904201901070202304500110010010000000051234567810', NULL, '001', '2021-06-01', 'aaa', 'aaa', '1706034756001', 'caa123', 'caa123', '1.00', '0.00', '0.00', '0.00', '1.00', '0.12', '0.00', '1.12', 1, 1, '2021-06-30 00:23:58', '2021-09-23 11:53:03', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_compras` int(11) NOT NULL,
  `numero_compras` text DEFAULT NULL,
  `id_proveedor` text DEFAULT NULL,
  `detalle_compras` text DEFAULT NULL,
  `iva_0_compras` text DEFAULT NULL,
  `iva_12_compras` text DEFAULT NULL,
  `total_compra` text DEFAULT NULL,
  `fecha_compras` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id_compras`, `numero_compras`, `id_proveedor`, `detalle_compras`, `iva_0_compras`, `iva_12_compras`, `total_compra`, `fecha_compras`) VALUES
(1, '001-001-0002441', '1002221925001', 'compra de caja elÃ©ctrica para repetidora en centro Pijal', '0', '3.71', '34.65', '2018-09-15'),
(2, '003-014-000019021', '0701084121001', 'COMPRA DE SWICH CABLE PARA REPETIDOR EN CENTRO PIJAL', '', '3.78', '35.25', '2018-09-15'),
(3, '003-014-000019026', '0701084121001', 'COMPRA DE CABLE PARA VENTILADOR DE LAPTOP Y CORTAPICO PARA REPETIDOR', '', '.59', '5.49', '2018-09-15'),
(4, '001-001-00022147', '1002808756001', 'MATERIAL PARA INSTALACIÃ“N TUBO SOPORTES', '', '2.04', '19.04', '2018-09-15'),
(5, '001-065-079524597', '1791251237001', 'PAGO PLAN DE CELULAR', '', '2.72', '25.40', '2018-10-26'),
(6, '013-079-0000373458', '1792060346001', 'COMPRA DE ALIMENTOS', '', '1.46', '52.23', '2018-10-28'),
(7, '001-004-000101479', '1720536844001', 'PAGO DE SERVICIO DE INTERNET', '', '27.12', '23.10', '2018-10-01'),
(8, '001-010-00026581', '1002380309001', 'CERTIFICACION DE DOCUMENTOS', '', '.43', '4.01', '2018-10-30'),
(9, '001-010-000026583', '1002380309001', 'DECLARACIÃ“N JURAMENTADA', '', '2.32', '21.62', '2018-10-30'),
(10, '021-077-000289400', '1792060346001', 'COMPRA DE ALIMENTOS', '', '.63', '25.30', '2018-10-11'),
(11, '001-001-000001019', '0919896175001', 'ESTUDIO DE PERMISO SAI (ISP)', '', '42.86', '400', '2018-11-23'),
(12, '021-077-000299566', '1792060346001', 'COMPRA DE ALIMENTOS', '', '1.03', '15.39', '2018-11-18'),
(13, '001-002-00050026', '1710202167001', 'COMPRA DE CABLE', '', '2.11', '19.70', '2018-11-06'),
(14, '001-001-000004430', '1718988593001', 'COMPRA DE CABLES', '', '1.44', '13.44', '2018-11-06'),
(15, '001-004-000105812', '1720536844001', 'SERVICIO DE INTERNET', '', '27.12', '253.10', '2018-11-01'),
(16, '013-077-000237589', '1792060346001', 'COMPRA DE ALIMENTOS', '', '.20', '17.06', '2018-11-27'),
(17, '001-065-080610314', '1791251237001', 'PAGO DE PLAN INTERNET', '', '2.40', '22.40', '2018-11-26'),
(18, '001-001-092079791', '0990005737001', 'SERVICIO DE REFERENCIA SRI', '', '.06', '.60', '2018-11-27'),
(19, '', '', '', '', '', '', '0000-00-00'),
(20, '001-001-0004710', '1002801064001', 'compra de cables de red', '', '0.96', '9', '2020-09-17'),
(21, '001-002-000000831', '1715595284001', 'COMPRA DE MATERIALES PARA ARREGLO DE LOCAL BAÃ‘OS', '.80', '10.73', '100.90', '2020-09-06'),
(22, '002-001-000015055', '1002450342001', 'COMPRA DE COMIDA', '0', '0', '5.36', '2020-09-07'),
(23, '001-002-000205172', '1768181900001', 'pago de frecuencia arcotel', '', '8.89', '82.98', '2020-09-01'),
(24, '001-002-000002384', '1792409365001', 'SERVICIO PORTADOR ISP', '', '69.12', '645.12', '2020-09-09'),
(25, '003-013-000058072', '0701084121001', 'compra de router wifi', '', '4.71', '43.99', '2020-09-12'),
(26, '023-077-000343517', '1792060346001', 'compras de alimentacion', '', '5.56', '62.25', '2020-09-12'),
(27, '001-555-019407607', '1791251237001', 'compra de saldo para comunicacion', '', '.32', '3.00', '2020-09-13'),
(28, '001-002-000008886', '1792222842001', 'compra de equipos para instalacion', '', '21.28', '198.62', '2020-09-16'),
(29, '001-327-069419288', '1791256115001', 'pago plan celular', '', '1.83', '17.11', '2020-09-22'),
(30, '001-021-000587047', '0992371188001', 'compra de Recargas', '', '4.50', '42.03', '2020-09-23'),
(31, '114-004-000628085', '1791984722001', 'compra Ãºtiles de aseo', '', '0.49', '4.59', '2020-09-24'),
(32, '001-555-019449409', '1791251237001', 'recargar celular para comunicaciÃ³n', '', '0.32', '3.00', '2020-09-24'),
(33, '131-763-000823448', '0991286403001', 'Servicio pago de luz', '', '0.06', '.57', '2020-09-29'),
(34, '131-763-000824332', '0991286403001', 'pago de servicio de luz principal', '', '.06', '.57', '2020-09-29'),
(35, '001-002-000208555', '1768181900001', 'pago uso de frecuencias', '', '8.89', '82.98', '2020-10-01'),
(36, '001-001-0000972', '100792612001', 'COMPRA DE TACOS Y PERNOS INSTALACIONES', '', '.80', '4', '2020-10-06'),
(37, '013-001-000033690', '0491500611001', 'COMPRA DE PANACUR PARA VACAS', '', '0', '3.95', '2020-10-01'),
(38, '001-002-000002512', '1792409365001', 'SERVICIO DE INTERNET PORTADOR', '', '76.80', '716.80', '2020-10-01'),
(39, '001-001-50987', '1001735057001', 'COMPRAS DE ACCESORIOS VARIOS', '', '1.02', '9.50', '2020-10-12'),
(40, '001-001-000036611', '1001611514001', 'COMPRA DE COMIDA', '', '0', '5.50', '2020-10-15'),
(41, '002-001-0006293', '1003780648001', 'COMPRA DE INSUMO PARA INSTALACION', '', '0', '19.80', '2020-10-16'),
(42, '001-001-000001858', '1723711279001', 'COMPRA DE FRUTAS DE OBSEQUIO', '', '0', '14', '2020-10-16'),
(43, '001-001-003600', '1002600466001', 'COMPRA CABLE PARA INSTALACION', '', '2.12', '19.80', '2020-10-16'),
(44, '002-001-0006298', '1003780648001', 'COMPRA DE MATERIALES PARA INSTALACION', '', '0', '16.50', '2020-10-17'),
(45, '001-001-0304300', '1001575941001', 'COMPRA DE ALMUERZOS', '', '0', '9', '2020-10-24'),
(46, '001-001-000014614', '1003894175001', 'COMPRA DE PARAGUA', '', '.75', '7', '2020-10-24'),
(47, '002-002-002316', '1723120851001', 'GASTOS DE SALUD', '', '0', '80', '2020-10-24'),
(48, '013-077-000418580', '1792060346001', 'COMPRAS DE VIVERES Y MAS', '', '1.98', '40.93', '2020-10-05'),
(49, '001-005-000005834', '1706062633001', 'COMPRA DE SUMINISTROS DE OFICINA', '', '.65', '6.10', '2020-10-04'),
(50, '001-002-000009357', '1792222842001', 'COMPRA DE EQUIPOS PARA INSTALACIONES', '', '20.34', '189.84', '2020-10-05'),
(51, '114-004-000629934', '1791984722001', 'COMPRA KIT ASEO PERSONAL', '', '.57', '5.29', '2020-10-14'),
(52, '001-555-019520501', '1791251237001', 'COMPRA DE SALDO PARA COMUNICACION', '', '.32', '3', '2020-10-15'),
(53, '308-001-000663716', '1791984722001', 'IMPLEMENTOS DE ASEO PERSONAL', '', '.81', '7.56', '2020-10-20'),
(54, '114-004-000630624', '1791984722001', 'MEDICAMENTO ', '', '0', '4.29', '2020-10-22'),
(55, '001-327-070225758', '1791256115001', 'PAGO PLAN CELULAR', '', '1.83', '17.11', '2020-10-22'),
(56, '001-021-000594925', '0992371188001', 'COMPRA DE RECARGAS', '', '.51', '4.75', '2020-10-23'),
(57, '027-005-001279482', '0990017514001', 'COMPRA DE INSUMOS DE HOGAR', '', '.25', '5.30', '2020-10-24'),
(58, '308-002-000647203', '1791984722001', 'MEDICINA', '', '0', '8.23', '2020-10-26'),
(59, '001-555-019569007', '1791251237001', 'COMPRA DE SALDO PARA COMUNICACION', '', '.32', '3', '2020-10-28'),
(61, '002-001-0000148', '1719444950001', 'CONSIMO ALIMENTO', '20', '0', '20', '2021-01-07'),
(62, '001-001-000041667', '1002011011001', 'COMPRA DE PASTEL', '11', '0', '11', '2021-01-01'),
(63, '001-001-0127838', '0400530747001', 'COMPRA DE GABINETE METALICO Y CORTA PICO', '0', '3.80', '35.50', '2021-01-08'),
(64, '', '1722133293001', 'COMSUMO ALIMENTO', '', '0', '12', '2021-01-08'),
(65, '002-001-0000112', '0501408652001', 'ALOJAMIENTO ASESORAMIENTO PUJILI', '20', '0', '20', '2021-01-09'),
(66, '001-001-0000047', '1002878641001', 'COMPRA ALIMENTO', '0', '0', '15.5', '2021-01-16'),
(67, '006-001-0000223', '1311688574001', 'COMPRA DE ALIMENTO INSTALACION', '', '0', '9.50', '2021-01-18'),
(68, '003-001-0000409', '0401342530001', 'GASTO MEDICO ODONTOLOGIA', '', '0', '70', '2021-01-18'),
(69, '002-001-0000465', '1003835632001', 'CONSUMO ALIMENTACION', '', '0', '9.25', '2021-01-23'),
(72, '001-555-019831314', '1791251237001', 'COMPRA DE SALDO PARA COMUNICACION', '', '.32', '3', '2021-01-02'),
(73, '001-327-071991951', '1791256115001', 'TARIFA PLAN CELULAR', '', '1.11', '10.32', '2021-01-02'),
(74, '001-002-000218469', '1768181900001', 'PAGO ARCOTEL', '', '8.89', '82.98', '2021-01-04'),
(75, '001-002-000003770', '1792409365001', 'PAGO SERVICIO DE INTERNET', '', '96.05', '896.45', '2021-01-04'),
(76, '187-103-000126162', '1790016919001', 'COMPRA DE SUMINISTROS', '', '.55', '5.17', '2021-01-25'),
(77, '003-001-000191269', '1792086930001', 'COMPRA DE TUBERIAS PARA TORRE', '', '5.39', '50.30', '2021-01-12'),
(78, '029-904-000193950', '1790041220001', 'COMPRA DE SUMINISTROS PARA TORRES', '', '4.85', '45.26', '2021-01-12'),
(79, '013-077-000444063', '1792060346001', 'COMPRA DE VIVERES', '', '1.74', '28.43', '2021-01-17'),
(80, '114-004-000638813', '1791984722001', 'COMPRA DE CEPILLO DENTAL', '', '.29', '2.74', '2021-01-19'),
(81, '114-004-000639204', '1791984722001', 'COMPRA DE PAÃ‘ILOS HUMEDOS', '', '.38', '3.59', '2021-01-22'),
(82, '064-007-000631906', '1791984722001', 'COMPRA DE PASTILLAS', '', '0', '4.67', '2021-01-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES
(1, 'US Dollar', '$', '2', ',', '.', 'USD'),
(2, 'Libra Esterlina', '&pound;', '2', ',', '.', 'GBP'),
(3, 'Euro', 'â‚¬', '2', '.', ',', 'EUR'),
(4, 'South African Rand', 'R', '2', '.', ',', 'ZAR'),
(5, 'Danish Krone', 'kr ', '2', '.', ',', 'DKK'),
(6, 'Israeli Shekel', 'NIS ', '2', ',', '.', 'ILS'),
(7, 'Swedish Krona', 'kr ', '2', '.', ',', 'SEK'),
(8, 'Kenyan Shilling', 'KSh ', '2', ',', '.', 'KES'),
(9, 'Canadian Dollar', 'C$', '2', ',', '.', 'CAD'),
(10, 'Philippine Peso', 'P ', '2', ',', '.', 'PHP'),
(11, 'Indian Rupee', 'Rs. ', '2', ',', '.', 'INR'),
(12, 'Australian Dollar', '$', '2', ',', '.', 'AUD'),
(13, 'Singapore Dollar', 'SGD ', '2', ',', '.', 'SGD'),
(14, 'Norske Kroner', 'kr ', '2', '.', ',', 'NOK'),
(15, 'New Zealand Dollar', '$', '2', ',', '.', 'NZD'),
(16, 'Vietnamese Dong', 'VND ', '0', '.', ',', 'VND'),
(17, 'Swiss Franc', 'CHF ', '2', '\'', '.', 'CHF'),
(18, 'Quetzal Guatemalteco', 'Q', '2', ',', '.', 'GTQ'),
(19, 'Malaysian Ringgit', 'RM', '2', ',', '.', 'MYR'),
(20, 'Real Brasile&ntilde;o', 'R$', '2', '.', ',', 'BRL'),
(21, 'Thai Baht', 'THB ', '2', ',', '.', 'THB'),
(22, 'Nigerian Naira', 'NGN ', '2', ',', '.', 'NGN'),
(23, 'Peso Argentino', '$', '2', '.', ',', 'ARS'),
(24, 'Bangladeshi Taka', 'Tk', '2', ',', '.', 'BDT'),
(25, 'United Arab Emirates Dirham', 'DH ', '2', ',', '.', 'AED'),
(26, 'Hong Kong Dollar', '$', '2', ',', '.', 'HKD'),
(27, 'Indonesian Rupiah', 'Rp', '2', ',', '.', 'IDR'),
(28, 'Peso Mexicano', '$', '2', ',', '.', 'MXN'),
(29, 'Egyptian Pound', '&pound;', '2', ',', '.', 'EGP'),
(30, 'Peso Colombiano', '$', '2', '.', ',', 'COP'),
(31, 'West African Franc', 'CFA ', '2', ',', '.', 'XOF'),
(32, 'Chinese Renminbi', 'RMB ', '2', ',', '.', 'CNY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleadicional`
--

CREATE TABLE `detalleadicional` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `valor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facturaHasProducto_id` int(11) DEFAULT NULL,
  `notaCreditoHasProducto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallecompra`
--

CREATE TABLE `detallecompra` (
  `id` int(11) NOT NULL,
  `compra_id` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `codigoProducto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `precioUnitario` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `subTotal` decimal(10,2) NOT NULL,
  `iva12` decimal(10,2) NOT NULL,
  `ice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `detallecompra`
--

INSERT INTO `detallecompra` (`id`, `compra_id`, `cantidad`, `nombre`, `codigoProducto`, `precioUnitario`, `descuento`, `subTotal`, `iva12`, `ice`) VALUES
(1, 1, '1.00', 'prueba', 'N/A', '1.00', '0.00', '1.00', '0.12', '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_detalle` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`id_detalle`, `numero_factura`, `id_producto`, `cantidad`, `precio_venta`) VALUES
(1, 1, 2, 1, 17.86),
(8, 2, 2, 1, 17.86),
(3, 3, 2, 1, 17.86),
(4, 4, 2, 1, 17.86),
(5, 5, 1, 1, 11.61),
(6, 6, 7, 1, 1.78),
(7, 6, 1, 1, 11.61),
(9, 5, 7, 1, 0.89),
(12, 8, 1, 1, 11.61),
(11, 7, 2, 1, 17.86),
(13, 9, 10, 1, 26.79),
(14, 10, 9, 1, 17.86),
(16, 10, 10, 1, 26.78),
(17, 11, 2, 1, 17.86),
(18, 12, 2, 1, 10.71),
(19, 13, 1, 1, 11.61),
(20, 14, 10, 1, 26.79),
(21, 14, 9, 1, 17.85),
(22, 15, 1, 1, 11.61),
(23, 16, 2, 1, 17.86),
(29, 17, 5, 1, 17.86),
(25, 18, 2, 1, 17.86),
(76, 19, 9, 1, 7.86),
(75, 19, 10, 1, 10),
(77, 20, 10, 1, 22.32),
(30, 17, 28, 1, 35.71),
(31, 17, 9, 1, 7.86),
(32, 17, 10, 1, 10),
(33, 17, 9, 1, 7.86),
(34, 17, 10, 1, 10),
(35, 17, 10, 1, 22.32),
(36, 21, 9, 1, 7.86),
(37, 21, 10, 1, 10),
(78, 22, 2, 1, 17.86),
(47, 25, 1, 1, 11.61),
(45, 23, 9, 1, 17.85),
(41, 24, 10, 1, 26.79),
(42, 24, 9, 1, 17.85),
(46, 23, 10, 1, 26.79),
(48, 26, 2, 1, 17.86),
(49, 27, 9, 1, 13.4),
(50, 27, 10, 1, 4.46),
(51, 28, 2, 1, 17.86),
(52, 29, 2, 1, 17.86),
(53, 30, 1, 1, 11.61),
(54, 31, 1, 1, 11.61),
(55, 32, 1, 1, 11.61),
(56, 33, 2, 1, 17.86),
(57, 34, 2, 1, 13.39),
(58, 35, 2, 1, 17.86),
(59, 36, 1, 1, 11.61),
(60, 37, 1, 1, 11.61),
(61, 38, 2, 1, 17.86),
(62, 39, 2, 1, 17.86),
(63, 40, 1, 1, 11.61),
(64, 41, 2, 1, 17.86),
(65, 42, 1, 1, 11.61),
(66, 43, 2, 1, 17.86),
(67, 44, 2, 1, 17.86),
(68, 45, 2, 1, 17.86),
(69, 46, 2, 1, 17.86),
(70, 47, 2, 1, 17.86),
(71, 48, 1, 1, 11.61),
(72, 49, 2, 1, 17.86),
(73, 50, 2, 1, 17.86),
(74, 51, 10, 1, 26.79),
(79, 52, 10, 1, 8.93),
(80, 53, 2, 1, 17.86),
(81, 54, 1, 1, 11.61),
(82, 55, 1, 1, 11.61),
(83, 56, 2, 1, 17.86),
(84, 57, 2, 1, 17.86),
(85, 58, 2, 1, 17.86),
(86, 59, 2, 1, 17.86),
(87, 60, 2, 1, 17.86),
(88, 61, 2, 1, 17.86),
(89, 62, 2, 1, 17.86),
(90, 63, 2, 1, 17.86),
(91, 64, 2, 1, 17.86),
(92, 65, 10, 1, 8.93),
(93, 65, 2, 1, 17.86),
(94, 66, 1, 1, 8.93),
(95, 67, 2, 1, 10.71),
(96, 67, 2, 1, 17.86),
(97, 68, 2, 1, 17.86),
(98, 69, 2, 1, 17.86),
(99, 70, 2, 1, 17.86),
(104, 73, 1, 1, 11.61),
(103, 73, 1, 1, 11.61),
(102, 72, 1, 1, 11.61),
(105, 74, 2, 1, 17.86),
(106, 75, 2, 1, 17.86),
(107, 76, 1, 1, 11.61),
(108, 77, 2, 1, 17.86),
(109, 78, 2, 1, 17.86),
(110, 79, 2, 1, 17.86),
(111, 80, 2, 1, 17.86),
(112, 81, 2, 1, 17.86),
(113, 82, 2, 1, 17.86),
(114, 83, 1, 1, 11.61),
(115, 84, 2, 1, 17.86),
(116, 85, 2, 1, 17.86),
(117, 86, 2, 1, 17.86),
(118, 87, 2, 1, 13.39),
(119, 88, 2, 1, 17.86),
(120, 88, 10, 1, 17.86),
(121, 89, 2, 1, 17.86),
(122, 90, 2, 1, 17.86),
(123, 91, 2, 1, 17.86),
(124, 92, 2, 1, 17.86),
(127, 93, 1, 1, 9.82),
(126, 94, 2, 1, 17.86),
(128, 94, 1, 1, 11.61),
(129, 95, 2, 1, 17.86),
(130, 96, 2, 1, 17.86),
(131, 97, 2, 1, 17.86),
(132, 98, 1, 1, 11.61),
(133, 99, 2, 1, 17.86),
(134, 100, 2, 1, 17.86),
(135, 101, 2, 1, 17.86),
(136, 102, 2, 1, 17.86),
(137, 103, 2, 1, 17.86),
(138, 104, 2, 1, 17.86),
(139, 105, 2, 1, 17.86),
(140, 106, 2, 2, 17.86),
(141, 107, 1, 1, 11.61),
(142, 108, 2, 1, 17.86),
(143, 109, 1, 1, 11.61),
(144, 110, 2, 1, 17.86),
(145, 111, 2, 1, 17.86),
(146, 112, 2, 1, 17.86),
(147, 113, 10, 1, 8.93),
(148, 113, 2, 1, 17.86),
(149, 114, 2, 1, 17.86),
(150, 115, 2, 1, 17.86),
(151, 116, 1, 1, 11.61),
(152, 117, 10, 1, 17.86),
(153, 118, 10, 1, 31.25),
(154, 119, 2, 1, 17.86),
(155, 120, 2, 1, 17.86),
(156, 121, 2, 1, 17.86),
(157, 122, 2, 1, 17.86),
(158, 123, 2, 1, 17.86),
(159, 124, 2, 1, 17.86),
(160, 125, 2, 1, 17.86),
(161, 126, 1, 1, 11.61),
(162, 127, 2, 1, 17.86),
(163, 128, 2, 1, 17.86),
(164, 129, 2, 1, 17.86),
(165, 130, 2, 1, 17.86),
(166, 131, 2, 1, 17.86),
(167, 132, 2, 1, 17.86),
(168, 133, 2, 1, 17.86),
(169, 134, 2, 1, 17.86),
(170, 135, 2, 1, 17.86),
(171, 136, 2, 1, 17.86),
(172, 137, 2, 1, 17.86),
(173, 138, 2, 1, 17.86),
(174, 139, 1, 1, 11.61),
(175, 140, 2, 1, 13.39),
(176, 141, 2, 1, 17.86),
(177, 142, 1, 1, 11.61),
(178, 143, 2, 1, 17.86),
(179, 144, 2, 1, 17.86),
(180, 145, 2, 1, 17.86),
(181, 146, 2, 1, 17.86),
(182, 147, 2, 1, 17.86),
(183, 148, 2, 1, 17.86),
(184, 149, 2, 1, 17.86),
(185, 150, 2, 1, 17.86),
(186, 151, 2, 1, 17.86),
(187, 152, 2, 1, 17.86),
(188, 153, 2, 1, 17.86),
(189, 154, 2, 1, 17.86),
(196, 155, 1, 1, 11.61),
(191, 156, 2, 1, 17.86),
(192, 157, 2, 1, 17.86),
(193, 158, 2, 1, 17.86),
(194, 159, 2, 1, 17.86),
(197, 160, 1, 1, 11.61),
(198, 161, 2, 1, 17.86),
(199, 161, 5, 1, 17.86),
(200, 162, 2, 1, 17.86),
(201, 163, 2, 1, 17.86),
(202, 164, 2, 1, 8.93),
(203, 165, 2, 1, 17.86),
(204, 166, 2, 1, 17.86),
(205, 167, 2, 1, 17.86),
(206, 168, 2, 1, 17.86),
(207, 169, 2, 1, 17.86),
(208, 170, 2, 1, 17.86),
(209, 171, 2, 1, 17.86),
(210, 172, 2, 1, 17.86),
(211, 173, 2, 1, 17.86),
(212, 174, 2, 1, 17.86),
(213, 175, 2, 1, 17.86),
(214, 176, 1, 1, 17.86),
(215, 177, 10, 1, 11.61),
(216, 178, 2, 1, 17.86),
(217, 179, 2, 1, 17.86),
(218, 180, 2, 1, 17.86),
(219, 181, 2, 1, 17.86),
(220, 182, 2, 1, 17.86),
(221, 183, 2, 1, 17.86),
(222, 184, 2, 1, 17.86),
(223, 185, 10, 1, 11.61),
(224, 186, 2, 1, 17.86),
(225, 187, 2, 1, 17.86),
(226, 188, 2, 1, 17.86),
(227, 189, 2, 1, 17.86),
(228, 190, 2, 1, 17.86),
(229, 191, 32, 1, 35.71),
(230, 192, 10, 1, 11.61),
(231, 193, 2, 1, 17.86),
(232, 194, 2, 1, 13.39),
(233, 195, 2, 1, 17.86),
(234, 196, 10, 1, 11.61),
(235, 197, 10, 1, 11.61),
(236, 198, 2, 1, 17.86),
(237, 199, 2, 1, 17.86),
(238, 200, 2, 1, 17.86),
(239, 201, 2, 1, 17.86),
(240, 202, 2, 1, 17.86),
(241, 203, 2, 1, 17.86),
(242, 204, 1, 1, 17.86),
(243, 205, 2, 1, 17.86),
(244, 206, 2, 1, 17.86),
(245, 207, 2, 1, 17.86),
(246, 208, 2, 1, 17.86),
(247, 209, 10, 1, 8.93),
(248, 210, 2, 1, 17.86),
(249, 211, 2, 1, 17.86),
(250, 212, 2, 1, 17.86),
(251, 213, 1, 1, 17.86),
(252, 214, 1, 1, 17.86),
(253, 215, 2, 1, 8.93),
(265, 223, 2, 1, 17.86),
(262, 224, 10, 1, 8.93),
(257, 229, 2, 1, 17.86),
(258, 229, 2, 1, 17.85),
(259, 225, 2, 1, 17.86),
(260, 228, 2, 1, 17.86),
(261, 226, 2, 1, 17.86),
(264, 227, 2, 1, 11.61),
(266, 230, 2, 1, 17.86),
(267, 231, 2, 1, 17.86),
(268, 232, 2, 1, 17.86),
(269, 233, 2, 1, 17.86),
(270, 234, 10, 1, 8.93),
(271, 235, 10, 1, 11.61),
(272, 236, 2, 1, 17.86),
(273, 236, 1, 1, 31.25),
(274, 237, 2, 1, 17.86),
(275, 238, 2, 1, 17.86),
(276, 238, 1, 1, 17.86),
(277, 239, 2, 1, 17.86),
(278, 240, 1, 1, 13.39),
(279, 241, 1, 1, 22.32),
(280, 242, 1, 1, 44.64),
(281, 243, 1, 1, 44.64),
(282, 244, 1, 1, 44.64),
(283, 245, 1, 1, 44.64),
(284, 246, 1, 1, 22.32),
(285, 247, 2, 1, 17.86),
(286, 248, 2, 1, 17.86),
(287, 249, 2, 1, 17.86),
(288, 250, 2, 1, 17.86),
(289, 251, 1, 1, 44.64),
(290, 252, 1, 1, 44.64),
(291, 253, 10, 1, 11.61),
(292, 254, 2, 1, 17.86),
(293, 255, 1, 1, 49.11),
(294, 256, 2, 1, 17.86),
(295, 257, 2, 1, 17.86),
(296, 258, 2, 1, 17.86),
(297, 259, 2, 1, 17.86),
(298, 260, 1, 1, 22.32),
(299, 260, 10, 1, 11.61),
(300, 261, 10, 1, 11.92),
(301, 262, 9, 1, 8.93),
(302, 262, 1, 1, 44.64),
(303, 263, 1, 1, 26.79),
(304, 264, 1, 1, 26.79),
(305, 265, 9, 1, 8.93),
(306, 265, 1, 1, 44.64),
(307, 266, 3, 1, 26.79),
(308, 267, 1, 1, 26.79),
(309, 268, 1, 1, 53.57),
(310, 269, 2, 1, 17.86),
(311, 270, 2, 1, 17.86),
(312, 271, 2, 1, 17.86),
(313, 272, 1, 1, 22.32),
(314, 273, 2, 1, 17.86),
(315, 273, 2, 1, 17.86),
(316, 274, 1, 1, 35.71),
(317, 275, 1, 1, 8.93),
(318, 275, 2, 1, 14.88),
(319, 276, 2, 1, 8.93),
(320, 277, 2, 1, 16.07),
(321, 278, 2, 1, 8.93),
(322, 279, 2, 1, 17.86),
(323, 280, 2, 1, 17.86),
(324, 281, 2, 1, 15.33),
(325, 282, 2, 1, 8.93),
(326, 283, 2, 1, 17.86),
(327, 283, 2, 1, 3.57),
(328, 284, 10, 1, 11.61),
(329, 285, 1, 1, 13.39),
(330, 285, 10, 1, 6.25),
(331, 286, 2, 1, 17.86),
(332, 287, 2, 1, 17.86),
(333, 288, 2, 1, 17.86),
(334, 289, 2, 1, 17.86),
(335, 289, 1, 1, 17.86),
(336, 290, 2, 1, 13.39),
(337, 290, 2, 1, 17.86),
(338, 291, 1, 1, 12.5),
(339, 291, 2, 1, 5.36),
(340, 292, 2, 1, 13.69),
(341, 293, 2, 1, 17.86),
(342, 294, 2, 1, 17.86),
(343, 295, 10, 1, 11.61),
(344, 296, 3, 1, 23.95),
(345, 296, 1, 1, 8.93),
(346, 297, 2, 2, 17.86),
(347, 298, 2, 1, 17.86),
(348, 299, 10, 1, 11.61),
(349, 299, 10, 1, 11.61),
(350, 300, 1, 1, 35.71),
(351, 301, 1, 1, 58.03),
(352, 302, 1, 1, 31.25),
(353, 303, 1, 1, 8.93),
(354, 304, 1, 1, 58.04),
(355, 305, 2, 1, 17.86),
(356, 306, 2, 1, 17.86),
(357, 307, 1, 1, 17.86),
(358, 308, 1, 1, 53.57),
(359, 309, 10, 1, 11.61),
(360, 310, 2, 1, 17.86),
(361, 311, 2, 1, 8.93),
(362, 312, 1, 1, 58.04),
(363, 313, 2, 1, 17.86),
(364, 314, 2, 1, 8.93),
(365, 315, 2, 1, 8.93),
(366, 316, 1, 1, 58.04),
(367, 317, 2, 1, 8.93),
(368, 317, 2, 1, 17.86),
(369, 318, 1, 1, 17.86),
(370, 319, 2, 1, 17.86),
(371, 320, 10, 1, 11.61),
(372, 321, 2, 1, 17.86),
(373, 322, 2, 1, 17.86),
(374, 323, 2, 1, 17.86),
(375, 324, 2, 1, 17.86),
(376, 325, 1, 1, 58.04),
(377, 326, 1, 1, 17.85),
(378, 326, 10, 1, 11.61),
(379, 327, 2, 1, 17.86),
(380, 328, 2, 1, 17.86),
(381, 329, 2, 1, 13.39),
(382, 330, 2, 1, 17.86),
(383, 331, 10, 1, 6.25),
(384, 331, 10, 1, 11.61),
(385, 332, 2, 1, 17.86),
(386, 333, 2, 1, 17.86),
(387, 334, 2, 1, 17.86),
(388, 335, 10, 1, 11.61),
(389, 336, 2, 1, 17.86),
(390, 337, 2, 1, 17.86),
(391, 338, 2, 1, 17.86),
(392, 339, 2, 1, 17.86),
(393, 340, 2, 2, 17.86),
(394, 341, 2, 2, 17.86),
(395, 342, 2, 1, 17.86),
(396, 343, 2, 1, 17.86),
(397, 344, 2, 1, 17.86),
(398, 344, 2, 1, 13.39),
(399, 345, 1, 1, 58.04),
(400, 346, 1, 1, 44.64),
(401, 347, 2, 1, 17.86),
(402, 348, 1, 1, 35.71),
(403, 348, 2, 1, 17.86),
(404, 349, 2, 1, 17.86),
(405, 350, 2, 1, 17.86),
(406, 351, 10, 1, 11.61),
(407, 352, 2, 1, 17.86),
(408, 353, 2, 1, 17.86),
(409, 354, 2, 1, 17.86),
(410, 355, 10, 1, 11.61),
(411, 356, 2, 1, 17.86),
(412, 357, 2, 1, 17.86),
(413, 358, 1, 1, 71.43),
(414, 359, 1, 1, 58.04),
(415, 360, 1, 1, 53.57),
(416, 361, 10, 1, 3.13),
(417, 362, 1, 1, 26.79),
(418, 363, 2, 1, 17.86),
(419, 364, 2, 1, 17.86),
(420, 365, 1, 1, 58.03),
(421, 366, 2, 1, 17.86),
(422, 367, 2, 1, 17.86),
(423, 368, 2, 1, 17.86),
(424, 369, 2, 1, 17.86),
(425, 369, 2, 1, 17.86),
(426, 370, 2, 1, 17.86),
(427, 371, 10, 1, 11.61),
(428, 372, 2, 1, 17.86),
(429, 373, 10, 1, 11.61),
(430, 374, 2, 1, 17.86),
(431, 374, 1, 1, 26.78),
(432, 375, 2, 1, 17.86),
(433, 376, 2, 1, 17.86),
(434, 377, 2, 1, 17.86),
(435, 378, 2, 1, 17.86),
(436, 379, 2, 2, 17.86),
(437, 380, 10, 1, 11.61),
(438, 381, 2, 1, 17.86),
(439, 382, 1, 1, 4.46),
(440, 383, 2, 1, 11.03),
(441, 384, 2, 1, 17.86),
(442, 385, 2, 1, 17.86),
(443, 386, 2, 1, 17.86),
(444, 387, 2, 1, 17.86),
(445, 388, 2, 1, 17.86),
(446, 389, 2, 1, 17.86),
(447, 390, 1, 1, 8.93),
(448, 390, 2, 1, 17.86),
(449, 391, 2, 1, 17.86),
(450, 392, 10, 1, 11.61),
(451, 393, 2, 1, 17.86),
(452, 394, 2, 1, 17.86),
(456, 395, 10, 1, 11.61),
(454, 396, 10, 1, 8.13),
(455, 397, 2, 1, 17.86),
(457, 398, 2, 1, 17.86),
(458, 399, 2, 1, 17.86),
(459, 400, 2, 1, 17.86),
(460, 401, 2, 1, 17.86),
(461, 402, 10, 1, 11.61),
(462, 403, 2, 1, 17.86),
(463, 404, 2, 1, 5.95),
(464, 405, 2, 1, 17.86),
(465, 406, 2, 1, 17.86),
(466, 407, 2, 1, 17.86),
(467, 408, 10, 1, 11.61),
(468, 408, 10, 1, 11.61),
(469, 409, 31, 1, 12.5),
(470, 410, 3, 1, 12.5),
(471, 411, 2, 1, 17.86),
(472, 412, 2, 1, 17.86),
(480, 414, 2, 1, 17.86),
(479, 413, 2, 1, 17.86),
(481, 415, 1, 1, 58.04),
(482, 416, 2, 1, 17.86),
(483, 416, 2, 1, 17.86),
(484, 417, 2, 1, 17.86),
(485, 417, 2, 1, 17.86),
(486, 418, 10, 1, 11.61),
(487, 419, 2, 1, 17.86),
(488, 419, 1, 1, 22.32),
(489, 420, 1, 1, 8.93),
(490, 420, 10, 1, 11.61),
(491, 421, 2, 1, 17.86),
(492, 422, 10, 1, 11.61),
(493, 423, 2, 1, 17.86),
(494, 424, 2, 1, 17.86),
(495, 425, 2, 1, 17.86),
(496, 426, 10, 1, 11.61),
(497, 427, 2, 1, 17.86),
(498, 428, 2, 1, 17.86),
(499, 429, 2, 1, 17.86),
(500, 430, 2, 1, 17.86),
(501, 431, 10, 1, 11.61),
(502, 432, 2, 2, 17.86),
(503, 433, 2, 2, 17.86),
(504, 434, 2, 1, 17.86),
(505, 435, 2, 1, 17.86),
(506, 436, 2, 1, 17.86),
(507, 437, 2, 1, 17.86),
(508, 438, 2, 1, 17.86),
(509, 439, 10, 1, 11.61),
(510, 440, 2, 1, 17.86),
(511, 441, 2, 1, 17.86),
(512, 442, 10, 1, 11.61),
(513, 443, 2, 1, 17.86),
(514, 444, 2, 1, 17.86),
(515, 445, 2, 1, 17.86),
(516, 446, 2, 1, 17.86),
(517, 447, 2, 1, 17.86),
(518, 448, 2, 1, 17.86),
(519, 449, 2, 1, 17.86),
(521, 450, 2, 1, 17.86),
(522, 451, 2, 1, 17.86),
(523, 452, 2, 1, 17.86),
(524, 453, 2, 1, 17.86),
(525, 454, 2, 1, 17.86),
(526, 455, 2, 1, 17.86),
(528, 456, 10, 1, 11.61),
(529, 457, 2, 1, 17.86),
(530, 458, 10, 1, 11.61),
(531, 459, 2, 1, 17.86),
(532, 460, 2, 1, 17.86),
(533, 461, 2, 1, 17.86),
(534, 462, 2, 1, 17.86),
(535, 463, 2, 1, 17.86),
(536, 464, 2, 1, 17.86),
(537, 465, 2, 1, 17.86),
(538, 466, 2, 1, 17.86),
(539, 467, 2, 1, 17.86),
(540, 468, 10, 1, 11.61),
(541, 469, 2, 1, 17.86),
(542, 470, 2, 1, 17.86),
(543, 471, 10, 1, 11.61),
(544, 472, 10, 1, 11.61),
(545, 473, 10, 1, 11.61),
(546, 474, 2, 1, 17.86),
(547, 475, 2, 1, 17.86),
(548, 476, 2, 1, 17.86),
(549, 479, 2, 1, 17.86),
(550, 479, 10, 1, 11.61),
(552, 478, 2, 1, 17.86),
(553, 480, 2, 1, 17.86),
(554, 481, 2, 1, 17.86),
(555, 482, 10, 1, 11.61),
(556, 482, 10, 1, 11.61),
(557, 483, 2, 1, 17.86),
(558, 484, 2, 1, 17.86),
(559, 485, 2, 2, 17.86),
(560, 486, 2, 1, 17.86),
(561, 477, 2, 1, 17.86),
(562, 487, 31, 1, 25),
(563, 488, 2, 2, 17.86),
(564, 489, 10, 1, 11.61),
(565, 490, 2, 1, 17.86),
(566, 491, 2, 1, 17.86),
(567, 492, 2, 1, 17.86),
(568, 493, 2, 1, 17.86),
(569, 494, 2, 1, 17.86),
(570, 495, 2, 1, 17.86),
(571, 496, 2, 2, 17.86),
(572, 497, 10, 1, 11.61),
(573, 498, 10, 1, 11.61),
(574, 499, 2, 1, 17.86),
(575, 500, 2, 1, 17.86),
(576, 501, 2, 1, 17.86),
(577, 502, 2, 1, 17.86),
(578, 503, 3, 1, 25),
(579, 504, 2, 1, 17.86);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emisor`
--

CREATE TABLE `emisor` (
  `id` int(11) NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `ruc` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `ambiente` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `tipoEmision` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `razonSocial` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `nombreComercial` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccionMatriz` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `contribuyenteEspecial` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `obligadoContabilidad` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `dirLogo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dirFirma` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dirDocAutorizados` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `passFirma` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `servidorCorreo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `correoRemitente` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passCorreo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `puerto` int(11) NOT NULL,
  `SSLHabilitado` tinyint(1) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `cantComprobante` int(11) NOT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `regimenMicroempresa` tinyint(1) DEFAULT NULL,
  `regimenRimpe` tinyint(1) DEFAULT NULL,
  `regimenRimpe1` tinyint(1) DEFAULT NULL,
  `resolucionAgenteRetencion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `emisor`
--

INSERT INTO `emisor` (`id`, `plan_id`, `ruc`, `ambiente`, `tipoEmision`, `razonSocial`, `nombreComercial`, `direccionMatriz`, `contribuyenteEspecial`, `obligadoContabilidad`, `dirLogo`, `dirFirma`, `dirDocAutorizados`, `passFirma`, `servidorCorreo`, `correoRemitente`, `passCorreo`, `puerto`, `SSLHabilitado`, `activo`, `cantComprobante`, `fechaInicio`, `fechaFin`, `regimenMicroempresa`, `regimenRimpe`, `regimenRimpe1`, `resolucionAgenteRetencion`, `createdAt`, `updatedAt`, `createdBy_id`, `updatedBy_id`, `deletedBy_id`) VALUES
(1, NULL, '1003640511001', '1', '1', 'MAURICIO RENE SANCHEZ CALUGULLIN', 'VELOSAN COMUNICACIONES', 'PIJAL ALTO CALLE PRINCIPAL A 500MTR. DE LA PANAMERICANA', NULL, 'NO', '/home/renesan1/public_html/facturacion/facturas/Recuperado.png', '/home/renesan1/public_html/facturacion/facturas/1003640511001.p12', '/home/renesan1/public_html/facturacion/facturas', 'Renesan-02', 'host.velosan.org', 'info@velosan.org', 'renesan020491', 465, 1, 1, 0, '0000-00-00', '0000-00-00', NULL, 0, 1, NULL, '2016-08-16 00:13:22', '2022-03-20 11:30:24', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(11) NOT NULL,
  `codi_equipo` text NOT NULL,
  `nombre_equipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `codi_equipo`, `nombre_equipo`) VALUES
(1, 'ubnt', 'UBIQUITI'),
(2, 'MTK', 'MIKROTIK'),
(3, 'TPL', 'TP-LINK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimiento`
--

CREATE TABLE `establecimiento` (
  `id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `urlweb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombreComercial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailCopia` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `dirLogo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secuencialProforma` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `establecimiento`
--

INSERT INTO `establecimiento` (`id`, `emisor_id`, `nombre`, `codigo`, `urlweb`, `nombreComercial`, `direccion`, `emailCopia`, `activo`, `dirLogo`, `secuencialProforma`, `createdAt`, `updatedAt`, `createdBy_id`, `updatedBy_id`, `deletedBy_id`) VALUES
(1, 1, 'principal', '001', 'https://velosan.ec', 'Velosan Comunicaciones', 'Pijal alto calle principal a 500mtr. de la panamericana', NULL, 1, '/home/renesan1/public_html/facturacion/facturas/Recuperado (1).png', 9, '2021-06-30 00:20:31', '2021-09-16 11:15:00', 1, 2, NULL),
(4, 4, 'matriz', '001', NULL, 'velosan Comunicaciones', 'Pijal alto calle principal a 500 mtr. de la panamericana', NULL, 1, NULL, 0, '2021-03-07 15:14:55', '2021-03-07 15:14:55', 9, 9, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `establecimiento_id` int(11) NOT NULL,
  `claveAcceso` varchar(49) COLLATE utf8_unicode_ci NOT NULL,
  `numeroAutorizacion` varchar(49) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaAutorizacion` datetime DEFAULT NULL,
  `estado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ambiente` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `tipoEmision` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secuencial` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `formaPago` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `plazo` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaEmision` date NOT NULL,
  `nombreArchivo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalSinImpuestos` decimal(10,2) NOT NULL,
  `subtotal12` decimal(10,2) NOT NULL,
  `subtotal0` decimal(10,2) NOT NULL,
  `subtotalNoIVA` decimal(10,2) NOT NULL,
  `subtotalExentoIVA` decimal(10,2) NOT NULL,
  `valorICE` decimal(10,2) NOT NULL,
  `valorIRBPNR` decimal(10,2) NOT NULL,
  `iva12` decimal(10,2) NOT NULL,
  `totalDescuento` decimal(10,2) NOT NULL,
  `propina` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  `totalSubsidio` decimal(10,2) DEFAULT NULL,
  `totalSinSubsidio` decimal(10,2) DEFAULT NULL,
  `totalSubsidioSinIva` decimal(10,2) DEFAULT NULL,
  `firmado` tinyint(1) NOT NULL,
  `enviarSiAutorizado` tinyint(1) NOT NULL,
  `observacion` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carga_automatica` tinyint(1) NOT NULL,
  `id_factura_carga` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `ptoEmision_id` int(11) NOT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `cliente_id`, `emisor_id`, `establecimiento_id`, `claveAcceso`, `numeroAutorizacion`, `fechaAutorizacion`, `estado`, `ambiente`, `tipoEmision`, `secuencial`, `formaPago`, `plazo`, `fechaEmision`, `nombreArchivo`, `totalSinImpuestos`, `subtotal12`, `subtotal0`, `subtotalNoIVA`, `subtotalExentoIVA`, `valorICE`, `valorIRBPNR`, `iva12`, `totalDescuento`, `propina`, `valorTotal`, `totalSubsidio`, `totalSinSubsidio`, `totalSubsidioSinIva`, `firmado`, `enviarSiAutorizado`, `observacion`, `carga_automatica`, `id_factura_carga`, `createdAt`, `updatedAt`, `ptoEmision_id`, `createdBy_id`, `updatedBy_id`, `deletedBy_id`) VALUES
(72, 18, 4, 4, '0408202001100364051100120010020000000011234567813', '0408202001100364051100120010020000000011234567813', '2020-08-04 10:35:33', 'AUTORIZADO', '2', '1', '000000001', '01', NULL, '2020-08-04', 'FAC001-001-000000001', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, ' ', 0, NULL, '2020-08-04 08:31:23', '2020-08-04 08:31:23', 4, 9, 9, NULL),
(390, 81, 4, 4, '0103202101100364051100120010010000003181234567818', '0103202101100364051100120010010000003181234567818', '2021-03-07 03:32:34', 'AUTORIZADO', '2', '1', '000000318', '01', NULL, '2021-03-01', 'FAC001-001-000000318', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-07 20:31:54', '2021-03-07 20:32:35', 4, 9, 9, NULL),
(391, 64, 4, 4, '0503202101100364051100120010010000003191234567811', '0503202101100364051100120010010000003191234567811', '2021-03-09 06:11:09', 'AUTORIZADO', '2', '1', '000000319', '01', NULL, '2021-03-05', 'FAC001-001-000000319', '35.71', '35.71', '0.00', '0.00', '0.00', '0.00', '0.00', '4.28', '0.00', '0.00', '39.99', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-09 11:08:47', '2021-03-09 11:11:11', 4, 9, 9, NULL),
(392, 83, 4, 4, '0503202101100364051100120010010000003201234567817', '0503202101100364051100120010010000003201234567817', '2021-03-09 06:23:33', 'AUTORIZADO', '2', '1', '000000320', '01', NULL, '2021-03-05', 'FAC001-001-000000320', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-09 11:23:13', '2021-03-09 11:23:34', 4, 9, 9, NULL),
(393, 72, 4, 4, '0503202101100364051100120010010000003211234567812', '0503202101100364051100120010010000003211234567812', '2021-03-09 08:30:49', 'AUTORIZADO', '2', '1', '000000321', '01', NULL, '2021-03-05', 'FAC001-001-000000321', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-10 01:30:07', '2021-03-10 01:30:50', 4, 9, 9, NULL),
(394, 60, 4, 4, '0503202101100364051100120010010000003221234567818', '0503202101100364051100120010010000003221234567818', '2021-03-09 08:41:43', 'AUTORIZADO', '2', '1', '000000322', '01', NULL, '2021-03-05', 'FAC001-001-000000322', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-10 01:41:25', '2021-03-10 01:41:44', 4, 9, 9, NULL),
(395, 1, 4, 4, '0503202101100364051100120010010000003231234567813', '0503202101100364051100120010010000003231234567813', '2021-03-09 08:57:18', 'AUTORIZADO', '2', '1', '000000323', '01', NULL, '2021-03-05', 'FAC001-001-000000323', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-10 01:56:57', '2021-03-10 01:57:19', 4, 9, 9, NULL),
(396, 62, 4, 4, '0503202101100364051100120010010000003241234567819', '0503202101100364051100120010010000003241234567819', '2021-03-10 06:08:49', 'AUTORIZADO', '2', '1', '000000324', '01', NULL, '2021-03-05', 'FAC001-001-000000324', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-10 11:08:20', '2021-03-10 11:08:51', 4, 9, 9, NULL),
(397, 5, 4, 4, '0603202101100364051100120010010000003251234567819', '0603202101100364051100120010010000003251234567819', '2021-03-10 06:15:15', 'AUTORIZADO', '2', '1', '000000325', '01', NULL, '2021-03-06', 'FAC001-001-000000325', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-10 11:14:50', '2021-03-10 11:15:16', 4, 9, 9, NULL),
(398, 8, 4, 4, '0603202101100364051100120010010000003261234567814', '0603202101100364051100120010010000003261234567814', '2021-03-12 08:25:50', 'AUTORIZADO', '2', '1', '000000326', '01', NULL, '2021-03-06', 'FAC001-001-000000326', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-13 01:25:34', '2021-03-13 01:25:51', 4, 9, 9, NULL),
(399, 54, 4, 4, '1203202101100364051100120010010000003271234567815', '1203202101100364051100120010010000003271234567815', '2021-03-12 09:26:41', 'AUTORIZADO', '2', '1', '000000327', '01', NULL, '2021-03-12', 'FAC001-001-000000327', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-13 02:26:23', '2021-03-13 02:26:42', 4, 9, 9, NULL),
(400, 83, 4, 4, '1203202101100364051100120010010000003281234567810', '1203202101100364051100120010010000003281234567810', '2021-03-17 03:35:48', 'AUTORIZADO', '2', '1', '000000328', '01', NULL, '2021-03-12', 'FAC001-001-000000328', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-17 20:33:44', '2021-03-17 20:35:50', 4, 9, 9, NULL),
(401, 34, 4, 4, '1703202101100364051100120010010000003291234567819', '1703202101100364051100120010010000003291234567819', '2021-03-17 07:12:02', 'AUTORIZADO', '2', '1', '000000329', '01', NULL, '2021-03-17', 'FAC001-001-000000329', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-18 00:11:47', '2021-03-18 00:12:04', 4, 9, 9, NULL),
(402, 67, 4, 4, '1703202101100364051100120010010000003301234567814', '1703202101100364051100120010010000003301234567814', '2021-03-18 10:42:45', 'AUTORIZADO', '2', '1', '000000330', '01', NULL, '2021-03-17', 'FAC001-001-000000330', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-18 15:42:27', '2021-03-18 15:42:46', 4, 9, 9, NULL),
(403, 59, 4, 4, '1703202101100364051100120010010000003311234567811', '1703202101100364051100120010010000003311234567811', '2021-03-18 10:44:01', 'AUTORIZADO', '2', '1', '000000331', '01', NULL, '2021-03-17', 'FAC001-001-000000331', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-18 15:43:45', '2021-03-18 15:44:02', 4, 9, 9, NULL),
(404, 36, 4, 4, '1703202101100364051100120010010000003321234567815', '1703202101100364051100120010010000003321234567815', '2021-03-18 02:08:01', 'AUTORIZADO', '2', '1', '000000332', '01', NULL, '2021-03-17', 'FAC001-001-000000332', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-18 19:07:45', '2021-03-18 19:08:02', 4, 9, 9, NULL),
(405, 25, 4, 4, '1703202101100364051100120010010000003331234567810', '1703202101100364051100120010010000003331234567810', '2021-03-18 02:10:11', 'AUTORIZADO', '2', '1', '000000333', '01', NULL, '2021-03-17', 'FAC001-001-000000333', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-18 19:09:55', '2021-03-18 19:10:12', 4, 9, 9, NULL),
(406, 71, 4, 4, '1703202101100364051100120010010000003341234567816', '1703202101100364051100120010010000003341234567816', '2021-03-18 02:10:58', 'AUTORIZADO', '2', '1', '000000334', '01', NULL, '2021-03-17', 'FAC001-001-000000334', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-18 19:10:42', '2021-03-18 19:11:00', 4, 9, 9, NULL),
(407, 94, 4, 4, '1703202101100364051100120010010000003351234567811', '1703202101100364051100120010010000003351234567811', '2021-03-18 02:12:53', 'AUTORIZADO', '2', '1', '000000335', '01', NULL, '2021-03-17', 'FAC001-001-000000335', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-18 19:12:37', '2021-03-18 19:12:55', 4, 9, 9, NULL),
(408, 69, 4, 4, '1703202101100364051100120010010000003361234567817', '1703202101100364051100120010010000003361234567817', '2021-03-18 02:50:57', 'AUTORIZADO', '2', '1', '000000336', '01', NULL, '2021-03-17', 'FAC001-001-000000336', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-18 19:50:37', '2021-03-18 19:50:58', 4, 9, 9, NULL),
(409, 6, 4, 4, '1903202101100364051100120010010000003371234567811', '1903202101100364051100120010010000003371234567811', '2021-03-19 08:43:49', 'AUTORIZADO', '2', '1', '000000337', '01', NULL, '2021-03-19', 'FAC001-001-000000337', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-19 13:43:30', '2021-03-19 13:43:50', 4, 9, 9, NULL),
(410, 7, 4, 4, '1903202101100364051100120010010000003381234567817', '1903202101100364051100120010010000003381234567817', '2021-03-19 08:44:36', 'AUTORIZADO', '2', '1', '000000338', '01', NULL, '2021-03-19', 'FAC001-001-000000338', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-19 13:44:20', '2021-03-19 13:44:37', 4, 9, 9, NULL),
(411, 10, 4, 4, '1903202101100364051100120010010000003391234567812', '1903202101100364051100120010010000003391234567812', '2021-03-19 08:45:38', 'AUTORIZADO', '2', '1', '000000339', '01', NULL, '2021-03-19', 'FAC001-001-000000339', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-19 13:45:10', '2021-03-19 13:45:39', 4, 9, 9, NULL),
(412, 5, 4, 4, '1903202101100364051100120010010000003401234567818', '1903202101100364051100120010010000003401234567818', '2021-03-19 08:46:34', 'AUTORIZADO', '2', '1', '000000340', '01', NULL, '2021-03-19', 'FAC001-001-000000340', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-19 13:46:20', '2021-03-19 13:46:36', 4, 9, 9, NULL),
(413, 84, 4, 4, '3003202101100364051100120010010000003411234567811', '3003202101100364051100120010010000003411234567811', '2021-03-30 03:10:36', 'AUTORIZADO', '2', '1', '000000341', '01', NULL, '2021-03-30', 'FAC001-001-000000341', '25.00', '25.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', '0.00', '28.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-03-30 20:10:16', '2021-03-30 20:10:37', 4, 9, 9, NULL),
(414, 1, 4, 4, '0104202101100364051100120010010000003421234567815', '0104202101100364051100120010010000003421234567815', '2021-04-01 02:52:44', 'AUTORIZADO', '2', '1', '000000342', '01', NULL, '2021-04-01', 'FAC001-001-000000342', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 1, '', 0, NULL, '2021-04-01 19:51:40', '2021-04-01 19:52:53', 4, 9, 9, NULL),
(415, 7, 4, 4, '0104202101100364051100120010010000003431234567810', '0104202101100364051100120010010000003431234567810', '2021-04-01 02:58:07', 'AUTORIZADO', '2', '1', '000000343', '01', NULL, '2021-04-01', 'FAC001-001-000000343', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-01 19:57:45', '2021-04-01 19:58:08', 4, 9, 9, NULL),
(416, 108, 4, 4, '0504202101100364051100120010010000003441234567814', '0504202101100364051100120010010000003441234567814', '2021-04-05 11:39:58', 'AUTORIZADO', '2', '1', '000000344', '01', NULL, '2021-04-05', 'FAC001-001-000000344', '53.57', '53.57', '0.00', '0.00', '0.00', '0.00', '0.00', '6.43', '0.00', '0.00', '60.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-05 16:37:43', '2021-04-05 16:39:59', 4, 9, 9, NULL),
(417, 78, 4, 4, '0504202101100364051100120010010000003451234567811', '0504202101100364051100120010010000003451234567811', '2021-04-05 04:15:10', 'AUTORIZADO', '2', '1', '000000345', '01', NULL, '2021-04-05', 'FAC001-001-000000345', '16.06', '16.06', '0.00', '0.00', '0.00', '0.00', '0.00', '1.93', '1.80', '0.00', '17.99', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-05 21:14:49', '2021-04-05 21:15:11', 4, 9, 9, NULL),
(418, 99, 4, 4, '1104202101100364051100120010010000003461234567810', '1104202101100364051100120010010000003461234567810', '2021-04-11 01:30:55', 'AUTORIZADO', '2', '1', '000000346', '01', NULL, '2021-04-11', 'FAC001-001-000000346', '16.06', '16.06', '0.00', '0.00', '0.00', '0.00', '0.00', '1.93', '1.80', '0.00', '17.99', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-11 18:30:29', '2021-04-11 18:30:55', 4, 9, 9, NULL),
(419, 22, 4, 4, '1104202101100364051100120010010000003471234567816', '1104202101100364051100120010010000003471234567816', '2021-04-12 08:50:03', 'AUTORIZADO', '2', '1', '000000347', '01', NULL, '2021-04-11', 'FAC001-001-000000347', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 13:49:34', '2021-04-12 13:50:04', 4, 9, 9, NULL),
(420, 21, 4, 4, '1104202101100364051100120010010000003481234567811', '1104202101100364051100120010010000003481234567811', '2021-04-12 08:51:22', 'AUTORIZADO', '2', '1', '000000348', '01', NULL, '2021-04-11', 'FAC001-001-000000348', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 13:50:49', '2021-04-12 13:51:22', 4, 9, 9, NULL),
(421, 15, 4, 4, '1104202101100364051100120010010000003491234567817', '1104202101100364051100120010010000003491234567817', '2021-04-12 08:52:16', 'AUTORIZADO', '2', '1', '000000349', '01', NULL, '2021-04-11', 'FAC001-001-000000349', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 13:51:55', '2021-04-12 13:52:17', 4, 9, 9, NULL),
(422, 70, 4, 4, '1104202101100364051100120010010000003501234567812', '1104202101100364051100120010010000003501234567812', '2021-04-12 08:54:33', 'AUTORIZADO', '2', '1', '000000350', '01', NULL, '2021-04-11', 'FAC001-001-000000350', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 13:54:12', '2021-04-12 13:54:34', 4, 9, 9, NULL),
(423, 47, 4, 4, '1104202101100364051100120010010000003511234567818', '1104202101100364051100120010010000003511234567818', '2021-04-12 08:55:43', 'AUTORIZADO', '2', '1', '000000351', '01', NULL, '2021-04-11', 'FAC001-001-000000351', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 13:55:19', '2021-04-12 13:55:43', 4, 9, 9, NULL),
(424, 49, 4, 4, '1204202101100364051100120010010000003521234567818', '1204202101100364051100120010010000003521234567818', '2021-04-12 08:56:51', 'AUTORIZADO', '2', '1', '000000352', '01', NULL, '2021-04-12', 'FAC001-001-000000352', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 13:56:28', '2021-04-12 13:56:52', 4, 9, 9, NULL),
(425, 53, 4, 4, '1104202101100364051100120010010000003531234567819', '1104202101100364051100120010010000003531234567819', '2021-04-12 09:00:11', 'AUTORIZADO', '2', '1', '000000353', '01', NULL, '2021-04-11', 'FAC001-001-000000353', '22.32', '22.32', '0.00', '0.00', '0.00', '0.00', '0.00', '2.68', '0.00', '0.00', '25.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 13:59:49', '2021-04-12 14:00:12', 4, 9, 9, NULL),
(426, 60, 4, 4, '1204202101100364051100120010010000003541234567819', '1204202101100364051100120010010000003541234567819', '2021-04-12 09:01:12', 'AUTORIZADO', '2', '1', '000000354', '01', NULL, '2021-04-12', 'FAC001-001-000000354', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:00:50', '2021-04-12 14:01:13', 4, 9, 9, NULL),
(427, 57, 4, 4, '1204202101100364051100120010010000003551234567814', '1204202101100364051100120010010000003551234567814', '2021-04-12 09:02:03', 'AUTORIZADO', '2', '1', '000000355', '01', NULL, '2021-04-12', 'FAC001-001-000000355', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:01:43', '2021-04-12 14:02:04', 4, 9, 9, NULL),
(428, 59, 4, 4, '1204202101100364051100120010010000003561234567811', '1204202101100364051100120010010000003561234567811', '2021-04-12 09:02:59', 'AUTORIZADO', '2', '1', '000000356', '01', NULL, '2021-04-12', 'FAC001-001-000000356', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:02:38', '2021-04-12 14:03:00', 4, 9, 9, NULL),
(429, 63, 4, 4, '1204202101100364051100120010010000003571234567815', '1204202101100364051100120010010000003571234567815', '2021-04-12 09:04:16', 'AUTORIZADO', '2', '1', '000000357', '01', NULL, '2021-04-12', 'FAC001-001-000000357', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:03:56', '2021-04-12 14:04:17', 4, 9, 9, NULL),
(430, 68, 4, 4, '1204202101100364051100120010010000003581234567810', '1204202101100364051100120010010000003581234567810', '2021-04-12 09:05:11', 'AUTORIZADO', '2', '1', '000000358', '01', NULL, '2021-04-12', 'FAC001-001-000000358', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:04:52', '2021-04-12 14:05:11', 4, 9, 9, NULL),
(431, 72, 4, 4, '1204202101100364051100120010010000003591234567816', '1204202101100364051100120010010000003591234567816', '2021-04-12 09:08:43', 'AUTORIZADO', '2', '1', '000000359', '01', NULL, '2021-04-12', 'FAC001-001-000000359', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:08:17', '2021-04-12 14:08:43', 4, 9, 9, NULL),
(432, 75, 4, 4, '1204202101100364051100120010010000003601234567811', '1204202101100364051100120010010000003601234567811', '2021-04-12 09:09:50', 'AUTORIZADO', '2', '1', '000000360', '01', NULL, '2021-04-12', 'FAC001-001-000000360', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:09:28', '2021-04-12 14:09:51', 4, 9, 9, NULL),
(433, 77, 4, 4, '1204202101100364051100120010010000003611234567817', '1204202101100364051100120010010000003611234567817', '2021-04-12 09:10:39', 'AUTORIZADO', '2', '1', '000000361', '01', NULL, '2021-04-12', 'FAC001-001-000000361', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:10:14', '2021-04-12 14:10:39', 4, 9, 9, NULL),
(434, 80, 4, 4, '1204202101100364051100120010010000003621234567812', '1204202101100364051100120010010000003621234567812', '2021-04-12 09:11:36', 'AUTORIZADO', '2', '1', '000000362', '01', NULL, '2021-04-12', 'FAC001-001-000000362', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:11:16', '2021-04-12 14:11:37', 4, 9, 9, NULL),
(435, 81, 4, 4, '1204202101100364051100120010010000003631234567818', '1204202101100364051100120010010000003631234567818', '2021-04-12 09:12:30', 'AUTORIZADO', '2', '1', '000000363', '01', NULL, '2021-04-12', 'FAC001-001-000000363', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:12:08', '2021-04-12 14:12:31', 4, 9, 9, NULL),
(436, 82, 4, 4, '1204202101100364051100120010010000003641234567813', '1204202101100364051100120010010000003641234567813', '2021-04-12 09:13:28', 'AUTORIZADO', '2', '1', '000000364', '01', NULL, '2021-04-12', 'FAC001-001-000000364', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:13:11', '2021-04-12 14:13:29', 4, 9, 9, NULL),
(437, 86, 4, 4, '1204202101100364051100120010010000003651234567819', '1204202101100364051100120010010000003651234567819', '2021-04-12 09:15:14', 'AUTORIZADO', '2', '1', '000000365', '01', NULL, '2021-04-12', 'FAC001-001-000000365', '25.00', '25.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', '0.00', '28.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:14:47', '2021-04-12 14:15:15', 4, 9, 9, NULL),
(438, 89, 4, 4, '1204202101100364051100120010010000003661234567814', '1204202101100364051100120010010000003661234567814', '2021-04-12 09:16:04', 'AUTORIZADO', '2', '1', '000000366', '01', NULL, '2021-04-12', 'FAC001-001-000000366', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:15:42', '2021-04-12 14:16:05', 4, 9, 9, NULL),
(439, 92, 4, 4, '1204202101100364051100120010010000003671234567811', '1204202101100364051100120010010000003671234567811', '2021-04-12 09:19:12', 'AUTORIZADO', '2', '1', '000000367', '01', NULL, '2021-04-12', 'FAC001-001-000000367', '13.40', '13.40', '0.00', '0.00', '0.00', '0.00', '0.00', '1.61', '4.47', '0.00', '15.01', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:18:51', '2021-04-12 14:19:13', 4, 9, 9, NULL),
(440, 97, 4, 4, '1204202101100364051100120010010000003681234567815', '1204202101100364051100120010010000003681234567815', '2021-04-12 09:20:38', 'AUTORIZADO', '2', '1', '000000368', '01', NULL, '2021-04-12', 'FAC001-001-000000368', '23.21', '23.21', '0.00', '0.00', '0.00', '0.00', '0.00', '2.79', '0.00', '0.00', '26.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:20:14', '2021-04-12 14:20:39', 4, 9, 9, NULL),
(441, 98, 4, 4, '1204202101100364051100120010010000003691234567810', '1204202101100364051100120010010000003691234567810', '2021-04-12 09:21:25', 'AUTORIZADO', '2', '1', '000000369', '01', NULL, '2021-04-12', 'FAC001-001-000000369', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:21:06', '2021-04-12 14:21:26', 4, 9, 9, NULL),
(442, 105, 4, 4, '1204202101100364051100120010010000003701234567816', '1204202101100364051100120010010000003701234567816', '2021-04-12 09:23:15', 'AUTORIZADO', '2', '1', '000000370', '01', NULL, '2021-04-12', 'FAC001-001-000000370', '22.32', '22.32', '0.00', '0.00', '0.00', '0.00', '0.00', '2.68', '0.00', '0.00', '25.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-04-12 14:22:48', '2021-04-12 14:23:16', 4, 9, 9, NULL),
(443, 108, 4, 4, '0505202101100364051100120010010000003711234567818', '0505202101100364051100120010010000003711234567818', '2021-05-05 01:06:25', 'AUTORIZADO', '2', '1', '000000371', '01', NULL, '2021-05-05', 'FAC001-001-000000371', '14.29', '14.29', '0.00', '0.00', '0.00', '0.00', '0.00', '1.71', '0.00', '0.00', '16.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-05 17:51:13', '2021-05-05 18:06:28', 4, 9, 9, NULL),
(444, 81, 4, 4, '0505202101100364051100120010010000003721234567813', '0505202101100364051100120010010000003721234567813', '2021-05-10 08:00:54', 'AUTORIZADO', '2', '1', '000000372', '01', NULL, '2021-05-05', 'FAC001-001-000000372', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:00:28', '2021-05-10 13:00:56', 4, 9, 9, NULL),
(445, 57, 4, 4, '0505202101100364051100120010010000003731234567819', '0505202101100364051100120010010000003731234567819', '2021-05-10 08:02:17', 'AUTORIZADO', '2', '1', '000000373', '01', NULL, '2021-05-05', 'FAC001-001-000000373', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:01:45', '2021-05-10 13:02:19', 4, 9, 9, NULL),
(446, 13, 4, 4, '0505202101100364051100120010010000003741234567814', '0505202101100364051100120010010000003741234567814', '2021-05-10 08:03:18', 'AUTORIZADO', '2', '1', '000000374', '01', NULL, '2021-05-05', 'FAC001-001-000000374', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:02:59', '2021-05-10 13:03:21', 4, 9, 9, NULL),
(447, 39, 4, 4, '0505202101100364051100120010010000003751234567811', '0505202101100364051100120010010000003751234567811', '2021-05-10 08:04:18', 'AUTORIZADO', '2', '1', '000000375', '01', NULL, '2021-05-05', 'FAC001-001-000000375', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:03:58', '2021-05-10 13:04:21', 4, 9, 9, NULL),
(448, 75, 4, 4, '0505202101100364051100120010010000003761234567815', '0505202101100364051100120010010000003761234567815', '2021-05-10 08:05:35', 'AUTORIZADO', '2', '1', '000000376', '01', NULL, '2021-05-05', 'FAC001-001-000000376', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:05:01', '2021-05-10 13:05:36', 4, 9, 9, NULL),
(449, 92, 4, 4, '0505202101100364051100120010010000003771234567810', '0505202101100364051100120010010000003771234567810', '2021-05-10 08:06:37', 'AUTORIZADO', '2', '1', '000000377', '01', NULL, '2021-05-05', 'FAC001-001-000000377', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:06:11', '2021-05-10 13:06:39', 4, 9, 9, NULL),
(450, 91, 4, 4, '0505202101100364051100120010010000003781234567816', '0505202101100364051100120010010000003781234567816', '2021-05-10 08:08:13', 'AUTORIZADO', '2', '1', '000000378', '01', NULL, '2021-05-05', 'FAC001-001-000000378', '23.21', '23.21', '0.00', '0.00', '0.00', '0.00', '0.00', '2.79', '0.00', '0.00', '26.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:07:46', '2021-05-10 13:08:14', 4, 9, 9, NULL),
(451, 98, 4, 4, '0605202101100364051100120010010000003791234567816', '0605202101100364051100120010010000003791234567816', '2021-05-10 08:09:14', 'AUTORIZADO', '2', '1', '000000379', '01', NULL, '2021-05-06', 'FAC001-001-000000379', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:08:53', '2021-05-10 13:09:15', 4, 9, 9, NULL),
(452, 107, 4, 4, '0605202101100364051100120010010000003801234567811', '0605202101100364051100120010010000003801234567811', '2021-05-10 08:11:00', 'AUTORIZADO', '2', '1', '000000380', '01', NULL, '2021-05-06', 'FAC001-001-000000380', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:10:39', '2021-05-10 13:11:02', 4, 9, 9, NULL),
(453, 8, 4, 4, '0605202101100364051100120010010000003811234567817', '0605202101100364051100120010010000003811234567817', '2021-05-10 08:12:53', 'AUTORIZADO', '2', '1', '000000381', '01', NULL, '2021-05-06', 'FAC001-001-000000381', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:12:33', '2021-05-10 13:12:55', 4, 9, 9, NULL),
(454, 1, 4, 4, '0705202101100364051100120010010000003821234567817', '0705202101100364051100120010010000003821234567817', '2021-05-10 08:13:56', 'AUTORIZADO', '2', '1', '000000382', '01', NULL, '2021-05-07', 'FAC001-001-000000382', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:13:28', '2021-05-10 13:13:58', 4, 9, 9, NULL),
(455, 50, 4, 4, '0705202101100364051100120010010000003831234567812', '0705202101100364051100120010010000003831234567812', '2021-05-10 08:15:01', 'AUTORIZADO', '2', '1', '000000383', '01', NULL, '2021-05-07', 'FAC001-001-000000383', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:14:33', '2021-05-10 13:15:03', 4, 9, 9, NULL),
(456, 65, 4, 4, '0705202101100364051100120010010000003841234567818', '0705202101100364051100120010010000003841234567818', '2021-05-10 08:16:01', 'AUTORIZADO', '2', '1', '000000384', '01', NULL, '2021-05-07', 'FAC001-001-000000384', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:15:30', '2021-05-10 13:16:03', 4, 9, 9, NULL),
(457, 68, 4, 4, '0705202101100364051100120010010000003851234567813', '0705202101100364051100120010010000003851234567813', '2021-05-10 08:17:07', 'AUTORIZADO', '2', '1', '000000385', '01', NULL, '2021-05-07', 'FAC001-001-000000385', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:16:46', '2021-05-10 13:17:08', 4, 9, 9, NULL),
(458, 30, 4, 4, '0705202101100364051100120010010000003861234567819', '0705202101100364051100120010010000003861234567819', '2021-05-10 08:18:05', 'AUTORIZADO', '2', '1', '000000386', '01', NULL, '2021-05-07', 'FAC001-001-000000386', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:17:37', '2021-05-10 13:18:06', 4, 9, 9, NULL),
(459, 103, 4, 4, '0705202101100364051100120010010000003871234567814', '0705202101100364051100120010010000003871234567814', '2021-05-10 08:19:37', 'AUTORIZADO', '2', '1', '000000387', '01', NULL, '2021-05-07', 'FAC001-001-000000387', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:19:16', '2021-05-10 13:19:39', 4, 9, 9, NULL),
(460, 79, 4, 4, '0805202101100364051100120010010000003881234567814', '0805202101100364051100120010010000003881234567814', '2021-05-10 08:20:30', 'AUTORIZADO', '2', '1', '000000388', '01', NULL, '2021-05-08', 'FAC001-001-000000388', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:20:09', '2021-05-10 13:20:32', 4, 9, 9, NULL),
(461, 78, 4, 4, '0805202101100364051100120010010000003891234567811', '0805202101100364051100120010010000003891234567811', '2021-05-10 08:21:38', 'AUTORIZADO', '2', '1', '000000389', '01', NULL, '2021-05-08', 'FAC001-001-000000389', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:21:05', '2021-05-10 13:21:40', 4, 9, 9, NULL),
(462, 72, 4, 4, '0905202101100364051100120010010000003901234567811', '0905202101100364051100120010010000003901234567811', '2021-05-10 08:23:00', 'AUTORIZADO', '2', '1', '000000390', '01', NULL, '2021-05-09', 'FAC001-001-000000390', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:22:27', '2021-05-10 13:23:02', 4, 9, 9, NULL),
(463, 60, 4, 4, '0905202101100364051100120010010000003911234567815', '0905202101100364051100120010010000003911234567815', '2021-05-10 08:23:58', 'AUTORIZADO', '2', '1', '000000391', '01', NULL, '2021-05-09', 'FAC001-001-000000391', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-10 13:23:37', '2021-05-10 13:23:59', 4, 9, 9, NULL),
(464, 49, 4, 4, '1005202101100364051100120010010000003921234567813', '1005202101100364051100120010010000003921234567813', '2021-05-11 07:43:27', 'AUTORIZADO', '2', '1', '000000392', '01', NULL, '2021-05-10', 'FAC001-001-000000392', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-11 12:42:53', '2021-05-11 12:43:29', 4, 9, 9, NULL),
(465, 80, 4, 4, '1005202101100364051100120010010000003931234567819', '1005202101100364051100120010010000003931234567819', '2021-05-11 07:44:53', 'AUTORIZADO', '2', '1', '000000393', '01', NULL, '2021-05-10', 'FAC001-001-000000393', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-11 12:44:28', '2021-05-11 12:44:55', 4, 9, 9, NULL),
(466, 73, 4, 4, '1005202101100364051100120010010000003941234567814', '1005202101100364051100120010010000003941234567814', '2021-05-11 07:46:20', 'AUTORIZADO', '2', '1', '000000394', '01', NULL, '2021-05-10', 'FAC001-001-000000394', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-11 12:45:54', '2021-05-11 12:46:22', 4, 9, 9, NULL),
(467, 35, 4, 4, '1005202101100364051100120010010000003951234567811', '1005202101100364051100120010010000003951234567811', '2021-05-11 07:47:52', 'AUTORIZADO', '2', '1', '000000395', '01', NULL, '2021-05-10', 'FAC001-001-000000395', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-11 12:47:25', '2021-05-11 12:47:54', 4, 9, 9, NULL),
(468, 86, 4, 4, '1005202101100364051100120010010000003961234567815', '1005202101100364051100120010010000003961234567815', '2021-05-11 07:49:31', 'AUTORIZADO', '2', '1', '000000396', '01', NULL, '2021-05-10', 'FAC001-001-000000396', '25.00', '25.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', '0.00', '28.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-11 12:49:08', '2021-05-11 12:49:33', 4, 9, 9, NULL),
(469, 99, 4, 4, '1005202101100364051100120010010000003971234567810', '1005202101100364051100120010010000003971234567810', '2021-05-11 07:52:17', 'AUTORIZADO', '2', '1', '000000397', '01', NULL, '2021-05-10', 'FAC001-001-000000397', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-11 12:51:52', '2021-05-11 12:52:18', 4, 9, 9, NULL),
(470, 69, 4, 4, '1005202101100364051100120010010000003981234567816', '1005202101100364051100120010010000003981234567816', '2021-05-11 07:55:17', 'AUTORIZADO', '2', '1', '000000398', '01', NULL, '2021-05-10', 'FAC001-001-000000398', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-11 12:54:58', '2021-05-11 12:55:19', 4, 9, 9, NULL),
(471, 97, 4, 4, '1105202101100364051100120010010000003991234567816', '1105202101100364051100120010010000003991234567816', '2021-05-11 07:58:06', 'AUTORIZADO', '2', '1', '000000399', '01', NULL, '2021-05-11', 'FAC001-001-000000399', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-11 12:57:44', '2021-05-11 12:58:07', 4, 9, 9, NULL),
(472, 109, 4, 4, '1105202101100364051100120010010000004001234567811', '1105202101100364051100120010010000004001234567811', '2021-05-11 03:45:30', 'AUTORIZADO', '2', '1', '000000400', '01', NULL, '2021-05-11', 'FAC001-001-000000400', '89.29', '89.29', '0.00', '0.00', '0.00', '0.00', '0.00', '10.71', '18.00', '0.00', '100.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-11 20:45:04', '2021-05-11 20:45:32', 4, 9, 9, NULL),
(473, 63, 4, 4, '1205202101100364051100120010010000004011234567811', '1205202101100364051100120010010000004011234567811', '2021-05-12 06:39:30', 'AUTORIZADO', '2', '1', '000000401', '01', NULL, '2021-05-12', 'FAC001-001-000000401', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-12 11:39:09', '2021-05-12 11:39:32', 4, 9, 9, NULL),
(474, 105, 4, 4, '1205202101100364051100120010010000004021234567815', '1205202101100364051100120010010000004021234567815', '2021-05-12 06:41:26', 'AUTORIZADO', '2', '1', '000000402', '01', NULL, '2021-05-12', 'FAC001-001-000000402', '22.32', '22.32', '0.00', '0.00', '0.00', '0.00', '0.00', '2.68', '0.00', '0.00', '25.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-12 11:41:04', '2021-05-12 11:41:28', 4, 9, 9, NULL),
(475, 22, 4, 4, '1205202101100364051100120010010000004031234567810', '1205202101100364051100120010010000004031234567810', '2021-05-12 06:42:34', 'AUTORIZADO', '2', '1', '000000403', '01', NULL, '2021-05-12', 'FAC001-001-000000403', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-12 11:42:08', '2021-05-12 11:42:35', 4, 9, 9, NULL),
(476, 70, 4, 4, '1205202101100364051100120010010000004041234567816', '1205202101100364051100120010010000004041234567816', '2021-05-12 06:43:25', 'AUTORIZADO', '2', '1', '000000404', '01', NULL, '2021-05-12', 'FAC001-001-000000404', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-12 11:43:03', '2021-05-12 11:43:27', 4, 9, 9, NULL),
(477, 11, 4, 4, '1205202101100364051100120010010000004051234567811', '1205202101100364051100120010010000004051234567811', '2021-05-12 06:45:27', 'AUTORIZADO', '2', '1', '000000405', '01', NULL, '2021-05-12', 'FAC001-001-000000405', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-12 11:44:31', '2021-05-12 11:45:29', 4, 9, 9, NULL),
(478, 89, 4, 4, '1205202101100364051100120010010000004061234567817', '1205202101100364051100120010010000004061234567817', '2021-05-12 06:46:38', 'AUTORIZADO', '2', '1', '000000406', '01', NULL, '2021-05-12', 'FAC001-001-000000406', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-12 11:46:17', '2021-05-12 11:46:40', 4, 9, 9, NULL),
(479, 83, 4, 4, '1205202101100364051100120010010000004071234567812', '1205202101100364051100120010010000004071234567812', '2021-05-12 06:48:11', 'AUTORIZADO', '2', '1', '000000407', '01', NULL, '2021-05-12', 'FAC001-001-000000407', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-12 11:47:50', '2021-05-12 11:48:13', 4, 9, 9, NULL),
(480, 110, 4, 4, '1205202101100364051100120010010000004081234567818', '1205202101100364051100120010010000004081234567818', '2021-05-12 08:25:14', 'AUTORIZADO', '2', '1', '000000408', '01', NULL, '2021-05-12', 'FAC001-001-000000408', '71.43', '71.43', '0.00', '0.00', '0.00', '0.00', '0.00', '8.57', '0.00', '0.00', '80.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-13 01:24:52', '2021-05-13 01:25:16', 4, 9, 9, NULL),
(481, 77, 4, 4, '1205202101100364051100120010010000004091234567813', '1205202101100364051100120010010000004091234567813', '2021-05-12 09:02:12', 'AUTORIZADO', '2', '1', '000000409', '01', NULL, '2021-05-12', 'FAC001-001-000000409', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-13 02:01:30', '2021-05-13 02:02:13', 4, 9, 9, NULL),
(482, 67, 4, 4, '1205202101100364051100120010010000004101234567819', '1205202101100364051100120010010000004101234567819', '2021-05-12 09:04:08', 'AUTORIZADO', '2', '1', '000000410', '01', NULL, '2021-05-12', 'FAC001-001-000000410', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-13 02:03:47', '2021-05-13 02:04:10', 4, 9, 9, NULL),
(483, 94, 4, 4, '1205202101100364051100120010010000004111234567814', '1205202101100364051100120010010000004111234567814', '2021-05-12 09:05:55', 'AUTORIZADO', '2', '1', '000000411', '01', NULL, '2021-05-12', 'FAC001-001-000000411', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-13 02:05:31', '2021-05-13 02:05:56', 4, 9, 9, NULL),
(484, 36, 4, 4, '1305202101100364051100120010010000004121234567814', '1305202101100364051100120010010000004121234567814', '2021-05-19 01:59:40', 'AUTORIZADO', '2', '1', '000000412', '01', NULL, '2021-05-13', 'FAC001-001-000000412', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 18:59:07', '2021-05-19 18:59:41', 4, 9, 9, NULL),
(485, 47, 4, 4, '1305202101100364051100120010010000004131234567811', '1305202101100364051100120010010000004131234567811', '2021-05-19 02:00:50', 'AUTORIZADO', '2', '1', '000000413', '01', NULL, '2021-05-13', 'FAC001-001-000000413', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:00:28', '2021-05-19 19:00:52', 4, 9, 9, NULL),
(486, 76, 4, 4, '1305202101100364051100120010010000004141234567815', '1305202101100364051100120010010000004141234567815', '2021-05-19 02:02:32', 'AUTORIZADO', '2', '1', '000000414', '01', NULL, '2021-05-13', 'FAC001-001-000000414', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:02:08', '2021-05-19 19:02:34', 4, 9, 9, NULL),
(487, 54, 4, 4, '1405202101100364051100120010010000004151234567815', '1405202101100364051100120010010000004151234567815', '2021-05-19 02:03:29', 'AUTORIZADO', '2', '1', '000000415', '01', NULL, '2021-05-14', 'FAC001-001-000000415', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:03:08', '2021-05-19 19:03:31', 4, 9, 9, NULL),
(488, 7, 4, 4, '1405202101100364051100120010010000004161234567810', '1405202101100364051100120010010000004161234567810', '2021-05-19 02:05:09', 'AUTORIZADO', '2', '1', '000000416', '01', NULL, '2021-05-14', 'FAC001-001-000000416', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:04:48', '2021-05-19 19:05:11', 4, 9, 9, NULL),
(489, 5, 4, 4, '1405202101100364051100120010010000004171234567816', '1405202101100364051100120010010000004171234567816', '2021-05-19 02:05:57', 'AUTORIZADO', '2', '1', '000000417', '01', NULL, '2021-05-14', 'FAC001-001-000000417', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:05:37', '2021-05-19 19:05:59', 4, 9, 9, NULL),
(490, 40, 4, 4, '1505202101100364051100120010010000004181234567816', '1505202101100364051100120010010000004181234567816', '2021-05-19 02:07:05', 'AUTORIZADO', '2', '1', '000000418', '01', NULL, '2021-05-15', 'FAC001-001-000000418', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:06:45', '2021-05-19 19:07:07', 4, 9, 9, NULL),
(491, 64, 4, 4, '1605202101100364051100120010010000004191234567816', '1605202101100364051100120010010000004191234567816', '2021-05-19 02:09:21', 'AUTORIZADO', '2', '1', '000000419', '01', NULL, '2021-05-16', 'FAC001-001-000000419', '35.71', '35.71', '0.00', '0.00', '0.00', '0.00', '0.00', '4.29', '0.00', '0.00', '40.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:09:02', '2021-05-19 19:09:23', 4, 9, 9, NULL),
(492, 93, 4, 4, '1605202101100364051100120010010000004201234567811', '1605202101100364051100120010010000004201234567811', '2021-05-19 02:10:44', 'AUTORIZADO', '2', '1', '000000420', '01', NULL, '2021-05-16', 'FAC001-001-000000420', '35.71', '35.71', '0.00', '0.00', '0.00', '0.00', '0.00', '4.29', '0.00', '0.00', '40.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:10:22', '2021-05-19 19:10:45', 4, 9, 9, NULL),
(493, 59, 4, 4, '1605202101100364051100120010010000004211234567817', '1605202101100364051100120010010000004211234567817', '2021-05-19 02:12:53', 'AUTORIZADO', '2', '1', '000000421', '01', NULL, '2021-05-16', 'FAC001-001-000000421', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:12:34', '2021-05-19 19:12:54', 4, 9, 9, NULL),
(494, 38, 4, 4, '1605202101100364051100120010010000004221234567812', '1605202101100364051100120010010000004221234567812', '2021-05-19 02:13:54', 'AUTORIZADO', '2', '1', '000000422', '01', NULL, '2021-05-16', 'FAC001-001-000000422', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:13:34', '2021-05-19 19:13:55', 4, 9, 9, NULL),
(495, 74, 4, 4, '1805202101100364051100120010010000004231234567817', '1805202101100364051100120010010000004231234567817', '2021-05-19 02:16:25', 'AUTORIZADO', '2', '1', '000000423', '01', NULL, '2021-05-18', 'FAC001-001-000000423', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:16:04', '2021-05-19 19:16:28', 4, 9, 9, NULL),
(496, 104, 4, 4, '1905202101100364051100120010010000004241234567817', '1905202101100364051100120010010000004241234567817', '2021-05-19 02:17:21', 'AUTORIZADO', '2', '1', '000000424', '01', NULL, '2021-05-19', 'FAC001-001-000000424', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:16:59', '2021-05-19 19:17:22', 4, 9, 9, NULL),
(497, 46, 4, 4, '1905202101100364051100120010010000004251234567812', '1905202101100364051100120010010000004251234567812', '2021-05-19 02:18:13', 'AUTORIZADO', '2', '1', '000000425', '01', NULL, '2021-05-19', 'FAC001-001-000000425', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-19 19:17:52', '2021-05-19 19:18:14', 4, 9, 9, NULL),
(498, 21, 4, 4, '2205202101100364051100120010010000004261234567811', '2205202101100364051100120010010000004261234567811', '2021-05-29 11:29:33', 'AUTORIZADO', '2', '1', '000000426', '01', NULL, '2021-05-22', 'FAC001-001-000000426', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-05-29 16:27:16', '2021-05-29 16:29:35', 4, 9, 9, NULL),
(499, 108, 4, 4, '0706202101100364051100120010010000004271234567817', '0706202101100364051100120010010000004271234567817', '2021-06-07 05:50:35', 'AUTORIZADO', '2', '1', '000000427', '01', NULL, '2021-06-07', 'FAC001-001-000000427', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-07 22:48:45', '2021-06-07 22:50:36', 4, 9, 9, NULL),
(500, 21, 4, 4, '1506202101100364051100120010010000004281234567817', '1506202101100364051100120010010000004281234567817', '2021-06-15 07:00:00', 'AUTORIZADO', '2', '1', '000000428', '01', NULL, '2021-06-15', 'FAC001-001-000000428', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-15 23:59:36', '2021-06-16 00:00:02', 4, 9, 9, NULL),
(501, 76, 4, 4, '1706202101100364051100120010010000004291234567811', '1706202101100364051100120010010000004291234567811', '2021-06-17 07:52:22', 'AUTORIZADO', '2', '1', '000000429', '01', NULL, '2021-06-17', 'FAC001-001-000000429', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-18 00:52:00', '2021-06-18 00:52:24', 4, 9, 9, NULL),
(504, 81, 4, 4, '1706202101100364051100120010010000004301234567817', '1706202101100364051100120010010000004301234567817', '2021-06-29 07:34:37', 'AUTORIZADO', '2', '1', '000000430', '01', NULL, '2021-06-17', 'FAC001-001-000000430', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:34:13', '2021-06-29 07:34:38', 4, 9, 9, NULL),
(505, 30, 4, 4, '1706202101100364051100120010010000004311234567812', '1706202101100364051100120010010000004311234567812', '2021-06-29 07:35:35', 'AUTORIZADO', '2', '1', '000000431', '01', NULL, '2021-06-17', 'FAC001-001-000000431', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:35:12', '2021-06-29 07:35:36', 4, 9, 9, NULL),
(506, 83, 4, 4, '1706202101100364051100120010010000004321234567818', '1706202101100364051100120010010000004321234567818', '2021-06-29 07:36:32', 'AUTORIZADO', '2', '1', '000000432', '01', NULL, '2021-06-17', 'FAC001-001-000000432', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:36:09', '2021-06-29 07:36:34', 4, 9, 9, NULL),
(507, 103, 4, 4, '1706202101100364051100120010010000004331234567813', '1706202101100364051100120010010000004331234567813', '2021-06-29 07:37:57', 'AUTORIZADO', '2', '1', '000000433', '01', NULL, '2021-06-17', 'FAC001-001-000000433', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:37:30', '2021-06-29 07:37:59', 4, 9, 9, NULL);
INSERT INTO `factura` (`id`, `cliente_id`, `emisor_id`, `establecimiento_id`, `claveAcceso`, `numeroAutorizacion`, `fechaAutorizacion`, `estado`, `ambiente`, `tipoEmision`, `secuencial`, `formaPago`, `plazo`, `fechaEmision`, `nombreArchivo`, `totalSinImpuestos`, `subtotal12`, `subtotal0`, `subtotalNoIVA`, `subtotalExentoIVA`, `valorICE`, `valorIRBPNR`, `iva12`, `totalDescuento`, `propina`, `valorTotal`, `totalSubsidio`, `totalSinSubsidio`, `totalSubsidioSinIva`, `firmado`, `enviarSiAutorizado`, `observacion`, `carga_automatica`, `id_factura_carga`, `createdAt`, `updatedAt`, `ptoEmision_id`, `createdBy_id`, `updatedBy_id`, `deletedBy_id`) VALUES
(508, 99, 4, 4, '1706202101100364051100120010010000004341234567819', '1706202101100364051100120010010000004341234567819', '2021-06-29 07:38:56', 'AUTORIZADO', '2', '1', '000000434', '01', NULL, '2021-06-17', 'FAC001-001-000000434', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:38:35', '2021-06-29 07:38:58', 4, 9, 9, NULL),
(509, 57, 4, 4, '1706202101100364051100120010010000004351234567814', '1706202101100364051100120010010000004351234567814', '2021-06-29 07:39:58', 'AUTORIZADO', '2', '1', '000000435', '01', NULL, '2021-06-17', 'FAC001-001-000000435', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:39:37', '2021-06-29 07:40:00', 4, 9, 9, NULL),
(510, 50, 4, 4, '1706202101100364051100120010010000004361234567811', '1706202101100364051100120010010000004361234567811', '2021-06-29 07:40:51', 'AUTORIZADO', '2', '1', '000000436', '01', NULL, '2021-06-17', 'FAC001-001-000000436', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:40:29', '2021-06-29 07:40:53', 4, 9, 9, NULL),
(511, 8, 4, 4, '1806202101100364051100120010010000004371234567811', '1806202101100364051100120010010000004371234567811', '2021-06-29 07:42:22', 'AUTORIZADO', '2', '1', '000000437', '01', NULL, '2021-06-18', 'FAC001-001-000000437', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:41:40', '2021-06-29 07:42:24', 4, 9, 9, NULL),
(512, 5, 4, 4, '1806202101100364051100120010010000004381234567815', '1806202101100364051100120010010000004381234567815', '2021-06-29 07:44:12', 'AUTORIZADO', '2', '1', '000000438', '01', NULL, '2021-06-18', 'FAC001-001-000000438', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:43:50', '2021-06-29 07:44:14', 4, 9, 9, NULL),
(513, 104, 4, 4, '1806202101100364051100120010010000004391234567810', '1806202101100364051100120010010000004391234567810', '2021-06-29 07:45:53', 'AUTORIZADO', '2', '1', '000000439', '01', NULL, '2021-06-18', 'FAC001-001-000000439', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:45:30', '2021-06-29 07:45:55', 4, 9, 9, NULL),
(514, 35, 4, 4, '2006202101100364051100120010010000004401234567813', '2006202101100364051100120010010000004401234567813', '2021-06-29 07:48:19', 'AUTORIZADO', '2', '1', '000000440', '01', NULL, '2021-06-20', 'FAC001-001-000000440', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:47:58', '2021-06-29 07:48:21', 4, 9, 9, NULL),
(515, 1, 4, 4, '2006202101100364051100120010010000004411234567819', '2006202101100364051100120010010000004411234567819', '2021-06-29 07:49:15', 'AUTORIZADO', '2', '1', '000000441', '01', NULL, '2021-06-20', 'FAC001-001-000000441', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:48:54', '2021-06-29 07:49:17', 4, 9, 9, NULL),
(516, 40, 4, 4, '2006202101100364051100120010010000004421234567814', '2006202101100364051100120010010000004421234567814', '2021-06-29 07:50:15', 'AUTORIZADO', '2', '1', '000000442', '01', NULL, '2021-06-20', 'FAC001-001-000000442', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:49:53', '2021-06-29 07:50:16', 4, 9, 9, NULL),
(517, 43, 4, 4, '2006202101100364051100120010010000004431234567811', '2006202101100364051100120010010000004431234567811', '2021-06-29 07:51:07', 'AUTORIZADO', '2', '1', '000000443', '01', NULL, '2021-06-20', 'FAC001-001-000000443', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:50:45', '2021-06-29 07:51:09', 4, 9, 9, NULL),
(518, 54, 4, 4, '2006202101100364051100120010010000004441234567815', '2006202101100364051100120010010000004441234567815', '2021-06-29 07:52:01', 'AUTORIZADO', '2', '1', '000000444', '01', NULL, '2021-06-20', 'FAC001-001-000000444', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:51:39', '2021-06-29 07:52:03', 4, 9, 9, NULL),
(519, 63, 4, 4, '2006202101100364051100120010010000004451234567810', '2006202101100364051100120010010000004451234567810', '2021-06-29 07:53:22', 'AUTORIZADO', '2', '1', '000000445', '01', NULL, '2021-06-20', 'FAC001-001-000000445', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:53:00', '2021-06-29 07:53:24', 4, 9, 9, NULL),
(520, 65, 4, 4, '2106202101100364051100120010010000004461234567810', '2106202101100364051100120010010000004461234567810', '2021-06-29 07:54:39', 'AUTORIZADO', '2', '1', '000000446', '01', NULL, '2021-06-21', 'FAC001-001-000000446', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-06-29 07:54:14', '2021-06-29 07:54:41', 4, 9, 9, NULL),
(521, 70, 4, 4, '1007202101100364051100120010010000004471234567814', '1007202101100364051100120010010000004471234567814', '2021-07-10 07:50:23', 'AUTORIZADO', '2', '1', '000000447', '01', NULL, '2021-07-10', 'FAC001-001-000000447', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-10 19:49:34', '2021-07-10 19:50:28', 4, 9, 9, NULL),
(522, 25, 4, 4, '1007202101100364051100120010010000004481234567811', '1007202101100364051100120010010000004481234567811', '2021-07-10 07:58:04', 'AUTORIZADO', '2', '1', '000000448', '01', NULL, '2021-07-10', 'FAC001-001-000000448', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-10 19:57:35', '2021-07-10 19:58:06', 4, 9, 9, NULL),
(523, 21, 4, 4, '1007202101100364051100120010010000004491234567815', '1007202101100364051100120010010000004491234567815', '2021-07-10 08:01:03', 'AUTORIZADO', '2', '1', '000000449', '01', NULL, '2021-07-10', 'FAC001-001-000000449', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-10 20:00:40', '2021-07-10 20:01:05', 4, 9, 9, NULL),
(524, 26, 4, 4, '1107202101100364051100120010010000004501234567815', '1107202101100364051100120010010000004501234567815', '2021-07-31 09:07:19', 'AUTORIZADO', '2', '1', '000000450', '01', NULL, '2021-07-11', 'FAC001-001-000000450', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:05:06', '2021-07-31 09:07:21', 4, 9, 9, NULL),
(525, 25, 4, 4, '1107202101100364051100120010010000004511234567810', '1107202101100364051100120010010000004511234567810', '2021-07-31 09:08:22', 'AUTORIZADO', '2', '1', '000000451', '01', NULL, '2021-07-11', 'FAC001-001-000000451', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:08:00', '2021-07-31 09:08:23', 4, 9, 9, NULL),
(526, 22, 4, 4, '1207202101100364051100120010010000004521234567810', '1207202101100364051100120010010000004521234567810', '2021-07-31 09:09:23', 'AUTORIZADO', '2', '1', '000000452', '01', NULL, '2021-07-12', 'FAC001-001-000000452', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:09:02', '2021-07-31 09:09:24', 4, 9, 9, NULL),
(527, 35, 4, 4, '1207202101100364051100120010010000004531234567816', '1207202101100364051100120010010000004531234567816', '2021-07-31 09:10:14', 'AUTORIZADO', '2', '1', '000000453', '01', NULL, '2021-07-12', 'FAC001-001-000000453', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:09:53', '2021-07-31 09:10:16', 4, 9, 9, NULL),
(528, 10, 4, 4, '1207202101100364051100120010010000004541234567811', '1207202101100364051100120010010000004541234567811', '2021-07-31 09:11:09', 'AUTORIZADO', '2', '1', '000000454', '01', NULL, '2021-07-12', 'FAC001-001-000000454', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:10:44', '2021-07-31 09:11:10', 4, 9, 9, NULL),
(529, 5, 4, 4, '1307202101100364051100120010010000004551234567811', '1307202101100364051100120010010000004551234567811', '2021-07-31 09:11:59', 'AUTORIZADO', '2', '1', '000000455', '01', NULL, '2021-07-13', 'FAC001-001-000000455', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:11:39', '2021-07-31 09:12:01', 4, 9, 9, NULL),
(530, 3, 4, 4, '1307202101100364051100120010010000004561234567817', '1307202101100364051100120010010000004561234567817', '2021-07-31 09:14:27', 'AUTORIZADO', '2', '1', '000000456', '01', NULL, '2021-07-13', 'FAC001-001-000000456', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:13:59', '2021-07-31 09:14:29', 4, 9, 9, NULL),
(531, 34, 4, 4, '1307202101100364051100120010010000004571234567812', '1307202101100364051100120010010000004571234567812', '2021-07-31 09:15:22', 'AUTORIZADO', '2', '1', '000000457', '01', NULL, '2021-07-13', 'FAC001-001-000000457', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:15:01', '2021-07-31 09:15:24', 4, 9, 9, NULL),
(532, 1, 4, 4, '1407202101100364051100120010010000004581234567812', '1407202101100364051100120010010000004581234567812', '2021-07-31 09:16:18', 'AUTORIZADO', '2', '1', '000000458', '01', NULL, '2021-07-14', 'FAC001-001-000000458', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:15:56', '2021-07-31 09:16:20', 4, 9, 9, NULL),
(533, 36, 4, 4, '1407202101100364051100120010010000004591234567818', '1407202101100364051100120010010000004591234567818', '2021-07-31 09:17:39', 'AUTORIZADO', '2', '1', '000000459', '01', NULL, '2021-07-14', 'FAC001-001-000000459', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:17:10', '2021-07-31 09:17:40', 4, 9, 9, NULL),
(534, 40, 4, 4, '1407202101100364051100120010010000004601234567813', '1407202101100364051100120010010000004601234567813', '2021-07-31 09:24:55', 'AUTORIZADO', '2', '1', '000000460', '01', NULL, '2021-07-14', 'FAC001-001-000000460', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:18:09', '2021-07-31 09:24:57', 4, 9, 9, NULL),
(535, 69, 4, 4, '1407202101100364051100120010010000004611234567819', '1407202101100364051100120010010000004611234567819', '2021-07-31 09:19:12', 'AUTORIZADO', '2', '1', '000000461', '01', NULL, '2021-07-14', 'FAC001-001-000000461', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:18:48', '2021-07-31 09:19:13', 4, 9, 9, NULL),
(536, 43, 4, 4, '1407202101100364051100120010010000004621234567814', '1407202101100364051100120010010000004621234567814', '2021-07-31 09:20:10', 'AUTORIZADO', '2', '1', '000000462', '01', NULL, '2021-07-14', 'FAC001-001-000000462', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:19:49', '2021-07-31 09:20:12', 4, 9, 9, NULL),
(537, 33, 4, 4, '1407202101100364051100120010010000004631234567811', '1407202101100364051100120010010000004631234567811', '2021-07-31 09:21:08', 'AUTORIZADO', '2', '1', '000000463', '01', NULL, '2021-07-14', 'FAC001-001-000000463', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:20:47', '2021-07-31 09:21:10', 4, 9, 9, NULL),
(538, 38, 4, 4, '1707202101100364051100120010010000004641234567819', '1707202101100364051100120010010000004641234567819', '2021-07-31 09:22:03', 'AUTORIZADO', '2', '1', '000000464', '01', NULL, '2021-07-17', 'FAC001-001-000000464', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:21:41', '2021-07-31 09:22:05', 4, 9, 9, NULL),
(539, 47, 4, 4, '1707202101100364051100120010010000004651234567814', '1707202101100364051100120010010000004651234567814', '2021-07-31 09:23:03', 'AUTORIZADO', '2', '1', '000000465', '01', NULL, '2021-07-17', 'FAC001-001-000000465', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:22:35', '2021-07-31 09:23:05', 4, 9, 9, NULL),
(540, 46, 4, 4, '1807202101100364051100120010010000004661234567814', '1807202101100364051100120010010000004661234567814', '2021-07-31 09:23:56', 'AUTORIZADO', '2', '1', '000000466', '01', NULL, '2021-07-18', 'FAC001-001-000000466', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:23:30', '2021-07-31 09:23:58', 4, 9, 9, NULL),
(541, 54, 4, 4, '1907202101100364051100120010010000004671234567814', '1907202101100364051100120010010000004671234567814', '2021-07-31 09:26:05', 'AUTORIZADO', '2', '1', '000000467', '01', NULL, '2021-07-19', 'FAC001-001-000000467', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:25:32', '2021-07-31 09:26:06', 4, 9, 9, NULL),
(542, 50, 4, 4, '1907202101100364051100120010010000004681234567811', '1907202101100364051100120010010000004681234567811', '2021-07-31 09:26:58', 'AUTORIZADO', '2', '1', '000000468', '01', NULL, '2021-07-19', 'FAC001-001-000000468', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:26:34', '2021-07-31 09:27:00', 4, 9, 9, NULL),
(543, 31, 4, 4, '1907202101100364051100120010010000004691234567815', '1907202101100364051100120010010000004691234567815', '2021-07-31 09:27:46', 'AUTORIZADO', '2', '1', '000000469', '01', NULL, '2021-07-19', 'FAC001-001-000000469', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:27:26', '2021-07-31 09:27:48', 4, 9, 9, NULL),
(544, 53, 4, 4, '1907202101100364051100120010010000004701234567810', '1907202101100364051100120010010000004701234567810', '2021-07-31 09:30:17', 'AUTORIZADO', '2', '1', '000000470', '01', NULL, '2021-07-19', 'FAC001-001-000000470', '25.00', '25.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', '0.00', '28.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:28:54', '2021-07-31 09:30:18', 4, 9, 9, NULL),
(545, 60, 4, 4, '1907202101100364051100120010010000004711234567816', '1907202101100364051100120010010000004711234567816', '2021-07-31 09:29:48', 'AUTORIZADO', '2', '1', '000000471', '01', NULL, '2021-07-19', 'FAC001-001-000000471', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:29:29', '2021-07-31 09:29:50', 4, 9, 9, NULL),
(546, 57, 4, 4, '2007202101100364051100120010010000004721234567814', '2007202101100364051100120010010000004721234567814', '2021-07-31 09:31:17', 'AUTORIZADO', '2', '1', '000000472', '01', NULL, '2021-07-20', 'FAC001-001-000000472', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:30:53', '2021-07-31 09:31:19', 4, 9, 9, NULL),
(547, 59, 4, 4, '2007202101100364051100120010010000004731234567811', '2007202101100364051100120010010000004731234567811', '2021-07-31 09:32:10', 'AUTORIZADO', '2', '1', '000000473', '01', NULL, '2021-07-20', 'FAC001-001-000000473', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:31:50', '2021-07-31 09:32:12', 4, 9, 9, NULL),
(548, 63, 4, 4, '2007202101100364051100120010010000004741234567815', '2007202101100364051100120010010000004741234567815', '2021-07-31 09:32:59', 'AUTORIZADO', '2', '1', '000000474', '01', NULL, '2021-07-20', 'FAC001-001-000000474', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:32:37', '2021-07-31 09:33:00', 4, 9, 9, NULL),
(549, 65, 4, 4, '2007202101100364051100120010010000004751234567810', '2007202101100364051100120010010000004751234567810', '2021-07-31 09:33:44', 'AUTORIZADO', '2', '1', '000000475', '01', NULL, '2021-07-20', 'FAC001-001-000000475', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:33:22', '2021-07-31 09:33:45', 4, 9, 9, NULL),
(550, 67, 4, 4, '2107202101100364051100120010010000004761234567810', '2107202101100364051100120010010000004761234567810', '2021-07-31 09:38:13', 'AUTORIZADO', '2', '1', '000000476', '01', NULL, '2021-07-21', 'FAC001-001-000000476', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:34:23', '2021-07-31 09:38:14', 4, 9, 9, NULL),
(551, 68, 4, 4, '2107202101100364051100120010010000004771234567816', '2107202101100364051100120010010000004771234567816', '2021-07-31 09:35:17', 'AUTORIZADO', '2', '1', '000000477', '01', NULL, '2021-07-21', 'FAC001-001-000000477', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:34:59', '2021-07-31 09:35:19', 4, 9, 9, NULL),
(552, 74, 4, 4, '2207202101100364051100120010010000004781234567816', '2207202101100364051100120010010000004781234567816', '2021-07-31 09:36:56', 'AUTORIZADO', '2', '1', '000000478', '01', NULL, '2021-07-22', 'FAC001-001-000000478', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:36:38', '2021-07-31 09:36:58', 4, 9, 9, NULL),
(553, 75, 4, 4, '2207202101100364051100120010010000004791234567811', '2207202101100364051100120010010000004791234567811', '2021-07-31 09:39:00', 'AUTORIZADO', '2', '1', '000000479', '01', NULL, '2021-07-22', 'FAC001-001-000000479', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:38:41', '2021-07-31 09:39:02', 4, 9, 9, NULL),
(554, 77, 4, 4, '2207202101100364051100120010010000004801234567817', '2207202101100364051100120010010000004801234567817', '2021-07-31 09:39:51', 'AUTORIZADO', '2', '1', '000000480', '01', NULL, '2021-07-22', 'FAC001-001-000000480', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:39:33', '2021-07-31 09:39:52', 4, 9, 9, NULL),
(555, 78, 4, 4, '2307202101100364051100120010010000004811234567817', '2307202101100364051100120010010000004811234567817', '2021-07-31 09:40:49', 'AUTORIZADO', '2', '1', '000000481', '01', NULL, '2021-07-23', 'FAC001-001-000000481', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:40:26', '2021-07-31 09:40:51', 4, 9, 9, NULL),
(556, 79, 4, 4, '2307202101100364051100120010010000004821234567812', '2307202101100364051100120010010000004821234567812', '2021-07-31 09:41:39', 'AUTORIZADO', '2', '1', '000000482', '01', NULL, '2021-07-23', 'FAC001-001-000000482', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:41:18', '2021-07-31 09:41:40', 4, 9, 9, NULL),
(557, 81, 4, 4, '2607202101100364051100120010010000004831234567811', '2607202101100364051100120010010000004831234567811', '2021-07-31 09:42:31', 'AUTORIZADO', '2', '1', '000000483', '01', NULL, '2021-07-26', 'FAC001-001-000000483', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:42:11', '2021-07-31 09:42:33', 4, 9, 9, NULL),
(558, 82, 4, 4, '2607202101100364051100120010010000004841234567817', '2607202101100364051100120010010000004841234567817', '2021-07-31 09:51:03', 'AUTORIZADO', '2', '1', '000000484', '01', NULL, '2021-07-26', 'FAC001-001-000000484', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:43:00', '2021-07-31 09:51:04', 4, 9, 9, NULL),
(559, 84, 4, 4, '2607202101100364051100120010010000004851234567812', '2607202101100364051100120010010000004851234567812', '2021-07-31 09:45:05', 'AUTORIZADO', '2', '1', '000000485', '01', NULL, '2021-07-26', 'FAC001-001-000000485', '25.00', '25.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', '0.00', '28.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:44:46', '2021-07-31 09:45:07', 4, 9, 9, NULL),
(560, 83, 4, 4, '2707202101100364051100120010010000004861234567812', '2707202101100364051100120010010000004861234567812', '2021-07-31 09:46:06', 'AUTORIZADO', '2', '1', '000000486', '01', NULL, '2021-07-27', 'FAC001-001-000000486', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:45:47', '2021-07-31 09:46:08', 4, 9, 9, NULL),
(561, 86, 4, 4, '2707202101100364051100120010010000004871234567818', '2707202101100364051100120010010000004871234567818', '2021-07-31 09:47:08', 'AUTORIZADO', '2', '1', '000000487', '01', NULL, '2021-07-27', 'FAC001-001-000000487', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:46:50', '2021-07-31 09:47:09', 4, 9, 9, NULL),
(562, 89, 4, 4, '2707202101100364051100120010010000004881234567813', '2707202101100364051100120010010000004881234567813', '2021-07-31 09:47:52', 'AUTORIZADO', '2', '1', '000000488', '01', NULL, '2021-07-27', 'FAC001-001-000000488', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:47:32', '2021-07-31 09:47:54', 4, 9, 9, NULL),
(563, 91, 4, 4, '2807202101100364051100120010010000004891234567813', '2807202101100364051100120010010000004891234567813', '2021-07-31 09:48:59', 'AUTORIZADO', '2', '1', '000000489', '01', NULL, '2021-07-28', 'FAC001-001-000000489', '23.21', '23.21', '0.00', '0.00', '0.00', '0.00', '0.00', '2.79', '0.00', '0.00', '26.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:48:40', '2021-07-31 09:49:02', 4, 9, 9, NULL),
(564, 92, 4, 4, '2807202101100364051100120010010000004901234567819', '2807202101100364051100120010010000004901234567819', '2021-07-31 09:49:46', 'AUTORIZADO', '2', '1', '000000490', '01', NULL, '2021-07-28', 'FAC001-001-000000490', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-07-31 09:49:26', '2021-07-31 09:49:47', 4, 9, 9, NULL),
(565, 40, 4, 4, '0508202101100364051100120010010000004911234567811', '0508202101100364051100120010010000004911234567811', '2021-08-16 09:50:54', 'AUTORIZADO', '2', '1', '000000491', '01', NULL, '2021-08-05', 'FAC001-001-000000491', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 09:50:09', '2021-08-16 09:50:56', 4, 9, 9, NULL),
(566, 50, 4, 4, '0508202101100364051100120010010000004921234567815', '0508202101100364051100120010010000004921234567815', '2021-08-16 09:52:07', 'AUTORIZADO', '2', '1', '000000492', '01', NULL, '2021-08-05', 'FAC001-001-000000492', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 09:51:44', '2021-08-16 09:52:09', 4, 9, 9, NULL),
(567, 64, 4, 4, '0508202101100364051100120010010000004931234567810', '0508202101100364051100120010010000004931234567810', '2021-08-16 09:53:33', 'AUTORIZADO', '2', '1', '000000493', '01', NULL, '2021-08-05', 'FAC001-001-000000493', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 09:53:10', '2021-08-16 09:53:35', 4, 9, 9, NULL),
(568, 83, 4, 4, '0508202101100364051100120010010000004941234567816', '0508202101100364051100120010010000004941234567816', '2021-08-16 09:54:38', 'AUTORIZADO', '2', '1', '000000494', '01', NULL, '2021-08-05', 'FAC001-001-000000494', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 09:54:16', '2021-08-16 09:54:39', 4, 9, 9, NULL),
(569, 86, 4, 4, '0508202101100364051100120010010000004951234567811', '0508202101100364051100120010010000004951234567811', '2021-08-16 09:55:38', 'AUTORIZADO', '2', '1', '000000495', '01', NULL, '2021-08-05', 'FAC001-001-000000495', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 09:55:18', '2021-08-16 09:55:40', 4, 9, 9, NULL),
(570, 1, 4, 4, '0808202101100364051100120010010000004961234567810', '0808202101100364051100120010010000004961234567810', '2021-08-16 09:59:14', 'AUTORIZADO', '2', '1', '000000496', '01', NULL, '2021-08-08', 'FAC001-001-000000496', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 09:58:54', '2021-08-16 09:59:16', 4, 9, 9, NULL),
(571, 60, 4, 4, '0808202101100364051100120010010000004971234567816', '0808202101100364051100120010010000004971234567816', '2021-08-16 10:07:42', 'AUTORIZADO', '2', '1', '000000497', '01', NULL, '2021-08-08', 'FAC001-001-000000497', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:07:24', '2021-08-16 10:07:44', 4, 9, 9, NULL),
(572, 57, 4, 4, '0808202101100364051100120010010000004981234567811', '0808202101100364051100120010010000004981234567811', '2021-08-16 10:08:40', 'AUTORIZADO', '2', '1', '000000498', '01', NULL, '2021-08-08', 'FAC001-001-000000498', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:08:20', '2021-08-16 10:08:42', 4, 9, 9, NULL),
(573, 77, 4, 4, '0808202101100364051100120010010000004991234567817', '0808202101100364051100120010010000004991234567817', '2021-08-16 10:09:46', 'AUTORIZADO', '2', '1', '000000499', '01', NULL, '2021-08-08', 'FAC001-001-000000499', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:09:17', '2021-08-16 10:09:48', 4, 9, 9, NULL),
(574, 82, 4, 4, '0808202101100364051100120010010000005001234567810', '0808202101100364051100120010010000005001234567810', '2021-08-16 10:10:43', 'AUTORIZADO', '2', '1', '000000500', '01', NULL, '2021-08-08', 'FAC001-001-000000500', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:10:19', '2021-08-16 10:10:44', 4, 9, 9, NULL),
(575, 103, 4, 4, '0808202101100364051100120010010000005011234567816', '0808202101100364051100120010010000005011234567816', '2021-08-16 10:11:57', 'AUTORIZADO', '2', '1', '000000501', '01', NULL, '2021-08-08', 'FAC001-001-000000501', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:11:35', '2021-08-16 10:11:59', 4, 9, 9, NULL),
(576, 8, 4, 4, '1008202101100364051100120010010000005021234567819', '1008202101100364051100120010010000005021234567819', '2021-08-16 10:12:48', 'AUTORIZADO', '2', '1', '000000502', '01', NULL, '2021-08-10', 'FAC001-001-000000502', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:12:29', '2021-08-16 10:12:50', 4, 9, 9, NULL),
(577, 38, 4, 4, '1008202101100364051100120010010000005031234567814', '1008202101100364051100120010010000005031234567814', '2021-08-16 10:14:02', 'AUTORIZADO', '2', '1', '000000503', '01', NULL, '2021-08-10', 'FAC001-001-000000503', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:13:22', '2021-08-16 10:14:03', 4, 9, 9, NULL),
(578, 49, 4, 4, '1008202101100364051100120010010000005041234567811', '1008202101100364051100120010010000005041234567811', '2021-08-16 10:15:22', 'AUTORIZADO', '2', '1', '000000504', '01', NULL, '2021-08-10', 'FAC001-001-000000504', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:15:02', '2021-08-16 10:15:24', 4, 9, 9, NULL),
(579, 68, 4, 4, '1008202101100364051100120010010000005051234567815', '1008202101100364051100120010010000005051234567815', '2021-08-16 10:16:08', 'AUTORIZADO', '2', '1', '000000505', '01', NULL, '2021-08-10', 'FAC001-001-000000505', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:15:50', '2021-08-16 10:16:10', 4, 9, 9, NULL),
(580, 75, 4, 4, '1008202101100364051100120010010000005061234567810', '1008202101100364051100120010010000005061234567810', '2021-08-16 10:17:11', 'AUTORIZADO', '2', '1', '000000506', '01', NULL, '2021-08-10', 'FAC001-001-000000506', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:16:49', '2021-08-16 10:17:14', 4, 9, 9, NULL),
(581, 78, 4, 4, '1008202101100364051100120010010000005071234567816', '1008202101100364051100120010010000005071234567816', '2021-08-16 10:18:00', 'AUTORIZADO', '2', '1', '000000507', '01', NULL, '2021-08-10', 'FAC001-001-000000507', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:17:40', '2021-08-16 10:18:01', 4, 9, 9, NULL),
(582, 79, 4, 4, '1008202101100364051100120010010000005081234567811', '1008202101100364051100120010010000005081234567811', '2021-08-16 10:18:57', 'AUTORIZADO', '2', '1', '000000508', '01', NULL, '2021-08-10', 'FAC001-001-000000508', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:18:36', '2021-08-16 10:18:59', 4, 9, 9, NULL),
(583, 105, 4, 4, '1008202101100364051100120010010000005091234567817', '1008202101100364051100120010010000005091234567817', '2021-08-16 10:20:09', 'AUTORIZADO', '2', '1', '000000509', '01', NULL, '2021-08-10', 'FAC001-001-000000509', '25.00', '25.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', '0.00', '28.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:19:46', '2021-08-16 10:20:11', 4, 9, 9, NULL),
(584, 35, 4, 4, '1108202101100364051100120010010000005101234567817', '1108202101100364051100120010010000005101234567817', '2021-08-16 10:21:07', 'AUTORIZADO', '2', '1', '000000510', '01', NULL, '2021-08-11', 'FAC001-001-000000510', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:20:46', '2021-08-16 10:21:09', 4, 9, 9, NULL),
(585, 63, 4, 4, '1108202101100364051100120010010000005111234567812', '1108202101100364051100120010010000005111234567812', '2021-08-16 10:21:58', 'AUTORIZADO', '2', '1', '000000511', '01', NULL, '2021-08-11', 'FAC001-001-000000511', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:21:40', '2021-08-16 10:21:59', 4, 9, 9, NULL),
(586, 92, 4, 4, '1108202101100364051100120010010000005121234567818', '1108202101100364051100120010010000005121234567818', '2021-08-16 10:22:46', 'AUTORIZADO', '2', '1', '000000512', '01', NULL, '2021-08-11', 'FAC001-001-000000512', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:22:25', '2021-08-16 10:22:47', 4, 9, 9, NULL),
(587, 99, 4, 4, '1108202101100364051100120010010000005131234567813', '1108202101100364051100120010010000005131234567813', '2021-08-16 10:23:41', 'AUTORIZADO', '2', '1', '000000513', '01', NULL, '2021-08-11', 'FAC001-001-000000513', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:23:22', '2021-08-16 10:23:44', 4, 9, 9, NULL),
(588, 108, 4, 4, '1308202101100364051100120010010000005141234567818', '1308202101100364051100120010010000005141234567818', '2021-08-16 10:24:42', 'AUTORIZADO', '2', '1', '000000514', '01', NULL, '2021-08-13', 'FAC001-001-000000514', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:24:22', '2021-08-16 10:24:43', 4, 9, 9, NULL),
(589, 69, 4, 4, '1508202101100364051100120010010000005151234567812', '1508202101100364051100120010010000005151234567812', '2021-08-16 10:25:37', 'AUTORIZADO', '2', '1', '000000515', '01', NULL, '2021-08-15', 'FAC001-001-000000515', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:25:17', '2021-08-16 10:25:39', 4, 9, 9, NULL),
(590, 70, 4, 4, '1508202101100364051100120010010000005161234567818', '1508202101100364051100120010010000005161234567818', '2021-08-16 10:26:25', 'AUTORIZADO', '2', '1', '000000516', '01', NULL, '2021-08-15', 'FAC001-001-000000516', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:26:05', '2021-08-16 10:26:26', 4, 9, 9, NULL),
(591, 71, 4, 4, '1508202101100364051100120010010000005171234567813', '1508202101100364051100120010010000005171234567813', '2021-08-16 10:27:20', 'AUTORIZADO', '2', '1', '000000517', '01', NULL, '2021-08-15', 'FAC001-001-000000517', '17.86', '17.86', '0.00', '0.00', '0.00', '0.00', '0.00', '2.14', '0.00', '0.00', '20.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:26:58', '2021-08-16 10:27:22', 4, 9, 9, NULL),
(592, 97, 4, 4, '1508202101100364051100120010010000005181234567819', '1508202101100364051100120010010000005181234567819', '2021-08-16 10:28:08', 'AUTORIZADO', '2', '1', '000000518', '01', NULL, '2021-08-15', 'FAC001-001-000000518', '11.61', '11.61', '0.00', '0.00', '0.00', '0.00', '0.00', '1.39', '0.00', '0.00', '13.00', NULL, NULL, NULL, 1, 0, '', 0, NULL, '2021-08-16 10:27:49', '2021-08-16 10:28:10', 4, 9, 9, NULL),
(599, 3, 1, 1, '1510202101100364051100110010010000005251234567813', NULL, NULL, 'CREADA', '1', '1', '000000525', '01', NULL, '2021-10-15', NULL, '65.00', '65.00', '0.00', '0.00', '0.00', '0.00', '0.00', '7.80', '0.00', '0.00', '72.80', '0.00', '0.00', '0.00', 0, 0, '', 0, NULL, '2021-10-15 12:57:32', '2021-10-15 12:57:32', 1, 1, 1, NULL),
(600, 3, 1, 1, '2003202201100364051100110010010000005261234567818', '2003202201100364051100110010010000005261234567818', '2022-03-20 08:57:20', 'AUTORIZADO', '1', '1', '000000526', '01', NULL, '2022-03-20', 'FAC001-001-000000526', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 08:56:41', '2022-03-20 08:57:22', 1, 1, 1, NULL),
(601, 1, 1, 1, '2003202201100364051100110010010000005271234567813', '2003202201100364051100110010010000005271234567813', '2022-03-20 09:00:55', 'AUTORIZADO', '1', '1', '000000527', '01', NULL, '2022-03-20', 'FAC001-001-000000527', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 09:00:26', '2022-03-20 09:00:57', 1, 1, 1, NULL),
(602, 3, 1, 1, '2003202201100364051100110010010000005281234567819', '2003202201100364051100110010010000005281234567819', '2022-03-20 09:11:42', 'AUTORIZADO', '1', '1', '000000528', '01', NULL, '2022-03-20', 'FAC001-001-000000528', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 09:11:16', '2022-03-20 09:11:44', 1, 1, 1, NULL),
(603, 1, 1, 1, '2003202201100364051100110010010000005291234567814', '2003202201100364051100110010010000005291234567814', '2022-03-20 09:16:46', 'AUTORIZADO', '1', '1', '000000529', '01', NULL, '2022-03-20', 'FAC001-001-000000529', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 09:16:18', '2022-03-20 09:16:48', 1, 1, 1, NULL),
(604, 1, 1, 1, '2003202201100364051100110010010000005301234567811', '2003202201100364051100110010010000005301234567811', '2022-03-20 09:19:20', 'AUTORIZADO', '1', '1', '000000530', '01', NULL, '2022-03-20', 'FAC001-001-000000530', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 09:18:54', '2022-03-20 09:19:22', 1, 1, 1, NULL),
(605, 1, 1, 1, '2003202201100364051100110010010000005311234567815', '2003202201100364051100110010010000005311234567815', '2022-03-20 09:22:34', 'AUTORIZADO', '1', '1', '000000531', '01', NULL, '2022-03-20', 'FAC001-001-000000531', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 09:22:05', '2022-03-20 09:22:36', 1, 1, 1, NULL),
(606, 1, 1, 1, '2003202201100364051100110010010000005321234567810', '2003202201100364051100110010010000005321234567810', '2022-03-20 09:24:26', 'AUTORIZADO', '1', '1', '000000532', '01', NULL, '2022-03-20', 'FAC001-001-000000532', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 09:24:01', '2022-03-20 09:24:28', 1, 1, 1, NULL),
(607, 1, 1, 1, '2003202201100364051100110010010000005331234567816', '2003202201100364051100110010010000005331234567816', '2022-03-20 11:22:29', 'AUTORIZADO', '1', '1', '000000533', '01', NULL, '2022-03-20', 'FAC001-001-000000533', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 11:21:41', '2022-03-20 11:22:30', 1, 1, 1, NULL),
(608, 3, 1, 1, '2003202201100364051100110010010000005341234567811', '2003202201100364051100110010010000005341234567811', '2022-03-20 11:31:43', 'AUTORIZADO', '1', '1', '000000534', '01', NULL, '2022-03-20', 'FAC001-001-000000534', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 11:31:17', '2022-03-20 11:31:44', 1, 1, 1, NULL),
(609, 1, 1, 1, '2003202201100364051100110010010000005351234567817', '2003202201100364051100110010010000005351234567817', '2022-03-20 11:48:53', 'AUTORIZADO', '1', '1', '000000535', '01', NULL, '2022-03-20', 'FAC001-001-000000535', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 11:48:27', '2022-03-20 11:48:55', 1, 1, 1, NULL),
(610, 1, 1, 1, '2003202201100364051100110010010000005361234567812', '2003202201100364051100110010010000005361234567812', '2022-03-20 04:36:43', 'AUTORIZADO', '1', '1', '000000536', '01', NULL, '2022-03-20', 'FAC001-001-000000536', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 16:35:49', '2022-03-20 16:36:45', 1, 1, 1, NULL),
(611, 1, 1, 1, '2003202201100364051100110010020000000501234567819', '2003202201100364051100110010020000000501234567819', '2022-03-20 09:51:37', 'AUTORIZADO', '1', '1', '000000050', '01', NULL, '2022-03-20', 'FAC001-002-000000050', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 21:51:01', '2022-03-20 21:51:38', 2, 4, 4, NULL),
(612, 3, 1, 1, '2003202201100364051100110010020000000511234567814', '2003202201100364051100110010020000000511234567814', '2022-03-20 11:21:41', 'AUTORIZADO', '1', '1', '000000051', '01', NULL, '2022-03-20', 'FAC001-002-000000051', '5.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.60', '0.00', '0.00', '5.60', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-20 23:20:51', '2022-03-20 23:21:43', 2, 4, 4, NULL),
(613, 3, 1, 1, '2103202201100364051100110010010000005371234567812', '2103202201100364051100110010010000005371234567812', '2022-03-21 12:09:18', 'AUTORIZADO', '1', '1', '000000537', '01', NULL, '2022-03-21', 'FAC001-001-000000537', '10.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.20', '0.00', '0.00', '11.20', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-21 00:08:44', '2022-03-21 00:09:20', 1, 3, 3, NULL),
(614, 3, 1, 1, '2103202201100364051100110010010000005381234567818', '2103202201100364051100110010010000005381234567818', '2022-03-21 12:14:47', 'AUTORIZADO', '1', '1', '000000538', '01', NULL, '2022-03-21', 'FAC001-001-000000538', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.12', '0.00', '0.00', '1.12', '0.00', '0.00', '0.00', 1, 0, '', 0, NULL, '2022-03-21 00:14:04', '2022-03-21 00:14:49', 1, 3, 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturahasproducto`
--

CREATE TABLE `facturahasproducto` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `factura_id` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `codigoProducto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `precioUnitario` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  `precioSinSubsidio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `facturahasproducto`
--

INSERT INTO `facturahasproducto` (`id`, `producto_id`, `factura_id`, `cantidad`, `nombre`, `codigoProducto`, `precioUnitario`, `descuento`, `valorTotal`, `precioSinSubsidio`) VALUES
(1, 10, 72, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(500, 2, 390, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(501, 2, 391, '2.00', 'INTERNET HOGAR 5MB', 'interg', '17.85', '0.00', '35.71', NULL),
(502, 2, 392, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(503, 2, 393, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(504, 2, 394, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(505, 2, 395, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(506, 2, 396, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(507, 2, 397, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(508, 2, 398, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(509, 2, 399, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(510, 2, 400, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(511, 2, 401, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(512, 2, 402, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(513, 10, 403, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(514, 2, 404, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(515, 10, 405, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(516, 2, 406, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(517, 10, 407, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(518, 10, 408, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(519, 2, 409, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(520, 2, 410, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(521, 2, 411, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(522, 2, 412, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(523, 31, 413, '1.00', 'INTERNET CYBER 3M', 'INCYBER', '25.00', '0.00', '25.00', NULL),
(525, 2, 414, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(526, 2, 415, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(527, 1, 416, '1.00', 'INSTALACION DE SERVICIO', 'INS', '53.57', '0.00', '53.57', NULL),
(528, 2, 417, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '1.80', '16.06', NULL),
(529, 2, 418, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '1.80', '16.06', NULL),
(530, 10, 419, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(531, 10, 420, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(532, 2, 421, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(533, 2, 422, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(534, 10, 423, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(535, 2, 424, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(536, 3, 425, '1.00', 'INTERNET HOGAR 7.00MB', 'interp', '22.32', '0.00', '22.32', NULL),
(537, 2, 426, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(538, 2, 427, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(539, 10, 428, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(540, 2, 429, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(541, 10, 430, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(542, 2, 431, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(543, 2, 432, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(544, 2, 433, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(545, 2, 434, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(546, 2, 435, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(547, 2, 436, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(548, 3, 437, '1.00', 'INTERNET HOGAR 7.00MB', 'interp', '25.00', '0.00', '25.00', NULL),
(549, 2, 438, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(550, 2, 439, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '4.47', '13.40', NULL),
(551, 10, 440, '2.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '23.21', NULL),
(552, 2, 441, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(553, 3, 442, '1.00', 'INTERNET HOGAR 7.00MB', 'interp', '22.32', '0.00', '22.32', NULL),
(554, 2, 443, '1.00', 'INTERNET HOGAR 5MB', 'interg', '14.29', '0.00', '14.29', NULL),
(555, 2, 444, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(556, 2, 445, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(557, 2, 446, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(558, 2, 447, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(559, 2, 448, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(560, 2, 449, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(561, 10, 450, '2.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '23.21', NULL),
(562, 2, 451, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(563, 2, 452, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(564, 2, 453, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(565, 2, 454, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(566, 2, 455, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(567, 2, 456, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(568, 10, 457, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(569, 2, 458, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(570, 2, 459, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(571, 2, 460, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(572, 2, 461, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(573, 2, 462, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(574, 2, 463, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(575, 2, 464, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(576, 2, 465, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(577, 10, 466, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(578, 2, 467, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(579, 3, 468, '1.00', 'INTERNET HOGAR 7.00MB', 'interp', '25.00', '0.00', '25.00', NULL),
(580, 2, 469, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(581, 10, 470, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(582, 10, 471, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(583, 37, 472, '1.00', 'Sistema php+synfony incluye soap (codigo fuente)', 'syst002', '71.50', '5.00', '66.50', NULL),
(584, 38, 472, '1.00', 'libreria javascritp Facturacion electronica', 'syst003', '35.79', '13.00', '22.79', NULL),
(585, 2, 473, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(586, 3, 474, '1.00', 'INTERNET HOGAR 7.00MB', 'interp', '22.32', '0.00', '22.32', NULL),
(587, 10, 475, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(588, 2, 476, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(589, 2, 477, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(590, 2, 478, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(591, 2, 479, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(592, 37, 480, '1.00', 'Sistema php+synfony incluye soap (codigo fuente)', 'syst002', '71.43', '0.00', '71.43', NULL),
(593, 2, 481, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(594, 2, 482, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(595, 10, 483, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(596, 2, 484, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(597, 10, 485, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(598, 10, 486, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(599, 2, 487, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(600, 2, 488, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(601, 2, 489, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(602, 2, 490, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(603, 2, 491, '2.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '35.71', NULL),
(604, 2, 492, '2.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '35.71', NULL),
(605, 10, 493, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(606, 2, 494, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(607, 2, 495, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(608, 2, 496, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(609, 2, 497, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(610, 10, 498, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(611, 2, 499, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(612, 10, 500, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(613, 10, 501, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(616, 2, 504, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(617, 2, 505, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(618, 2, 506, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(619, 2, 507, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(620, 2, 508, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(621, 2, 509, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(622, 2, 510, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(623, 2, 511, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(624, 2, 512, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(625, 2, 513, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(626, 2, 514, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(627, 2, 515, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(628, 2, 516, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(629, 2, 517, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(630, 2, 518, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(631, 2, 519, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(632, 2, 520, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(633, 2, 521, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(634, 10, 522, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(635, 10, 523, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(636, 2, 524, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(637, 10, 525, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(638, 10, 526, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(639, 2, 527, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(640, 2, 528, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(641, 2, 529, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(642, 2, 530, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(643, 2, 531, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(644, 2, 532, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(645, 2, 533, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(646, 2, 534, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(647, 10, 535, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(648, 2, 536, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(649, 2, 537, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(650, 2, 538, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(651, 10, 539, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(652, 2, 540, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(653, 2, 541, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(654, 2, 542, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(655, 2, 543, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(656, 3, 544, '1.00', 'INTERNET HOGAR 7.00MB', 'interp', '25.00', '0.00', '25.00', NULL),
(657, 2, 545, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(658, 2, 546, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(659, 10, 547, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(660, 2, 548, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(661, 2, 549, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(662, 2, 550, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(663, 10, 551, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(664, 2, 552, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(665, 2, 553, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(666, 2, 554, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(667, 2, 555, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(668, 2, 556, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(669, 2, 557, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(670, 2, 558, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(671, 31, 559, '1.00', 'INTERNET CYBER 3M', 'INCYBER', '25.00', '0.00', '25.00', NULL),
(672, 2, 560, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(673, 2, 561, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(674, 2, 562, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(675, 10, 563, '2.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '23.21', NULL),
(676, 2, 564, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(677, 2, 565, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(678, 2, 566, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(679, 2, 567, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(680, 2, 568, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(681, 2, 569, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(682, 2, 570, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(683, 2, 571, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(684, 2, 572, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(685, 2, 573, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(686, 2, 574, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(687, 2, 575, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(688, 2, 576, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(689, 10, 577, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(690, 2, 578, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(691, 2, 579, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(692, 2, 580, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(693, 2, 581, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(694, 2, 582, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(695, 3, 583, '1.00', 'INTERNET HOGAR 7.00MB', 'interp', '25.00', '0.00', '25.00', NULL),
(696, 2, 584, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(697, 2, 585, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(698, 2, 586, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(699, 2, 587, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(700, 2, 588, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(701, 10, 589, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(702, 2, 590, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(703, 2, 591, '1.00', 'INTERNET HOGAR 5MB', 'interg', '17.86', '0.00', '17.86', NULL),
(704, 10, 592, '1.00', 'INTERNET HOGAR 3MB', 'interh', '11.61', '0.00', '11.61', NULL),
(711, 2, 599, '3.00', 'MOUSE', 'MOUSE3', '5.00', '0.00', '15.00', NULL),
(712, 3, 599, '5.00', 'Metros de construcción', 'PRO-001', '10.00', '0.00', '50.00', NULL),
(713, 1, 600, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(714, 1, 601, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(715, 1, 602, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(716, 1, 603, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(717, 1, 604, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(718, 1, 605, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(719, 1, 606, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(720, 1, 607, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(721, 1, 608, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(722, 1, 609, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(723, 1, 610, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(724, 1, 611, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(725, 2, 612, '1.00', 'MOUSE', 'MOUSE3', '5.00', '0.00', '5.00', NULL),
(726, 3, 613, '1.00', 'Metros de construcción', 'PRO-001', '10.00', '0.00', '10.00', NULL),
(727, 1, 614, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturareembolso`
--

CREATE TABLE `facturareembolso` (
  `id` int(11) NOT NULL,
  `factura_id` int(11) NOT NULL,
  `tipoProveedorReembolso` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `tipoIdentificacionProveedorReembolso` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `identificacionProveedorReembolso` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `estabDocReembolso` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `ptoEmiDocReembolso` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `secuencialDocReembolso` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fechaEmisionDocReembolso` date NOT NULL,
  `numeroautorizacionDocReemb` varchar(49) COLLATE utf8_unicode_ci NOT NULL,
  `codDocReembolso` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `baseImponibleReembolso` decimal(10,2) NOT NULL,
  `impuestoReembolso` decimal(10,2) NOT NULL,
  `baseImponibleSinIvaReembolso` decimal(10,2) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` varchar(13) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `total_venta` varchar(20) NOT NULL,
  `estado_factura` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_factura`, `numero_factura`, `fecha_factura`, `id_cliente`, `id_vendedor`, `condiciones`, `total_venta`, `estado_factura`) VALUES
(1, 1, '2018-12-05 03:26:31', '1002488367', 1, '1', '20', 1),
(6, 6, '2018-12-20 03:44:59', '1715737837', 1, '1', '13', 1),
(2, 2, '2018-12-06 03:48:17', '1002635207', 1, '1', '20', 1),
(3, 3, '2018-12-08 03:49:53', '1004017184', 1, '1', '20', 1),
(4, 4, '2018-12-10 03:50:25', '1003385976', 1, '1', '13', 1),
(5, 5, '2018-12-16 03:52:53', '1002922480', 1, '1', '14', 1),
(13, 11, '2019-01-06 01:07:16', '1003776398', 1, '1', '20', 1),
(9, 7, '2018-12-22 04:30:56', '1002238994', 1, '1', '20', 1),
(10, 8, '2018-12-23 23:42:21', '1002817573', 1, '1', '13', 1),
(11, 9, '2018-12-17 10:51:27', '2147483647', 1, '1', '30', 1),
(12, 10, '2018-12-27 22:50:19', '1004626519', 1, '1', '50', 1),
(14, 12, '2019-01-06 01:16:58', '1001536750', 1, '1', '12', 1),
(15, 13, '2019-01-06 01:45:24', '1003385976', 1, '1', '13', 1),
(16, 14, '2019-01-07 10:57:57', '1002427886', 1, '1', '50', 1),
(17, 15, '2019-01-08 10:58:26', '1002922480', 1, '1', '13', 1),
(24, 22, '2019-01-21 00:47:04', '1002238994', 1, '1', '20', 1),
(23, 21, '2019-01-21 00:52:32', '1715737837', 1, '1', '20', 1),
(20, 18, '2019-01-13 01:08:33', '2147483647', 1, '1', '20', 1),
(19, 17, '2019-01-15 01:10:32', '2147483647', 1, '1', '60', 1),
(18, 16, '2019-01-16 01:11:25', '1002635207', 1, '1', '20', 1),
(21, 19, '2019-01-15 02:51:53', '1720034659', 1, '1', '20', 1),
(22, 20, '2019-01-18 02:52:45', '1004595094', 1, '1', '25', 1),
(27, 23, '2019-01-21 00:00:00', '1001623939', 1, '1', '50', 1),
(28, 24, '2019-01-22 00:00:00', '1204326498', 1, '1', '50', 1),
(29, 25, '2019-02-07 00:00:00', '1003385976', 1, '1', '13', 1),
(30, 26, '2019-02-10 00:00:00', '1002635207', 1, '1', '20', 1),
(31, 27, '2019-02-10 00:00:00', '1004595094', 1, '1', '20', 1),
(32, 28, '2019-02-12 00:00:00', '1004626519', 1, '1', '20', 1),
(33, 29, '2019-02-14 00:00:00', '2147483647', 1, '1', '20', 1),
(34, 30, '2019-02-21 00:00:00', '1715737837', 1, '1', '13', 1),
(35, 31, '2019-02-21 00:00:00', '1003776398', 1, '1', '13', 1),
(36, 32, '2019-02-21 00:00:00', '1002817573', 1, '1', '13', 1),
(37, 33, '2019-02-24 00:00:00', '1002238994', 1, '1', '20', 1),
(38, 34, '2019-03-09 00:00:00', '1001150125', 1, '1', '15', 1),
(39, 35, '2019-03-10 00:00:00', '1204326498', 1, '1', '20', 1),
(40, 36, '2019-03-20 00:00:00', '1003776398', 1, '1', '13', 1),
(41, 37, '2019-03-28 00:00:00', '1002817573', 1, '1', '13', 1),
(42, 38, '2019-04-08 00:00:00', '1204326498', 1, '1', '20', 1),
(43, 39, '2019-03-08 00:00:00', '1002635207', 1, '1', '20', 1),
(44, 40, '2019-03-08 00:00:00', '1003385976', 1, '1', '13', 1),
(45, 41, '2019-03-09 00:00:00', '1720034659', 1, '1', '20', 1),
(46, 42, '2019-03-23 00:00:00', '1715737837', 1, '1', '13', 1),
(47, 43, '2019-03-31 00:00:00', '1004017184', 1, '1', '20', 1),
(48, 44, '2019-04-08 00:00:00', '1002427886', 1, '1', '20', 1),
(49, 45, '2019-04-08 00:00:00', '1004626519', 1, '1', '20', 1),
(50, 46, '2019-04-09 00:00:00', '1002635207', 1, '1', '20', 1),
(51, 47, '2019-04-10 00:00:00', '1004017184', 1, '1', '20', 1),
(52, 48, '2019-04-11 00:00:00', '1003776398', 1, '1', '13', 1),
(53, 49, '2019-04-12 00:00:00', '2147483647', 1, '1', '20', 1),
(54, 50, '2019-04-13 00:00:00', '1001150125', 1, '1', '20', 1),
(55, 51, '2019-04-13 00:00:00', '1002946398', 1, '1', '30', 1),
(56, 52, '2019-04-14 00:00:00', '1720034659', 1, '1', '10', 1),
(57, 53, '2019-04-14 00:00:00', '1004595094', 1, '1', '20', 1),
(58, 54, '2019-04-14 00:00:00', '1003385976', 1, '1', '13', 1),
(59, 55, '2019-05-07 00:00:00', '1003776398', 1, '1', '13', 1),
(60, 56, '2019-05-07 00:00:00', '1204326498', 1, '1', '20', 1),
(61, 57, '2019-05-07 00:00:00', '2147483647', 1, '1', '20', 1),
(62, 58, '2019-05-07 00:00:00', '1004017184', 1, '1', '20', 1),
(63, 59, '2019-05-07 00:00:00', '1001150125', 1, '1', '20', 1),
(64, 60, '2019-05-07 00:00:00', '1002488367', 1, '1', '20', 1),
(65, 61, '2019-05-26 00:00:00', '1002488367', 1, '1', '20', 1),
(66, 62, '2019-05-06 00:00:00', '2147483647', 1, '1', '20', 1),
(67, 63, '2019-05-06 00:00:00', '1002635207', 1, '1', '20', 1),
(68, 64, '2019-05-13 00:00:00', '1004626519', 1, '1', '20', 1),
(69, 65, '2019-05-14 00:00:00', '1002946398', 1, '1', '30', 1),
(70, 66, '2019-05-14 00:00:00', '1003385976', 1, '1', '10', 1),
(71, 67, '2019-06-03 00:00:00', '1720034659', 1, '1', '32', 1),
(72, 68, '2019-06-03 00:00:00', '1001150125', 1, '1', '20', 1),
(73, 69, '2019-06-04 00:00:00', '1004017184', 1, '1', '20', 1),
(74, 70, '2019-06-04 00:00:00', '1002635207', 1, '1', '20', 1),
(77, 73, '2019-06-06 00:00:00', '1002817573', 1, '1', '26.01', 1),
(76, 72, '2019-06-06 00:00:00', '1715737837', 1, '1', '13', 1),
(78, 74, '2019-06-06 00:00:00', '1204326498', 1, '1', '20', 1),
(79, 75, '2019-06-05 00:00:00', '1002427886', 1, '1', '20', 1),
(80, 76, '2019-06-06 00:00:00', '1003776398', 1, '1', '13', 1),
(81, 77, '2019-07-04 00:00:00', '1002488367', 1, '1', '20', 1),
(82, 78, '2019-07-05 00:00:00', '1002635207', 1, '1', '20', 1),
(83, 79, '2019-07-04 00:00:00', '2147483647', 1, '1', '20', 1),
(84, 80, '2019-07-05 00:00:00', '1004017184', 1, '1', '20', 1),
(85, 81, '2019-07-06 00:00:00', '1002946398', 1, '1', '20', 1),
(86, 82, '2019-07-06 00:00:00', '1004626519', 1, '1', '20', 1),
(87, 83, '2019-06-04 00:00:00', '1003385976', 1, '1', '13', 1),
(88, 84, '2019-06-06 00:00:00', '1004626519', 1, '1', '20', 1),
(89, 85, '2019-06-10 00:00:00', '2147483647', 1, '1', '20', 1),
(90, 86, '2019-06-13 00:00:00', '1002679122', 1, '1', '20', 1),
(91, 87, '2019-06-15 00:00:00', '1002946398', 1, '1', '15', 1),
(92, 88, '2019-07-06 00:00:00', '1001881422', 1, '1', '40.01', 1),
(93, 89, '2019-07-07 00:00:00', '1204326498', 1, '1', '20', 1),
(94, 90, '2019-07-08 00:00:00', '1004595094', 2, '2', '20', 1),
(95, 91, '2019-07-09 00:00:00', '1002755377', 2, '1', '20', 1),
(96, 92, '2019-07-10 00:00:00', '1004350979', 2, '1', '20', 1),
(100, 94, '2019-07-17 00:00:00', '1002817573', 1, '1', '13', 1),
(99, 93, '2019-07-11 00:00:00', '1003385976', 2, '1', '11', 1),
(101, 95, '2019-07-17 00:00:00', '1002679122', 1, '1', '20', 1),
(102, 96, '2019-07-17 00:00:00', '1001150125', 1, '1', '20', 1),
(103, 97, '2019-07-17 00:00:00', '1004595094', 1, '1', '20', 1),
(104, 98, '2019-08-05 00:00:00', '1003776398', 1, '1', '13', 1),
(105, 99, '2019-08-05 00:00:00', '1002238994', 1, '1', '20', 1),
(106, 100, '2019-08-05 00:00:00', '1002635207', 1, '1', '20', 1),
(107, 101, '2019-08-07 00:00:00', '1002755377', 1, '1', '20', 1),
(108, 102, '2019-08-11 00:00:00', '1002488367', 1, '1', '20', 1),
(109, 103, '2019-08-11 00:00:00', '1002946398', 1, '1', '20', 1),
(110, 104, '2019-08-11 00:00:00', '1004017184', 1, '1', '20', 1),
(111, 105, '2019-08-11 00:00:00', '1204326498', 1, '1', '20', 1),
(112, 106, '2019-08-12 00:00:00', '1004709281', 1, '1', '40.01', 1),
(113, 107, '2019-08-13 00:00:00', '1003385976', 1, '1', '13', 1),
(114, 108, '2019-08-14 00:00:00', '1002679122', 1, '1', '20', 1),
(115, 109, '2019-08-17 00:00:00', '1002817573', 1, '1', '13', 1),
(116, 110, '2019-08-19 00:00:00', '1002427886', 1, '1', '20', 1),
(117, 111, '2019-08-21 00:00:00', '1004350979', 1, '1', '20', 1),
(118, 112, '2019-09-03 00:00:00', '1004709281', 1, '1', '20', 1),
(119, 113, '2019-09-03 00:00:00', '2147483647', 1, '1', '30', 1),
(120, 114, '2019-09-05 00:00:00', '1204326498', 1, '1', '20', 1),
(121, 115, '2019-09-05 00:00:00', '1004017184', 1, '1', '20', 1),
(122, 116, '2019-09-06 00:00:00', '1003385976', 1, '1', '13', 1),
(123, 117, '2019-09-06 00:00:00', '1002970695', 1, '1', '20', 1),
(124, 118, '2019-09-07 00:00:00', '1003522925', 1, '1', '35', 1),
(125, 119, '2019-09-07 00:00:00', '1004595094', 1, '1', '20', 1),
(126, 120, '2019-09-07 00:00:00', '1002635207', 1, '1', '20', 1),
(127, 121, '2019-09-08 00:00:00', '1002755377', 1, '1', '20', 1),
(128, 122, '2019-09-12 00:00:00', '1001150125', 1, '1', '20', 1),
(129, 123, '2019-09-12 00:00:00', '1004350979', 1, '1', '20', 1),
(130, 124, '2019-09-14 00:00:00', '1002679122', 1, '1', '20', 1),
(131, 125, '2019-09-14 00:00:00', '1002488367', 1, '1', '20', 1),
(132, 126, '2019-09-30 00:00:00', '1002817573', 1, '1', '13', 1),
(133, 127, '2019-10-03 00:00:00', '1004626519', 1, '1', '20', 1),
(134, 128, '2019-10-04 00:00:00', '1004017184', 1, '1', '20', 1),
(135, 129, '2019-10-04 00:00:00', '1204326498', 1, '1', '20', 1),
(136, 130, '2019-10-04 00:00:00', '2147483647', 1, '1', '20', 1),
(137, 131, '2019-10-05 00:00:00', '1001150125', 1, '1', '20', 1),
(138, 132, '2019-10-05 00:00:00', '1004709281', 1, '1', '20', 1),
(139, 133, '2019-10-06 00:00:00', '1002970695', 1, '1', '20', 1),
(140, 134, '2019-10-06 00:00:00', '1003522925', 1, '1', '20', 1),
(141, 135, '2019-10-07 00:00:00', '1003359625', 1, '1', '20', 1),
(142, 136, '2019-10-07 00:00:00', '1002488367', 1, '1', '20', 1),
(143, 137, '2019-10-10 00:00:00', '1004595094', 1, '1', '20', 1),
(144, 138, '2019-10-12 00:00:00', '1004350979', 1, '1', '20', 1),
(145, 139, '2019-10-12 00:00:00', '1003385976', 1, '1', '13', 1),
(146, 140, '2019-10-14 00:00:00', '1001623939', 1, '1', '15', 1),
(147, 141, '2019-10-15 00:00:00', '1002679122', 1, '1', '20', 1),
(148, 142, '2019-10-16 00:00:00', '1002817573', 1, '1', '13', 1),
(149, 143, '2019-10-22 00:00:00', '1002193363', 1, '1', '20', 1),
(150, 144, '2019-11-05 00:00:00', '1204326498', 1, '1', '20', 1),
(151, 145, '2019-11-05 00:00:00', '1004709281', 1, '1', '20', 1),
(152, 146, '2019-11-06 00:00:00', '1004017184', 1, '1', '20', 1),
(153, 147, '2019-11-06 00:00:00', '1001150125', 1, '1', '20', 1),
(154, 148, '2019-11-07 00:00:00', '1002970695', 1, '1', '20', 1),
(155, 149, '2019-11-07 00:00:00', '1003522925', 1, '1', '20', 1),
(156, 150, '2019-11-07 00:00:00', '1002488367', 1, '1', '20', 1),
(157, 151, '2019-11-10 00:00:00', '1004595094', 1, '1', '20', 1),
(158, 152, '2019-11-11 00:00:00', '1004350979', 1, '1', '20', 1),
(159, 153, '2019-11-11 00:00:00', '1002193363', 1, '1', '20', 1),
(160, 154, '2019-11-13 00:00:00', '1002679122', 1, '1', '20', 1),
(161, 155, '2019-11-14 00:00:00', '1003385976', 1, '1', '13', 1),
(162, 156, '2019-11-14 00:00:00', '1001623939', 1, '1', '20', 1),
(163, 157, '2019-11-15 00:00:00', '1004626519', 1, '1', '20', 1),
(164, 158, '2019-11-16 00:00:00', '1002427886', 1, '1', '20', 1),
(165, 159, '2019-11-17 00:00:00', '2147483647', 1, '1', '20', 1),
(166, 160, '2019-11-17 00:00:00', '1002817573', 1, '1', '13', 1),
(167, 161, '2019-11-30 00:00:00', '1002755377', 1, '1', '40.01', 1),
(168, 162, '2019-12-03 00:00:00', '1002970695', 1, '1', '20', 1),
(169, 163, '2019-12-04 00:00:00', '1204326498', 1, '1', '20', 1),
(170, 164, '2019-12-07 00:00:00', '2147483647', 1, '1', '10', 1),
(171, 165, '2019-12-08 00:00:00', '1002488367', 1, '1', '20', 1),
(172, 166, '2019-12-10 00:00:00', '1004595094', 1, '1', '20', 1),
(173, 167, '2019-12-10 00:00:00', '1002635207', 1, '1', '20', 1),
(174, 168, '2019-12-11 00:00:00', '1004709281', 1, '1', '20', 1),
(175, 169, '2019-12-11 00:00:00', '1001623939', 1, '1', '20', 1),
(176, 170, '2019-12-12 00:00:00', '1004350979', 1, '1', '20', 1),
(177, 171, '2019-12-12 00:00:00', '1003522925', 1, '1', '20', 1),
(178, 172, '2019-12-16 00:00:00', '1002679122', 1, '1', '20', 1),
(179, 173, '2019-12-16 00:00:00', '1004626519', 1, '1', '20', 1),
(180, 174, '2019-12-16 00:00:00', '1004017184', 1, '1', '20', 1),
(181, 175, '2019-12-18 00:00:00', '1002427886', 1, '1', '20', 1),
(182, 176, '2019-12-21 00:00:00', '1005996714', 1, '1', '20', 1),
(183, 177, '2019-12-23 00:00:00', '1002922480', 1, '1', '13', 1),
(184, 178, '2019-12-23 00:00:00', '1002193363', 1, '1', '20', 1),
(185, 179, '2020-01-01 00:00:00', '1004626519', 1, '1', '20', 1),
(186, 180, '2020-01-03 00:00:00', '1002427886', 1, '1', '20', 1),
(187, 181, '2020-01-05 00:00:00', '1003522925', 1, '1', '20', 1),
(188, 182, '2020-01-06 00:00:00', '1004709281', 1, '1', '20', 1),
(189, 183, '2020-01-07 00:00:00', '1204326498', 1, '1', '20', 1),
(190, 184, '2020-01-07 00:00:00', '1001150125', 1, '1', '20', 1),
(191, 185, '2020-01-10 00:00:00', '1002922480', 1, '1', '13', 1),
(192, 186, '2020-01-10 00:00:00', '1002193363', 1, '1', '20', 1),
(193, 187, '2020-01-10 00:00:00', '1004017184', 1, '1', '20', 1),
(194, 188, '2020-01-13 00:00:00', '1002635207', 1, '1', '20', 1),
(195, 189, '2020-01-14 00:00:00', '1004350979', 1, '1', '20', 1),
(196, 190, '2020-01-15 00:00:00', '1001623939', 1, '1', '20', 1),
(197, 191, '2020-01-18 00:00:00', '2147483647', 1, '1', '40', 1),
(198, 192, '2020-01-20 00:00:00', '1002817573', 1, '1', '13', 1),
(199, 193, '2020-01-21 00:00:00', '1005996714', 1, '1', '20', 1),
(200, 194, '2020-01-21 00:00:00', '1001881422', 1, '1', '15', 1),
(201, 195, '2020-01-23 00:00:00', '1004595094', 1, '1', '20', 1),
(202, 196, '2020-01-23 00:00:00', '1002817573', 1, '1', '13', 1),
(203, 197, '2020-01-25 00:00:00', '1715737837', 1, '1', '13', 1),
(204, 198, '2020-01-25 00:00:00', '1002488367', 1, '1', '20', 1),
(205, 199, '2020-01-25 00:00:00', '2147483647', 1, '1', '20', 1),
(206, 200, '2020-02-03 00:00:00', '1004626519', 1, '1', '20', 1),
(207, 201, '2020-02-05 00:00:00', '1004017184', 1, '1', '20', 1),
(208, 202, '2020-02-05 00:00:00', '1001150125', 1, '1', '20', 1),
(209, 203, '2020-02-08 00:00:00', '1002635207', 1, '1', '20', 1),
(210, 204, '2020-02-09 00:00:00', '1002626032', 1, '1', '20', 1),
(211, 205, '2020-02-09 00:00:00', '1002970695', 1, '1', '20', 1),
(212, 206, '2020-02-11 00:00:00', '1204326498', 1, '1', '20', 1),
(213, 207, '2020-02-11 00:00:00', '1002427886', 1, '1', '20', 1),
(214, 208, '2020-02-11 00:00:00', '1002679122', 1, '1', '20', 1),
(215, 209, '2020-02-12 00:00:00', '1003385976', 1, '1', '10', 1),
(216, 210, '2020-02-12 00:00:00', '1002193363', 1, '1', '20', 1),
(217, 211, '2020-02-13 00:00:00', '1004709281', 1, '1', '20', 1),
(218, 212, '2020-02-13 00:00:00', '1001623939', 1, '1', '20', 1),
(219, 213, '2020-02-17 00:00:00', '1710961010', 1, '1', '20', 1),
(220, 214, '2020-02-18 00:00:00', '1050155611', 1, '1', '20', 1),
(221, 215, '2020-02-22 00:00:00', '1002488367', 1, '1', '10', 1),
(222, 216, '2020-03-02 00:00:00', '1002238994', 1, '1', '20', 1),
(223, 217, '2020-03-02 00:00:00', '1003522925', 1, '1', '20', 1),
(224, 218, '2020-03-08 00:00:00', '1204326498', 1, '1', '20', 1),
(225, 219, '2020-03-08 00:00:00', '1001623939', 1, '1', '20', 1),
(226, 220, '2020-03-09 00:00:00', '1003385976', 1, '1', '13', 1),
(227, 221, '2020-03-10 00:00:00', '1005996714', 1, '1', '35', 1),
(228, 222, '2020-03-10 00:00:00', '1002626032', 1, '1', '30', 1),
(229, 223, '2020-03-10 00:00:00', '1002922480', 1, '1', '20', 1),
(230, 224, '2020-03-10 00:00:00', '1002817573', 1, '1', '10', 1),
(231, 225, '2020-03-10 00:00:00', '1001881422', 1, '1', '20', 1),
(232, 226, '2020-03-10 00:00:00', '1004709281', 1, '1', '20', 1),
(233, 227, '2020-03-10 00:00:00', '1002970695', 1, '1', '13', 1),
(234, 228, '2020-03-10 00:00:00', '1002635207', 1, '1', '20', 1),
(236, 229, '2020-03-11 00:00:00', '1004350979', 1, '1', '40', 1),
(238, 230, '2020-03-11 00:00:00', '1002427886', 1, '1', '20', 1),
(239, 231, '2020-03-11 00:00:00', '1004595094', 1, '1', '20', 1),
(240, 232, '2020-03-14 00:00:00', '1002755377', 1, '1', '20', 1),
(241, 233, '2020-03-15 00:00:00', '1004017184', 1, '1', '20', 1),
(242, 234, '2020-03-16 00:00:00', '1715737837', 1, '1', '10', 1),
(243, 235, '2020-03-20 00:00:00', '1003776398', 1, '1', '13', 1),
(244, 236, '2020-03-22 00:00:00', '1721608972', 1, '1', '55', 1),
(245, 237, '2020-03-22 00:00:00', '1002679122', 1, '1', '20', 1),
(246, 238, '2020-03-23 00:00:00', '1003277165', 1, '1', '40.01', 1),
(247, 239, '2020-03-23 00:00:00', '1002193363', 1, '1', '20', 1),
(248, 240, '2020-03-23 00:00:00', '1003432190', 1, '1', '15', 1),
(249, 241, '2020-03-23 00:00:00', '1003551973', 1, '1', '25', 1),
(250, 242, '2020-03-23 00:00:00', '1004963086', 1, '1', '50', 1),
(251, 243, '2020-03-24 00:00:00', '0603397167', 1, '1', '50', 1),
(252, 244, '2020-03-24 00:00:00', '1002658225', 1, '1', '50', 1),
(253, 245, '2020-03-24 00:00:00', '1004231195', 1, '1', '50', 1),
(254, 246, '2020-03-24 00:00:00', '1004350300', 1, '1', '25', 1),
(255, 247, '2020-04-01 00:00:00', '1001881422', 1, '1', '20', 1),
(256, 248, '2020-04-01 00:00:00', '1001150125', 1, '1', '20', 1),
(257, 249, '2020-04-05 00:00:00', '1002640751', 1, '1', '20', 1),
(258, 250, '2020-04-05 00:00:00', '1004709281', 1, '1', '20', 1),
(259, 251, '2020-04-10 00:00:00', '1003713177', 1, '1', '50', 1),
(260, 252, '2020-04-05 00:00:00', '1002023453', 1, '1', '50', 1),
(261, 253, '2020-04-06 00:00:00', '1003551973', 1, '1', '13', 1),
(262, 254, '2020-04-06 00:00:00', '1002488367', 1, '1', '20', 1),
(263, 255, '2020-04-07 00:00:00', '1003679980', 1, '1', '55', 1),
(264, 256, '2020-04-08 00:00:00', '1204326498', 1, '1', '20', 1),
(265, 257, '2020-04-08 00:00:00', '1003522925', 1, '1', '20', 1),
(266, 258, '2020-04-08 00:00:00', '1004017184', 1, '1', '20', 1),
(267, 259, '2020-04-08 00:00:00', '1002951661', 1, '1', '20', 1),
(268, 260, '2020-04-10 00:00:00', '1004350300', 1, '1', '38', 1),
(269, 261, '2020-04-10 00:00:00', '1002658225', 1, '1', '13.35', 1),
(270, 262, '2020-04-14 00:00:00', '1718696964', 1, '1', '60', 1),
(271, 263, '2020-04-14 00:00:00', '1003679980', 1, '1', '30', 1),
(272, 264, '2020-04-14 00:00:00', '1002286878', 1, '1', '30', 1),
(273, 265, '2020-04-14 00:00:00', '1003520176', 1, '1', '60', 1),
(274, 266, '2020-04-21 00:00:00', '1003351481', 1, '1', '30', 1),
(275, 267, '2020-04-24 00:00:00', '1000766723', 1, '1', '30', 1),
(276, 268, '2020-04-22 00:00:00', '1004377709', 1, '1', '60', 1),
(277, 269, '2020-04-24 00:00:00', '1002193363', 1, '1', '20', 1),
(278, 270, '2020-04-27 00:00:00', '1003359625', 1, '1', '20', 1),
(279, 271, '2020-04-27 00:00:00', '1002283024', 1, '1', '20', 1),
(280, 272, '2020-05-01 00:00:00', '1004115083', 1, '1', '25', 1),
(281, 273, '2020-05-02 00:00:00', '1002946398', 1, '1', '40.01', 1),
(282, 274, '2020-05-02 00:00:00', '1721056701001', 1, '1', '40', 1),
(283, 275, '2020-05-02 00:00:00', '1002023453', 1, '1', '26.67', 1),
(284, 276, '2020-05-03 00:00:00', '1005996714', 1, '1', '10', 1),
(285, 277, '2020-05-05 00:00:00', '1005055056', 1, '1', '18', 1),
(286, 278, '2020-05-05 00:00:00', '1002951661', 1, '1', '10', 1),
(287, 279, '2020-05-05 00:00:00', '1002626032', 1, '1', '20', 1),
(288, 280, '2020-05-05 00:00:00', '1723256127', 1, '1', '20', 1),
(289, 281, '2020-05-07 00:00:00', '1004852644', 1, '1', '17.17', 1),
(290, 282, '2020-05-07 00:00:00', '1003520176', 1, '1', '10', 1),
(291, 283, '2020-05-07 00:00:00', '0603397167', 1, '1', '24', 1),
(292, 284, '2020-05-08 00:00:00', '1004231195', 1, '1', '13', 1),
(293, 285, '2020-05-08 00:00:00', '1003209010', 1, '1', '22', 1),
(294, 286, '2020-05-08 00:00:00', '1002238994', 1, '1', '20', 1),
(295, 287, '2020-05-09 00:00:00', '1002640751', 1, '1', '20', 1),
(296, 288, '2020-05-09 00:00:00', '1004350979', 1, '1', '20', 1),
(297, 289, '2020-05-10 00:00:00', '1002286878', 1, '1', '40.01', 1),
(298, 290, '2020-05-10 00:00:00', '1004595094', 1, '1', '35', 1),
(299, 291, '2020-05-10 00:00:00', '1003351481', 1, '1', '20', 1),
(300, 292, '2020-05-13 00:00:00', '1003679980', 1, '1', '15.33', 1),
(301, 293, '2020-05-13 00:00:00', '1004709281', 1, '1', '20', 1),
(302, 294, '2020-05-13 00:00:00', '1004017184', 1, '1', '20', 1),
(303, 295, '2020-05-13 00:00:00', '1003713177', 1, '1', '13', 1),
(304, 296, '2020-05-14 00:00:00', '1004638753', 1, '1', '36.83', 1),
(305, 297, '2020-05-15 00:00:00', '1002970695', 1, '1', '40.01', 1),
(306, 298, '2020-05-15 00:00:00', '1204326498', 1, '1', '20', 1),
(307, 299, '2020-05-15 00:00:00', '1002817573', 1, '1', '26.01', 1),
(308, 300, '2020-05-18 00:00:00', '0502555238', 1, '1', '40', 1),
(309, 301, '2020-05-19 00:00:00', '1003657846', 1, '1', '64.99', 1),
(310, 302, '2020-05-19 00:00:00', '1003397286', 1, '1', '35', 1),
(311, 303, '2020-05-21 00:00:00', '1001840014', 1, '1', '10', 1),
(312, 304, '2020-05-22 00:00:00', '1003121835', 1, '1', '65', 1),
(313, 305, '2020-05-22 00:00:00', '1002635207', 1, '1', '20', 1),
(314, 306, '2020-05-22 00:00:00', '1204326498', 1, '1', '20', 1),
(315, 307, '2020-05-22 00:00:00', '1003551973', 1, '1', '20', 1),
(316, 308, '2020-05-27 00:00:00', '1720453172', 1, '1', '60', 1),
(317, 309, '2020-05-27 00:00:00', '1003776398', 1, '1', '13', 1),
(318, 310, '2020-05-28 00:00:00', '1002283024', 1, '1', '20', 1),
(319, 311, '2020-05-28 00:00:00', '1005996714', 1, '1', '10', 1),
(320, 312, '2020-05-28 00:00:00', '1004965255', 1, '1', '65', 1),
(321, 313, '2020-06-01 00:00:00', '1003277165', 1, '1', '20', 1),
(322, 314, '2020-06-02 00:00:00', '1002951661', 1, '1', '10', 1),
(323, 315, '2020-06-04 00:00:00', '1002635207', 1, '1', '10', 1),
(324, 316, '2020-06-04 00:00:00', '1002105441', 1, '1', '65', 1),
(325, 317, '2020-06-04 00:00:00', '1718696964', 1, '1', '30', 1),
(326, 318, '2020-06-05 00:00:00', '1001840014', 1, '1', '20', 1),
(327, 319, '2020-06-05 00:00:00', '1004595094', 1, '1', '20', 1),
(328, 320, '2020-06-05 00:00:00', '1000766723', 1, '1', '13', 1),
(329, 321, '2020-06-06 00:00:00', '1721608972', 1, '1', '20', 1),
(330, 322, '2020-06-06 00:00:00', '1002427886', 1, '1', '20', 1),
(331, 323, '2020-06-06 00:00:00', '1723256127', 1, '1', '20', 1),
(332, 324, '2020-06-06 00:00:00', '1004350979', 1, '1', '20', 1),
(333, 325, '2020-06-07 00:00:00', '1003370127', 1, '1', '65', 1),
(334, 326, '2020-06-07 00:00:00', '1003551973', 1, '1', '33', 1),
(335, 327, '2020-06-07 00:00:00', '1004852644', 1, '1', '20', 1),
(336, 328, '2020-06-07 00:00:00', '1002640751', 1, '1', '20', 1),
(337, 329, '2020-06-07 00:00:00', '1001881422', 1, '1', '15', 1),
(338, 330, '2020-06-08 00:00:00', '1004709281', 1, '1', '20', 1),
(339, 331, '2020-06-08 00:00:00', '1003385976', 1, '1', '20', 1),
(340, 332, '2020-06-08 00:00:00', '1002658225', 1, '1', '20', 1),
(341, 333, '2020-06-10 00:00:00', '1204326498', 1, '1', '20', 1),
(342, 334, '2020-06-10 00:00:00', '1002286878', 1, '1', '20', 1),
(343, 335, '2020-06-10 00:00:00', '1004377709', 1, '1', '13', 1),
(344, 336, '2020-06-10 00:00:00', '1002000501', 1, '1', '20', 1),
(345, 337, '2020-06-10 00:00:00', '1005055056', 1, '1', '20', 1),
(346, 338, '2020-06-10 00:00:00', '1001623939', 1, '1', '20', 1),
(347, 339, '2020-06-10 00:00:00', '1004471916', 1, '1', '20', 1),
(348, 340, '2020-06-10 00:00:00', '1002679122', 1, '1', '40.01', 1),
(349, 341, '2020-06-10 00:00:00', '1002626032', 1, '1', '40.01', 1),
(350, 342, '2020-06-10 00:00:00', '1005996714', 1, '1', '20', 1),
(351, 343, '2020-06-10 00:00:00', '1004350300', 1, '1', '20', 1),
(352, 344, '2020-06-10 00:00:00', '1002488367', 1, '1', '35', 1),
(353, 345, '2020-06-11 00:00:00', '1050202488', 1, '1', '65', 1),
(354, 346, '2020-06-11 00:00:00', '1721034385', 1, '1', '50', 1),
(355, 347, '2020-06-11 00:00:00', '1003351481', 1, '1', '20', 1),
(356, 348, '2020-06-11 00:00:00', '1003242813', 1, '1', '60', 1),
(357, 349, '2020-06-11 00:00:00', '1002193363', 1, '1', '20', 1),
(358, 350, '2020-06-11 00:00:00', '0603397167', 1, '1', '20', 1),
(359, 351, '2020-06-12 00:00:00', '1003776398', 1, '1', '13', 1),
(360, 352, '2020-06-12 00:00:00', '1002922480', 1, '1', '20', 1),
(361, 353, '2020-06-12 00:00:00', '1720453172', 1, '1', '20', 1),
(362, 354, '2020-06-12 00:00:00', '1002193363', 1, '1', '20', 1),
(363, 355, '2020-06-12 00:00:00', '1004963086', 1, '1', '13', 1),
(364, 356, '2020-06-12 00:00:00', '1002427886', 1, '1', '20', 1),
(365, 357, '2020-06-12 00:00:00', '1002238994', 1, '1', '20', 1),
(366, 358, '2020-06-16 00:00:00', '100276885001', 1, '1', '80', 1),
(367, 359, '2020-06-16 00:00:00', '1004364475', 1, '1', '65', 1),
(368, 360, '2020-06-16 00:00:00', '1002283123', 1, '1', '60', 1),
(369, 361, '2020-06-18 00:00:00', '1003121835', 1, '1', '3.51', 1),
(370, 362, '2020-06-22 00:00:00', '1004228407', 1, '1', '30', 1),
(371, 363, '2020-06-20 00:00:00', '1004471916', 1, '1', '20', 1),
(372, 364, '2020-06-20 00:00:00', '1002283024', 1, '1', '20', 1),
(373, 365, '2020-06-20 00:00:00', '1003248299', 1, '1', '64.99', 1),
(374, 366, '2020-07-01 00:00:00', '1002193363', 1, '1', '20', 1),
(375, 367, '2020-07-01 00:00:00', '1002283024', 1, '1', '20', 1),
(376, 368, '2020-07-01 00:00:00', '1003209010', 1, '1', '20', 1),
(377, 369, '2020-07-03 00:00:00', '1002970695', 1, '1', '40.01', 1),
(378, 370, '2020-07-03 00:00:00', '1002023453', 1, '1', '20', 1),
(379, 371, '2020-07-04 00:00:00', '1000766723', 1, '1', '13', 1),
(380, 372, '2020-07-04 00:00:00', '1004115083', 1, '1', '20', 1),
(381, 373, '2020-07-05 00:00:00', '1004377709', 1, '1', '13', 1),
(382, 374, '2020-07-05 00:00:00', '1003397286', 1, '1', '50', 1),
(383, 375, '2020-07-05 00:00:00', '1002105441', 1, '1', '20', 1),
(384, 376, '2020-07-06 00:00:00', '1204326498', 1, '1', '20', 1),
(385, 377, '2020-07-06 00:00:00', '1002640751', 1, '1', '20', 1),
(386, 378, '2020-07-06 00:00:00', '1002922480', 1, '1', '20', 1),
(387, 379, '2020-07-06 00:00:00', '1003520176', 1, '1', '40.01', 1),
(388, 380, '2020-07-06 00:00:00', '1715737837', 1, '1', '13', 1),
(389, 381, '2020-07-07 00:00:00', '1004852644', 1, '1', '20', 1),
(390, 382, '2020-07-07 00:00:00', '1002640751', 1, '1', '5', 1),
(391, 383, '2020-07-12 00:00:00', '1050202488', 1, '1', '12.35', 1),
(392, 384, '2020-07-12 00:00:00', '1004350979', 1, '1', '20', 1),
(393, 385, '2020-07-12 00:00:00', '1004709281', 1, '1', '20', 1),
(394, 386, '2020-07-12 00:00:00', '0603397167', 1, '1', '20', 1),
(395, 387, '2020-07-12 00:00:00', '1003277165', 1, '1', '20', 1),
(396, 388, '2020-07-12 00:00:00', '1005055056', 1, '1', '20', 1),
(397, 389, '2020-07-12 00:00:00', '1005996714', 1, '1', '20', 1),
(398, 390, '2020-07-12 00:00:00', '1003728142', 1, '1', '30', 1),
(399, 391, '2020-07-12 00:00:00', '1718696964', 1, '1', '20', 1),
(400, 392, '2020-07-12 00:00:00', '1003551973', 1, '1', '13', 1),
(401, 393, '2020-07-12 00:00:00', '1002000501', 1, '1', '20', 1),
(402, 394, '2020-07-12 00:00:00', '1002286878', 1, '1', '20', 1),
(403, 395, '2020-07-12 00:00:00', '1003776398', 1, '1', '13', 1),
(404, 396, '2020-07-12 00:00:00', '1003121835', 1, '1', '9.11', 1),
(405, 397, '2020-07-12 00:00:00', '1721056701001', 1, '1', '20', 1),
(406, 398, '2020-07-12 00:00:00', '1004350300', 1, '1', '20', 1),
(407, 399, '2020-07-12 00:00:00', '1003679980', 1, '1', '20', 1),
(408, 400, '2020-07-12 00:00:00', '1002658225', 1, '1', '20', 1),
(409, 401, '2020-07-14 00:00:00', '1723256127', 1, '1', '20', 1),
(410, 402, '2020-07-14 00:00:00', '1003713177', 1, '1', '13', 1),
(411, 403, '2020-07-14 00:00:00', '1001881422', 1, '1', '20', 1),
(412, 404, '2020-07-16 00:00:00', '1003248299', 1, '1', '6.66', 1),
(413, 405, '2020-07-16 00:00:00', '1003385976', 1, '1', '20', 1),
(414, 406, '2020-07-16 00:00:00', '1002488367', 1, '1', '20', 1),
(415, 407, '2020-07-16 00:00:00', '1004017184', 1, '1', '20', 1),
(416, 408, '2020-07-16 00:00:00', '1004231195', 1, '1', '26.01', 1),
(417, 409, '2020-07-16 00:00:00', '100276885001', 1, '1', '14', 1),
(418, 410, '2020-07-16 00:00:00', '1002283123', 1, '1', '14', 1),
(419, 411, '2020-07-19 00:00:00', '1001751955', 1, '1', '20', 1),
(420, 412, '2020-07-19 00:00:00', '1004965255', 1, '1', '20', 1),
(426, 413, '2020-07-20 00:00:00', '1003657846', 1, '1', '20', 1),
(427, 414, '2020-07-20 00:00:00', '1001623939', 1, '1', '20', 1),
(428, 415, '2020-07-20 00:00:00', '1001076999', 1, '1', '65', 1),
(429, 416, '2020-07-20 00:00:00', '1003522925', 1, '1', '40.01', 1),
(430, 417, '2020-07-20 00:00:00', '1004626519', 1, '1', '40.01', 1),
(431, 418, '2020-07-25 00:00:00', '1715737837', 1, '1', '13', 1),
(432, 419, '2020-07-25 00:00:00', '1001840014', 1, '1', '45', 1),
(433, 420, '2020-07-25 00:00:00', '0502555238', 1, '1', '23', 1),
(434, 421, '2020-07-25 00:00:00', '1002283024', 1, '1', '20', 1),
(435, 422, '2020-07-27 00:00:00', '1003432190', 1, '1', '13', 1),
(436, 423, '2020-07-28 00:00:00', '1002951661', 1, '1', '20', 1),
(437, 424, '2020-08-05 00:00:00', '1002105441', 1, '1', '20', 1),
(438, 425, '2020-08-05 00:00:00', '100251692', 1, '1', '20', 1),
(439, 426, '2020-08-06 00:00:00', '1004377709', 1, '1', '13', 1),
(440, 427, '2020-08-06 00:00:00', '1721608972', 1, '1', '20', 1),
(441, 428, '2020-08-07 00:00:00', '1004115083', 1, '1', '20', 1),
(442, 429, '2020-08-07 00:00:00', '1004017184', 1, '1', '20', 1),
(443, 430, '2020-08-07 00:00:00', '1003209010', 1, '1', '20', 1),
(444, 431, '2020-08-07 00:00:00', '1003776398', 1, '1', '13', 1),
(445, 432, '2020-08-07 00:00:00', '1003242813', 1, '1', '40.01', 1),
(446, 433, '2020-08-07 00:00:00', '1002679122', 1, '1', '40.01', 1),
(447, 434, '2020-08-07 00:00:00', '1001623939', 1, '1', '20', 1),
(448, 435, '2020-08-07 00:00:00', '1204326498', 1, '1', '20', 1),
(449, 436, '2020-08-07 00:00:00', '1002640751', 1, '1', '20', 1),
(450, 437, '2020-08-10 00:00:00', '1002000501', 1, '1', '20', 1),
(451, 438, '2020-08-10 00:00:00', '1002023453', 1, '1', '20', 1),
(452, 439, '2020-08-10 00:00:00', '1004350300', 1, '1', '13', 1),
(453, 440, '2020-08-10 00:00:00', '1004852644', 1, '1', '20', 1),
(454, 441, '2020-08-10 00:00:00', '1002626032', 1, '1', '20', 1),
(455, 442, '2020-08-10 00:00:00', '1000766723', 1, '1', '13', 1),
(456, 443, '2020-08-10 00:00:00', '1004709281', 1, '1', '20', 1),
(457, 444, '2020-08-10 00:00:00', '1004364475', 1, '1', '20', 1),
(458, 445, '2020-08-10 00:00:00', '1721034385', 1, '1', '20', 1),
(459, 446, '2020-08-10 00:00:00', '1004965255', 1, '1', '20', 1),
(460, 447, '2020-08-10 00:00:00', '1050202488', 1, '1', '20', 1),
(461, 448, '2020-08-10 00:00:00', '1004471916', 1, '1', '20', 1),
(462, 449, '2020-08-11 00:00:00', '0603397167', 1, '1', '20', 1),
(464, 450, '2020-08-18 00:00:00', '1003370127', 1, '1', '20', 1),
(465, 451, '2020-08-18 00:00:00', '1001840014', 1, '1', '20', 1),
(466, 452, '2020-08-19 00:00:00', '1003657846', 1, '1', '20', 1),
(467, 453, '2020-08-19 00:00:00', '1003351481', 1, '1', '20', 1),
(468, 454, '2020-08-19 00:00:00', '1003520176', 1, '1', '20', 1),
(469, 455, '2020-08-19 00:00:00', '1002286878', 1, '1', '20', 1),
(470, 456, '2020-08-21 00:00:00', '1003713177', 1, '1', '13', 1),
(471, 457, '2020-08-21 00:00:00', '1005055056', 1, '1', '20', 1),
(472, 458, '2020-08-21 00:00:00', '1004231195', 1, '1', '13', 1),
(473, 459, '2020-08-21 00:00:00', '1002658225', 1, '1', '20', 1),
(474, 460, '2020-08-21 00:00:00', '1005996714', 1, '1', '20', 1),
(475, 461, '2020-08-21 00:00:00', '1002427886', 1, '1', '20', 1),
(476, 462, '2020-08-21 00:00:00', '1002488367', 1, '1', '20', 1),
(477, 463, '2020-08-21 00:00:00', '1004350979', 1, '1', '20', 1),
(478, 464, '2020-08-21 00:00:00', '1002922480', 1, '1', '20', 1),
(479, 465, '2020-08-21 00:00:00', '1003385976', 1, '1', '20', 1),
(480, 466, '2020-08-22 00:00:00', '1002238994', 1, '1', '20', 1),
(481, 467, '2020-08-22 00:00:00', '1720453172', 1, '1', '20', 1),
(482, 468, '2020-08-22 00:00:00', '1003551973', 1, '1', '13', 1),
(483, 469, '2020-08-22 00:00:00', '1721608972', 1, '1', '20', 1),
(484, 470, '2020-08-22 00:00:00', '1721056701001', 1, '1', '20', 1),
(485, 471, '2020-08-23 00:00:00', '1002817573', 1, '1', '13', 1),
(486, 472, '2020-08-30 00:00:00', '0502555238', 1, '1', '13', 1),
(487, 473, '2020-08-30 00:00:00', '1004228407', 1, '1', '13', 1),
(488, 474, '2020-09-01 00:00:00', '1002283024', 1, '1', '20', 1),
(489, 475, '2020-09-01 00:00:00', '1003209010', 1, '1', '20', 1),
(490, 476, '2020-09-04 00:00:00', '100251692', 1, '1', '20', 1),
(491, 477, '2020-09-03 00:00:00', '1003520176', 1, '1', '20', 1),
(492, 478, '2020-09-05 00:00:00', '1005055056', 1, '1', '20', 1),
(493, 479, '2020-09-04 00:00:00', '999999999', 1, '1', '33.01', 1),
(494, 480, '2020-09-05 00:00:00', '1002023453', 1, '1', '20', 1),
(495, 481, '2020-09-06 00:00:00', '1002105441', 1, '1', '20', 1),
(496, 482, '2020-08-25 00:00:00', '1003121835', 1, '1', '26.01', 1),
(497, 483, '2020-09-06 00:00:00', '1001623939', 1, '1', '20', 1),
(498, 484, '2020-09-06 00:00:00', '1204326498', 1, '1', '20', 1),
(499, 485, '2020-09-06 00:00:00', '1004595094', 1, '1', '40.01', 1),
(500, 486, '2020-09-06 00:00:00', '1005996714', 1, '1', '20', 1),
(501, 487, '2020-09-06 00:00:00', '100276885001', 1, '1', '28', 1),
(502, 488, '2020-09-06 00:00:00', '1003277165', 1, '1', '40.01', 1),
(503, 489, '2020-09-06 00:00:00', '1004377709', 1, '1', '13', 1),
(504, 490, '2020-09-06 00:00:00', '0603397167', 1, '1', '20', 1),
(505, 491, '2020-09-06 00:00:00', '1002626032', 1, '1', '20', 1),
(506, 492, '2020-09-05 00:00:00', '1720453172', 1, '1', '20', 1),
(507, 493, '2020-09-06 00:00:00', '1003397286', 1, '1', '20', 1),
(508, 494, '2020-09-06 00:00:00', '1004852644', 1, '1', '20', 1),
(509, 495, '2020-09-08 00:00:00', '1004350979', 1, '1', '20', 1),
(510, 496, '2020-09-08 00:00:00', '1001751955', 1, '1', '40.01', 1),
(511, 497, '2020-09-08 00:00:00', '1003776398', 1, '1', '13', 1),
(512, 498, '2020-09-08 00:00:00', '1002817573', 1, '1', '13', 1),
(513, 499, '2020-09-08 00:00:00', '1004364475', 1, '1', '20', 1),
(514, 500, '2020-09-08 00:00:00', '1001840014', 1, '1', '20', 1),
(515, 501, '2020-09-10 00:00:00', '1002286878', 1, '1', '20', 1),
(516, 502, '2020-09-10 00:00:00', '1003370127', 1, '1', '20', 1),
(517, 503, '2020-09-10 00:00:00', '1002283123', 1, '1', '28', 1),
(518, 504, '2020-09-10 00:00:00', '1002951661', 1, '1', '20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id_grupo` int(11) NOT NULL,
  `codigo_grupo` text NOT NULL,
  `nombre_grupo` text NOT NULL,
  `planes_grupo` text NOT NULL,
  `paquete_grupo` text NOT NULL,
  `conecc_grupo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id_grupo`, `codigo_grupo`, `nombre_grupo`, `planes_grupo`, `paquete_grupo`, `conecc_grupo`) VALUES
(1, 'g8_5m', 'grupo8_5m', '2', 'pac_grupo8_5m_5m_g8_5m', 'cn_grupo8_5m_5_g8_5m'),
(9, 'g7_5m_4', 'GRUPO7_5M_4.1', '2', 'pac_GRUPO7_5M_4.1_5m_g7_5m_4', 'cn_GRUPO7_5M_4.1_5_g7_5m_4'),
(10, 'g1_5m_4', 'GRUPO1_5M_4.1', '2', 'pac_GRUPO1_5M_4.1_5m_g1_5m_4', 'cn_GRUPO1_5M_4.1_5_g1_5m_4'),
(11, 'g2_5m_4', 'GRUPO2_5M_4.1', '2', 'pac_GRUPO2_5M_4.1_5m_g2_5m_4', 'cn_GRUPO2_5M_4.1_5_g2_5m_4'),
(12, 'g3_5m_4', 'GRUPO3_5M_4.1', '2', 'pac_GRUPO3_5M_4.1_5m_g3_5m_4', 'cn_GRUPO3_5M_4.1_5_g3_5m_4'),
(13, 'g4_5m_4', 'GRUPO4_5M_4.1', '2', 'pac_GRUPO4_5M_4.1_5m_g4_5m_4', 'cn_GRUPO4_5M_4.1_5_g4_5m_4'),
(14, 'g5_5m_4', 'GRUPO5_5M_4.1', '2', 'pac_GRUPO5_5M_4.1_5m_g5_5m_4', 'cn_GRUPO5_5M_4.1_5_g5_5m_4'),
(15, 'g6_5m_4', 'GRUPO6_5M_4.1', '2', 'pac_GRUPO6_5M_4.1_5m_g6_5m_4', 'cn_GRUPO6_5M_4.1_5_g6_5m_4'),
(19, 'g1_3m', 'GRUPO1_3M', '10', 'pac_GRUPO1_3M_3m_g1_3m', 'cn_GRUPO1_3M_3_g1_3m'),
(20, 'g2_3m', 'GRUPO2_3M', '10', 'pac_GRUPO2_3M_3m_g2_3m', 'cn_GRUPO2_3M_3_g2_3m'),
(21, 'g3_3m', 'GRUPO3_3M', '10', 'pac_GRUPO3_3M_3m_g3_3m', 'cn_GRUPO3_3M_3_g3_3m'),
(22, 'g9_5m', 'grupo9_5m', '2', 'pac_grupo9_5m_5m_g9_5m', 'cn_grupo9_5m_5_g9_5m'),
(23, 'GRUPO1_7M', 'G1_7M', '3', 'pac_G1_7M_7m_GRUPO1_7M', 'cn_G1_7M_7_GRUPO1_7M'),
(25, 'GRUPO10_5M', 'G10_5M', '2', 'pac_G10_5M_5m_GRUPO10_5M', 'cn_G10_5M_5_GRUPO10_5M'),
(26, 'GRUPO11_5M', 'G11_5M', '2', 'pac_G11_5M_5m_GRUPO11_5M', 'cn_G11_5M_5_GRUPO11_5M'),
(27, 'GRUPO12_5M', 'G12_5M', '2', 'pac_G12_5M_5m_GRUPO12_5M', 'cn_G12_5M_5_GRUPO12_5M'),
(28, 'ciber_3mb', 'ciber_3mb', '31', 'pac_ciber_3mb_3m_ciber_3mb', 'cn_ciber_3mb_3_ciber_3mb'),
(29, 'GRUPO13_5M', 'G13_5M', '2', 'pac_G13_5M_5m_GRUPO13_5M', 'cn_G13_5M_5_GRUPO13_5M'),
(30, 'GRUPO14_5M', 'G14_5M', '2', 'pac_G14_5M_5m_GRUPO14_5M', 'cn_G14_5M_5_GRUPO14_5M'),
(31, 'G3_3M', 'GRUPO4_3M', '10', 'pac_GRUPO4_3M_3m_G3_3M', 'cn_GRUPO4_3M_3_G3_3M'),
(32, 'G15_5M', 'GRUPO15_5M', '2', 'pac_GRUPO15_5M_5m_G15_5M', 'cn_GRUPO15_5M_5_G15_5M'),
(33, 'GRUPO1_6.5M', 'G1_6.5M', '38', 'pac_G1_6.5M_6.5m_GRUPO1_6.5M', 'cn_G1_6.5M_6.5_GRUPO1_6.5M'),
(34, 'G16_5MH', 'GRUPO16_5MH', '2', 'pac_GRUPO16_5MH_5m_G16_5MH', 'cn_GRUPO16_5MH_5_G16_5MH'),
(35, 'G17_5MH', 'GRUPO17_5MH', '2', 'pac_GRUPO17_5MH_5m_G17_5MH', 'cn_GRUPO17_5MH_5_G17_5MH'),
(36, 'G5_3MH', 'GRUPO5_3MH', '10', 'pac_GRUPO5_3MH_3m_G5_3MH', 'cn_GRUPO5_3MH_3_G5_3MH'),
(37, 'G18_5MH', 'GRUPO18_5MH', '2', 'pac_GRUPO18_5MH_5m_G18_5MH', 'cn_GRUPO18_5MH_5_G18_5MH');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia`
--

CREATE TABLE `guia` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `establecimiento_id` int(11) NOT NULL,
  `claveAcceso` varchar(49) COLLATE utf8_unicode_ci NOT NULL,
  `numeroAutorizacion` varchar(49) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaAutorizacion` datetime DEFAULT NULL,
  `estado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ambiente` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `tipoEmision` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secuencial` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `nombreArchivo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dirPartida` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `razonSocialTransportista` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rucTransportista` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `fechaIniTransporte` date NOT NULL,
  `fechaFinTransporte` date NOT NULL,
  `placa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `motivoTraslado` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `firmado` tinyint(1) NOT NULL,
  `enviarSiAutorizado` tinyint(1) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `ptoEmision_id` int(11) NOT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guiahasproducto`
--

CREATE TABLE `guiahasproducto` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `guia_id` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `codigoProducto` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuesto`
--

CREATE TABLE `impuesto` (
  `id` int(11) NOT NULL,
  `codigo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `codigoPorcentaje` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `tarifa` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseImponible` decimal(10,2) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `facturaHasProducto_id` int(11) DEFAULT NULL,
  `proformaHasProducto_id` int(11) DEFAULT NULL,
  `liquidacionHasProducto_id` int(11) DEFAULT NULL,
  `notaCreditoHasProducto_id` int(11) DEFAULT NULL,
  `notaDebito_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `impuesto`
--

INSERT INTO `impuesto` (`id`, `codigo`, `codigoPorcentaje`, `tarifa`, `baseImponible`, `valor`, `facturaHasProducto_id`, `proformaHasProducto_id`, `liquidacionHasProducto_id`, `notaCreditoHasProducto_id`, `notaDebito_id`) VALUES
(1, '2', '2', '12.00', '1.00', '0.12', NULL, 1, NULL, NULL, NULL),
(3, '2', '2', '12.00', '1.00', '0.12', NULL, 2, NULL, NULL, NULL),
(4, '2', '2', '12.00', '1.00', '0.12', NULL, 3, NULL, NULL, NULL),
(5, '2', '2', '12.00', '1.00', '0.12', NULL, 4, NULL, NULL, NULL),
(7, '2', '2', '12.00', '1.00', '0.12', NULL, 5, NULL, NULL, NULL),
(9, '2', '2', '12.00', '1.00', '0.12', NULL, 6, NULL, NULL, NULL),
(11, '2', '2', '12.00', '1.00', '0.12', NULL, 7, NULL, NULL, NULL),
(13, '2', '2', '12.00', '1.00', '0.12', NULL, 8, NULL, NULL, NULL),
(58, '2', '2', '12.00', '100.00', '12.00', 76, NULL, NULL, NULL, NULL),
(59, '2', '2', '12.00', '100.00', '12.00', 77, NULL, NULL, NULL, NULL),
(60, '2', '2', '12.00', '100.00', '12.00', 78, NULL, NULL, NULL, NULL),
(61, '2', '2', '12.00', '100.00', '12.00', 79, NULL, NULL, NULL, NULL),
(62, '2', '2', '12.00', '100.00', '12.00', 80, NULL, NULL, NULL, NULL),
(63, '2', '2', '12.00', '100.00', '12.00', 81, NULL, NULL, NULL, NULL),
(64, '2', '2', '12.00', '100.00', '12.00', 82, NULL, NULL, NULL, NULL),
(65, '2', '2', '12.00', '100.00', '12.00', 83, NULL, NULL, NULL, NULL),
(66, '2', '2', '12.00', '100.00', '12.00', 84, NULL, NULL, NULL, NULL),
(67, '2', '2', '12.00', '100.00', '12.00', 85, NULL, NULL, NULL, NULL),
(68, '2', '2', '12.00', '100.00', '12.00', 86, NULL, NULL, NULL, NULL),
(69, '2', '2', '12.00', '100.00', '12.00', 87, NULL, NULL, NULL, NULL),
(70, '2', '2', '12.00', '100.00', '12.00', 88, NULL, NULL, NULL, NULL),
(71, '2', '2', '12.00', '100.00', '12.00', 89, NULL, NULL, NULL, NULL),
(72, '2', '2', '12.00', '100.00', '12.00', 90, NULL, NULL, NULL, NULL),
(73, '2', '2', '12.00', '100.00', '12.00', 91, NULL, NULL, NULL, NULL),
(74, '2', '2', '12.00', '1.00', '0.12', 92, NULL, NULL, NULL, NULL),
(75, '2', '2', '12.00', '1.00', '0.12', 93, NULL, NULL, NULL, NULL),
(76, '2', '2', '12.00', '2.49', '0.30', 94, NULL, NULL, NULL, NULL),
(77, '2', '2', '12.00', '1.06', '0.13', 95, NULL, NULL, NULL, NULL),
(78, '2', '2', '12.00', '1.06', '0.13', 96, NULL, NULL, NULL, NULL),
(79, '2', '2', '12.00', '2.49', '0.30', 97, NULL, NULL, NULL, NULL),
(80, '2', '2', '12.00', '1.06', '0.13', 98, NULL, NULL, NULL, NULL),
(81, '2', '2', '12.00', '1.06', '0.13', 99, NULL, NULL, NULL, NULL),
(82, '2', '2', '12.00', '1.00', '0.12', 100, NULL, NULL, NULL, NULL),
(83, '2', '2', '12.00', '1.00', '0.12', 101, NULL, NULL, NULL, NULL),
(84, '2', '2', '12.00', '1.00', '0.12', 102, NULL, NULL, NULL, NULL),
(85, '2', '2', '12.00', '1.00', '0.12', 103, NULL, NULL, NULL, NULL),
(86, '2', '2', '12.00', '1.00', '0.12', 104, NULL, NULL, NULL, NULL),
(87, '2', '2', '12.00', '1.00', '0.12', 105, NULL, NULL, NULL, NULL),
(88, '2', '2', '12.00', '1.00', '0.12', 106, NULL, NULL, NULL, NULL),
(89, '2', '2', '12.00', '1.00', '0.12', 107, NULL, NULL, NULL, NULL),
(90, '2', '2', '12.00', '1.00', '0.12', 108, NULL, NULL, NULL, NULL),
(91, '2', '2', '12.00', '1.00', '0.12', 109, NULL, NULL, NULL, NULL),
(92, '2', '2', '12.00', '1.06', '0.13', 110, NULL, NULL, NULL, NULL),
(93, '2', '2', '12.00', '1.06', '0.13', 111, NULL, NULL, NULL, NULL),
(94, '2', '2', '12.00', '2.49', '0.30', 112, NULL, NULL, NULL, NULL),
(95, '2', '2', '12.00', '1.06', '0.13', 113, NULL, NULL, NULL, NULL),
(96, '2', '2', '12.00', '2.49', '0.30', 114, NULL, NULL, NULL, NULL),
(97, '2', '2', '12.00', '1.06', '0.13', 115, NULL, NULL, NULL, NULL),
(98, '2', '2', '12.00', '1.06', '0.13', 116, NULL, NULL, NULL, NULL),
(99, '2', '2', '12.00', '1.06', '0.13', 117, NULL, NULL, NULL, NULL),
(100, '2', '2', '12.00', '1.06', '0.13', 118, NULL, NULL, NULL, NULL),
(101, '2', '2', '12.00', '1.00', '0.12', NULL, NULL, NULL, 1, NULL),
(102, '2', '2', '12.00', '17.86', '2.14', 500, NULL, NULL, NULL, NULL),
(103, '2', '2', '12.00', '35.71', '4.28', 501, NULL, NULL, NULL, NULL),
(104, '2', '2', '12.00', '17.86', '2.14', 502, NULL, NULL, NULL, NULL),
(105, '2', '2', '12.00', '17.86', '2.14', 503, NULL, NULL, NULL, NULL),
(106, '2', '2', '12.00', '17.86', '2.14', 504, NULL, NULL, NULL, NULL),
(107, '2', '2', '12.00', '17.86', '2.14', 505, NULL, NULL, NULL, NULL),
(108, '2', '2', '12.00', '17.86', '2.14', 506, NULL, NULL, NULL, NULL),
(109, '2', '2', '12.00', '17.86', '2.14', 507, NULL, NULL, NULL, NULL),
(110, '2', '2', '12.00', '17.86', '2.14', 508, NULL, NULL, NULL, NULL),
(111, '2', '2', '12.00', '17.86', '2.14', 509, NULL, NULL, NULL, NULL),
(112, '2', '2', '12.00', '17.86', '2.14', 510, NULL, NULL, NULL, NULL),
(113, '2', '2', '12.00', '17.86', '2.14', 511, NULL, NULL, NULL, NULL),
(114, '2', '2', '12.00', '17.86', '2.14', 512, NULL, NULL, NULL, NULL),
(115, '2', '2', '12.00', '11.61', '1.39', 513, NULL, NULL, NULL, NULL),
(116, '2', '2', '12.00', '17.86', '2.14', 514, NULL, NULL, NULL, NULL),
(117, '2', '2', '12.00', '11.61', '1.39', 515, NULL, NULL, NULL, NULL),
(118, '2', '2', '12.00', '17.86', '2.14', 516, NULL, NULL, NULL, NULL),
(119, '2', '2', '12.00', '11.61', '1.39', 517, NULL, NULL, NULL, NULL),
(120, '2', '2', '12.00', '11.61', '1.39', 518, NULL, NULL, NULL, NULL),
(121, '2', '2', '12.00', '17.86', '2.14', 519, NULL, NULL, NULL, NULL),
(122, '2', '2', '12.00', '17.86', '2.14', 520, NULL, NULL, NULL, NULL),
(123, '2', '2', '12.00', '17.86', '2.14', 521, NULL, NULL, NULL, NULL),
(124, '2', '2', '12.00', '17.86', '2.14', 522, NULL, NULL, NULL, NULL),
(125, '2', '2', '12.00', '25.00', '3.00', 523, NULL, NULL, NULL, NULL),
(127, '2', '2', '12.00', '17.86', '2.14', 525, NULL, NULL, NULL, NULL),
(128, '2', '2', '12.00', '17.86', '2.14', 526, NULL, NULL, NULL, NULL),
(129, '2', '2', '12.00', '53.57', '6.43', 527, NULL, NULL, NULL, NULL),
(130, '2', '2', '12.00', '16.06', '1.93', 528, NULL, NULL, NULL, NULL),
(131, '2', '2', '12.00', '16.06', '1.93', 529, NULL, NULL, NULL, NULL),
(132, '2', '2', '12.00', '11.61', '1.39', 530, NULL, NULL, NULL, NULL),
(133, '2', '2', '12.00', '11.61', '1.39', 531, NULL, NULL, NULL, NULL),
(134, '2', '2', '12.00', '17.86', '2.14', 532, NULL, NULL, NULL, NULL),
(135, '2', '2', '12.00', '17.86', '2.14', 533, NULL, NULL, NULL, NULL),
(136, '2', '2', '12.00', '11.61', '1.39', 534, NULL, NULL, NULL, NULL),
(137, '2', '2', '12.00', '17.86', '2.14', 535, NULL, NULL, NULL, NULL),
(138, '2', '2', '12.00', '22.32', '2.68', 536, NULL, NULL, NULL, NULL),
(139, '2', '2', '12.00', '17.86', '2.14', 537, NULL, NULL, NULL, NULL),
(140, '2', '2', '12.00', '17.86', '2.14', 538, NULL, NULL, NULL, NULL),
(141, '2', '2', '12.00', '11.61', '1.39', 539, NULL, NULL, NULL, NULL),
(142, '2', '2', '12.00', '17.86', '2.14', 540, NULL, NULL, NULL, NULL),
(143, '2', '2', '12.00', '11.61', '1.39', 541, NULL, NULL, NULL, NULL),
(144, '2', '2', '12.00', '17.86', '2.14', 542, NULL, NULL, NULL, NULL),
(145, '2', '2', '12.00', '17.86', '2.14', 543, NULL, NULL, NULL, NULL),
(146, '2', '2', '12.00', '17.86', '2.14', 544, NULL, NULL, NULL, NULL),
(147, '2', '2', '12.00', '17.86', '2.14', 545, NULL, NULL, NULL, NULL),
(148, '2', '2', '12.00', '17.86', '2.14', 546, NULL, NULL, NULL, NULL),
(149, '2', '2', '12.00', '17.86', '2.14', 547, NULL, NULL, NULL, NULL),
(150, '2', '2', '12.00', '25.00', '3.00', 548, NULL, NULL, NULL, NULL),
(151, '2', '2', '12.00', '17.86', '2.14', 549, NULL, NULL, NULL, NULL),
(152, '2', '2', '12.00', '13.40', '1.61', 550, NULL, NULL, NULL, NULL),
(153, '2', '2', '12.00', '23.21', '2.79', 551, NULL, NULL, NULL, NULL),
(154, '2', '2', '12.00', '17.86', '2.14', 552, NULL, NULL, NULL, NULL),
(155, '2', '2', '12.00', '22.32', '2.68', 553, NULL, NULL, NULL, NULL),
(156, '2', '2', '12.00', '14.29', '1.71', 554, NULL, NULL, NULL, NULL),
(157, '2', '2', '12.00', '17.86', '2.14', 555, NULL, NULL, NULL, NULL),
(158, '2', '2', '12.00', '17.86', '2.14', 556, NULL, NULL, NULL, NULL),
(159, '2', '2', '12.00', '17.86', '2.14', 557, NULL, NULL, NULL, NULL),
(160, '2', '2', '12.00', '17.86', '2.14', 558, NULL, NULL, NULL, NULL),
(161, '2', '2', '12.00', '17.86', '2.14', 559, NULL, NULL, NULL, NULL),
(162, '2', '2', '12.00', '17.86', '2.14', 560, NULL, NULL, NULL, NULL),
(163, '2', '2', '12.00', '23.21', '2.79', 561, NULL, NULL, NULL, NULL),
(164, '2', '2', '12.00', '17.86', '2.14', 562, NULL, NULL, NULL, NULL),
(165, '2', '2', '12.00', '17.86', '2.14', 563, NULL, NULL, NULL, NULL),
(166, '2', '2', '12.00', '17.86', '2.14', 564, NULL, NULL, NULL, NULL),
(167, '2', '2', '12.00', '17.86', '2.14', 565, NULL, NULL, NULL, NULL),
(168, '2', '2', '12.00', '17.86', '2.14', 566, NULL, NULL, NULL, NULL),
(169, '2', '2', '12.00', '17.86', '2.14', 567, NULL, NULL, NULL, NULL),
(170, '2', '2', '12.00', '11.61', '1.39', 568, NULL, NULL, NULL, NULL),
(171, '2', '2', '12.00', '17.86', '2.14', 569, NULL, NULL, NULL, NULL),
(172, '2', '2', '12.00', '17.86', '2.14', 570, NULL, NULL, NULL, NULL),
(173, '2', '2', '12.00', '17.86', '2.14', 571, NULL, NULL, NULL, NULL),
(174, '2', '2', '12.00', '17.86', '2.14', 572, NULL, NULL, NULL, NULL),
(175, '2', '2', '12.00', '17.86', '2.14', 573, NULL, NULL, NULL, NULL),
(176, '2', '2', '12.00', '17.86', '2.14', 574, NULL, NULL, NULL, NULL),
(177, '2', '2', '12.00', '17.86', '2.14', 575, NULL, NULL, NULL, NULL),
(178, '2', '2', '12.00', '17.86', '2.14', 576, NULL, NULL, NULL, NULL),
(179, '2', '2', '12.00', '11.61', '1.39', 577, NULL, NULL, NULL, NULL),
(180, '2', '2', '12.00', '17.86', '2.14', 578, NULL, NULL, NULL, NULL),
(181, '2', '2', '12.00', '25.00', '3.00', 579, NULL, NULL, NULL, NULL),
(182, '2', '2', '12.00', '17.86', '2.14', 580, NULL, NULL, NULL, NULL),
(183, '2', '2', '12.00', '11.61', '1.39', 581, NULL, NULL, NULL, NULL),
(184, '2', '2', '12.00', '11.61', '1.39', 582, NULL, NULL, NULL, NULL),
(185, '2', '2', '12.00', '66.50', '7.98', 583, NULL, NULL, NULL, NULL),
(186, '2', '2', '12.00', '22.79', '2.73', 584, NULL, NULL, NULL, NULL),
(187, '2', '2', '12.00', '17.86', '2.14', 585, NULL, NULL, NULL, NULL),
(188, '2', '2', '12.00', '22.32', '2.68', 586, NULL, NULL, NULL, NULL),
(189, '2', '2', '12.00', '11.61', '1.39', 587, NULL, NULL, NULL, NULL),
(190, '2', '2', '12.00', '17.86', '2.14', 588, NULL, NULL, NULL, NULL),
(191, '2', '2', '12.00', '17.86', '2.14', 589, NULL, NULL, NULL, NULL),
(192, '2', '2', '12.00', '17.86', '2.14', 590, NULL, NULL, NULL, NULL),
(193, '2', '2', '12.00', '17.86', '2.14', 591, NULL, NULL, NULL, NULL),
(194, '2', '2', '12.00', '71.43', '8.57', 592, NULL, NULL, NULL, NULL),
(195, '2', '2', '12.00', '17.86', '2.14', 593, NULL, NULL, NULL, NULL),
(196, '2', '2', '12.00', '17.86', '2.14', 594, NULL, NULL, NULL, NULL),
(197, '2', '2', '12.00', '11.61', '1.39', 595, NULL, NULL, NULL, NULL),
(198, '2', '2', '12.00', '17.86', '2.14', 596, NULL, NULL, NULL, NULL),
(199, '2', '2', '12.00', '11.61', '1.39', 597, NULL, NULL, NULL, NULL),
(200, '2', '2', '12.00', '11.61', '1.39', 598, NULL, NULL, NULL, NULL),
(201, '2', '2', '12.00', '17.86', '2.14', 599, NULL, NULL, NULL, NULL),
(202, '2', '2', '12.00', '17.86', '2.14', 600, NULL, NULL, NULL, NULL),
(203, '2', '2', '12.00', '17.86', '2.14', 601, NULL, NULL, NULL, NULL),
(204, '2', '2', '12.00', '17.86', '2.14', 602, NULL, NULL, NULL, NULL),
(205, '2', '2', '12.00', '35.71', '4.29', 603, NULL, NULL, NULL, NULL),
(206, '2', '2', '12.00', '35.71', '4.29', 604, NULL, NULL, NULL, NULL),
(207, '2', '2', '12.00', '11.61', '1.39', 605, NULL, NULL, NULL, NULL),
(208, '2', '2', '12.00', '17.86', '2.14', 606, NULL, NULL, NULL, NULL),
(209, '2', '2', '12.00', '17.86', '2.14', 607, NULL, NULL, NULL, NULL),
(210, '2', '2', '12.00', '17.86', '2.14', 608, NULL, NULL, NULL, NULL),
(211, '2', '2', '12.00', '17.86', '2.14', 609, NULL, NULL, NULL, NULL),
(212, '2', '2', '12.00', '11.61', '1.39', 610, NULL, NULL, NULL, NULL),
(213, '2', '2', '12.00', '17.86', '2.14', 611, NULL, NULL, NULL, NULL),
(214, '2', '2', '12.00', '11.61', '1.39', 612, NULL, NULL, NULL, NULL),
(215, '2', '2', '12.00', '11.61', '1.39', 613, NULL, NULL, NULL, NULL),
(216, '2', '2', '12.00', '10.00', '1.20', 614, NULL, NULL, NULL, NULL),
(217, '2', '2', '12.00', '10.00', '1.20', 615, NULL, NULL, NULL, NULL),
(218, '2', '2', '12.00', '17.86', '2.14', 616, NULL, NULL, NULL, NULL),
(219, '2', '2', '12.00', '17.86', '2.14', 617, NULL, NULL, NULL, NULL),
(220, '2', '2', '12.00', '17.86', '2.14', 618, NULL, NULL, NULL, NULL),
(221, '2', '2', '12.00', '17.86', '2.14', 619, NULL, NULL, NULL, NULL),
(222, '2', '2', '12.00', '17.86', '2.14', 620, NULL, NULL, NULL, NULL),
(223, '2', '2', '12.00', '17.86', '2.14', 621, NULL, NULL, NULL, NULL),
(224, '2', '2', '12.00', '17.86', '2.14', 622, NULL, NULL, NULL, NULL),
(225, '2', '2', '12.00', '17.86', '2.14', 623, NULL, NULL, NULL, NULL),
(226, '2', '2', '12.00', '17.86', '2.14', 624, NULL, NULL, NULL, NULL),
(227, '2', '2', '12.00', '17.86', '2.14', 625, NULL, NULL, NULL, NULL),
(228, '2', '2', '12.00', '17.86', '2.14', 626, NULL, NULL, NULL, NULL),
(229, '2', '2', '12.00', '17.86', '2.14', 627, NULL, NULL, NULL, NULL),
(230, '2', '2', '12.00', '17.86', '2.14', 628, NULL, NULL, NULL, NULL),
(231, '2', '2', '12.00', '17.86', '2.14', 629, NULL, NULL, NULL, NULL),
(232, '2', '2', '12.00', '17.86', '2.14', 630, NULL, NULL, NULL, NULL),
(233, '2', '2', '12.00', '17.86', '2.14', 631, NULL, NULL, NULL, NULL),
(234, '2', '2', '12.00', '17.86', '2.14', 632, NULL, NULL, NULL, NULL),
(235, '2', '2', '12.00', '17.86', '2.14', 633, NULL, NULL, NULL, NULL),
(236, '2', '2', '12.00', '11.61', '1.39', 634, NULL, NULL, NULL, NULL),
(237, '2', '2', '12.00', '11.61', '1.39', 635, NULL, NULL, NULL, NULL),
(238, '2', '2', '12.00', '17.86', '2.14', 636, NULL, NULL, NULL, NULL),
(239, '2', '2', '12.00', '11.61', '1.39', 637, NULL, NULL, NULL, NULL),
(240, '2', '2', '12.00', '11.61', '1.39', 638, NULL, NULL, NULL, NULL),
(241, '2', '2', '12.00', '17.86', '2.14', 639, NULL, NULL, NULL, NULL),
(242, '2', '2', '12.00', '17.86', '2.14', 640, NULL, NULL, NULL, NULL),
(243, '2', '2', '12.00', '17.86', '2.14', 641, NULL, NULL, NULL, NULL),
(244, '2', '2', '12.00', '17.86', '2.14', 642, NULL, NULL, NULL, NULL),
(245, '2', '2', '12.00', '17.86', '2.14', 643, NULL, NULL, NULL, NULL),
(246, '2', '2', '12.00', '17.86', '2.14', 644, NULL, NULL, NULL, NULL),
(247, '2', '2', '12.00', '17.86', '2.14', 645, NULL, NULL, NULL, NULL),
(248, '2', '2', '12.00', '17.86', '2.14', 646, NULL, NULL, NULL, NULL),
(249, '2', '2', '12.00', '11.61', '1.39', 647, NULL, NULL, NULL, NULL),
(250, '2', '2', '12.00', '17.86', '2.14', 648, NULL, NULL, NULL, NULL),
(251, '2', '2', '12.00', '17.86', '2.14', 649, NULL, NULL, NULL, NULL),
(252, '2', '2', '12.00', '17.86', '2.14', 650, NULL, NULL, NULL, NULL),
(253, '2', '2', '12.00', '11.61', '1.39', 651, NULL, NULL, NULL, NULL),
(254, '2', '2', '12.00', '17.86', '2.14', 652, NULL, NULL, NULL, NULL),
(255, '2', '2', '12.00', '17.86', '2.14', 653, NULL, NULL, NULL, NULL),
(256, '2', '2', '12.00', '17.86', '2.14', 654, NULL, NULL, NULL, NULL),
(257, '2', '2', '12.00', '17.86', '2.14', 655, NULL, NULL, NULL, NULL),
(258, '2', '2', '12.00', '25.00', '3.00', 656, NULL, NULL, NULL, NULL),
(259, '2', '2', '12.00', '17.86', '2.14', 657, NULL, NULL, NULL, NULL),
(260, '2', '2', '12.00', '17.86', '2.14', 658, NULL, NULL, NULL, NULL),
(261, '2', '2', '12.00', '11.61', '1.39', 659, NULL, NULL, NULL, NULL),
(262, '2', '2', '12.00', '17.86', '2.14', 660, NULL, NULL, NULL, NULL),
(263, '2', '2', '12.00', '17.86', '2.14', 661, NULL, NULL, NULL, NULL),
(264, '2', '2', '12.00', '17.86', '2.14', 662, NULL, NULL, NULL, NULL),
(265, '2', '2', '12.00', '11.61', '1.39', 663, NULL, NULL, NULL, NULL),
(266, '2', '2', '12.00', '17.86', '2.14', 664, NULL, NULL, NULL, NULL),
(267, '2', '2', '12.00', '17.86', '2.14', 665, NULL, NULL, NULL, NULL),
(268, '2', '2', '12.00', '17.86', '2.14', 666, NULL, NULL, NULL, NULL),
(269, '2', '2', '12.00', '17.86', '2.14', 667, NULL, NULL, NULL, NULL),
(270, '2', '2', '12.00', '17.86', '2.14', 668, NULL, NULL, NULL, NULL),
(271, '2', '2', '12.00', '17.86', '2.14', 669, NULL, NULL, NULL, NULL),
(272, '2', '2', '12.00', '17.86', '2.14', 670, NULL, NULL, NULL, NULL),
(273, '2', '2', '12.00', '25.00', '3.00', 671, NULL, NULL, NULL, NULL),
(274, '2', '2', '12.00', '17.86', '2.14', 672, NULL, NULL, NULL, NULL),
(275, '2', '2', '12.00', '17.86', '2.14', 673, NULL, NULL, NULL, NULL),
(276, '2', '2', '12.00', '17.86', '2.14', 674, NULL, NULL, NULL, NULL),
(277, '2', '2', '12.00', '23.21', '2.79', 675, NULL, NULL, NULL, NULL),
(278, '2', '2', '12.00', '17.86', '2.14', 676, NULL, NULL, NULL, NULL),
(279, '2', '2', '12.00', '17.86', '2.14', 677, NULL, NULL, NULL, NULL),
(280, '2', '2', '12.00', '17.86', '2.14', 678, NULL, NULL, NULL, NULL),
(281, '2', '2', '12.00', '17.86', '2.14', 679, NULL, NULL, NULL, NULL),
(282, '2', '2', '12.00', '17.86', '2.14', 680, NULL, NULL, NULL, NULL),
(283, '2', '2', '12.00', '17.86', '2.14', 681, NULL, NULL, NULL, NULL),
(284, '2', '2', '12.00', '17.86', '2.14', 682, NULL, NULL, NULL, NULL),
(285, '2', '2', '12.00', '17.86', '2.14', 683, NULL, NULL, NULL, NULL),
(286, '2', '2', '12.00', '17.86', '2.14', 684, NULL, NULL, NULL, NULL),
(287, '2', '2', '12.00', '17.86', '2.14', 685, NULL, NULL, NULL, NULL),
(288, '2', '2', '12.00', '17.86', '2.14', 686, NULL, NULL, NULL, NULL),
(289, '2', '2', '12.00', '17.86', '2.14', 687, NULL, NULL, NULL, NULL),
(290, '2', '2', '12.00', '17.86', '2.14', 688, NULL, NULL, NULL, NULL),
(291, '2', '2', '12.00', '11.61', '1.39', 689, NULL, NULL, NULL, NULL),
(292, '2', '2', '12.00', '17.86', '2.14', 690, NULL, NULL, NULL, NULL),
(293, '2', '2', '12.00', '17.86', '2.14', 691, NULL, NULL, NULL, NULL),
(294, '2', '2', '12.00', '17.86', '2.14', 692, NULL, NULL, NULL, NULL),
(295, '2', '2', '12.00', '17.86', '2.14', 693, NULL, NULL, NULL, NULL),
(296, '2', '2', '12.00', '17.86', '2.14', 694, NULL, NULL, NULL, NULL),
(297, '2', '2', '12.00', '25.00', '3.00', 695, NULL, NULL, NULL, NULL),
(298, '2', '2', '12.00', '17.86', '2.14', 696, NULL, NULL, NULL, NULL),
(299, '2', '2', '12.00', '17.86', '2.14', 697, NULL, NULL, NULL, NULL),
(300, '2', '2', '12.00', '17.86', '2.14', 698, NULL, NULL, NULL, NULL),
(301, '2', '2', '12.00', '17.86', '2.14', 699, NULL, NULL, NULL, NULL),
(302, '2', '2', '12.00', '17.86', '2.14', 700, NULL, NULL, NULL, NULL),
(303, '2', '2', '12.00', '11.61', '1.39', 701, NULL, NULL, NULL, NULL),
(304, '2', '2', '12.00', '17.86', '2.14', 702, NULL, NULL, NULL, NULL),
(305, '2', '2', '12.00', '17.86', '2.14', 703, NULL, NULL, NULL, NULL),
(306, '2', '2', '12.00', '11.61', '1.39', 704, NULL, NULL, NULL, NULL),
(313, '2', '2', '12.00', '15.00', '1.80', 711, NULL, NULL, NULL, NULL),
(314, '2', '2', '12.00', '50.00', '6.00', 712, NULL, NULL, NULL, NULL),
(315, '2', '2', '12.00', '1.00', '0.12', 713, NULL, NULL, NULL, NULL),
(316, '2', '2', '12.00', '1.00', '0.12', 714, NULL, NULL, NULL, NULL),
(317, '2', '2', '12.00', '1.00', '0.12', 715, NULL, NULL, NULL, NULL),
(318, '2', '2', '12.00', '1.00', '0.12', 716, NULL, NULL, NULL, NULL),
(319, '2', '2', '12.00', '1.00', '0.12', 717, NULL, NULL, NULL, NULL),
(320, '2', '2', '12.00', '1.00', '0.12', 718, NULL, NULL, NULL, NULL),
(321, '2', '2', '12.00', '1.00', '0.12', 719, NULL, NULL, NULL, NULL),
(322, '2', '2', '12.00', '1.00', '0.12', 720, NULL, NULL, NULL, NULL),
(323, '2', '2', '12.00', '1.00', '0.12', 721, NULL, NULL, NULL, NULL),
(324, '2', '2', '12.00', '1.00', '0.12', 722, NULL, NULL, NULL, NULL),
(325, '2', '2', '12.00', '1.00', '0.12', 723, NULL, NULL, NULL, NULL),
(326, '2', '2', '12.00', '1.00', '0.12', 724, NULL, NULL, NULL, NULL),
(327, '2', '2', '12.00', '5.00', '0.60', 725, NULL, NULL, NULL, NULL),
(328, '2', '2', '12.00', '10.00', '1.20', 726, NULL, NULL, NULL, NULL),
(329, '2', '2', '12.00', '1.00', '0.12', 727, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestocomprobanteretencion`
--

CREATE TABLE `impuestocomprobanteretencion` (
  `id` int(11) NOT NULL,
  `retencion_id` int(11) NOT NULL,
  `codigo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `codigoRetencion` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `baseImponible` decimal(10,2) NOT NULL,
  `porcentajeRetener` decimal(10,2) NOT NULL,
  `valorRetenido` decimal(10,2) NOT NULL,
  `codDocSustento` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `numDocSustento` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fechaEmisionDocSustento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestoice`
--

CREATE TABLE `impuestoice` (
  `id` int(11) NOT NULL,
  `codigoPorcentaje` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestoirbpnr`
--

CREATE TABLE `impuestoirbpnr` (
  `id` int(11) NOT NULL,
  `codigoPorcentaje` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestoiva`
--

CREATE TABLE `impuestoiva` (
  `id` int(11) NOT NULL,
  `codigoPorcentaje` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tarifa` decimal(10,2) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `impuestoiva`
--

INSERT INTO `impuestoiva` (`id`, `codigoPorcentaje`, `nombre`, `tarifa`, `createdAt`, `updatedAt`, `createdBy_id`, `updatedBy_id`, `deletedBy_id`) VALUES
(1, '2', 'IVA 12%', '12.00', '2018-08-29 05:48:05', '2018-08-29 05:48:05', NULL, NULL, NULL),
(2, '0', 'IVA 0%', '0.00', '2018-08-29 05:48:26', '2018-08-29 05:48:26', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liquidacioncompra`
--

CREATE TABLE `liquidacioncompra` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `establecimiento_id` int(11) NOT NULL,
  `claveAcceso` varchar(49) COLLATE utf8_unicode_ci NOT NULL,
  `numeroAutorizacion` varchar(49) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaAutorizacion` datetime DEFAULT NULL,
  `estado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ambiente` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `tipoEmision` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secuencial` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `formaPago` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `plazo` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaEmision` date NOT NULL,
  `nombreArchivo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalSinImpuestos` decimal(10,2) NOT NULL,
  `subtotal12` decimal(10,2) NOT NULL,
  `subtotal0` decimal(10,2) NOT NULL,
  `subtotalNoIVA` decimal(10,2) NOT NULL,
  `subtotalExentoIVA` decimal(10,2) NOT NULL,
  `valorICE` decimal(10,2) NOT NULL,
  `valorIRBPNR` decimal(10,2) NOT NULL,
  `iva12` decimal(10,2) NOT NULL,
  `totalDescuento` decimal(10,2) NOT NULL,
  `propina` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  `firmado` tinyint(1) NOT NULL,
  `enviarSiAutorizado` tinyint(1) NOT NULL,
  `observacion` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `ptoEmision_id` int(11) NOT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liquidacioncomprahasproducto`
--

CREATE TABLE `liquidacioncomprahasproducto` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `liquidacioncompra_id` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `codigoProducto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `precioUnitario` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liquidacioncomprareembolso`
--

CREATE TABLE `liquidacioncomprareembolso` (
  `id` int(11) NOT NULL,
  `tipoProveedorReembolso` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `tipoIdentificacionProveedorReembolso` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `identificacionProveedorReembolso` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `estabDocReembolso` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `ptoEmiDocReembolso` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `secuencialDocReembolso` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fechaEmisionDocReembolso` date NOT NULL,
  `numeroautorizacionDocReemb` varchar(49) COLLATE utf8_unicode_ci NOT NULL,
  `codDocReembolso` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `baseImponibleReembolso` decimal(10,2) NOT NULL,
  `impuestoReembolso` decimal(10,2) NOT NULL,
  `baseImponibleSinIvaReembolso` decimal(10,2) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `liquidacionCompra_id` int(11) NOT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` int(11) NOT NULL,
  `liquidacioncompra_id` int(11) DEFAULT NULL,
  `identificador` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `mensaje` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `informacionAdicional` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Factura_id` int(11) DEFAULT NULL,
  `Proforma_id` int(11) DEFAULT NULL,
  `NotaCredito_id` int(11) DEFAULT NULL,
  `NotaDebito_id` int(11) DEFAULT NULL,
  `Retencion_id` int(11) DEFAULT NULL,
  `Guia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`id`, `liquidacioncompra_id`, `identificador`, `mensaje`, `informacionAdicional`, `tipo`, `Factura_id`, `Proforma_id`, `NotaCredito_id`, `NotaDebito_id`, `Retencion_id`, `Guia_id`) VALUES
(5, NULL, '1000', 'ERROR ENVIANDO EL CORREO AL CLIENTE', 'Couldn\'t connect to host, port: mx1.hostinger.es, 2525; timeout -1', 'WARNING', NULL, 2, NULL, NULL, NULL, NULL),
(7, NULL, '1000', 'ERROR ENVIANDO EL CORREO AL CLIENTE', 'Could not connect to SMTP host: digitalfac.click, port: 465', 'WARNING', NULL, 3, NULL, NULL, NULL, NULL),
(8, NULL, '1000', 'ERROR ENVIANDO EL CORREO AL CLIENTE', 'Could not connect to SMTP host: digitalfac.click, port: 465', 'WARNING', NULL, 4, NULL, NULL, NULL, NULL),
(9, NULL, '1000', 'ERROR ENVIANDO EL CORREO AL CLIENTE', 'Could not connect to SMTP host: digitalfac.click, port: 465', 'WARNING', NULL, 6, NULL, NULL, NULL, NULL),
(10, NULL, '1000', 'ERROR ENVIANDO EL CORREO AL CLIENTE', 'Could not connect to SMTP host: digitalfac.click, port: 465', 'WARNING', NULL, 7, NULL, NULL, NULL, NULL),
(11, NULL, '1000', 'ERROR ENVIANDO EL CORREO AL CLIENTE', 'Could not connect to SMTP host: digitalfac.click, port: 465', 'WARNING', NULL, 8, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivo`
--

CREATE TABLE `motivo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `dotaDebito_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notacredito`
--

CREATE TABLE `notacredito` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `establecimiento_id` int(11) NOT NULL,
  `claveAcceso` varchar(49) COLLATE utf8_unicode_ci NOT NULL,
  `numeroAutorizacion` varchar(49) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaAutorizacion` datetime DEFAULT NULL,
  `estado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ambiente` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `tipoEmision` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secuencial` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `fechaEmision` date NOT NULL,
  `tipoDocMod` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `fechaEmisionDocMod` date NOT NULL,
  `nroDocMod` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `motivo` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `nombreArchivo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalSinImpuestos` decimal(10,2) NOT NULL,
  `subtotal12` decimal(10,2) NOT NULL,
  `subtotal0` decimal(10,2) NOT NULL,
  `subtotalNoIVA` decimal(10,2) NOT NULL,
  `subtotalExentoIVA` decimal(10,2) NOT NULL,
  `valorICE` decimal(10,2) NOT NULL,
  `valorIRBPNR` decimal(10,2) NOT NULL,
  `iva12` decimal(10,2) NOT NULL,
  `totalDescuento` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  `firmado` tinyint(1) NOT NULL,
  `enviarSiAutorizado` tinyint(1) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `ptoEmision_id` int(11) NOT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notacreditohasproducto`
--

CREATE TABLE `notacreditohasproducto` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `codigoProducto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `precioUnitario` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  `notaCredito_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notadebito`
--

CREATE TABLE `notadebito` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `establecimiento_id` int(11) NOT NULL,
  `claveAcceso` varchar(49) COLLATE utf8_unicode_ci NOT NULL,
  `numeroAutorizacion` varchar(49) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaAutorizacion` datetime DEFAULT NULL,
  `estado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ambiente` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `tipoEmision` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secuencial` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `fechaEmision` date NOT NULL,
  `tipoDocMod` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `fechaEmisionDocMod` date NOT NULL,
  `nroDocMod` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nombreArchivo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalSinImpuestos` decimal(10,2) NOT NULL,
  `subtotal12` decimal(10,2) NOT NULL,
  `subtotal0` decimal(10,2) NOT NULL,
  `subtotalNoIVA` decimal(10,2) NOT NULL,
  `subtotalExentoIVA` decimal(10,2) NOT NULL,
  `valorICE` decimal(10,2) NOT NULL,
  `iva12` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  `firmado` tinyint(1) NOT NULL,
  `enviarSiAutorizado` tinyint(1) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `ptoEmision_id` int(11) NOT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `cantComprobante` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `periodo` varchar(49) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` longtext COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `plan`
--

INSERT INTO `plan` (`id`, `cantComprobante`, `precio`, `periodo`, `observaciones`, `activo`) VALUES
(1, 100000, '10000.00', '1', 'sdfsdfsdfds', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `impuesto_iva_id` int(11) NOT NULL,
  `impuesto_ice_id` int(11) DEFAULT NULL,
  `impuesto_irbpnr_id` int(11) DEFAULT NULL,
  `codigoPrincipal` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `codigoAuxiliar` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `precioUnitario` decimal(10,2) NOT NULL,
  `tieneSubsidio` tinyint(1) DEFAULT NULL,
  `precioSinSubsidio` decimal(10,2) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `emisor_id`, `impuesto_iva_id`, `impuesto_ice_id`, `impuesto_irbpnr_id`, `codigoPrincipal`, `codigoAuxiliar`, `nombre`, `precioUnitario`, `tieneSubsidio`, `precioSinSubsidio`, `createdAt`, `updatedAt`, `createdBy_id`, `updatedBy_id`, `deletedBy_id`) VALUES
(1, 1, 1, NULL, NULL, '1', '1', 'Prueba', '1.00', 0, '0.00', '2021-06-30 00:29:32', '2021-06-30 00:29:32', 1, 1, NULL),
(2, 1, 1, NULL, NULL, 'MOUSE3', NULL, 'MOUSE', '5.00', 0, '0.00', '2021-09-16 12:17:31', '2021-09-16 12:17:31', 1, 1, NULL),
(3, 1, 1, NULL, NULL, 'PRO-001', NULL, 'Metros de construcción', '10.00', 0, '0.00', '2021-09-23 11:22:33', '2021-09-23 11:22:33', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proforma`
--

CREATE TABLE `proforma` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `establecimiento_id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `estado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fechaEmision` date NOT NULL,
  `nombreArchivo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalSinImpuestos` decimal(10,2) NOT NULL,
  `subtotal12` decimal(10,2) NOT NULL,
  `subtotal0` decimal(10,2) NOT NULL,
  `iva12` decimal(10,2) NOT NULL,
  `totalDescuento` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  `observacion` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `proforma`
--

INSERT INTO `proforma` (`id`, `cliente_id`, `emisor_id`, `establecimiento_id`, `numero`, `estado`, `fechaEmision`, `nombreArchivo`, `totalSinImpuestos`, `subtotal12`, `subtotal0`, `iva12`, `totalDescuento`, `valorTotal`, `observacion`, `createdAt`, `updatedAt`, `createdBy_id`, `updatedBy_id`, `deletedBy_id`) VALUES
(1, 1, 1, 1, 1, 'CREADA', '2021-06-30', NULL, '1.00', '1.00', '0.00', '0.12', '0.00', '1.12', '', '2021-06-30 00:29:52', '2021-06-30 00:29:52', 1, 1, NULL),
(2, 1, 1, 1, 2, 'ERROR EMAIL', '2021-06-30', 'PROFORMA-2', '1.00', '1.00', '0.00', '0.12', '0.00', '1.12', '', '2021-06-30 01:06:03', '2021-06-30 01:18:05', 1, 1, NULL),
(3, 1, 1, 1, 3, 'ERROR EMAIL', '2021-06-30', 'PROFORMA-3', '1.00', '1.00', '0.00', '0.12', '0.00', '1.12', '', '2021-06-30 01:32:07', '2021-06-30 01:32:41', 1, 1, NULL),
(4, 1, 1, 1, 4, 'MIGRADA', '2021-06-30', 'PROFORMA-4', '1.00', '1.00', '0.00', '0.12', '0.00', '1.12', '', '2021-06-30 01:35:45', '2021-06-30 01:37:02', 1, 1, NULL),
(5, 1, 1, 1, 5, 'MIGRADA', '2021-06-30', NULL, '1.00', '1.00', '0.00', '0.12', '0.00', '1.12', '', '2021-06-30 01:39:13', '2021-06-30 01:39:21', 1, 1, NULL),
(6, 1, 1, 1, 6, 'MIGRADA', '2021-06-30', 'PROFORMA-6', '1.00', '1.00', '0.00', '0.12', '0.00', '1.12', '', '2021-06-30 01:40:33', '2021-06-30 01:41:47', 1, 1, NULL),
(7, 1, 1, 1, 7, 'MIGRADA', '2021-06-30', 'PROFORMA-7', '1.00', '1.00', '0.00', '0.12', '0.00', '1.12', '', '2021-06-30 02:04:34', '2021-06-30 02:06:01', 1, 1, NULL),
(8, 1, 1, 1, 8, 'ERROR EMAIL', '2021-06-30', 'PROFORMA-8', '1.00', '1.00', '0.00', '0.12', '0.00', '1.12', '', '2021-06-30 17:04:44', '2021-06-30 17:06:23', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proformahasproducto`
--

CREATE TABLE `proformahasproducto` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `proforma_id` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `codigoProducto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `precioUnitario` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  `precioSinSubsidio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `proformahasproducto`
--

INSERT INTO `proformahasproducto` (`id`, `producto_id`, `proforma_id`, `cantidad`, `nombre`, `codigoProducto`, `precioUnitario`, `descuento`, `valorTotal`, `precioSinSubsidio`) VALUES
(1, 1, 1, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(2, 1, 2, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(3, 1, 3, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(4, 1, 4, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(5, 1, 5, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(6, 1, 6, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(7, 1, 7, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL),
(8, 1, 8, '1.00', 'Prueba', '1', '1.00', '0.00', '1.00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptoemision`
--

CREATE TABLE `ptoemision` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `establecimiento_id` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `secuencialFactura` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `secuencialLiquidacionCompra` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `secuencialNotaCredito` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `secuencialNotaDebito` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `secuencialGuiaRemision` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `secuencialRetencion` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ptoemision`
--

INSERT INTO `ptoemision` (`id`, `user_id`, `establecimiento_id`, `nombre`, `codigo`, `secuencialFactura`, `secuencialLiquidacionCompra`, `secuencialNotaCredito`, `secuencialNotaDebito`, `secuencialGuiaRemision`, `secuencialRetencion`, `activo`, `createdAt`, `updatedAt`, `createdBy_id`, `updatedBy_id`, `deletedBy_id`) VALUES
(1, 3, 1, 'punto1', '001', '539', '1', '2', '1', '1', '5', 1, '2021-06-30 00:20:56', '2022-03-21 00:14:05', 1, 3, NULL),
(2, 4, 1, 'prueba', '002', '52', '1', '1', '1', '1', '1', 1, '2022-03-20 21:48:01', '2022-03-20 23:20:51', 1, 4, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retencion`
--

CREATE TABLE `retencion` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `establecimiento_id` int(11) NOT NULL,
  `claveAcceso` varchar(49) COLLATE utf8_unicode_ci NOT NULL,
  `numeroAutorizacion` varchar(49) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaAutorizacion` datetime DEFAULT NULL,
  `estado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ambiente` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `tipoEmision` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secuencial` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `fechaEmision` date NOT NULL,
  `periodoFiscal` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nombreArchivo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firmado` tinyint(1) NOT NULL,
  `enviarSiAutorizado` tinyint(1) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `ptoEmision_id` int(11) NOT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id`, `nombre`, `createdAt`, `updatedAt`, `createdBy_id`, `updatedBy_id`, `deletedBy_id`) VALUES
(1, 'ROLE_ADMIN', '2018-08-29 05:28:37', '2018-08-29 05:28:37', NULL, NULL, NULL),
(2, 'ROLE_EMISOR_ADMIN', '2018-08-29 05:28:57', '2018-08-29 05:28:57', NULL, NULL, NULL),
(3, 'ROLE_EMISOR', '2018-08-29 05:29:25', '2018-08-29 05:29:25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `copiar_email` tinyint(1) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy_id` int(11) DEFAULT NULL,
  `updatedBy_id` int(11) DEFAULT NULL,
  `deletedBy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `emisor_id`, `rol_id`, `username`, `password`, `email`, `nombre`, `apellidos`, `salt`, `is_active`, `copiar_email`, `createdAt`, `updatedAt`, `createdBy_id`, `updatedBy_id`, `deletedBy_id`) VALUES
(1, 1, 2, 'renesan', '6WncZw50pJEF4ttT9HR5xjNN0ztj01PALWUhn9OkFQVlzxnFTRckVJbVQposN0F32H2L4J/Nn4c+HZOOYX6Yfg==', 'mrenesan@gmail.com', 'MAURICIO', 'SANCHEZ', 'cf4b7456c0a2cb632b30a3fe3094f047', 1, 0, '2016-08-16 00:16:44', '2021-09-16 11:19:28', NULL, 2, NULL),
(2, 1, 1, 'admin', 'UfnTb5fXsXcaTHI+5Dkyr3uGv1rXJuDFayb7oNA2EZj8/IhHdd/tfqUSDd75C5LjBqLCz8oFpoo9DGfXf6G/8Q==', 'a@admin.com', 'Administrador', 'General', 'ad728d642334f8498f30b27d4a70ef64', 1, 0, '2016-08-16 00:17:20', '2016-08-16 00:17:20', NULL, NULL, NULL),
(3, 1, 2, 'maury', 'HenHVau9VDpEWuw1pNjw3JyaGyxRili5pfnUF/OD927M4u6RtERUt5tPbEUMAwoCzt8pqFkbm86ZXx8F71pJ/Q==', 'mrenesan@gmail.com', 'Rene Mauricio', 'Sanchez', 'd1750f727ad856143a32498704ad1071', 1, 0, '2022-03-20 18:49:11', '2022-03-20 18:49:11', 1, 1, NULL),
(4, 1, 3, 'demo123', '0JgG0deCE89wpSRJ8NW03lz9jzZeaQtgNdr2O4hcKVDEUqiPAi75hxh3md1gMAf9NYx3c15o3sM857gBccQF0A==', 'mrenesan@gmail.com', 'Velosan', 'comunicaciones', '40c6b4a6ebbd6d66decdbe5dd2da41eb', 1, 0, '2022-03-20 21:49:08', '2022-03-20 21:49:08', 1, 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `campoadicional`
--
ALTER TABLE `campoadicional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D7FF66CFBF127A8F` (`Factura_id`),
  ADD KEY `IDX_D7FF66CF34F7715A` (`Proforma_id`),
  ADD KEY `IDX_D7FF66CFD38C3A07` (`liquidacioncompra_id`),
  ADD KEY `IDX_D7FF66CF51CA559D` (`NotaCredito_id`),
  ADD KEY `IDX_D7FF66CFBCB7242D` (`NotaDebito_id`),
  ADD KEY `IDX_D7FF66CF6A1F1F62` (`Retencion_id`),
  ADD KEY `IDX_D7FF66CFC9979183` (`Guia_id`);

--
-- Indices de la tabla `cargaarchivo`
--
ALTER TABLE `cargaarchivo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1C75A11A6BDF87DF` (`emisor_id`),
  ADD KEY `IDX_1C75A11A3174800F` (`createdBy_id`),
  ADD KEY `IDX_1C75A11A65FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_1C75A11A63D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `cargaerror`
--
ALTER TABLE `cargaerror`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E4ED1D2382A6DF0D` (`carga_archivo_id`),
  ADD KEY `IDX_E4ED1D233174800F` (`createdBy_id`),
  ADD KEY `IDX_E4ED1D2365FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_E4ED1D2363D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3BA1A2B96BDF87DF` (`emisor_id`),
  ADD KEY `IDX_3BA1A2B93174800F` (`createdBy_id`),
  ADD KEY `IDX_3BA1A2B965FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_3BA1A2B963D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_996D34C96BDF87DF` (`emisor_id`),
  ADD KEY `IDX_996D34C971B61351` (`establecimiento_id`),
  ADD KEY `IDX_996D34C93174800F` (`createdBy_id`),
  ADD KEY `IDX_996D34C965FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_996D34C963D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `detalleadicional`
--
ALTER TABLE `detalleadicional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_87797196CE7FF8C7` (`facturaHasProducto_id`),
  ADD KEY `IDX_8779719698D062E6` (`notaCreditoHasProducto_id`);

--
-- Indices de la tabla `detallecompra`
--
ALTER TABLE `detallecompra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7E5DD9F4F2E704D7` (`compra_id`);

--
-- Indices de la tabla `emisor`
--
ALTER TABLE `emisor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C3028078E899029B` (`plan_id`),
  ADD KEY `IDX_C30280783174800F` (`createdBy_id`),
  ADD KEY `IDX_C302807865FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_C302807863D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1C61EFE06BDF87DF` (`emisor_id`),
  ADD KEY `IDX_1C61EFE03174800F` (`createdBy_id`),
  ADD KEY `IDX_1C61EFE065FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_1C61EFE063D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_36569995DE734E51` (`cliente_id`),
  ADD KEY `IDX_365699956BDF87DF` (`emisor_id`),
  ADD KEY `IDX_3656999571B61351` (`establecimiento_id`),
  ADD KEY `IDX_36569995E01B1B5E` (`ptoEmision_id`),
  ADD KEY `IDX_365699953174800F` (`createdBy_id`),
  ADD KEY `IDX_3656999565FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_3656999563D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `facturahasproducto`
--
ALTER TABLE `facturahasproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1CFCFE017645698E` (`producto_id`),
  ADD KEY `IDX_1CFCFE01F04F795F` (`factura_id`);

--
-- Indices de la tabla `facturareembolso`
--
ALTER TABLE `facturareembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75CC9B11F04F795F` (`factura_id`),
  ADD KEY `IDX_75CC9B113174800F` (`createdBy_id`),
  ADD KEY `IDX_75CC9B1165FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_75CC9B1163D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `guia`
--
ALTER TABLE `guia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FB379403DE734E51` (`cliente_id`),
  ADD KEY `IDX_FB3794036BDF87DF` (`emisor_id`),
  ADD KEY `IDX_FB37940371B61351` (`establecimiento_id`),
  ADD KEY `IDX_FB379403E01B1B5E` (`ptoEmision_id`),
  ADD KEY `IDX_FB3794033174800F` (`createdBy_id`),
  ADD KEY `IDX_FB37940365FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_FB37940363D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `guiahasproducto`
--
ALTER TABLE `guiahasproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_721B89A77645698E` (`producto_id`),
  ADD KEY `IDX_721B89A762AA81F` (`guia_id`);

--
-- Indices de la tabla `impuesto`
--
ALTER TABLE `impuesto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4F9058F7CE7FF8C7` (`facturaHasProducto_id`),
  ADD KEY `IDX_4F9058F72930ADFA` (`proformaHasProducto_id`),
  ADD KEY `IDX_4F9058F7E9A85683` (`liquidacionHasProducto_id`),
  ADD KEY `IDX_4F9058F798D062E6` (`notaCreditoHasProducto_id`),
  ADD KEY `IDX_4F9058F7FC96FD8` (`notaDebito_id`);

--
-- Indices de la tabla `impuestocomprobanteretencion`
--
ALTER TABLE `impuestocomprobanteretencion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_86AD65C722EC49A` (`retencion_id`);

--
-- Indices de la tabla `impuestoice`
--
ALTER TABLE `impuestoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6F0EE7863174800F` (`createdBy_id`),
  ADD KEY `IDX_6F0EE78665FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_6F0EE78663D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `impuestoirbpnr`
--
ALTER TABLE `impuestoirbpnr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AB0A0C0B3174800F` (`createdBy_id`),
  ADD KEY `IDX_AB0A0C0B65FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_AB0A0C0B63D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `impuestoiva`
--
ALTER TABLE `impuestoiva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5FD6C58B3174800F` (`createdBy_id`),
  ADD KEY `IDX_5FD6C58B65FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_5FD6C58B63D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `liquidacioncompra`
--
ALTER TABLE `liquidacioncompra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3775F55DDE734E51` (`cliente_id`),
  ADD KEY `IDX_3775F55D6BDF87DF` (`emisor_id`),
  ADD KEY `IDX_3775F55D71B61351` (`establecimiento_id`),
  ADD KEY `IDX_3775F55DE01B1B5E` (`ptoEmision_id`),
  ADD KEY `IDX_3775F55D3174800F` (`createdBy_id`),
  ADD KEY `IDX_3775F55D65FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_3775F55D63D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `liquidacioncomprahasproducto`
--
ALTER TABLE `liquidacioncomprahasproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BB9B69327645698E` (`producto_id`),
  ADD KEY `IDX_BB9B6932D38C3A07` (`liquidacioncompra_id`);

--
-- Indices de la tabla `liquidacioncomprareembolso`
--
ALTER TABLE `liquidacioncomprareembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C49E7F11517DB8A4` (`liquidacionCompra_id`),
  ADD KEY `IDX_C49E7F113174800F` (`createdBy_id`),
  ADD KEY `IDX_C49E7F1165FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_C49E7F1163D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_54DE249DBF127A8F` (`Factura_id`),
  ADD KEY `IDX_54DE249D34F7715A` (`Proforma_id`),
  ADD KEY `IDX_54DE249DD38C3A07` (`liquidacioncompra_id`),
  ADD KEY `IDX_54DE249D51CA559D` (`NotaCredito_id`),
  ADD KEY `IDX_54DE249DBCB7242D` (`NotaDebito_id`),
  ADD KEY `IDX_54DE249D6A1F1F62` (`Retencion_id`),
  ADD KEY `IDX_54DE249DC9979183` (`Guia_id`);

--
-- Indices de la tabla `motivo`
--
ALTER TABLE `motivo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1E553D50359609FE` (`dotaDebito_id`);

--
-- Indices de la tabla `notacredito`
--
ALTER TABLE `notacredito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_799C85D7DE734E51` (`cliente_id`),
  ADD KEY `IDX_799C85D76BDF87DF` (`emisor_id`),
  ADD KEY `IDX_799C85D771B61351` (`establecimiento_id`),
  ADD KEY `IDX_799C85D7E01B1B5E` (`ptoEmision_id`),
  ADD KEY `IDX_799C85D73174800F` (`createdBy_id`),
  ADD KEY `IDX_799C85D765FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_799C85D763D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `notacreditohasproducto`
--
ALTER TABLE `notacreditohasproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_721E66DE7645698E` (`producto_id`),
  ADD KEY `IDX_721E66DE9CAE2D45` (`notaCredito_id`);

--
-- Indices de la tabla `notadebito`
--
ALTER TABLE `notadebito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_60947670DE734E51` (`cliente_id`),
  ADD KEY `IDX_609476706BDF87DF` (`emisor_id`),
  ADD KEY `IDX_6094767071B61351` (`establecimiento_id`),
  ADD KEY `IDX_60947670E01B1B5E` (`ptoEmision_id`),
  ADD KEY `IDX_609476703174800F` (`createdBy_id`),
  ADD KEY `IDX_6094767065FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_6094767063D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5ECD64436BDF87DF` (`emisor_id`),
  ADD KEY `IDX_5ECD6443D0B25EB1` (`impuesto_iva_id`),
  ADD KEY `IDX_5ECD6443F7D0D114` (`impuesto_ice_id`),
  ADD KEY `IDX_5ECD64432780846A` (`impuesto_irbpnr_id`),
  ADD KEY `IDX_5ECD64433174800F` (`createdBy_id`),
  ADD KEY `IDX_5ECD644365FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_5ECD644363D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `proforma`
--
ALTER TABLE `proforma`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7AF5CD80DE734E51` (`cliente_id`),
  ADD KEY `IDX_7AF5CD806BDF87DF` (`emisor_id`),
  ADD KEY `IDX_7AF5CD8071B61351` (`establecimiento_id`),
  ADD KEY `IDX_7AF5CD803174800F` (`createdBy_id`),
  ADD KEY `IDX_7AF5CD8065FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_7AF5CD8063D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `proformahasproducto`
--
ALTER TABLE `proformahasproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D0B9D9317645698E` (`producto_id`),
  ADD KEY `IDX_D0B9D931B26BFE8D` (`proforma_id`);

--
-- Indices de la tabla `ptoemision`
--
ALTER TABLE `ptoemision`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BE82597CA76ED395` (`user_id`),
  ADD KEY `IDX_BE82597C71B61351` (`establecimiento_id`),
  ADD KEY `IDX_BE82597C3174800F` (`createdBy_id`),
  ADD KEY `IDX_BE82597C65FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_BE82597C63D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `retencion`
--
ALTER TABLE `retencion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6240E309DE734E51` (`cliente_id`),
  ADD KEY `IDX_6240E3096BDF87DF` (`emisor_id`),
  ADD KEY `IDX_6240E30971B61351` (`establecimiento_id`),
  ADD KEY `IDX_6240E309E01B1B5E` (`ptoEmision_id`),
  ADD KEY `IDX_6240E3093174800F` (`createdBy_id`),
  ADD KEY `IDX_6240E30965FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_6240E30963D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F75B25543174800F` (`createdBy_id`),
  ADD KEY `IDX_F75B255465FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_F75B255463D8C20E` (`deletedBy_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2DA179776BDF87DF` (`emisor_id`),
  ADD KEY `IDX_2DA179774BAB96C` (`rol_id`),
  ADD KEY `IDX_2DA179773174800F` (`createdBy_id`),
  ADD KEY `IDX_2DA1797765FF1AEC` (`updatedBy_id`),
  ADD KEY `IDX_2DA1797763D8C20E` (`deletedBy_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campoadicional`
--
ALTER TABLE `campoadicional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargaarchivo`
--
ALTER TABLE `cargaarchivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargaerror`
--
ALTER TABLE `cargaerror`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalleadicional`
--
ALTER TABLE `detalleadicional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallecompra`
--
ALTER TABLE `detallecompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `emisor`
--
ALTER TABLE `emisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=615;

--
-- AUTO_INCREMENT de la tabla `facturahasproducto`
--
ALTER TABLE `facturahasproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=728;

--
-- AUTO_INCREMENT de la tabla `facturareembolso`
--
ALTER TABLE `facturareembolso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guia`
--
ALTER TABLE `guia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guiahasproducto`
--
ALTER TABLE `guiahasproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `impuesto`
--
ALTER TABLE `impuesto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT de la tabla `impuestocomprobanteretencion`
--
ALTER TABLE `impuestocomprobanteretencion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `impuestoice`
--
ALTER TABLE `impuestoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `impuestoirbpnr`
--
ALTER TABLE `impuestoirbpnr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `impuestoiva`
--
ALTER TABLE `impuestoiva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `liquidacioncompra`
--
ALTER TABLE `liquidacioncompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `liquidacioncomprahasproducto`
--
ALTER TABLE `liquidacioncomprahasproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `liquidacioncomprareembolso`
--
ALTER TABLE `liquidacioncomprareembolso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `motivo`
--
ALTER TABLE `motivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notacredito`
--
ALTER TABLE `notacredito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notacreditohasproducto`
--
ALTER TABLE `notacreditohasproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notadebito`
--
ALTER TABLE `notadebito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proforma`
--
ALTER TABLE `proforma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `proformahasproducto`
--
ALTER TABLE `proformahasproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ptoemision`
--
ALTER TABLE `ptoemision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `retencion`
--
ALTER TABLE `retencion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `campoadicional`
--
ALTER TABLE `campoadicional`
  ADD CONSTRAINT `FK_D7FF66CF34F7715A` FOREIGN KEY (`Proforma_id`) REFERENCES `proforma` (`id`),
  ADD CONSTRAINT `FK_D7FF66CF51CA559D` FOREIGN KEY (`NotaCredito_id`) REFERENCES `notacredito` (`id`),
  ADD CONSTRAINT `FK_D7FF66CF6A1F1F62` FOREIGN KEY (`Retencion_id`) REFERENCES `retencion` (`id`),
  ADD CONSTRAINT `FK_D7FF66CFBCB7242D` FOREIGN KEY (`NotaDebito_id`) REFERENCES `notadebito` (`id`),
  ADD CONSTRAINT `FK_D7FF66CFBF127A8F` FOREIGN KEY (`Factura_id`) REFERENCES `factura` (`id`),
  ADD CONSTRAINT `FK_D7FF66CFC9979183` FOREIGN KEY (`Guia_id`) REFERENCES `guia` (`id`),
  ADD CONSTRAINT `FK_D7FF66CFD38C3A07` FOREIGN KEY (`liquidacioncompra_id`) REFERENCES `liquidacioncompra` (`id`);

--
-- Filtros para la tabla `cargaarchivo`
--
ALTER TABLE `cargaarchivo`
  ADD CONSTRAINT `FK_1C75A11A3174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_1C75A11A63D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_1C75A11A65FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_1C75A11A6BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `emisor` (`id`);

--
-- Filtros para la tabla `cargaerror`
--
ALTER TABLE `cargaerror`
  ADD CONSTRAINT `FK_E4ED1D233174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_E4ED1D2363D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_E4ED1D2365FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_E4ED1D2382A6DF0D` FOREIGN KEY (`carga_archivo_id`) REFERENCES `cargaarchivo` (`id`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK_3BA1A2B93174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3BA1A2B963D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3BA1A2B965FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3BA1A2B96BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `emisor` (`id`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `FK_996D34C93174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_996D34C963D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_996D34C965FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_996D34C96BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `emisor` (`id`),
  ADD CONSTRAINT `FK_996D34C971B61351` FOREIGN KEY (`establecimiento_id`) REFERENCES `establecimiento` (`id`);

--
-- Filtros para la tabla `detalleadicional`
--
ALTER TABLE `detalleadicional`
  ADD CONSTRAINT `FK_8779719698D062E6` FOREIGN KEY (`notaCreditoHasProducto_id`) REFERENCES `notacreditohasproducto` (`id`),
  ADD CONSTRAINT `FK_87797196CE7FF8C7` FOREIGN KEY (`facturaHasProducto_id`) REFERENCES `facturahasproducto` (`id`);

--
-- Filtros para la tabla `detallecompra`
--
ALTER TABLE `detallecompra`
  ADD CONSTRAINT `FK_7E5DD9F4F2E704D7` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`);

--
-- Filtros para la tabla `emisor`
--
ALTER TABLE `emisor`
  ADD CONSTRAINT `FK_C30280783174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C302807863D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C302807865FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C3028078E899029B` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`);

--
-- Filtros para la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  ADD CONSTRAINT `FK_1C61EFE03174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_1C61EFE063D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_1C61EFE065FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_1C61EFE06BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `emisor` (`id`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `FK_365699953174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3656999563D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3656999565FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_365699956BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `emisor` (`id`),
  ADD CONSTRAINT `FK_3656999571B61351` FOREIGN KEY (`establecimiento_id`) REFERENCES `establecimiento` (`id`),
  ADD CONSTRAINT `FK_36569995DE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FK_36569995E01B1B5E` FOREIGN KEY (`ptoEmision_id`) REFERENCES `ptoemision` (`id`);

--
-- Filtros para la tabla `facturahasproducto`
--
ALTER TABLE `facturahasproducto`
  ADD CONSTRAINT `FK_1CFCFE017645698E` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `FK_1CFCFE01F04F795F` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`);

--
-- Filtros para la tabla `facturareembolso`
--
ALTER TABLE `facturareembolso`
  ADD CONSTRAINT `FK_75CC9B113174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_75CC9B1163D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_75CC9B1165FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_75CC9B11F04F795F` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`);

--
-- Filtros para la tabla `guia`
--
ALTER TABLE `guia`
  ADD CONSTRAINT `FK_FB3794033174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_FB37940363D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_FB37940365FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_FB3794036BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `emisor` (`id`),
  ADD CONSTRAINT `FK_FB37940371B61351` FOREIGN KEY (`establecimiento_id`) REFERENCES `establecimiento` (`id`),
  ADD CONSTRAINT `FK_FB379403DE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FK_FB379403E01B1B5E` FOREIGN KEY (`ptoEmision_id`) REFERENCES `ptoemision` (`id`);

--
-- Filtros para la tabla `guiahasproducto`
--
ALTER TABLE `guiahasproducto`
  ADD CONSTRAINT `FK_721B89A762AA81F` FOREIGN KEY (`guia_id`) REFERENCES `guia` (`id`),
  ADD CONSTRAINT `FK_721B89A77645698E` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `impuesto`
--
ALTER TABLE `impuesto`
  ADD CONSTRAINT `FK_4F9058F72930ADFA` FOREIGN KEY (`proformaHasProducto_id`) REFERENCES `proformahasproducto` (`id`),
  ADD CONSTRAINT `FK_4F9058F798D062E6` FOREIGN KEY (`notaCreditoHasProducto_id`) REFERENCES `notacreditohasproducto` (`id`),
  ADD CONSTRAINT `FK_4F9058F7CE7FF8C7` FOREIGN KEY (`facturaHasProducto_id`) REFERENCES `facturahasproducto` (`id`),
  ADD CONSTRAINT `FK_4F9058F7E9A85683` FOREIGN KEY (`liquidacionHasProducto_id`) REFERENCES `liquidacioncomprahasproducto` (`id`),
  ADD CONSTRAINT `FK_4F9058F7FC96FD8` FOREIGN KEY (`notaDebito_id`) REFERENCES `notadebito` (`id`);

--
-- Filtros para la tabla `impuestocomprobanteretencion`
--
ALTER TABLE `impuestocomprobanteretencion`
  ADD CONSTRAINT `FK_86AD65C722EC49A` FOREIGN KEY (`retencion_id`) REFERENCES `retencion` (`id`);

--
-- Filtros para la tabla `impuestoice`
--
ALTER TABLE `impuestoice`
  ADD CONSTRAINT `FK_6F0EE7863174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_6F0EE78663D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_6F0EE78665FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `impuestoirbpnr`
--
ALTER TABLE `impuestoirbpnr`
  ADD CONSTRAINT `FK_AB0A0C0B3174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_AB0A0C0B63D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_AB0A0C0B65FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `impuestoiva`
--
ALTER TABLE `impuestoiva`
  ADD CONSTRAINT `FK_5FD6C58B3174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5FD6C58B63D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5FD6C58B65FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `liquidacioncompra`
--
ALTER TABLE `liquidacioncompra`
  ADD CONSTRAINT `FK_3775F55D3174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3775F55D63D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3775F55D65FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3775F55D6BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `emisor` (`id`),
  ADD CONSTRAINT `FK_3775F55D71B61351` FOREIGN KEY (`establecimiento_id`) REFERENCES `establecimiento` (`id`),
  ADD CONSTRAINT `FK_3775F55DDE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FK_3775F55DE01B1B5E` FOREIGN KEY (`ptoEmision_id`) REFERENCES `ptoemision` (`id`);

--
-- Filtros para la tabla `liquidacioncomprahasproducto`
--
ALTER TABLE `liquidacioncomprahasproducto`
  ADD CONSTRAINT `FK_BB9B69327645698E` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `FK_BB9B6932D38C3A07` FOREIGN KEY (`liquidacioncompra_id`) REFERENCES `liquidacioncompra` (`id`);

--
-- Filtros para la tabla `liquidacioncomprareembolso`
--
ALTER TABLE `liquidacioncomprareembolso`
  ADD CONSTRAINT `FK_C49E7F113174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C49E7F11517DB8A4` FOREIGN KEY (`liquidacionCompra_id`) REFERENCES `liquidacioncompra` (`id`),
  ADD CONSTRAINT `FK_C49E7F1163D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C49E7F1165FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `FK_54DE249D34F7715A` FOREIGN KEY (`Proforma_id`) REFERENCES `proforma` (`id`),
  ADD CONSTRAINT `FK_54DE249D51CA559D` FOREIGN KEY (`NotaCredito_id`) REFERENCES `notacredito` (`id`),
  ADD CONSTRAINT `FK_54DE249D6A1F1F62` FOREIGN KEY (`Retencion_id`) REFERENCES `retencion` (`id`),
  ADD CONSTRAINT `FK_54DE249DBCB7242D` FOREIGN KEY (`NotaDebito_id`) REFERENCES `notadebito` (`id`),
  ADD CONSTRAINT `FK_54DE249DBF127A8F` FOREIGN KEY (`Factura_id`) REFERENCES `factura` (`id`),
  ADD CONSTRAINT `FK_54DE249DC9979183` FOREIGN KEY (`Guia_id`) REFERENCES `guia` (`id`),
  ADD CONSTRAINT `FK_54DE249DD38C3A07` FOREIGN KEY (`liquidacioncompra_id`) REFERENCES `liquidacioncompra` (`id`);

--
-- Filtros para la tabla `motivo`
--
ALTER TABLE `motivo`
  ADD CONSTRAINT `FK_1E553D50359609FE` FOREIGN KEY (`dotaDebito_id`) REFERENCES `notadebito` (`id`);

--
-- Filtros para la tabla `notacredito`
--
ALTER TABLE `notacredito`
  ADD CONSTRAINT `FK_799C85D73174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_799C85D763D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_799C85D765FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_799C85D76BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `emisor` (`id`),
  ADD CONSTRAINT `FK_799C85D771B61351` FOREIGN KEY (`establecimiento_id`) REFERENCES `establecimiento` (`id`),
  ADD CONSTRAINT `FK_799C85D7DE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FK_799C85D7E01B1B5E` FOREIGN KEY (`ptoEmision_id`) REFERENCES `ptoemision` (`id`);

--
-- Filtros para la tabla `notacreditohasproducto`
--
ALTER TABLE `notacreditohasproducto`
  ADD CONSTRAINT `FK_721E66DE7645698E` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `FK_721E66DE9CAE2D45` FOREIGN KEY (`notaCredito_id`) REFERENCES `notacredito` (`id`);

--
-- Filtros para la tabla `notadebito`
--
ALTER TABLE `notadebito`
  ADD CONSTRAINT `FK_609476703174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_6094767063D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_6094767065FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_609476706BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `emisor` (`id`),
  ADD CONSTRAINT `FK_6094767071B61351` FOREIGN KEY (`establecimiento_id`) REFERENCES `establecimiento` (`id`),
  ADD CONSTRAINT `FK_60947670DE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FK_60947670E01B1B5E` FOREIGN KEY (`ptoEmision_id`) REFERENCES `ptoemision` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_5ECD64432780846A` FOREIGN KEY (`impuesto_irbpnr_id`) REFERENCES `impuestoirbpnr` (`id`),
  ADD CONSTRAINT `FK_5ECD64433174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5ECD644363D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5ECD644365FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5ECD64436BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `emisor` (`id`),
  ADD CONSTRAINT `FK_5ECD6443D0B25EB1` FOREIGN KEY (`impuesto_iva_id`) REFERENCES `impuestoiva` (`id`),
  ADD CONSTRAINT `FK_5ECD6443F7D0D114` FOREIGN KEY (`impuesto_ice_id`) REFERENCES `impuestoice` (`id`);

--
-- Filtros para la tabla `proforma`
--
ALTER TABLE `proforma`
  ADD CONSTRAINT `FK_7AF5CD803174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_7AF5CD8063D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_7AF5CD8065FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_7AF5CD806BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `emisor` (`id`),
  ADD CONSTRAINT `FK_7AF5CD8071B61351` FOREIGN KEY (`establecimiento_id`) REFERENCES `establecimiento` (`id`),
  ADD CONSTRAINT `FK_7AF5CD80DE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`);

--
-- Filtros para la tabla `proformahasproducto`
--
ALTER TABLE `proformahasproducto`
  ADD CONSTRAINT `FK_D0B9D9317645698E` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `FK_D0B9D931B26BFE8D` FOREIGN KEY (`proforma_id`) REFERENCES `proforma` (`id`);

--
-- Filtros para la tabla `ptoemision`
--
ALTER TABLE `ptoemision`
  ADD CONSTRAINT `FK_BE82597C3174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BE82597C63D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BE82597C65FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BE82597C71B61351` FOREIGN KEY (`establecimiento_id`) REFERENCES `establecimiento` (`id`),
  ADD CONSTRAINT `FK_BE82597CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `retencion`
--
ALTER TABLE `retencion`
  ADD CONSTRAINT `FK_6240E3093174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_6240E30963D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_6240E30965FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_6240E3096BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `emisor` (`id`),
  ADD CONSTRAINT `FK_6240E30971B61351` FOREIGN KEY (`establecimiento_id`) REFERENCES `establecimiento` (`id`),
  ADD CONSTRAINT `FK_6240E309DE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FK_6240E309E01B1B5E` FOREIGN KEY (`ptoEmision_id`) REFERENCES `ptoemision` (`id`);

--
-- Filtros para la tabla `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `FK_F75B25543174800F` FOREIGN KEY (`createdBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F75B255463D8C20E` FOREIGN KEY (`deletedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F75B255465FF1AEC` FOREIGN KEY (`updatedBy_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
