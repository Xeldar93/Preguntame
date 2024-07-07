-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 07-07-2024 a las 22:21:11
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
-- Base de datos: `preguntame`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `respuesta1` varchar(255) NOT NULL,
  `respuesta2` varchar(255) NOT NULL,
  `respuesta3` varchar(255) NOT NULL,
  `respuesta_correcta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta_correcta`) VALUES
(1, '¿Cuál es la capital de Francia?', 'Berlín', 'Madrid', 'Roma', 'París'),
(2, '¿Qué elemento químico tiene el símbolo H?', 'Helio', 'Hidrógeno', 'Hierro', 'Hidrógeno'),
(3, '¿Quién escribió \"Don Quijote de la Mancha\"?', 'Miguel de Cervantes', 'Gabriel García Márquez', 'Pablo Neruda', 'Miguel de Cervantes'),
(4, '¿Cuál es el río más largo del mundo?', 'Nilo', 'Yangtsé', 'Misisipi', 'Amazonas'),
(5, '¿Cuál es el planeta más grande del sistema solar?', 'Tierra', 'Saturno', 'Neptuno', 'Júpiter'),
(6, '¿En qué año comenzó la Segunda Guerra Mundial?', '1935', '1940', '1941', '1939'),
(7, '¿Qué país ganó la Copa del Mundo de Fútbol en 2018?', 'Brasil', 'Alemania', 'Argentina', 'Francia'),
(8, '¿Cuál es el idioma oficial de Brasil?', 'Español', 'Inglés', 'Francés', 'Portugués'),
(9, '¿Qué es el \"Aconcagua\"?', 'Un río', 'Una selva', 'Un desierto', 'Una montaña'),
(10, '¿Quién pintó la \"Mona Lisa\"?', 'Vincent van Gogh', 'Pablo Picasso', 'Claude Monet', 'Leonardo da Vinci'),
(11, '¿Cuál es el océano más grande del mundo?', 'Atlántico', 'Ártico', 'Índico', 'Pacífico'),
(12, '¿Qué país tiene la mayor población del mundo?', 'India', 'Estados Unidos', 'Indonesia', 'China'),
(13, '¿Cuál es el metal más abundante en la Tierra?', 'Hierro', 'Cobre', 'Plata', 'Aluminio'),
(14, '¿Quién es conocido como el \"Padre de la Física Moderna\"?', 'Nikola Tesla', 'Isaac Newton', 'Galileo Galilei', 'Albert Einstein'),
(15, '¿Qué órgano del cuerpo humano produce la insulina?', 'Hígado', 'Estómago', 'Riñones', 'Páncreas'),
(16, '¿Cuál es el animal terrestre más rápido?', 'León', 'Antílope', 'Tigre', 'Guepardo'),
(17, '¿En qué continente se encuentra el desierto del Sahara?', 'Asia', 'América', 'Oceanía', 'África'),
(18, '¿Qué invento es atribuido a Thomas Edison?', 'Teléfono', 'Gramófono', 'Radio', 'Bombilla'),
(19, '¿Cuál es el libro más vendido del mundo?', 'El Quijote', 'Harry Potter', 'El Señor de los Anillos', 'La Biblia'),
(20, '¿Qué gas es necesario para la respiración humana?', 'Dióxido de carbono', 'Nitrógeno', 'Argón', 'Oxígeno'),
(21, '¿Cuál es el país más pequeño del mundo?', 'Mónaco', 'Liechtenstein', 'San Marino', 'Vaticano'),
(22, '¿Cuál es el elemento más abundante en el universo?', 'Helio', 'Oxígeno', 'Carbono', 'Hidrógeno'),
(23, '¿Quién pintó el \"Guernica\"?', 'Salvador Dalí', 'Francisco Goya', 'Joan Miró', 'Pablo Picasso'),
(24, '¿Qué país tiene forma de bota?', 'España', 'Grecia', 'Portugal', 'Italia'),
(25, '¿Qué instrumento mide los terremotos?', 'Barómetro', 'Anemómetro', 'Higrómetro', 'Sismógrafo'),
(26, '¿Cuál es el idioma más hablado en el mundo?', 'Español', 'Inglés', 'Hindú', 'Chino Mandarín'),
(27, '¿Quién escribió \"Romeo y Julieta\"?', 'Charles Dickens', 'Jane Austen', 'Mark Twain', 'William Shakespeare'),
(28, '¿Qué vitamina es producida por el cuerpo cuando la piel está expuesta al sol?', 'Vitamina C', 'Vitamina B12', 'Vitamina K', 'Vitamina D'),
(29, '¿Qué país es conocido como la tierra del sol naciente?', 'China', 'Corea del Sur', 'Tailandia', 'Japón'),
(30, '¿Cuál es el órgano más grande del cuerpo humano?', 'Hígado', 'Pulmón', 'Cerebro', 'Piel'),
(31, '¿Qué gas se usa para inflar globos que flotan?', 'Oxígeno', 'Hidrógeno', 'Nitrógeno', 'Helio'),
(32, '¿Qué río pasa por Londres?', 'Sena', 'Rin', 'Danubio', 'Támesis'),
(33, '¿Cuál es el continente más frío?', 'Europa', 'América', 'Asia', 'Antártida'),
(34, '¿Qué es el \"Día D\"?', 'Batalla de Midway', 'Ataque a Pearl Harbor', 'Fin de la Segunda Guerra Mundial', 'Desembarco en Normandía'),
(35, '¿Cuál es la capital de Australia?', 'Sídney', 'Melbourne', 'Perth', 'Canberra'),
(36, '¿Quién fue el primer hombre en el espacio?', 'Neil Armstrong', 'John Glenn', 'Buzz Aldrin', 'Yuri Gagarin'),
(37, '¿Cuál es el océano más pequeño del mundo?', 'Atlántico', 'Índico', 'Pacífico', 'Ártico'),
(38, '¿En qué año se hundió el Titanic?', '1910', '1913', '1914', '1912'),
(39, '¿Cuál es el país más grande del mundo por superficie?', 'Canadá', 'China', 'Estados Unidos', 'Rusia'),
(40, '¿Qué planeta es conocido como el \"Planeta Rojo\"?', 'Mercurio', 'Venus', 'Neptuno', 'Marte'),
(41, '¿Qué país está entre México y Canadá?', 'Brasil', 'Argentina', 'Colombia', 'Estados Unidos'),
(42, '¿Cuál es el país de origen de la pizza?', 'España', 'Grecia', 'Francia', 'Italia'),
(43, '¿Qué gas es esencial para la fotosíntesis?', 'Oxígeno', 'Nitrógeno', 'Argón', 'Dióxido de carbono'),
(44, '¿Cuál es el animal más grande del mundo?', 'Elefante', 'Jirafa', 'Tiburón blanco', 'Ballena azul'),
(45, '¿Qué país tiene la mayor cantidad de islas en el mundo?', 'Noruega', 'Filipinas', 'Indonesia', 'Suecia'),
(46, '¿Cuál es el deporte más popular del mundo?', 'Baloncesto', 'Críquet', 'Tenis', 'Fútbol'),
(47, '¿Qué metal es líquido a temperatura ambiente?', 'Oro', 'Plomo', 'Sodio', 'Mercurio'),
(48, '¿Qué país es famoso por el tango?', 'Chile', 'Paraguay', 'Uruguay', 'Argentina'),
(49, '¿Cuál es el país con la mayor producción de café del mundo?', 'Colombia', 'Vietnam', 'Perú', 'Brasil'),
(50, '¿Qué planeta es conocido como el \"Planeta Azul\"?', 'Marte', 'Venus', 'Júpiter', 'Tierra'),
(51, '¿Quién es el autor de \"Cien años de soledad\"?', 'Jorge Luis Borges', 'Pablo Neruda', 'Isabel Allende', 'Gabriel García Márquez'),
(52, '¿Qué océano está al oeste de África?', 'Pacífico', 'Ártico', 'Índico', 'Atlántico'),
(53, '¿Cuál es el único mamífero capaz de volar?', 'Murciélago', 'Paloma', 'Pingüino', 'Murciélago'),
(54, '¿Cuál es el metal más caro del mundo?', 'Oro', 'Plata', 'Cobre', 'Rodio'),
(55, '¿Qué tipo de animal es la ballena?', 'Pez', 'Reptil', 'Ave', 'Mamífero'),
(56, '¿Cuál es la lengua más antigua del mundo aún en uso?', 'Latín', 'Griego', 'Hebreo', 'Chino'),
(57, '¿Qué gas es el más ligero?', 'Oxígeno', 'Nitrógeno', 'Helio', 'Hidrógeno'),
(58, '¿Cuál es la capital de Canadá?', 'Toronto', 'Vancouver', 'Montreal', 'Ottawa'),
(59, '¿En qué año fue la caída del Muro de Berlín?', '1987', '1990', '1991', '1989'),
(60, '¿Cuál es el animal nacional de Australia?', 'Koala', 'Canguro', 'Dingo', 'Canguro'),
(61, '¿Qué país es conocido por sus tulipanes y molinos de viento?', 'Alemania', 'Bélgica', 'Francia', 'Países Bajos'),
(62, '¿Cuál es el río más largo de África?', 'Limpopo', 'Congo', 'Nilo', 'Nilo'),
(63, '¿Qué tipo de animal es el delfín?', 'Pez', 'Reptil', 'Ave', 'Mamífero'),
(64, '¿En qué país se encuentra el Taj Mahal?', 'Nepal', 'Sri Lanka', 'Pakistán', 'India'),
(65, '¿Quién pintó \"La Última Cena\"?', 'Vincent van Gogh', 'Pablo Picasso', 'Salvador Dalí', 'Leonardo da Vinci'),
(66, '¿Cuál es la moneda oficial de Japón?', 'Yuan', 'Won', 'Dólar', 'Yen'),
(67, '¿Cuál es la montaña más alta del mundo?', 'K2', 'Kangchenjunga', 'Lhotse', 'Everest'),
(68, '¿Qué país tiene la mayor cantidad de población musulmana?', 'Arabia Saudita', 'Pakistán', 'Irán', 'Indonesia'),
(69, '¿Qué tipo de animal es la rana?', 'Mamífero', 'Ave', 'Reptil', 'Anfibio'),
(70, '¿Quién escribió \"La Odisea\"?', 'Virgilio', 'Sófocles', 'Eurípides', 'Homero'),
(71, '¿Qué país es conocido como la tierra de los faraones?', 'Jordania', 'Irak', 'Siria', 'Egipto'),
(72, '¿Cuál es la capital de Rusia?', 'San Petersburgo', 'Sochi', 'Novosibirsk', 'Moscú'),
(73, '¿Qué país ganó la primera Copa Mundial de Fútbol en 1930?', 'Argentina', 'Brasil', 'Italia', 'Uruguay'),
(74, '¿Cuál es el nombre del río que pasa por París?', 'Danubio', 'Támesis', 'Rin', 'Sena'),
(75, '¿Cuál es el segundo planeta más cercano al sol?', 'Mercurio', 'Tierra', 'Marte', 'Venus'),
(76, '¿Qué país es famoso por la Torre Eiffel?', 'España', 'Italia', 'Portugal', 'Francia'),
(77, '¿Quién fue el primer presidente de Estados Unidos?', 'Thomas Jefferson', 'John Adams', 'James Madison', 'George Washington'),
(78, '¿Cuál es el órgano más pequeño del cuerpo humano?', 'Corazón', 'Riñón', 'Pulmón', 'Pineal'),
(79, '¿Qué país es conocido por sus chocolates y relojes?', 'Italia', 'Austria', 'Francia', 'Suiza'),
(80, '¿Cuál es la lengua oficial de Irán?', 'Árabe', 'Turco', 'Kurdo', 'Persa'),
(81, '¿Qué tipo de animal es el tiburón?', 'Mamífero', 'Reptil', 'Ave', 'Pez'),
(82, '¿Cuál es la capital de Tailandia?', 'Hanoi', 'Kuala Lumpur', 'Rangún', 'Bangkok'),
(83, '¿En qué año llegó el hombre a la luna?', '1967', '1970', '1972', '1969'),
(84, '¿Qué es un \"tsunami\"?', 'Tornado', 'Huracán', 'Erupción volcánica', 'Maremoto'),
(85, '¿Qué país es conocido por la Gran Muralla?', 'Corea del Norte', 'India', 'Japón', 'China'),
(86, '¿Cuál es la capital de México?', 'Guadalajara', 'Monterrey', 'Puebla', 'Ciudad de México'),
(87, '¿Qué país se conoce como el \"país del hielo y el fuego\"?', 'Suecia', 'Noruega', 'Finlandia', 'Islandia'),
(88, '¿Cuál es el continente más grande?', 'África', 'Europa', 'América', 'Asia'),
(89, '¿Qué país tiene más pirámides que Egipto?', 'Perú', 'India', 'China', 'Sudán'),
(90, '¿Cuál es el elemento más abundante en la corteza terrestre?', 'Calcio', 'Sodio', 'Hierro', 'Oxígeno'),
(91, '¿Qué país es famoso por la ópera de Sydney?', 'Nueva Zelanda', 'Canadá', 'Sudáfrica', 'Australia'),
(92, '¿Cuál es la moneda oficial de Suiza?', 'Euro', 'Dólar', 'Franco francés', 'Franco suizo'),
(93, '¿Quién es conocido como el \"Padre de la Computación\"?', 'Isaac Newton', 'Albert Einstein', 'Nikola Tesla', 'Charles Babbage'),
(94, '¿Cuál es el país con mayor producción de vino?', 'Estados Unidos', 'Australia', 'España', 'Italia'),
(95, '¿Qué país tiene la mayor cantidad de premios Nobel?', 'Alemania', 'Reino Unido', 'Rusia', 'Estados Unidos'),
(96, '¿Qué animal es conocido como el \"rey de la selva\"?', 'Elefante', 'Tigre', 'Gorila', 'León'),
(97, '¿Cuál es el río más largo de Europa?', 'Seine', 'Rin', 'Elba', 'Volga'),
(98, '¿Cuál es el planeta más cercano al sol?', 'Venus', 'Tierra', 'Marte', 'Mercurio'),
(99, '¿Qué país es conocido por los canguros?', 'Nueva Zelanda', 'Canadá', 'Sudáfrica', 'Australia'),
(100, '¿Qué elemento tiene el símbolo \"O\"?', 'Oro', 'Osmio', 'Plata', 'Oxígeno'),
(101, '¿Cuál es la capital de Egipto?', 'Casablanca', 'Túnez', 'Trípoli', 'El Cairo'),
(102, '¿Cuál es la capital de Argentina?', 'Montevideo', 'Santiago', 'Lima', 'Buenos Aires'),
(103, '¿Qué país es conocido por sus relojes de cuco?', 'España', 'Italia', 'Francia', 'Suiza'),
(104, '¿Cuál es el desierto más grande del mundo?', 'Desierto de Kalahari', 'Desierto de Gobi', 'Desierto de Atacama', 'Desierto del Sahara'),
(105, '¿Cuál es el animal más rápido del océano?', 'Tiburón', 'Delfín', 'Ballena', 'Pez vela'),
(106, '¿Quién escribió \"La Divina Comedia\"?', 'William Shakespeare', 'Miguel de Cervantes', 'Franz Kafka', 'Dante Alighieri'),
(107, '¿Qué país tiene la mayor extensión de bosques?', 'Brasil', 'Estados Unidos', 'Indonesia', 'Rusia'),
(108, '¿Cuál es la lengua más hablada en el mundo?', 'Español', 'Inglés', 'Hindú', 'Chino Mandarín'),
(109, '¿Qué planeta es conocido por sus anillos?', 'Marte', 'Urano', 'Neptuno', 'Saturno'),
(110, '¿Qué país es famoso por la samba y el carnaval?', 'Argentina', 'Colombia', 'Perú', 'Brasil'),
(111, '¿Cuál es el elemento más duro conocido?', 'Hierro', 'Oro', 'Plata', 'Diamante'),
(112, '¿Cuál es el país más grande de América del Sur?', 'Argentina', 'Perú', 'Colombia', 'Brasil'),
(113, '¿Qué país es conocido por el vino tinto y el tango?', 'Chile', 'Uruguay', 'Paraguay', 'Argentina'),
(114, '¿Cuál es la capital de Alemania?', 'Múnich', 'Hamburgo', 'Frankfurt', 'Berlín'),
(115, '¿Qué tipo de animal es la orca?', 'Reptil', 'Ave', 'Pez', 'Mamífero'),
(116, '¿Cuál es la capital de Portugal?', 'Oporto', 'Braga', 'Coímbra', 'Lisboa'),
(117, '¿Qué país es famoso por el kimchi?', 'Japón', 'China', 'Vietnam', 'Corea del Sur'),
(118, '¿Cuál es el lugar más seco del mundo?', 'Desierto de Kalahari', 'Desierto de Gobi', 'Desierto de Atacama', 'Desierto del Sahara'),
(119, '¿Qué es el \"Stonehenge\"?', 'Castillo', 'Iglesia', 'Catedral', 'Monumento'),
(120, '¿Cuál es la moneda oficial de India?', 'Rupia indonesia', 'Dólar australiano', 'Libra egipcia', 'Rupia india'),
(121, '¿Qué tipo de animal es el gorila?', 'Reptil', 'Ave', 'Pez', 'Mamífero'),
(122, '¿Cuál es la lengua oficial de Brasil?', 'Español', 'Inglés', 'Francés', 'Portugués'),
(123, '¿Qué país es famoso por sus castillos y dragones?', 'Escocia', 'Irlanda', 'Suecia', 'Gales'),
(124, '¿Cuál es el país más pequeño de Europa?', 'Mónaco', 'Liechtenstein', 'San Marino', 'Vaticano'),
(125, '¿Cuál es el río más largo de América del Norte?', 'Misisipi', 'Colorado', 'Bravo', 'Missouri'),
(126, '¿Qué animal es conocido como el \"rey del océano\"?', 'Ballena', 'Tiburón', 'Delfín', 'Tiburón'),
(127, '¿Cuál es el metal más abundante en la corteza terrestre?', 'Plata', 'Oro', 'Hierro', 'Aluminio'),
(128, '¿Qué país tiene la mayor cantidad de volcanes activos?', 'Italia', 'Indonesia', 'Japón', 'Estados Unidos'),
(129, '¿Qué instrumento se usa para medir la presión atmosférica?', 'Anemómetro', 'Higrómetro', 'Sismógrafo', 'Barómetro'),
(130, '¿Qué país es conocido como la tierra de los canguros?', 'Nueva Zelanda', 'Canadá', 'Sudáfrica', 'Australia'),
(131, '¿Cuál es el animal más grande del mundo?', 'Elefante', 'Jirafa', 'Tiburón blanco', 'Ballena azul'),
(132, '¿Qué país es conocido por la Gran Muralla?', 'Corea del Norte', 'India', 'Japón', 'China'),
(133, '¿Qué país es famoso por su queso y chocolate?', 'España', 'Italia', 'Francia', 'Suiza'),
(134, '¿Cuál es el país con mayor cantidad de islas en el mundo?', 'Noruega', 'Filipinas', 'Indonesia', 'Suecia'),
(135, '¿Cuál es el animal más rápido del mundo?', 'León', 'Antílope', 'Tigre', 'Guepardo'),
(136, '¿Cuál es el país más grande del mundo?', 'Canadá', 'China', 'Estados Unidos', 'Rusia'),
(137, '¿Cuál es el continente más frío?', 'Europa', 'América', 'Asia', 'Antártida'),
(138, '¿Qué país es famoso por sus tulipanes y molinos de viento?', 'Alemania', 'Bélgica', 'Francia', 'Países Bajos'),
(139, '¿Qué país tiene la mayor cantidad de premios Nobel?', 'Alemania', 'Reino Unido', 'Rusia', 'Estados Unidos'),
(140, '¿Cuál es la capital de Australia?', 'Sídney', 'Melbourne', 'Perth', 'Canberra'),
(141, '¿Cuál es el país con la mayor producción de cacao?', 'Colombia', 'Vietnam', 'Perú', 'Costa de Marfil'),
(142, '¿Qué país es conocido por el tango?', 'Chile', 'Paraguay', 'Uruguay', 'Argentina'),
(143, '¿Cuál es la capital de Canadá?', 'Toronto', 'Vancouver', 'Montreal', 'Ottawa'),
(144, '¿Cuál es el país más pequeño del mundo?', 'Mónaco', 'Liechtenstein', 'San Marino', 'Vaticano'),
(145, '¿Qué país es famoso por el sushi?', 'China', 'Corea del Sur', 'Tailandia', 'Japón'),
(146, '¿Cuál es la capital de Francia?', 'Berlín', 'Madrid', 'Roma', 'París'),
(147, '¿Cuál es el idioma oficial de Brasil?', 'Español', 'Inglés', 'Francés', 'Portugués'),
(148, '¿Qué país es conocido como la tierra del sol naciente?', 'China', 'Corea del Sur', 'Tailandia', 'Japón'),
(149, '¿Cuál es el idioma más hablado en el mundo?', 'Español', 'Inglés', 'Hindú', 'Chino Mandarín'),
(150, '¿Quién escribió \"La Odisea\"?', 'Virgilio', 'Sófocles', 'Eurípides', 'Homero'),
(151, '¿Cuál es la lengua oficial de Brasil?', 'Español', 'Inglés', 'Francés', 'Portugués'),
(152, '¿Qué país tiene la mayor cantidad de islas en el mundo?', 'Noruega', 'Filipinas', 'Indonesia', 'Suecia'),
(153, '¿Cuál es el continente más frío?', 'Europa', 'América', 'Asia', 'Antártida'),
(154, '¿Qué país es conocido por sus relojes de cuco?', 'España', 'Italia', 'Francia', 'Suiza'),
(155, '¿Cuál es el país más grande de América del Sur?', 'Argentina', 'Perú', 'Colombia', 'Brasil'),
(156, '¿Qué país es conocido por el vino tinto y el tango?', 'Chile', 'Uruguay', 'Paraguay', 'Argentina'),
(157, '¿Qué país es famoso por la samba y el carnaval?', 'Argentina', 'Colombia', 'Perú', 'Brasil'),
(158, '¿Cuál es el país con mayor producción de vino?', 'Estados Unidos', 'Australia', 'España', 'Italia'),
(159, '¿Qué tipo de animal es la orca?', 'Reptil', 'Ave', 'Pez', 'Mamífero'),
(160, '¿Cuál es la capital de Portugal?', 'Oporto', 'Braga', 'Coímbra', 'Lisboa'),
(161, '¿Qué país es famoso por el kimchi?', 'Japón', 'China', 'Vietnam', 'Corea del Sur'),
(162, '¿Qué país tiene más pirámides que Egipto?', 'Perú', 'India', 'China', 'Sudán'),
(163, '¿Qué tipo de animal es el delfín?', 'Pez', 'Reptil', 'Ave', 'Mamífero'),
(164, '¿Cuál es el país más pequeño de Europa?', 'Mónaco', 'Liechtenstein', 'San Marino', 'Vaticano'),
(165, '¿Qué país es conocido por sus castillos y dragones?', 'Escocia', 'Irlanda', 'Suecia', 'Gales'),
(166, '¿Cuál es el río más largo de América del Norte?', 'Misisipi', 'Colorado', 'Bravo', 'Missouri'),
(167, '¿Qué país tiene la mayor cantidad de volcanes activos?', 'Italia', 'Indonesia', 'Japón', 'Estados Unidos'),
(168, '¿Qué país es conocido como la tierra de los faraones?', 'Jordania', 'Irak', 'Siria', 'Egipto'),
(169, '¿Cuál es el país con la mayor producción de cacao?', 'Colombia', 'Vietnam', 'Perú', 'Costa de Marfil'),
(170, '¿Qué país es conocido por el sushi?', 'China', 'Corea del Sur', 'Tailandia', 'Japón'),
(171, '¿Qué país es famoso por sus chocolates y relojes?', 'Italia', 'Austria', 'Francia', 'Suiza'),
(172, '¿Qué tipo de animal es el tiburón?', 'Mamífero', 'Reptil', 'Ave', 'Pez'),
(173, '¿Qué país es conocido por la Gran Muralla?', 'Corea del Norte', 'India', 'Japón', 'China'),
(174, '¿Cuál es el país más pequeño del mundo?', 'Mónaco', 'Liechtenstein', 'San Marino', 'Vaticano'),
(175, '¿Qué país es famoso por sus tulipanes y molinos de viento?', 'Alemania', 'Bélgica', 'Francia', 'Países Bajos'),
(176, '¿Cuál es el animal más rápido del mundo?', 'León', 'Antílope', 'Tigre', 'Guepardo'),
(177, '¿Cuál es el país más grande del mundo?', 'Canadá', 'China', 'Estados Unidos', 'Rusia'),
(178, '¿Cuál es el continente más frío?', 'Europa', 'América', 'Asia', 'Antártida'),
(179, '¿Qué país es conocido como la tierra de los canguros?', 'Nueva Zelanda', 'Canadá', 'Sudáfrica', 'Australia'),
(180, '¿Cuál es el río más largo de América del Norte?', 'Misisipi', 'Colorado', 'Bravo', 'Missouri'),
(181, '¿Qué país tiene la mayor cantidad de volcanes activos?', 'Italia', 'Indonesia', 'Japón', 'Estados Unidos'),
(182, '¿Qué país es conocido como la tierra de los faraones?', 'Jordania', 'Irak', 'Siria', 'Egipto'),
(183, '¿Cuál es la capital de Alemania?', 'Múnich', 'Hamburgo', 'Frankfurt', 'Berlín'),
(184, '¿Qué país tiene la mayor producción de cacao?', 'Colombia', 'Vietnam', 'Perú', 'Costa de Marfil'),
(185, '¿Qué país es famoso por el sushi?', 'China', 'Corea del Sur', 'Tailandia', 'Japón'),
(186, '¿Qué país es conocido por sus chocolates y relojes?', 'Italia', 'Austria', 'Francia', 'Suiza'),
(187, '¿Qué tipo de animal es el tiburón?', 'Mamífero', 'Reptil', 'Ave', 'Pez'),
(188, '¿Qué país es conocido por la Gran Muralla?', 'Corea del Norte', 'India', 'Japón', 'China'),
(189, '¿Cuál es el país más pequeño del mundo?', 'Mónaco', 'Liechtenstein', 'San Marino', 'Vaticano'),
(190, '¿Qué país es famoso por sus tulipanes y molinos de viento?', 'Alemania', 'Bélgica', 'Francia', 'Países Bajos'),
(191, '¿Cuál es el animal más rápido del mundo?', 'León', 'Antílope', 'Tigre', 'Guepardo'),
(192, '¿Cuál es el país más grande del mundo?', 'Canadá', 'China', 'Estados Unidos', 'Rusia'),
(193, '¿Cuál es el continente más frío?', 'Europa', 'América', 'Asia', 'Antártida'),
(194, '¿Qué país es conocido como la tierra de los canguros?', 'Nueva Zelanda', 'Canadá', 'Sudáfrica', 'Australia'),
(195, '¿Cuál es el río más largo de América del Norte?', 'Misisipi', 'Colorado', 'Bravo', 'Missouri'),
(196, '¿Qué país tiene la mayor cantidad de volcanes activos?', 'Italia', 'Indonesia', 'Japón', 'Estados Unidos'),
(197, '¿Qué país es conocido como la tierra de los faraones?', 'Jordania', 'Irak', 'Siria', 'Egipto'),
(198, '¿Cuál es la capital de Alemania?', 'Múnich', 'Hamburgo', 'Frankfurt', 'Berlín'),
(199, '¿Qué país tiene la mayor producción de cacao?', 'Colombia', 'Vietnam', 'Perú', 'Costa de Marfil'),
(200, '¿Qué país es famoso por el sushi?', 'China', 'Corea del Sur', 'Tailandia', 'Japón');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
