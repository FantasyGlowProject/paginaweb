-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2024 a las 18:53:48
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
-- Base de datos: `fantasy_glow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(11) NOT NULL,
  `Nombre_Cliente` varchar(255) NOT NULL,
  `Teléfono_Cliente` varchar(50) DEFAULT NULL,
  `Email_Cliente` varchar(255) DEFAULT NULL,
  `Dirección_Cliente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `Nombre_Cliente`, `Teléfono_Cliente`, `Email_Cliente`, `Dirección_Cliente`) VALUES
(1, 'Juan Pérez', '5551234567', 'juan.perez@gmail.com', 'Av. Revolución 123, Ciudad de México'),
(2, 'María López', '5552345678', 'maria.lopez@gmail.com', 'Calle 5 de Mayo 456, Puebla'),
(3, 'Carlos García', '5553456789', 'carlos.garcia@gmail.com', 'Av. Hidalgo 789, Monterrey'),
(4, 'Ana Torres', '5554567890', 'ana.torres@gmail.com', 'Calle Independencia 101, Guadalajara'),
(5, 'Luis Ramírez', '5555678901', 'luis.ramirez@gmail.com', 'Av. Juárez 202, Querétaro'),
(6, 'Gabriela Sánchez', '5556789012', 'gabriela.sanchez@gmail.com', 'Calle Reforma 303, Mérida'),
(7, 'Roberto Martínez', '5557890123', 'roberto.martinez@gmail.com', 'Av. Insurgentes 404, Tijuana'),
(8, 'Laura Gutiérrez', '5558901234', 'laura.gutierrez@gmail.com', 'Calle Zaragoza 505, León'),
(9, 'Fernando Hernández', '5559012345', 'fernando.hernandez@gmail.com', 'Av. Morelos 606, San Luis Potosí'),
(10, 'Claudia Jiménez', '5550123456', 'claudia.jimenez@gmail.com', 'Calle Guerrero 707, Acapulco'),
(11, 'Sergio Cruz', '5551230987', 'sergio.cruz@gmail.com', 'Av. Juárez 808, Oaxaca'),
(12, 'Patricia Flores', '5552340987', 'patricia.flores@gmail.com', 'Calle Hidalgo 909, Toluca'),
(13, 'Jorge Morales', '5553450987', 'jorge.morales@gmail.com', 'Av. Morelos 1010, Cuernavaca'),
(14, 'Raquel Soto', '5554560987', 'raquel.soto@gmail.com', 'Calle Allende 1111, Zacatecas'),
(15, 'Ramón Navarro', '5555670987', 'ramon.navarro@gmail.com', 'Av. Independencia 1212, Veracruz'),
(16, 'Sandra Ávila', '5556780987', 'sandra.avila@gmail.com', 'Calle Zaragoza 1313, Colima'),
(17, 'Francisco Ríos', '5557890987', 'francisco.rios@gmail.com', 'Av. Hidalgo 1414, Hermosillo'),
(18, 'Alejandra Vargas', '5558900987', 'alejandra.vargas@gmail.com', 'Calle Reforma 1515, Culiacán'),
(19, 'Eduardo Romero', '5559010987', 'eduardo.romero@gmail.com', 'Av. Juárez 1616, Campeche'),
(20, 'Monica Mendoza', '5550120987', 'monica.mendoza@gmail.com', 'Calle Guerrero 1717, Torreón'),
(21, 'Gerardo Ruiz', '5551230678', 'gerardo.ruiz@gmail.com', 'Av. Insurgentes 1818, Tepic'),
(22, 'Verónica Castillo', '5552340678', 'veronica.castillo@gmail.com', 'Calle 16 de Septiembre 1919, Saltillo'),
(23, 'Oscar Mendoza', '5553450678', 'oscar.mendoza@gmail.com', 'Av. 20 de Noviembre 2020, Tuxtla Gutiérrez'),
(24, 'Rosa Herrera', '5554560678', 'rosa.herrera@gmail.com', 'Calle Independencia 2121, Reynosa'),
(25, 'Pablo Peña', '5555670678', 'pablo.pena@gmail.com', 'Av. Hidalgo 2222, Villahermosa'),
(26, 'Isabel Guzmán', '5556780678', 'isabel.guzman@gmail.com', 'Calle Zaragoza 2323, Ciudad Obregón'),
(27, 'Héctor Castro', '5557890678', 'hector.castro@gmail.com', 'Av. Morelos 2424, Mazatlán'),
(28, 'Beatriz Rivera', '5558900678', 'beatriz.rivera@gmail.com', 'Calle Reforma 2525, Puerto Vallarta'),
(29, 'Rafael Ramos', '5559010678', 'rafael.ramos@gmail.com', 'Av. Juárez 2626, Aguascalientes'),
(30, 'Sara Silva', '5550120678', 'sara.silva@gmail.com', 'Calle Allende 2727, Nogales'),
(31, 'César Ortiz', '5551230456', 'cesar.ortiz@gmail.com', 'Av. Insurgentes 2828, Chetumal'),
(32, 'Mariana Ramos', '5552340456', 'mariana.ramos@gmail.com', 'Calle 16 de Septiembre 2929, Tapachula'),
(33, 'Vicente Aguilar', '5553450456', 'vicente.aguilar@gmail.com', 'Av. 20 de Noviembre 3030, Irapuato'),
(34, 'Lourdes Espinoza', '5554560456', 'lourdes.espinoza@gmail.com', 'Calle Independencia 3131, Playa del Carmen'),
(35, 'Tomás Rojas', '5555670456', 'tomas.rojas@gmail.com', 'Av. Hidalgo 3232, Cozumel'),
(36, 'Cristina Campos', '5556780456', 'cristina.campos@gmail.com', 'Calle Zaragoza 3333, Fresnillo'),
(37, 'José Reyes', '5557890456', 'jose.reyes@gmail.com', 'Av. Morelos 3434, La Paz'),
(38, 'Silvia Ortiz', '5558900456', 'silvia.ortiz@gmail.com', 'Calle Reforma 3535, San Cristóbal de las Casas'),
(39, 'Diego Peña', '5559010456', 'diego.pena@gmail.com', 'Av. Juárez 3636, Cabo San Lucas'),
(40, 'Norma Delgado', '5550120456', 'norma.delgado@gmail.com', 'Calle Allende 3737, Ensenada'),
(41, 'Jesús Martínez', '5551230123', 'jesus.martinez@gmail.com', 'Av. Insurgentes 3838, Los Mochis'),
(42, 'Lucía Vargas', '5552340123', 'lucia.vargas@gmail.com', 'Calle 5 de Mayo 3939, San Juan del Río'),
(43, 'Emilio Salinas', '5553450123', 'emilio.salinas@gmail.com', 'Av. Juárez 4040, Tlaxcala'),
(44, 'Sofía Hernández', '5554560123', 'sofia.hernandez@gmail.com', 'Calle Hidalgo 4141, Texcoco'),
(45, 'Alberto Mejía', '5555670123', 'alberto.mejia@gmail.com', 'Av. Morelos 4242, Celaya'),
(46, 'Marisol Cortés', '5556780123', 'marisol.cortes@gmail.com', 'Calle Reforma 4343, Salamanca'),
(47, 'Victor Vega', '5557890123', 'victor.vega@gmail.com', 'Av. Zaragoza 4444, Uruapan'),
(48, 'Liliana Rivera', '5558900123', 'liliana.rivera@gmail.com', 'Calle Allende 4545, Iguala'),
(49, 'Ángel Estrada', '5559010123', 'angel.estrada@gmail.com', 'Av. Insurgentes 4646, Pachuca'),
(50, 'Claudia Vargas', '5550120567', 'claudia.vargas@gmail.com', 'Calle Morelos 4747, Metepec'),
(51, 'Samuel Torres', '5551230345', 'samuel.torres@gmail.com', 'Av. Hidalgo 4848, Irapuato'),
(52, 'Paola Medina', '5552340345', 'paola.medina@gmail.com', 'Calle Juárez 4949, Chetumal'),
(53, 'Mario Álvarez', '5553450345', 'mario.alvarez@gmail.com', 'Av. Morelos 5050, Ciudad Victoria'),
(54, 'Carla Jiménez', '5554560345', 'carla.jimenez@gmail.com', 'Calle Insurgentes 5151, Colima'),
(55, 'Javier González', '5555670345', 'javier.gonzalez@gmail.com', 'Av. Juárez 5252, Apizaco'),
(56, 'Nadia Salazar', '5556780345', 'nadia.salazar@gmail.com', 'Calle 16 de Septiembre 5353, La Paz'),
(57, 'Roberto Reyes', '5557890345', 'roberto.reyes@gmail.com', 'Av. Hidalgo 5454, Ensenada'),
(58, 'Santiago Castro', '5558900345', 'santiago.castro@gmail.com', 'Calle Reforma 5555, Oaxaca'),
(59, 'Teresa López', '5559010345', 'teresa.lopez@gmail.com', 'Av. Morelos 5656, León'),
(60, 'Ángeles Vargas', '5550120345', 'angeles.vargas@gmail.com', 'Calle Independencia 5757, Chihuahua'),
(61, 'Felipe Serrano', '5551230457', 'felipe.serrano@gmail.com', 'Av. Juárez 5858, Tepatitlán'),
(62, 'Lucero Mendoza', '5552340457', 'lucero.mendoza@gmail.com', 'Calle Hidalgo 5959, Cuautitlán'),
(63, 'Patricio Ortega', '5553450457', 'patricio.ortega@gmail.com', 'Av. Morelos 6060, Tlalnepantla'),
(64, 'Adriana Núñez', '5554560457', 'adriana.nunez@gmail.com', 'Calle Reforma 6161, Durango'),
(65, 'Fernando Ruiz', '5555670457', 'fernando.ruiz@gmail.com', 'Av. Insurgentes 6262, Durango'),
(66, 'Esteban Morales', '5556780457', 'esteban.morales@gmail.com', 'Calle Zaragoza 6363, León'),
(67, 'Silvia Cortés', '5557890457', 'silvia.cortes@gmail.com', 'Av. Juárez 6464, San Luis Potosí'),
(68, 'Daniela Castro', '5558900457', 'daniela.castro@gmail.com', 'Calle Allende 6565, Veracruz'),
(69, 'Joaquín Pérez', '5559010457', 'joaquin.perez@gmail.com', 'Av. Revolución 6666, Toluca'),
(70, 'Cristina Ramos', '5550120457', 'cristina.ramos@gmail.com', 'Calle 5 de Febrero 6767, Querétaro'),
(71, 'Luz Martínez', '5551230567', 'luz.martinez@gmail.com', 'Av. Independencia 6868, Culiacán'),
(72, 'Gabriel Hernández', '5552340567', 'gabriel.hernandez@gmail.com', 'Calle 16 de Septiembre 6969, Aguascalientes'),
(73, 'María Silva', '5553450567', 'maria.silva@gmail.com', 'Av. Morelos 7070, Saltillo'),
(74, 'Alfredo Salinas', '5554560567', 'alfredo.salinas@gmail.com', 'Calle Reforma 7171, La Paz'),
(75, 'Sandra Jiménez', '5555670567', 'sandra.jimenez@gmail.com', 'Av. Juárez 7272, Hermosillo'),
(76, 'Carlos Galván', '5556780567', 'carlos.galvan@gmail.com', 'Calle Allende 7373, San Cristóbal de las Casas'),
(77, 'Liliana Romero', '5557890567', 'liliana.romero@gmail.com', 'Av. Insurgentes 7474, Tijuana'),
(78, 'Ernesto Ríos', '5558900567', 'ernesto.rios@gmail.com', 'Calle Morelos 7575, Tepic'),
(79, 'Mónica Pérez', '5559010567', 'monica.perez@gmail.com', 'Av. Revolución 7676, Mazatlán'),
(80, 'Ramiro Castro', '5550120568', 'ramiro.castro@gmail.com', 'Calle 20 de Noviembre 7777, Zacatecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `ID_Compra` int(11) NOT NULL,
  `Fecha_Compra` datetime NOT NULL,
  `ID_Proveedor` int(11) DEFAULT NULL,
  `Total_Compra` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`ID_Compra`, `Fecha_Compra`, `ID_Proveedor`, `Total_Compra`) VALUES
(1, '2024-05-01 00:00:00', 1, 1500.00),
(2, '2024-05-03 00:00:00', 2, 2500.00),
(3, '2024-05-05 00:00:00', 3, 1800.00),
(4, '2024-05-10 00:00:00', 4, 1200.00),
(5, '2024-05-15 00:00:00', 5, 2300.00),
(6, '2024-05-20 00:00:00', 6, 2000.00),
(7, '2024-05-25 00:00:00', 7, 3000.00),
(8, '2024-05-30 00:00:00', 8, 1700.00),
(9, '2024-06-02 00:00:00', 9, 1100.00),
(10, '2024-06-05 00:00:00', 10, 2200.00),
(11, '2024-06-10 00:00:00', 11, 1900.00),
(12, '2024-06-12 00:00:00', 12, 1400.00),
(13, '2024-06-15 00:00:00', 13, 2600.00),
(14, '2024-06-20 00:00:00', 14, 2300.00),
(15, '2024-06-25 00:00:00', 15, 1500.00),
(16, '2024-06-30 00:00:00', 16, 2800.00),
(17, '2024-07-01 00:00:00', 17, 3000.00),
(18, '2024-07-05 00:00:00', 18, 1600.00),
(19, '2024-07-10 00:00:00', 19, 2100.00),
(20, '2024-07-15 00:00:00', 20, 2400.00),
(21, '2024-07-20 00:00:00', 21, 1900.00),
(22, '2024-07-25 00:00:00', 22, 1800.00),
(23, '2024-07-30 00:00:00', 23, 1500.00),
(24, '2024-08-02 00:00:00', 24, 2200.00),
(25, '2024-08-05 00:00:00', 25, 2000.00),
(26, '2024-08-10 00:00:00', 26, 1700.00),
(27, '2024-08-12 00:00:00', 27, 1600.00),
(28, '2024-08-15 00:00:00', 28, 2100.00),
(29, '2024-08-20 00:00:00', 29, 2300.00),
(30, '2024-08-25 00:00:00', 30, 1900.00),
(31, '2024-09-01 00:00:00', 31, 2800.00),
(32, '2024-09-03 00:00:00', 32, 2400.00),
(33, '2024-09-05 00:00:00', 33, 2600.00),
(34, '2024-09-10 00:00:00', 34, 1700.00),
(35, '2024-09-15 00:00:00', 35, 1500.00),
(36, '2024-09-20 00:00:00', 36, 1900.00),
(37, '2024-09-25 00:00:00', 37, 2000.00),
(38, '2024-09-30 00:00:00', 38, 2500.00),
(39, '2024-10-01 00:00:00', 39, 3000.00),
(40, '2024-10-05 00:00:00', 40, 2100.00),
(41, '2024-10-10 00:00:00', 41, 1800.00),
(42, '2024-10-15 00:00:00', 42, 1600.00),
(43, '2024-10-20 00:00:00', 43, 2200.00),
(44, '2024-10-25 00:00:00', 44, 1700.00),
(45, '2024-10-30 00:00:00', 45, 2500.00),
(46, '2024-05-02 00:00:00', 46, 1500.00),
(47, '2024-05-06 00:00:00', 7, 2600.00),
(48, '2024-05-11 00:00:00', 8, 2400.00),
(49, '2024-05-16 00:00:00', 9, 2100.00),
(50, '2024-05-21 00:00:00', 10, 1900.00),
(51, '2024-05-26 00:00:00', 11, 1700.00),
(52, '2024-06-01 00:00:00', 12, 3000.00),
(53, '2024-06-03 00:00:00', 13, 2200.00),
(54, '2024-06-07 00:00:00', 14, 2500.00),
(55, '2024-06-13 00:00:00', 15, 2300.00),
(56, '2024-06-17 00:00:00', 16, 2800.00),
(57, '2024-06-22 00:00:00', 17, 1600.00),
(58, '2024-06-27 00:00:00', 18, 1500.00),
(59, '2024-07-02 00:00:00', 19, 1900.00),
(60, '2024-07-06 00:00:00', 20, 2100.00),
(61, '2024-07-11 00:00:00', 21, 2600.00),
(62, '2024-07-16 00:00:00', 22, 2300.00),
(63, '2024-07-21 00:00:00', 23, 1700.00),
(64, '2024-07-26 00:00:00', 24, 2400.00),
(65, '2024-08-01 00:00:00', 25, 1800.00),
(66, '2024-08-04 00:00:00', 26, 1900.00),
(67, '2024-08-09 00:00:00', 27, 2000.00),
(68, '2024-08-14 00:00:00', 28, 2500.00),
(69, '2024-08-19 00:00:00', 29, 3000.00),
(70, '2024-08-24 00:00:00', 30, 1600.00),
(71, '2024-09-02 00:00:00', 31, 2200.00),
(72, '2024-09-04 00:00:00', 32, 2400.00),
(73, '2024-09-08 00:00:00', 33, 1500.00),
(74, '2024-09-12 00:00:00', 34, 1800.00),
(75, '2024-09-17 00:00:00', 35, 1900.00),
(76, '2024-09-22 00:00:00', 36, 2600.00),
(77, '2024-09-27 00:00:00', 37, 2000.00),
(78, '2024-10-02 00:00:00', 38, 2300.00),
(79, '2024-10-06 00:00:00', 39, 2100.00),
(80, '2024-10-11 00:00:00', 40, 1700.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `ID_Detalle` int(11) NOT NULL,
  `ID_Compra` int(11) DEFAULT NULL,
  `ID_Producto` int(11) DEFAULT NULL,
  `Cantidad_Comprada` int(11) NOT NULL,
  `Precio_Compra` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_compras`
--

INSERT INTO `detalle_compras` (`ID_Detalle`, `ID_Compra`, `ID_Producto`, `Cantidad_Comprada`, `Precio_Compra`) VALUES
(1, 1, 1, 10, 450.00),
(2, 1, 2, 5, 75.00),
(3, 2, 3, 8, 270.00),
(4, 2, 4, 3, 300.00),
(5, 3, 5, 15, 120.00),
(6, 3, 6, 2, 300.00),
(7, 4, 7, 7, 180.00),
(8, 4, 8, 4, 150.00),
(9, 5, 9, 10, 230.00),
(10, 5, 10, 5, 200.00),
(11, 6, 11, 6, 200.00),
(12, 6, 12, 1, 1500.00),
(13, 7, 13, 9, 300.00),
(14, 7, 14, 2, 1500.00),
(15, 8, 15, 4, 425.00),
(16, 8, 16, 3, 240.00),
(17, 9, 17, 2, 550.00),
(18, 9, 18, 5, 110.00),
(19, 10, 19, 7, 300.00),
(20, 10, 20, 4, 250.00),
(21, 11, 21, 5, 380.00),
(22, 11, 22, 8, 190.00),
(23, 12, 23, 6, 233.33),
(24, 12, 24, 3, 466.67),
(25, 13, 25, 10, 260.00),
(26, 13, 26, 1, 2600.00),
(27, 14, 27, 12, 191.67),
(28, 14, 28, 5, 460.00),
(29, 15, 29, 4, 375.00),
(30, 15, 30, 7, 200.00),
(31, 16, 31, 10, 280.00),
(32, 16, 32, 5, 560.00),
(33, 17, 33, 8, 375.00),
(34, 17, 34, 6, 600.00),
(35, 18, 35, 2, 800.00),
(36, 18, 36, 4, 400.00),
(37, 19, 37, 3, 700.00),
(38, 19, 38, 6, 350.00),
(39, 20, 39, 5, 480.00),
(40, 20, 40, 7, 300.00),
(41, 21, 41, 3, 600.00),
(42, 21, 42, 10, 190.00),
(43, 22, 43, 8, 225.00),
(44, 22, 44, 5, 180.00),
(45, 23, 45, 2, 750.00),
(46, 23, 46, 4, 200.00),
(47, 24, 47, 10, 220.00),
(48, 24, 48, 1, 2200.00),
(49, 25, 49, 12, 175.00),
(50, 25, 50, 3, 950.00),
(51, 26, 51, 6, 250.00),
(52, 26, 52, 8, 125.00),
(53, 27, 53, 10, 170.00),
(54, 27, 54, 4, 425.00),
(55, 28, 55, 5, 420.00),
(56, 28, 56, 2, 1050.00),
(57, 29, 57, 3, 550.00),
(58, 29, 58, 6, 333.33),
(59, 30, 59, 10, 180.00),
(60, 30, 60, 4, 450.00),
(61, 31, 61, 7, 400.00),
(62, 31, 62, 8, 280.00),
(63, 32, 63, 5, 600.00),
(64, 32, 64, 3, 720.00),
(65, 33, 65, 6, 220.00),
(66, 33, 66, 9, 333.33),
(67, 34, 67, 7, 300.00),
(68, 34, 68, 5, 600.00),
(69, 35, 69, 10, 190.00),
(70, 35, 70, 8, 210.00),
(71, 36, 71, 4, 500.00),
(72, 36, 72, 3, 300.00),
(73, 37, 73, 9, 350.00),
(74, 37, 74, 6, 400.00),
(75, 38, 75, 2, 600.00),
(76, 38, 76, 7, 300.00),
(77, 39, 77, 5, 750.00),
(78, 39, 78, 8, 225.00),
(79, 40, 79, 3, 500.00),
(80, 40, 80, 9, 186.67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `ID_Detalle` int(11) NOT NULL,
  `ID_Venta` int(11) DEFAULT NULL,
  `ID_Producto` int(11) DEFAULT NULL,
  `Cantidad_Vendida` int(11) NOT NULL,
  `Precio_Vendido` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`ID_Detalle`, `ID_Venta`, `ID_Producto`, `Cantidad_Vendida`, `Precio_Vendido`) VALUES
(1, 1, 1, 2, 260.00),
(2, 1, 2, 1, 130.00),
(3, 2, 3, 1, 175.00),
(4, 2, 1, 2, 130.00),
(5, 3, 4, 1, 125.00),
(6, 3, 5, 1, 125.00),
(7, 4, 6, 2, 420.00),
(8, 4, 2, 1, 210.00),
(9, 5, 7, 1, 300.00),
(10, 5, 8, 1, 300.00),
(11, 6, 9, 1, 200.00),
(12, 6, 10, 2, 400.00),
(13, 7, 11, 1, 190.50),
(14, 7, 12, 1, 190.50),
(15, 8, 13, 2, 481.50),
(16, 8, 14, 1, 240.75),
(17, 9, 15, 1, 85.99),
(18, 9, 16, 1, 85.99),
(19, 10, 17, 1, 175.00),
(20, 10, 18, 1, 175.00),
(21, 11, 19, 1, 130.25),
(22, 11, 20, 1, 130.25),
(23, 12, 21, 2, 440.00),
(24, 12, 22, 1, 220.00),
(25, 13, 23, 1, 180.00),
(26, 13, 24, 1, 180.00),
(27, 14, 25, 1, 150.25),
(28, 14, 26, 1, 150.25),
(29, 15, 27, 1, 90.00),
(30, 15, 28, 1, 90.00),
(31, 16, 29, 2, 191.98),
(32, 16, 30, 1, 95.99),
(33, 17, 31, 1, 115.50),
(34, 17, 32, 1, 115.50),
(35, 18, 33, 2, 600.00),
(36, 18, 34, 1, 300.00),
(37, 19, 35, 1, 200.00),
(38, 19, 36, 1, 200.00),
(39, 20, 37, 1, 175.75),
(40, 20, 38, 1, 175.75),
(41, 21, 39, 1, 150.00),
(42, 21, 40, 1, 150.00),
(43, 22, 41, 1, 85.25),
(44, 22, 42, 1, 85.25),
(45, 23, 43, 1, 90.50),
(46, 23, 44, 1, 90.50),
(47, 24, 45, 1, 240.00),
(48, 24, 46, 1, 240.00),
(49, 25, 47, 2, 401.00),
(50, 25, 48, 1, 200.50),
(51, 26, 49, 1, 175.99),
(52, 26, 50, 1, 175.99),
(53, 27, 51, 1, 220.00),
(54, 27, 52, 1, 220.00),
(55, 28, 53, 1, 150.75),
(56, 28, 54, 1, 150.75),
(57, 29, 55, 1, 95.99),
(58, 29, 56, 1, 95.99),
(59, 30, 57, 1, 130.50),
(60, 30, 58, 1, 130.50),
(61, 31, 59, 1, 300.25),
(62, 31, 60, 1, 300.25),
(63, 32, 61, 1, 175.50),
(64, 32, 62, 1, 175.50),
(65, 33, 63, 1, 140.00),
(66, 33, 64, 1, 140.00),
(67, 34, 65, 1, 210.00),
(68, 34, 66, 1, 210.00),
(69, 35, 67, 1, 95.75),
(70, 35, 68, 1, 95.75),
(71, 36, 69, 1, 220.00),
(72, 36, 70, 1, 220.00),
(73, 37, 71, 1, 85.25),
(74, 37, 72, 1, 85.25),
(75, 38, 73, 1, 150.00),
(76, 38, 74, 1, 150.00),
(77, 39, 75, 1, 180.99),
(78, 39, 76, 1, 180.99),
(79, 40, 77, 1, 190.00),
(80, 40, 78, 1, 190.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `ID_Pago` int(11) NOT NULL,
  `Fecha_Pago` datetime NOT NULL,
  `Monto_Pago` decimal(10,2) NOT NULL,
  `ID_Proveedor` int(11) DEFAULT NULL,
  `Método_Pago` varchar(50) DEFAULT NULL,
  `Observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_Producto` int(11) NOT NULL,
  `Nombre_Producto` varchar(255) NOT NULL,
  `Descripción` text DEFAULT NULL,
  `Precio_Compra` decimal(10,2) NOT NULL,
  `Precio_Venta` decimal(10,2) NOT NULL,
  `Cantidad_Stock` int(11) NOT NULL,
  `ID_Proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_Producto`, `Nombre_Producto`, `Descripción`, `Precio_Compra`, `Precio_Venta`, `Cantidad_Stock`, `ID_Proveedor`) VALUES
(1, 'Escoba', 'Escoba de plástico resistente, 1 unidad.', 35.00, 45.00, 200, 1),
(2, 'Bandeja de Plástico', 'Bandeja de plástico para almacenamiento, 1 unidad.', 10.00, 15.00, 150, 2),
(3, 'Guantes de Limpieza', 'Guantes desechables de látex, paquete de 10.', 32.00, 40.00, 200, 3),
(4, 'Cubeta', 'Cubeta de plástico de 10L, ideal para limpieza.', 16.00, 20.00, 180, 4),
(5, 'Pinzas', 'Pinzas de metal, ideales para agarre.', 25.00, 30.00, 250, 5),
(6, 'Lazos', 'Lazos de plástico, paquete de 100 unidades.', 30.00, 60.00, 300, 6),
(7, 'Atomizador', 'Atomizador de 500ml para líquidos de limpieza.', 30.00, 45.00, 220, 7),
(8, 'Sosa', 'Sosa cáustica, 500g, para limpieza intensa.', 25.50, 32.00, 150, 8),
(9, 'Cuadrítela', 'Cuadrítela de microfibra, 1 unidad.', 13.50, 15.00, 200, 1),
(10, 'Microfibra', 'Paquete de paños de microfibra, 10 unidades.', 20.00, 50.00, 250, 2),
(11, 'Manta de Cielo', 'Manta de cielo para limpieza, 1 unidad.', 14.00, 25.00, 180, 3),
(12, 'Ácido Muriático', 'Ácido muriático, 1L, para limpieza profunda.', 30.00, 70.00, 100, 4),
(13, 'Plaga Fin', 'Insecticida Plaga Fin, 500ml.', 70.00, 100.00, 130, 5),
(14, 'Tron', 'Tron para controlar plagas, 200g.', 150.00, 170.00, 120, 6),
(15, 'Jalador', 'Jalador para limpieza de pisos, 1 unidad.', 100.00, 120.00, 150, 7),
(16, 'Cepillo Lava Coches', 'Cepillo para lavar coches, 1 unidad.', 50.00, 60.00, 200, 8),
(17, 'Recogedor', 'Recogedor de basura, 1 unidad.', 35.50, 40.00, 250, 1),
(18, 'Fibra Verde', 'Fibra verde para limpieza abrasiva, 500g.', 15.00, 20.00, 300, 2),
(19, 'Fibra de Fierro', 'Fibra de fierro, 500g, para limpieza intensa.', 27.50, 20.00, 150, 3),
(20, 'Fibra de Fierro Inoxidable', 'Fibra de fierro inoxidable, 500g.', 30.00, 35.00, 180, 4),
(21, 'Jergas', 'Paquete de jergas, 10 unidades.', 20.50, 26.00, 220, 5),
(22, 'Ganchos', 'Ganchos de plástico, paquete de 50.', 10.50, 15.00, 300, 6),
(23, 'Cepillos', 'Cepillos de limpieza, paquete de 5.', 20.00, 25.00, 200, 7),
(24, 'Tapones de Coladera', 'Tapones de coladera, paquete de 10.', 17.00, 24.00, 400, 8),
(25, 'Coladores', 'Coladores de plástico, 1 unidad.', 25.00, 30.00, 250, 1),
(26, 'Despachador de Jabón', 'Despachador de jabón líquido para cocina o baño, 1 unidad.', 50.00, 70.00, 150, 2),
(27, 'Trapos de Cocina', 'Trapos de cocina, paquete de 10 unidades.', 15.00, 22.00, 200, 3),
(28, 'Franela', 'Franela para limpieza, suave y absorbente.', 10.00, 15.00, 250, 4),
(29, 'Amoniaco', 'Amoniaco líquido, 1L, para limpieza fuerte.', 30.50, 40.00, 180, 5),
(30, 'Mostaceros', 'Moztaceros de acero inoxidable, ideales para limpieza.', 5.00, 15.00, 200, 6),
(31, 'Pinzas de Aluminio', 'Pinzas de aluminio para limpieza y agarre.', 20.50, 25.00, 150, 7),
(32, 'Calentador de Agua', 'Calentador de agua eléctrico, 1 unidad.', 250.00, 310.00, 50, 8),
(33, 'Exprimidor de Limones', 'Exprimidor manual de limones, fácil de usar.', 17.50, 22.00, 300, 1),
(34, 'Veneno para Ratas', 'Veneno para ratas, paquete de 500g.', 70.00, 85.00, 80, 2),
(35, 'Pega Ratas', 'Pega ratas, trampa adhesiva, paquete de 10.', 50.00, 60.00, 150, 3),
(36, 'Veneno para Cucarachas (Pasta)', 'Pasta insecticida para cucarachas, 100g.', 30.00, 40.00, 120, 4),
(37, 'Limpiador de Pisos', 'Limpiador concentrado para pisos, 1L.', 15.00, 20.00, 150, 1),
(38, 'Limpiador de Vidrios', 'Limpiador de vidrios, 500ml.', 25.00, 30.00, 200, 2),
(39, 'Desinfectante Multiusos', 'Desinfectante en spray, 400ml.', 25.00, 30.00, 130, 3),
(40, 'Detergente para Lavavajillas', 'Detergente para lavavajillas, 1L.', 50.00, 60.00, 180, 4),
(41, 'Cera para Pisos', 'Cera líquida para pisos, 1L.', 40.00, 52.00, 90, 5),
(42, 'Neutralizante de Olores', 'Neutralizante de olores, 400ml.', 80.00, 94.00, 150, 6),
(43, 'Fregona de Algodón', 'Fregona tradicional de algodón, 1 unidad.', 50.00, 60.00, 200, 7),
(44, 'Espuma Limpiadora', 'Espuma limpiadora para alfombras, 500ml.', 40.00, 48.50, 120, 8),
(45, 'Paño de Limpieza', 'Paño de limpieza de microfibra, 1 unidad.', 15.50, 20.00, 250, 1),
(46, 'Limpiador de Baño', 'Limpiador para inodoro y superficies, 500ml.', 40.00, 52.00, 160, 2),
(47, 'Aspiradora Portátil', 'Aspiradora portátil de mano, 1 unidad.', 700.00, 800.00, 30, 3),
(48, 'Cubo de Limpieza', 'Cubo de limpieza con escurridor, 10L.', 70.00, 80.00, 70, 4),
(49, 'Escoba de Sombra', 'Escoba de sombra con mango largo, 1 unidad.', 25.50, 30.00, 180, 5),
(50, 'Limpiador de Superficies', 'Limpiador para todo tipo de superficies, 1L.', 35.00, 47.00, 140, 6),
(51, 'Toallas Desinfectantes', 'Toallas desinfectantes, paquete de 20.', 25.00, 30.50, 120, 7),
(52, 'Limpiador de Alfombras', 'Limpiador especial para alfombras, 500ml.', 20.00, 30.00, 100, 8),
(53, 'Desengrasante', 'Desengrasante para cocina, 750ml.', 30.00, 40.50, 150, 1),
(54, 'Limpiador de Tuberías', 'Limpiador para desatascar tuberías, 500ml.', 25.00, 30.00, 80, 2),
(55, 'Paquete de Cepillos', 'Paquete de cepillos de limpieza, 5 unidades.', 40.00, 55.00, 200, 3),
(56, 'Limpiador de Muebles', 'Limpiador para muebles, 200ml.', 25.00, 30.00, 150, 4),
(57, 'Jabón Líquido Pinol', 'Jabón líquido multiusos, 1L.', 30.00, 40.00, 200, 1),
(58, 'Jabón Líquido Fabuloso', 'Jabón líquido para superficies, 1L.', 35.00, 49.00, 250, 2),
(59, 'Jabón Líquido Ajax', 'Jabón líquido para cocina, 500ml.', 35.00, 50.00, 180, 3),
(60, 'Jabón Líquido Zote', 'Jabón líquido para ropa, 1L.', 40.50, 50.50, 200, 4),
(61, 'Jabón Líquido Suavitel', 'Suavizante líquido para ropa, 1L.', 40.00, 55.50, 160, 5),
(62, 'Jabón Líquido Cloralex', 'Desinfectante líquido, 1L.', 60.00, 74.00, 150, 6),
(63, 'Jabón Líquido Lavarropas', 'Detergente líquido para lavarropas, 1L.', 30.00, 40.00, 140, 7),
(64, 'Jabón Líquido Antibacterial', 'Jabón líquido antibacterial, 500ml.', 25.50, 30.00, 220, 8),
(65, 'Jabón de Manos', 'Jabón líquido para manos, 300ml.', 15.00, 24.00, 250, 1),
(66, 'Detergente Líquido', 'Detergente líquido para todo uso, 1L.', 40.00, 65.50, 200, 2),
(67, 'Desinfectante de Manos', 'Desinfectante en gel, 300ml.', 25.00, 30.00, 180, 3),
(68, 'Limpiador de Vidrios con Fragancia', 'Limpiador de vidrios con aroma, 500ml.', 20.50, 30.00, 150, 4),
(69, 'Limpiador de Baño con Fragancia', 'Limpiador de baño, 500ml.', 30.00, 40.00, 120, 5),
(70, 'Amoniaco con Fragancia', 'Amoniaco líquido con fragancia, 1L.', 25.00, 40.50, 200, 6),
(71, 'Desengrasante para Freidoras', 'Desengrasante especial para freidoras, 750ml.', 30.00, 40.00, 80, 7),
(72, 'Limpiador de Superficies Multiuso', 'Limpiador multiuso, 1L.', 35.50, 50.00, 150, 8),
(73, 'Limpiador de Piso con Fragancia', 'Limpiador para pisos con aroma, 1L.', 30.00, 40.50, 100, 1),
(74, 'Limpiador de Moquetas', 'Limpiador para moquetas, 500ml.', 25.50, 30.00, 120, 2),
(75, 'Limpiador de Olores', 'Neutralizante de olores, 400ml.', 20.00, 35.00, 140, 3),
(76, 'Limpiador de Hogar', 'Limpiador para todas las superficies, 500ml.', 25.00, 30.50, 180, 4),
(77, 'Detergente para Ropa', 'Detergente en polvo para ropa, 1kg.', 35.00, 50.00, 200, 5),
(78, 'Suavizante para Ropa', 'Suavizante líquido, 1L.', 30.00, 45.50, 160, 6),
(79, 'Limpiador Concentrado', 'Limpiador concentrado para todo uso, 1L.', 35.00, 40.00, 100, 7),
(80, 'Desengrasante Ecológico', 'Desengrasante ecológico, 500ml.', 25.00, 37.00, 180, 8),
(81, 'Jabón Líquido para Platos', 'Jabón para lavar platos, 1L.', 25.00, 30.00, 200, 1),
(82, 'Limpiador de Electrodomésticos', 'Limpiador específico para electrodomésticos, 500ml.', 50.00, 60.00, 120, 2),
(83, 'Limpiador de Superficies Ecológico', 'Limpiador ecológico para superficies, 1L.', 60.00, 80.00, 150, 3),
(84, 'Desinfectante para Superficies', 'Desinfectante para todas las superficies, 500ml.', 35.00, 48.00, 180, 4),
(85, 'Limpiador de Tapicería', 'Limpiador especial para tapicería, 500ml.', 30.00, 40.00, 100, 5),
(86, 'Detergente Líquido para Ropa', 'Detergente líquido para ropa, 1L.', 45.50, 60.00, 150, 6),
(87, 'Desengrasante para Cocina', 'Desengrasante para cocina, 750ml.', 35.50, 50.00, 120, 7),
(88, 'Desinfectante en Spray', 'Desinfectante en spray, 400ml.', 38.00, 45.00, 130, 8),
(89, 'Limpiador para Pisos Ecológico', 'Limpiador ecológico para pisos, 1L.', 35.00, 50.00, 90, 1),
(90, 'Desengrasante para Parrillas', 'Desengrasante para parrillas, 750ml.', 25.00, 39.00, 70, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID_Proveedor` int(11) NOT NULL,
  `Nombre_Proveedor` varchar(255) NOT NULL,
  `Teléfono_Proveedor` varchar(50) DEFAULT NULL,
  `Email_Proveedor` varchar(255) DEFAULT NULL,
  `Dirección_Proveedor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`ID_Proveedor`, `Nombre_Proveedor`, `Teléfono_Proveedor`, `Email_Proveedor`, `Dirección_Proveedor`) VALUES
(1, 'Limpieza Total', '123456789', 'info@limpiezatotal.com', 'Calle de la Higiene 1, Madrid'),
(2, 'Soluciones de Limpieza', '987654321', 'ventas@solucioneslimpieza.com', 'Avenida de la Pureza 2, Barcelona'),
(3, 'Productos Ecológicos S.A.', '456123789', 'contacto@ecologicoproductos.com', 'Boulevard de la Salud 3, Valencia'),
(4, 'Artículos de Limpieza ABC', '321654987', 'info@articuloslimpieza.com', 'Calle de los Productos 4, Sevilla'),
(5, 'Distribuidora de Higiene', '654789123', 'contacto@distribuidoradehigiene.com', 'Avenida de la Limpieza 5, Zaragoza'),
(6, 'Fábrica de Detergentes', '147258369', 'ventas@fabricadetergentes.com', 'Calle de los Aromas 6, Málaga'),
(7, 'Proveedores de Productos Químicos', '963852741', 'info@productosquimicos.com', 'Calle de la Ciencia 7, Murcia'),
(8, 'Distribuciones de Limpieza Rápida', '852741963', 'ventas@distribucionesrapidas.com', 'Avenida de la Eficiencia 8, Bilbao'),
(9, 'Artículos de Baño y Limpieza', '159753456', 'contacto@articulosdebanoylimpieza.com', 'Calle de la Comodidad 9, Alicante'),
(10, 'Suministros de Limpieza Ecológicos', '753159846', 'info@limpiezaecologica.com', 'Calle Verde 10, Córdoba'),
(11, 'Detergentes y Jabones S.A.', '159753852', 'contacto@detergentesyjabon.com', 'Calle de la Naturaleza 11, Granada'),
(12, 'Proveedores de Aseo Integral', '753951456', 'ventas@aseointegral.com', 'Avenida de la Limpieza 12, Oviedo'),
(13, 'Suministros Industriales de Limpieza', '258456789', 'info@suministrosindustriales.com', 'Calle del Trabajo 13, Valladolid'),
(14, 'Distribuidora de Productos de Aseo', '456789123', 'ventas@productosdeaseo.com', 'Calle de la Eficiencia 14, Gijón'),
(15, 'Productos de Limpieza Avanzados', '147369258', 'info@limpiezaavanzada.com', 'Avenida de la Innovación 15, San Sebastián'),
(16, 'Suministros de Limpieza Premium', '321654987', 'ventas@limpiezapremium.com', 'Calle del Brillo 16, Santiago de Compostela'),
(17, 'Distribuciones de Aseo Global', '654789321', 'info@aseoglobal.com', 'Avenida de la Sostenibilidad 17, La Coruña'),
(18, 'Limpieza para Empresas', '987123456', 'contacto@limpiezaparacompanias.com', 'Calle del Éxito 18, Palma de Mallorca'),
(19, 'Ecolimpieza Sostenible', '753951852', 'info@ecolimpiezasostenible.com', 'Avenida Verde 19, Marbella'),
(20, 'Servicios de Aseo Integral', '852369147', 'ventas@aseointegral.com', 'Calle del Cuidado 20, Almería'),
(21, 'Limpieza Express', '654123789', 'info@limpiezaexpress.com', 'Calle de la Rapidez 21, Toledo'),
(22, 'Soluciones de Higiene Ecológicas', '321987654', 'ventas@higieneecologica.com', 'Avenida Ecológica 22, León'),
(23, 'Distribuidora de Productos de Limpieza', '789456123', 'contacto@productosdelimpieza.com', 'Calle del Progreso 23, Salamanca'),
(24, 'Fábrica de Limpiadores', '963147258', 'info@fabricadelimpiadores.com', 'Calle de la Pureza 24, Burgos'),
(25, 'Artículos de Limpieza Avanzados', '147852369', 'ventas@articulosavanzados.com', 'Avenida de la Innovación 25, Cáceres'),
(26, 'Limpieza Proactiva', '159357486', 'contacto@limpiezaproactiva.com', 'Calle de la Acción 26, Huelva'),
(27, 'Productos de Aseo Rápido', '753456987', 'info@aseorapido.com', 'Calle Ágil 27, León'),
(28, 'Suministros de Limpieza para Hoteles', '654321789', 'ventas@limpiezahoteles.com', 'Avenida Hotelera 28, Badajoz'),
(29, 'Ecolimpieza y Aseo', '456789123', 'contacto@ecolimpieza.com', 'Calle Verde 29, Jaén'),
(30, 'Artículos de Limpieza y Cuidado', '321456987', 'info@articulosdecuidado.com', 'Avenida de la Higiene 30, Lugo'),
(31, 'Limpieza Total S.A.', '987654321', 'ventas@limpiezatotal.com', 'Calle del Cuidado 31, Santiago de Compostela'),
(32, 'Proveedores de Desinfectantes', '753951852', 'contacto@desinfectantes.com', 'Calle Limpieza 32, Oviedo'),
(33, 'Suministros de Aseo Doméstico', '258147369', 'info@aseodomestico.com', 'Avenida del Hogar 33, Toledo'),
(34, 'Distribuidora de Productos Antibacteriales', '963258147', 'ventas@productosantibacteriales.com', 'Calle Higiénica 34, Albacete'),
(35, 'Limpiadores y Desinfectantes Rápidos', '159753258', 'contacto@limpiadoresrapidos.com', 'Avenida Saludable 35, La Rioja'),
(36, 'Suministros de Limpieza para Empresas', '753159684', 'info@limpiezaparaempresas.com', 'Calle Profesional 36, Valladolid'),
(37, 'Cuidado del Medio Ambiente S.A.', '789123456', 'ventas@cuidadomedioambiente.com', 'Calle Sostenible 37, San Sebastián'),
(38, 'Limpieza y Cuidado del Hogar', '852741963', 'contacto@limpiezacuidado.com', 'Avenida del Hogar 38, Girona'),
(39, 'Jarcería y Aseo Sostenible', '321987654', 'info@jarceriaaseo.com', 'Calle Ecológica 39, Córdoba'),
(40, 'Distribuciones de Higiene Total', '654987123', 'ventas@higienetotal.com', 'Avenida Limpieza 40, Cáceres'),
(41, 'Limpieza Diaria', '741258963', 'info@limpiezadiaria.com', 'Calle de la Rutina 41, Ciudad Real'),
(42, 'Suministros para Aseo Profesional', '159753852', 'contacto@aseoprofesional.com', 'Calle Profesional 42, Huesca'),
(43, 'Detergentes de Calidad', '753951456', 'ventas@detergentescalidad.com', 'Avenida de la Calidad 43, Soria'),
(44, 'Artículos de Aseo y Limpieza', '258963147', 'info@articulosdeaseo.com', 'Calle Aseo 44, Cuenca'),
(45, 'Limpieza y Ecolimpieza', '369852147', 'contacto@limpiezayecolimpieza.com', 'Avenida Verde 45, Teruel'),
(46, 'Suministros de Higiene y Salud', '951753468', 'ventas@higieneysalud.com', 'Calle Salud 46, Melilla'),
(47, 'Proveedores de Aseo Ecológico', '852963741', 'info@aseoecologico.com', 'Avenida Ecológica 47, Ceuta'),
(48, 'Cuidado de Espacios Verdes', '753159684', 'contacto@cuidoespaciosverdes.com', 'Calle Verde 48, Almería'),
(49, 'Artículos de Limpieza para Empresas', '159357486', 'ventas@articulosparaempresas.com', 'Calle Empresarial 49, Logroño'),
(51, 'Suministros de Limpieza Integral', '753852147', 'contacto@limpiezaintegral.com', 'Calle Integral 51, Badajoz'),
(52, 'Detergentes y Desinfectantes', '852456123', 'ventas@detergentesydesinfectantes.com', 'Calle Saludable 53, Gijón'),
(53, 'Artículos de Limpieza Ecoeficientes', '123456987', 'contacto@limpiezaecoeficiente.com', 'Avenida Ecológica 54, Logroño'),
(54, 'Proveedores de Aseo Urbano', '321654852', 'info@aseourbano.com', 'Calle Ciudadana 55, Badajoz'),
(55, 'Suministros de Limpieza de Calidad', '654123456', 'ventas@limpiezacalidad.com', 'Calle del Cuidado 56, Huesca'),
(56, 'Limpieza de Espacios Industriales', '456789321', 'contacto@limpiezaindustrial.com', 'Avenida Profesional 57, Almería'),
(57, 'Soluciones de Limpieza Avanzadas', '852963159', 'info@solucionesavanzadas.com', 'Calle Innovadora 58, Ciudad Real'),
(58, 'Distribuidora de Higiene Total', '369258147', 'ventas@higienetotal.com', 'Avenida Limpieza 59, Melilla'),
(59, 'Artículos de Limpieza y Sostenibilidad', '753159852', 'contacto@articulosysostenibilidad.com', 'Calle Ecológica 60, León'),
(60, 'Limpieza Profesional para Hoteles', '258369147', 'info@limpiezahoteles.com', 'Avenida Hotelera 61, Málaga'),
(61, 'Servicios de Aseo y Cuidado', '147258369', 'ventas@aseoycuidado.com', 'Calle Cuidado 62, Girona'),
(62, 'Proveedores de Higiene Ecológica', '963147258', 'contacto@higieneecologica.com', 'Avenida Verde 63, Toledo'),
(63, 'Suministros de Limpieza Ecológica', '321654987', 'info@limpiezaecologica.com', 'Calle del Verde 64, Jaén'),
(64, 'Artículos de Aseo y Cuidado', '159753456', 'ventas@aseoycuidado.com', 'Avenida del Cuidado 65, Albacete'),
(65, 'Limpieza de Espacios Públicos', '456789123', 'contacto@limpiezaespaciospublicos.com', 'Calle Pública 66, La Coruña'),
(66, 'Soluciones de Desinfección', '753951456', 'info@solucionesdesinfeccion.com', 'Avenida de la Salud 67, San Sebastián'),
(67, 'Proveedores de Productos de Limpieza', '852963741', 'ventas@productosdelimpieza.com', 'Calle del Progreso 68, Oviedo'),
(68, 'Suministros de Higiene Industrial', '369258147', 'contacto@higieneindustrial.com', 'Avenida Industrial 69, Granada'),
(69, 'Distribuidora de Productos Sostenibles', '258963147', 'info@productosostenibles.com', 'Calle Ecológica 70, Cádiz'),
(70, 'Artículos de Limpieza Rápida', '951753852', 'ventas@limpiezarapida.com', 'Avenida Rápida 71, Córdoba'),
(71, 'Limpieza y Mantenimiento', '753159846', 'contacto@limpiezaymantenimiento.com', 'Calle de Mantenimiento 72, Badajoz'),
(72, 'Soluciones de Higiene para Empresas', '147258963', 'info@higieneempresarial.com', 'Avenida Empresarial 73, León'),
(73, 'Suministros de Higiene Ecológica', '258147369', 'ventas@higieneecologica.com', 'Calle Ecológica 74, Salamanca'),
(74, 'Proveedores de Aseo Profesional', '369258147', 'contacto@aseoprofesional.com', 'Avenida Profesional 75, Valladolid'),
(75, 'Limpieza de Espacios Privados', '753951486', 'info@limpiezaespaciosprivados.com', 'Calle Privada 76, Lugo'),
(76, 'Distribuidora de Productos de Higiene', '321456987', 'ventas@productosdehigiene.com', 'Avenida Higiénica 77, Huesca'),
(77, 'Artículos de Limpieza y Mantenimiento', '654123987', 'contacto@articuloslimpiezamantenimiento.com', 'Calle Mantenimiento 78, Gijón'),
(78, 'Suministros de Limpieza para Negocios', '789456123', 'info@limpiezanegocios.com', 'Avenida Negocios 79, Almería'),
(79, 'Proveedores de Limpieza Ecológica', '147258369', 'ventas@limpiezaecologica.com', 'Calle Verde 80, Teruel'),
(80, 'Servicios de Limpieza Eficientes', '321654987', 'contacto@limpiezaseficientes.com', 'Avenida Eficiente 81, Murcia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ID_Venta` int(11) NOT NULL,
  `Fecha_Venta` datetime NOT NULL,
  `ID_Cliente` int(11) DEFAULT NULL,
  `Total_Venta` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ID_Venta`, `Fecha_Venta`, `ID_Cliente`, `Total_Venta`) VALUES
(1, '2024-05-01 10:45:00', 1, 130.00),
(2, '2024-05-02 11:55:00', 2, 175.00),
(3, '2024-05-03 12:05:00', 3, 125.00),
(4, '2024-05-04 13:30:00', 4, 210.00),
(5, '2024-05-05 14:25:00', 5, 300.00),
(6, '2024-05-06 10:10:00', 6, 200.00),
(7, '2024-05-07 11:50:00', 7, 190.50),
(8, '2024-05-08 12:15:00', 8, 240.75),
(9, '2024-05-09 14:20:00', 9, 85.99),
(10, '2024-05-10 15:30:00', 10, 175.00),
(11, '2024-05-11 10:40:00', 11, 130.25),
(12, '2024-05-12 11:45:00', 12, 220.00),
(13, '2024-05-13 12:00:00', 13, 180.00),
(14, '2024-05-14 13:15:00', 14, 150.25),
(15, '2024-06-01 10:30:00', 15, 90.00),
(16, '2024-06-02 11:40:00', 16, 95.99),
(17, '2024-06-03 12:50:00', 17, 115.50),
(18, '2024-06-04 14:05:00', 18, 300.00),
(19, '2024-06-05 15:15:00', 19, 200.00),
(20, '2024-06-06 10:20:00', 20, 175.75),
(21, '2024-06-07 11:30:00', 21, 150.00),
(22, '2024-06-08 12:40:00', 22, 85.25),
(23, '2024-06-09 14:10:00', 23, 90.50),
(24, '2024-06-10 15:55:00', 24, 240.00),
(25, '2024-07-01 10:05:00', 25, 200.50),
(26, '2024-07-02 11:30:00', 26, 175.99),
(27, '2024-07-03 12:15:00', 27, 220.00),
(28, '2024-07-04 14:25:00', 28, 150.75),
(29, '2024-07-05 15:30:00', 29, 95.99),
(30, '2024-07-06 10:40:00', 30, 130.50),
(31, '2024-07-07 11:10:00', 31, 300.25),
(32, '2024-07-08 12:25:00', 32, 175.50),
(33, '2024-07-09 13:50:00', 33, 140.00),
(34, '2024-07-10 15:00:00', 34, 210.00),
(35, '2024-08-01 10:30:00', 35, 95.75),
(36, '2024-08-02 11:25:00', 36, 220.00),
(37, '2024-08-03 12:40:00', 37, 85.25),
(38, '2024-08-04 14:10:00', 38, 150.00),
(39, '2024-08-05 15:55:00', 39, 180.99),
(40, '2024-08-06 10:15:00', 40, 190.00),
(41, '2024-08-07 11:35:00', 41, 200.75),
(42, '2024-08-08 12:45:00', 42, 240.00),
(43, '2024-08-09 14:00:00', 43, 130.50),
(44, '2024-08-10 15:50:00', 44, 140.75),
(45, '2024-09-01 10:05:00', 45, 175.00),
(46, '2024-09-02 11:25:00', 46, 150.00),
(47, '2024-09-03 12:20:00', 47, 95.25),
(48, '2024-09-04 14:30:00', 48, 300.99),
(49, '2024-09-05 10:45:00', 49, 220.50),
(50, '2024-09-06 11:55:00', 50, 180.25),
(51, '2024-09-07 12:05:00', 51, 210.00),
(52, '2024-09-08 13:30:00', 52, 175.00),
(53, '2024-09-09 14:25:00', 53, 95.99),
(54, '2024-09-10 15:30:00', 54, 150.00),
(55, '2024-09-11 10:10:00', 55, 300.50),
(56, '2024-09-12 11:50:00', 56, 125.00),
(57, '2024-09-13 12:15:00', 57, 190.75),
(58, '2024-09-14 14:20:00', 58, 85.50),
(59, '2024-09-15 15:25:00', 59, 240.00),
(60, '2024-09-16 10:30:00', 60, 130.00),
(61, '2024-09-17 11:00:00', 61, 175.25),
(62, '2024-09-18 12:20:00', 62, 150.00),
(63, '2024-09-19 13:45:00', 63, 95.75),
(64, '2024-09-20 15:05:00', 64, 200.00),
(65, '2024-09-21 10:50:00', 65, 180.00),
(66, '2024-09-22 11:15:00', 66, 190.50),
(67, '2024-09-23 12:35:00', 67, 220.00),
(68, '2024-09-24 14:00:00', 68, 250.00),
(69, '2024-09-25 15:40:00', 69, 300.00),
(70, '2024-09-26 10:10:00', 70, 125.00),
(71, '2024-09-27 11:30:00', 71, 175.00),
(72, '2024-09-28 12:50:00', 72, 85.25),
(73, '2024-09-29 14:15:00', 73, 90.00),
(74, '2024-09-30 15:30:00', 74, 200.99),
(75, '2024-10-01 10:05:00', 75, 150.50),
(76, '2024-10-02 11:45:00', 76, 180.25),
(77, '2024-10-03 12:15:00', 77, 240.00),
(78, '2024-10-04 14:10:00', 78, 220.00),
(79, '2024-10-05 15:55:00', 79, 300.00),
(80, '2024-10-06 10:20:00', 80, 175.50);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`ID_Compra`),
  ADD KEY `ID_Proveedor` (`ID_Proveedor`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`ID_Detalle`),
  ADD KEY `ID_Compra` (`ID_Compra`),
  ADD KEY `ID_Producto` (`ID_Producto`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`ID_Detalle`),
  ADD KEY `ID_Venta` (`ID_Venta`),
  ADD KEY `ID_Producto` (`ID_Producto`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`ID_Pago`),
  ADD KEY `ID_Proveedor` (`ID_Proveedor`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Producto`),
  ADD KEY `ID_Proveedor` (`ID_Proveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID_Proveedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ID_Venta`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `ID_Compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `ID_Detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `ID_Detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `ID_Pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ID_Proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ID_Venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedores` (`ID_Proveedor`);

--
-- Filtros para la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `detalle_compras_ibfk_1` FOREIGN KEY (`ID_Compra`) REFERENCES `compras` (`ID_Compra`),
  ADD CONSTRAINT `detalle_compras_ibfk_2` FOREIGN KEY (`ID_Producto`) REFERENCES `productos` (`ID_Producto`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`ID_Venta`) REFERENCES `ventas` (`ID_Venta`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`ID_Producto`) REFERENCES `productos` (`ID_Producto`);

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedores` (`ID_Proveedor`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedores` (`ID_Proveedor`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
