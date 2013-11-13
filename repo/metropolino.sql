-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 01, 2012 at 10:55 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `metropolino`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_show`
--

CREATE TABLE IF NOT EXISTS `event_show` (
  `id_auto_inc` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id - Auto Increment',
  `id` int(11) NOT NULL COMMENT 'id from the xml',
  `idlocale` int(11) NOT NULL COMMENT 'id of the locale this event is associated with',
  `provincia` text NOT NULL COMMENT 'provincia where this event is being held',
  `titolo` text NOT NULL COMMENT 'title for the event',
  `descrizione` int(11) NOT NULL COMMENT 'description about the event',
  `giorno` date NOT NULL COMMENT 'date of the event',
  `entry_price` double DEFAULT NULL COMMENT 'Entry price, if any for the event',
  `status` int(11) NOT NULL COMMENT '1-ACTIVE;0-INACTIVE',
  `sold_out` int(11) NOT NULL COMMENT '1-SOLD OUT;0-AVAILABLE',
  PRIMARY KEY (`id_auto_inc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `event_show`
--

INSERT INTO `event_show` (`id_auto_inc`, `id`, `idlocale`, `provincia`, `titolo`, `descrizione`, `giorno`, `entry_price`, `status`, `sold_out`) VALUES
(1, 19360, 0, 'Bari', 'La Grande Magia di Cripton al MarabÃ¹ di Bitonto.', 0, '2012-10-31', NULL, 1, 0),
(2, 19359, 0, 'Bari', 'Pranzo di Halloween al MarabÃ¹ di Bitonto con l''illusionista Cripton', 0, '2012-10-31', NULL, 1, 0),
(3, 19357, 0, 'Milano', 'CORSO GRATUITO SULLE PROFESSIONI DELLA MUSICA', 0, '2012-10-06', NULL, 1, 0),
(4, 19356, 0, 'Milano', 'Jack Daniel''s Birthday @ CafÃ¨ 33 (MI)', 0, '2012-10-13', NULL, 1, 0),
(5, 19355, 0, 'Milano', 'Il giovedi al 33!', 0, '2012-10-04', NULL, 1, 0),
(6, 19354, 0, 'Verona', 'Drummond Grow UP with Tim Paris at Pika', 0, '2012-10-06', NULL, 1, 0),
(7, 19353, 0, 'Monza Brianza', 'MELADAILABRIANZA presenta SPACCA!', 0, '2012-10-26', NULL, 1, 0),
(8, 19352, 0, 'Viterbo', 'LADY GLENDA VOICE @ KYRA DISCO', 0, '2012-10-05', NULL, 1, 0),
(9, 19351, 0, 'Genova', 'CORSO PER AMMINISTRATORI CONDOMINIALI E IMMOBILIARI DI ANACI', 0, '2012-10-29', NULL, 1, 0),
(10, 19350, 0, 'Milano', 'ONEWAY @MARTIN P', 0, '2012-10-06', NULL, 1, 0),
(11, 19349, 0, 'Taranto', 'Fabrizio Corona - DJ Maurizio MacrÃ¬ @FACOLA FUN SAB 6 OTTOBRE', 0, '2012-10-06', NULL, 1, 0),
(12, 19348, 0, 'Cuneo', '21Â° Edizione "LA CASTAGNA GARESSINA"', 0, '2012-10-07', NULL, 1, 0),
(13, 19347, 0, 'Rimini', 'Official 27 10 2012 CoCoRiCÃ² 100% DJ RALF + HOTEL + PREVENDITE + TAVOLI ', 0, '2012-10-27', NULL, 1, 0),
(14, 19343, 0, 'Genova', 'le inaugurazioni ovale ed il concorso letterario nazionale', 0, '2012-10-13', NULL, 1, 0),
(15, 19342, 0, 'Genova', 'la musica all''expo'' di rossiglione', 0, '2012-10-05', NULL, 1, 0),
(16, 19341, 0, 'Genova', 'mandolin man al bar grimaldi', 0, '2012-10-06', NULL, 1, 0),
(17, 19340, 0, 'Genova', 'INAUGRA L''ESTORIL DISCO STAGIONE INVERNALE', 0, '2012-10-05', NULL, 1, 0),
(18, 19339, 0, 'Genova', 'INAUGRA L''ESTORIL DISCO STAGIONE INVERNALE', 0, '2012-10-05', NULL, 1, 0),
(19, 19338, 0, 'Genova', 'silvano delgado fa ballar genova!', 0, '2012-10-12', NULL, 1, 0),
(20, 19337, 0, 'Genova', 'silvano delgado fa ballar genova!', 0, '2012-10-12', NULL, 1, 0),
(21, 19336, 0, 'Rimini', 'Official 20 10 2012 CoCoRiCÃ² RICCIONE PLANETARY ASSAULT SYSTEMS + FABRIZIO MAURIZI + PREVENDITE HOTEL TAVOLI ', 0, '2012-10-20', NULL, 1, 0),
(22, 19334, 0, 'Varese', 'INAUGURAZIONE MOTEL *REVIVAL @ LOFT CAFE'' (VA)', 0, '2012-10-05', NULL, 1, 0),
(23, 19333, 0, 'Milano', 'SERATA OPEN BAR con tributo AC/DC @ LAND OF LIVE (MI)', 0, '2012-10-05', NULL, 1, 0),
(24, 19332, 0, 'Milano', 'TRIBUTO VASCO ROSSI con ASILO REPUBLIC @ LAND OF LIVE (MI)', 0, '2012-10-06', NULL, 1, 0),
(25, 19328, 0, 'Napoli', 'SORRENTO. SABATO 6 OTTOBRE FAUNO NOTTE CLUB PRESENTS: QI SHOW!', 0, '2012-10-06', NULL, 1, 0),
(26, 19327, 0, 'Bergamo', 'JUICE Club pres. **THUGFUCKER (USA, LIFE AND DEATH Rec.)** / GRATIS donna tutta la notte!', 0, '2012-10-05', NULL, 1, 0),
(27, 19326, 0, 'Monza Brianza', 'Le Nostre Nozze! Il giorno piÃ¹ bello della Vostra vita...', 0, '2012-10-14', NULL, 1, 0),
(28, 19325, 0, 'Padova', 'AW LAB - 2 Guys in Venice - Party', 0, '2012-10-06', NULL, 1, 0),
(29, 19324, 0, 'Genova', 'SABATO 6 OTTOBRE 2012 APERITIVO MUSICALE CON IL GRUPPO DI BRUNO CHELI ', 0, '2012-10-06', NULL, 1, 0),
(30, 19323, 0, 'Perugia', 'stayrebel stayqueer', 0, '2012-10-06', NULL, 1, 0),
(31, 19321, 0, 'Bari', 'Eurochocolate Perugia - Pullman da Bari e Province', 0, '2012-10-28', NULL, 1, 0),
(32, 19320, 0, 'Como', 'Cena - Concerto: Evergreen jazz trio @ La Vignetta di CERNOBBIO', 0, '2012-10-05', NULL, 1, 0),
(33, 19318, 0, 'Avellino', 'INAUGURAZIONE NOVECENTO DISCO/PUB', 900, '2012-10-06', NULL, 1, 0),
(34, 19317, 0, 'Avellino', 'INAUGURAZIONE NOVECENTO DISCO/PUB', 900, '2012-10-06', NULL, 1, 0),
(35, 19316, 0, 'Livorno', 'Celle con vista di riccardo del fa', 0, '2012-10-13', NULL, 1, 0),
(36, 19315, 0, 'Lodi', 'Halloween party night evento tuning ', 0, '2012-10-27', NULL, 1, 0),
(37, 19314, 0, 'Padova', '4 CLUB w/A MADE UP SOUND', 510, '2012-10-05', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE IF NOT EXISTS `followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id- Auto Increment',
  `follower_type` int(11) NOT NULL COMMENT 'Reference from type table, to know the type of the follower',
  `follower_id` int(11) NOT NULL COMMENT 'id of the follower',
  `followee_type` int(11) NOT NULL COMMENT 'Reference form the type table, to know the type of the followee',
  `followee_id` int(11) NOT NULL COMMENT 'id of the followee',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id - Auto Increment',
  `image_type` int(11) NOT NULL COMMENT 'Reference from type table, to know what type of image it is',
  `image_for_id` int(11) NOT NULL COMMENT 'Id of the things associated with this image. It can be the image for the user, the local or for an event/show',
  `width` int(11) NOT NULL COMMENT 'width of the image',
  `height` int(11) NOT NULL COMMENT 'height of the image',
  `url` text NOT NULL COMMENT 'complete url to image location',
  `alt` text NOT NULL COMMENT 'alternate text to be displayed if image is not found',
  `description` text NOT NULL COMMENT 'description about the image',
  `status` int(11) NOT NULL COMMENT 'status:1-Active, 0-Inactive/deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `instant_messages`
--

CREATE TABLE IF NOT EXISTS `instant_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id - Auto Increment',
  `sent_type` int(11) NOT NULL COMMENT 'Reference from the type table, to know who sent the message',
  `sent_id` int(11) NOT NULL COMMENT 'id of the sender',
  `message` text NOT NULL COMMENT 'Actual Message',
  `receiver_type` int(11) NOT NULL COMMENT 'Reference from the type table, to know whom the message is being sent',
  `receiver_id` int(11) NOT NULL COMMENT 'id of the receiver',
  `date_time_of_sending` datetime NOT NULL COMMENT 'date & time of sending the message',
  `status` int(11) NOT NULL COMMENT 'status:1-active,0-Inactive/Deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mt_locali`
--

CREATE TABLE IF NOT EXISTS `mt_locali` (
  `Id_auto_inc` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `localita` varchar(35) NOT NULL,
  `provincia` int(11) NOT NULL,
  `indirizzo` text NOT NULL,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  `telefono` text NOT NULL,
  `fax` text NOT NULL,
  `cellulare` text NOT NULL,
  `categoria` text NOT NULL,
  `home_page` varchar(5) NOT NULL DEFAULT 'no',
  `Registrato` date NOT NULL DEFAULT '0000-00-00',
  `country` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-ACTIVE;0-INACTIVE',
  PRIMARY KEY (`Id_auto_inc`),
  UNIQUE KEY `ID` (`Id_auto_inc`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `mt_locali`
--

INSERT INTO `mt_locali` (`Id_auto_inc`, `id`, `name`, `username`, `email`, `localita`, `provincia`, `indirizzo`, `latitude`, `longitude`, `telefono`, `fax`, `cellulare`, `categoria`, `home_page`, `Registrato`, `country`, `status`) VALUES
(1, 18830, 'Itouke', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Giovanni Pieri Luigi da Palestrina, 9', NULL, NULL, '0284571126', '', '', 'Consigliati', '', '2012-10-04', ' Italy ', 1),
(2, 18829, 'Corsia del Giardino', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Alessandro Manzoni, 16', NULL, NULL, '0284571126', '', '', 'Consigliati', '', '2012-10-04', ' Italy ', 1),
(3, 18828, 'Al Mercante', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Piazza dei Mercanti, 17', NULL, NULL, '0284571126', '', '', 'Consigliati', '', '2012-10-04', ' Italy ', 1),
(4, 18826, 'DLQ - Dietro Le Quinte', 'a.gavazzi@discotechebrescia.it', 'a.gavazzi@discotechebrescia.it', 'Brescia', 0, 'via Stretta 175', NULL, NULL, '349.46.25.654', '', '349.46.25.654', 'Consigliati', '', '2021-01-01', ' Italy ', 1),
(5, 18825, 'No Name Dance - Dinner', 'a.gavazzi@discotechebrescia.it', 'a.gavazzi@discotechebrescia.it', 'Lonato del Garda', 0, 'Via Lavagnone, 13', NULL, NULL, '349.46.25.654', '', '349.46.25.654', 'Consigliati', '', '2021-01-01', ' Italy ', 1),
(6, 18824, 'Al Cantoniere', 'cantoniere.birreria@gmail.com', 'cantoniere.birreria@gmail.com', 'Trebaseleghe', 0, 'Via Ronchi, 76 ', NULL, NULL, '049.9387949', '', '', 'Free', '', '2012-10-03', ' Italy ', 1),
(7, 18822, 'Pizza-PiÃ¹', '', '', 'Castelletto Sopra Ticino', 0, 'Via Sempione 185', NULL, NULL, '0331/920550', '', '347/3078621', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(8, 18817, 'Deja Vu', '', '', 'Paina di Giussano', 0, 'Viale Lario, 9', NULL, NULL, '0362.311685', '', '', 'Start', '', '2002-01-01', ' Italy ', 1),
(9, 18816, 'K-Klass', 'marco.dubai@gmail.com', 'marco.dubai@gmail.com', 'Tavernerio', 0, 'Via Provinciale, 73', NULL, NULL, '377.2086525', '', '', 'Start', '', '2002-01-01', ' Italy ', 1),
(10, 18815, 'Dubai Disco - Restaurant', 'alessandro@metropolino.com', 'alessandro@metropolino.com', 'Magenta', 0, 'Via Espinasse 20', NULL, NULL, '0000000000', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(11, 18814, 'Mamita', '', '', 'Galliate (LocalitÃ  Ponteticino)', 0, 'vicino ponte del ticino direzione Turbigo, Galliate', NULL, NULL, '366 4854070', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(12, 18813, 'Hennessy', 'mangano.edoardo@hotmail.it', 'mangano.edoardo@hotmail.it', 'Torino', 0, 'Via Giuseppe Pomba 7', NULL, NULL, '011887652', '', '34563661013', 'Free', '', '2012-09-28', ' Italy ', 1),
(13, 18811, 'Marrakech CafÃ¨', 'marrakechcaffe@gmail.com', 'marrakechcaffe@gmail.com', 'Gaggiolo di Cantello', 0, 'Via Elvezia 31', NULL, NULL, '0332/417367', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(14, 18810, 'Al CafÃ¨ dal Valentin', 'gabry.marchi@hotmail.it', 'gabry.marchi@hotmail.it', 'Casale Monferrato', 0, 'C.so Valentino 98', NULL, NULL, '3473438847', '', '3473438847', 'Free', '', '2012-09-25', ' Italy ', 1),
(15, 18808, 'SkyBar', 'info@aperitivoroma.com', 'info@aperitivoroma.com', 'Roma', 0, 'Via Magna Grecia, 2 ', NULL, NULL, '0645432294', '', '3662280921', 'Consigliati', '', '2012-09-25', ' Italy ', 1),
(16, 18807, 'VILLA LUNA - CAPITONES', 'paola.lupini@gmail.com', 'paola.lupini@gmail.com', 'CITTA'' ALTA - BERGAMO', 0, 'VIA AL PIANONE ', NULL, NULL, '3289146657', '', '3', 'Free', '', '2012-09-25', ' Italy ', 1),
(17, 18805, 'Twins Club', 'marco.dubai@gmail.com', 'marco.dubai@gmail.com', 'Saronno', 0, 'Via Maestri del lavoro, 31', NULL, NULL, '', '', '', 'Start', '', '2002-01-01', ' Italy ', 1),
(18, 18804, 'CÃ  Rosa', 'ristopizzacarosa@hotmail.it', 'ristopizzacarosa@hotmail.it', 'Ceregnano', 0, 'Via Cesare Battisti, 3', NULL, NULL, '0425476878', '', '3467663196', 'Free', '', '2012-09-23', ' Italy ', 1),
(19, 18801, 'Fortezza di Sarzanello', 'info@fortezzadisarzanello.com', 'info@fortezzadisarzanello.com', 'sarzana', 0, 'via alla fortezza', NULL, NULL, '0187.622080', '', '339.4130037', 'Free', '', '2012-09-21', ' Italy ', 1),
(20, 18799, 'Emotion Club', 'marco.dubai@gmail.com', 'marco.dubai@gmail.com', 'Paderno Dugnano', 0, 'Via Tirano 14', NULL, NULL, '', '', '', 'Start', '', '2002-01-01', ' Italy ', 1),
(21, 18798, 'La Villa DjBar', 'marco.dubai@gmail.com', 'marco.dubai@gmail.com', 'Erba', 0, 'Via Milano, 24 ', NULL, NULL, '031.3338402', '', '338.2218360', 'Consigliati', '', '2012-09-18', ' Italy ', 1),
(22, 18796, 'Sotto Sopra Sexy Club', 'sottosoprasexyclub@libero.it', 'sottosoprasexyclub@libero.it', 'Varese', 0, 'Via Magenta 30', NULL, NULL, '0332/288446', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(23, 18795, 'El PrestinÃ¨', 'marco.dubai@gmail.com', 'marco.dubai@gmail.com', 'Meda', 0, 'Via Indipendenza, 174', NULL, NULL, '0362.1857447', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(24, 18792, 'Fauno Notte Club', 'faunonotteclub@gmail.com', 'faunonotteclub@gmail.com', 'Sorrento', 0, 'Piazza Tasso, 13 Sorrento - NA', NULL, NULL, ' +39 081.8781021', '', '', 'Free', '', '2012-09-14', ' Italy ', 1),
(25, 18790, 'CafÃ¨ 33', 'cafe33sanlorenzo@gmail.com', 'cafe33sanlorenzo@gmail.com', 'Parabiago (MI)', 0, 'Corso Sempione, 52', NULL, NULL, '0331/551741', '', '', 'Consigliati', '', '2012-10-01', ' Italy ', 1),
(26, 18789, 'Deja Vu', '', '', 'Gallarate', 0, 'Via Mameli 2 ', NULL, NULL, '0331/1860019', '', '320/7430971', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(27, 18788, 'Celebrity Beach', '', '', 'Somma Lombardo', 0, 'Via Canottieri 6', NULL, NULL, '0331/259688', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(28, 18786, 'Mulino Beer Banti', 'mario.tanzella@gmail.com', 'mario.tanzella@gmail.com', 'Canegrate', 0, 'Via Mulino Galletto', NULL, NULL, '0331.41.03.04', '', '338.14.02.563', 'Consigliati', '', '2012-09-01', ' Italy ', 1),
(29, 18785, 'Depot Milano Club', 'info@depotmilano.com', 'info@depotmilano.com', 'Milano', 0, 'Via dei Valtorta, 19', NULL, NULL, '+39 02 28970999', '', '', 'Free', '', '2012-09-07', ' Italy ', 1),
(30, 18784, 'Bisque', 'info@bisque.it', 'info@bisque.it', 'Roma', 0, 'Via del moro 25', NULL, NULL, '065880305', '', '3476877390', 'Free', '', '2012-09-07', ' Italy ', 1),
(31, 18783, 'Alter Ego', 'danyle@tiscali.it', 'danyle@tiscali.it', 'Cagliari', 0, 'C.so V. Emanuele II n. 21', NULL, NULL, '3473596343', '', '3473596343', 'Free', '', '2012-09-07', ' Italy ', 1),
(32, 18781, 'BARAONDA', 'gbnardello@gmail.com', 'gbnardello@gmail.com', 'PARABIAGO ', 0, 'via 4 Novembre 112', NULL, NULL, '338 3915564', '', '338 3915564', 'Free', '', '2012-09-03', ' Italy ', 1),
(33, 18777, 'SirifarÃ  Ristorante Pizzeria', 'sceppac@email.it', 'sceppac@email.it', 'campobasso', 0, 'via Marconi 123', NULL, NULL, '087496921', '', '3208691367', 'Free', '', '2012-08-31', ' Italy ', 1),
(34, 18776, 'Kart 1', '', '', '', 0, '', NULL, NULL, '', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(35, 18774, 'Cantine Antica Grotta', 'info@cantineanticagrotta.com', 'info@cantineanticagrotta.com', 'Riolo Terme', 0, 'Piazza Mazzanti,2', NULL, NULL, '054674381', '', '3494593365', 'Free', '', '2012-08-29', ' Italy ', 1),
(36, 18773, 'Rock''n Roll Varese', '', '', 'Varese', 0, 'Via Tagliamento 35', NULL, NULL, '347/1482055 Alberto', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(37, 18771, 'Pepenero cocktailbar', 'Giuseppecirino84@yahoo.it', 'Giuseppecirino84@yahoo.it', 'Acireale', 0, 'Ludovigo Ariosto 29 a b c', NULL, NULL, '3486087443', '', '3486087443', 'Free', '', '2012-08-24', ' Italy ', 1),
(38, 18770, 'Birreria dei Rubinetti', 'birreriadeirubinetti@hotmail.com', 'birreriadeirubinetti@hotmail.com', 'Carignano', 0, 'via Trieste 16', NULL, NULL, '', '', '3336873901', 'Free', '', '2012-08-24', ' Italy ', 1),
(39, 18767, 'Tenuta Montemagno', 'marco@metropolino.com', 'marco@metropolino.com', 'Montemagno', 0, 'Via Cascina Valfossato n. 9', NULL, NULL, '0141/63624', '', '', 'Consigliati', '', '2012-09-01', ' Italy ', 1),
(40, 18765, 'B-B Ca'' DolceChiara', 'chiara555@email.it', 'chiara555@email.it', 'Gremiasco', 0, 'via porta 2', NULL, NULL, '3406235611', '', '3406235611', 'Free', '', '2012-08-12', ' Italy ', 1),
(41, 18763, 'John Mitchel Pub', 'john.mitchel.pub@hotmail.it', 'john.mitchel.pub@hotmail.it', 'Usc. Tang. Licola', 0, 'Via S.Nullo 13', NULL, NULL, '0818049423', '0818049423', '3892673067', 'Free', '', '2012-08-07', ' Italy ', 1),
(42, 18760, 'Larchet Club', '', 'alessandro@metropolino.com', 'Brezzo di Bedero(Luino)', 0, 'Via Portovaltravaglia 41', NULL, NULL, '0332/531760', '', '349/1223353', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(43, 18759, 'Pepenero', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Viale Umbria, 11', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-08-02', ' Italy ', 1),
(44, 18758, 'Osteria Pugliese Strippoli', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Alessandro Tadino, 5', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-08-02', ' Italy ', 1),
(45, 18757, 'Osteria Nuovo Convento', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Giovanni Ricordi, 8', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(46, 18756, 'Olio Pomodoro Basilico', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Filippo Argelati, 12', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-08-02', ' Italy ', 1),
(47, 18755, 'Oficina do Sabor', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Gaetana Agnesi, 17', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-08-02', ' Italy ', 1),
(48, 18754, 'NamastÃ¨', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Daniele Ricciarelli, 12', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-08-02', ' Italy ', 1),
(49, 18753, 'Nabucco', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Fiori Chiari, 10', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-08-02', ' Italy ', 1),
(50, 18752, 'Mucca Capricciosa', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Cesare Beruto, 13', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-08-02', ' Italy ', 1),
(51, 18751, 'Arena', 'marco.dubai@gmail.com', 'marco.dubai@gmail.com', 'Mendrisio (Svizzera)', 0, 'Via Angelo Maspoli 24', NULL, NULL, '+41 793344515', '', '+41 793344515', 'Consigliati', '', '2012-08-02', ' Italy ', 1),
(52, 18750, 'Millenovecento58', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Carlo Amoretti, 94', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-08-01', ' Italy ', 1),
(53, 18749, 'Mib', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Gaetano Negri, 10', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-08-01', ' Italy ', 1),
(54, 18748, 'Manhattan', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Piazza Erculea, 9', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-08-01', ' Italy ', 1),
(55, 18747, 'L''Osteria di Brera', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Fiori Chiari, 8', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-08-01', ' Italy ', 1),
(56, 18746, 'L''Isola del Gusto', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Angelo della Pergola, 4', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-08-01', ' Italy ', 1),
(57, 18745, 'Agriturismo-La Casina dei Nonni', 'agriedag@gmail.com', 'agriedag@gmail.com', 'Oria', 0, 'Circ.ne Oria/Cellino Km,0,800 ', NULL, NULL, '347.2599477', '', '347.2599477', 'Free', '', '2012-07-31', ' Italy ', 1),
(58, 18742, 'Cristal Pub', 'f.pedrinazzi@libero.it', 'f.pedrinazzi@libero.it', 'Sozzago', 0, 'Via XXV Aprile 12', NULL, NULL, '3487649582', '', '3458421293', 'Free', '', '2012-07-28', ' Italy ', 1),
(59, 18740, 'Made Como', 'marco.dubai@gmail.com', 'marco.dubai@gmail.com', 'Como', 0, 'Via Sant'' Abbondio, 7', NULL, NULL, '', '', '', 'Free', '', '2002-01-01', ' Italy ', 1),
(60, 18739, 'Big Mama Productions', 'marco.dubai@gmail.com', 'marco.dubai@gmail.com', 'Milano', 0, '', NULL, NULL, '347.0730858', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(61, 18738, 'Leoncino Club House', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Castelfidardo, 7', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-07-24', ' Italy ', 1),
(62, 18737, 'Le Briciole', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Manfredo Camperio, 17', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-07-24', ' Italy ', 1),
(63, 18736, 'L''Assassino', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Amedei, 8', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-07-24', ' Italy ', 1),
(64, 18735, 'La Terrazza di Via Palestro', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Palestro, 2', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-07-24', ' Italy ', 1),
(65, 18734, 'La Piola', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Perugino, 18', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-07-24', ' Italy ', 1),
(66, 18733, 'Hotel Costa Azul', 'info@hotelcostaazul.it', 'info@hotelcostaazul.it', 'Balestrate', 0, 'C/da forgia ', NULL, NULL, '0918786994', '0918786994', '', 'Free', '', '2012-07-24', ' Italy ', 1),
(67, 18732, 'Jade CafÃ¨', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Palazzo Reale, 5', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-07-23', ' Italy ', 1),
(68, 18730, 'In Veranda', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Statuto, 16', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-01-01', ' Italy ', 1),
(69, 18729, 'Il Pescatore', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Calvairate, 4', NULL, NULL, '02-84571126', '', '', 'Consigliati', '', '2012-07-23', ' Italy ', 1),
(70, 18728, 'Il Coriandolo', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Dell''Orso, 1', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-23', ' Italy ', 1),
(71, 18726, 'Orange Lounge', 'info@aperitivoroma.com', 'info@aperitivoroma.com', 'Porto Cervo', 0, 'Loc. Cala Granu', NULL, NULL, '3332007272', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(72, 18725, 'Long Beach', 'info@aperitivoroma.com', 'info@aperitivoroma.com', 'Porto Rotondo', 0, 'Golfo di Marinella', NULL, NULL, '3332007272', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(73, 18724, 'Il CaffÃ¨ Ambrosiano', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Orefici, 10', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-20', ' Italy ', 1),
(74, 18723, 'I Compari', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Francesco Crispi, 2', NULL, NULL, '02-84571126', '', '', 'Start', '', '2002-01-01', ' Italy ', 1),
(75, 18722, 'Hot Meeting', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Sansovino, 33', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-20', ' Italy ', 1),
(76, 18721, 'Country', 'info@aperitivoroma.com', 'info@aperitivoroma.com', 'Porto Rotondo', 0, 'Via Ostro 13, Portorotondo (Olbia)', NULL, NULL, '', '', '3662280921', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(77, 18719, 'Tabata', 'info@aperitivoroma.com', 'info@aperitivoroma.com', 'Baja Sardinia', 0, 'Strada Provinciale SP 59 Km 15 Arzachena (OT)', NULL, NULL, '', '', '3662280921', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(78, 18717, 'Hong Kong', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Giovanni Schiaparelli, 5', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-19', ' Italy ', 1),
(79, 18716, 'Giannino', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Vittor Pisani, 6', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-19', ' Italy ', 1),
(80, 18715, 'Gattopardo', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Procaccini, 26', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-19', ' Italy ', 1),
(81, 18713, 'Farinami Colonne', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Corso di Porta Ticinese, 39', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-19', ' Italy ', 1),
(82, 18712, 'El Tekkia', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Gaudenzio Fantoli, 28', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-19', ' Italy ', 1),
(83, 18711, 'Don''Cola', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Fabio Filzi, 25', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-19', ' Italy ', 1),
(84, 18709, 'Capacabana lounge bar', 'carrozzo1983@hotmail.it', 'carrozzo1983@hotmail.it', 'castro', 0, 'viao indipendenza', NULL, NULL, '3290149596', '', '', 'Free', '', '2012-07-18', ' Italy ', 1),
(85, 18707, 'Dixieland CafÃ¨', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Corso Sempione, 76', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-18', ' Italy ', 1),
(86, 18706, 'Pizza Sprint di Costa Carmelo', 'info@pizza-sprint.it', 'info@pizza-sprint.it', 'Messina', 0, 'p.zza XXV Aprile San Licandro', NULL, NULL, '09059607', '', '3471772677', 'Free', '', '2012-07-18', ' Italy ', 1),
(87, 18705, 'Convivium', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Ponte Vetero, 21', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-18', ' Italy ', 1),
(88, 18703, 'Capoverde', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Ruggero Leoncavallo, 16', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-18', ' Italy ', 1),
(89, 18702, 'Botinero', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via San Marco, 3', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-18', ' Italy ', 1),
(90, 18701, 'BohÃ¨me', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Bollate', 0, 'Via Roma, 19', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-18', ' Italy ', 1),
(91, 18698, 'Bice', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Borgospesso, 12', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-17', ' Italy ', 1),
(92, 18697, 'Aurora', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Curtatone angolo Via Orti', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-17', ' Italy ', 1),
(93, 18696, 'Atm Bobino', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Bastioni di Porta Volta, 18/a', NULL, NULL, '02-84571126', '', '', 'Start', '', '2002-07-17', ' Italy ', 1),
(94, 18695, 'Ama.Mi', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Corso Sempione, 7', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-17', ' Italy ', 1),
(95, 18694, 'Alla Tavola Balorda', 'mauro@lenottidimilano.com', 'mauro@lenottidimilano.com', 'Milano', 0, 'Via Ugo Bassi, 21', NULL, NULL, '02-84571126', '', '', 'Start', '', '2012-07-17', ' Italy ', 1),
(96, 18691, 'predisco club', 'cartier21@live.it', 'cartier21@live.it', 'taverne di corciano', 0, 'via palazzeschi n.28', NULL, NULL, '', '', '3295679341', 'Free', '', '2012-07-14', ' Italy ', 1),
(97, 18689, 'bet-drinkcafe''', 'eurobet2012@libero.it', 'eurobet2012@libero.it', 'guagnano', 0, 'via provinciale', NULL, NULL, '0832705021', '', '3804389285', 'Free', '', '2012-07-13', ' Italy ', 1),
(98, 18686, 'Miele e peperoncino', 'annap27@alice.it', 'annap27@alice.it', 'pozzuoli', 0, 'vico dei marinai,1', NULL, NULL, '', '', '3312050998', 'Free', '', '2012-07-10', ' Italy ', 1),
(99, 18685, 'New CafÃ¨ Margarita', '', '', 'Gallarate', 0, 'Corso Sempione 65 ', NULL, NULL, '349/3129429', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(100, 18684, 'CHIC food - drink', 'gianluigi_fiorentino@yahoo.it', 'gianluigi_fiorentino@yahoo.it', 'pozzuoli', 0, 'via montenuovo licola patria, 45/a', NULL, NULL, '392 0771531', '0817671073', ' 392 0771531', 'Free', '', '2012-07-09', ' Italy ', 1),
(101, 18682, 'Bomberos', 'metropolino1@ymail.com', 'metropolino1@ymail.com', 'Milano', 0, 'via Plezzo, 16', NULL, NULL, '0287196630', '', '', 'Free', '', '2012-07-07', ' Italy ', 1),
(102, 18681, 'Rosaspinto', 'press@rosaspinto.it', 'press@rosaspinto.it', 'Milano', 0, '', NULL, NULL, '', '', '', 'Free', '', '2002-01-01', ' Italy ', 1),
(103, 18680, 'Ore 20 SkyBar', 'info@aperitivoroma.com', 'info@aperitivoroma.com', 'Roma', 0, 'Via Magna Grecia, 2', NULL, NULL, '', '', '366.2280921', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(104, 18679, 'Discoteca Sofia', 'info@aperitivoroma.com', 'info@aperitivoroma.com', 'Roma', 0, 'Largo de Martino, Foro Italico', NULL, NULL, '0645432294', '', '3662280921', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(105, 18678, 'La Tombola', 'ristorantelatombola@gmail.com', 'ristorantelatombola@gmail.com', 'S. Maria delle Mole - Marino', 0, 'V.le della Repubblica 147', NULL, NULL, '0660658463', '', '3393601077', 'Free', '', '2012-07-06', ' Italy ', 1),
(106, 18677, 'Target', 'info@aperitivoroma.com', 'info@aperitivoroma.com', 'Roma', 0, 'Via Torino, 83', NULL, NULL, '0645432294', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(107, 18676, 'Cybo', 'info@aperitivoroma.com', 'info@aperitivoroma.com', 'Roma', 0, 'Via di Tor Millina, 27 Roma', NULL, NULL, '0645432294', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(108, 18675, 'Casa 900', 'info@aperitivoroma.com', 'info@aperitivoroma.com', 'Roma', 0, 'Piazza Guglielmo Marconi, 32 Roma', NULL, NULL, '0645432294', '', '3662280921', 'Consigliati', '', '2012-07-05', ' Italy ', 1),
(109, 18674, 'Tenuta del Vecchio Mulino', 'tenutavecchiomulino@tiscali.it', 'tenutavecchiomulino@tiscali.it', 'Motta de Conti', 0, 'via delle case sparse 1', NULL, NULL, '0161780827', '0161780827', '3316538771', 'Free', '', '2012-07-05', ' Italy ', 1),
(110, 18672, 'Thank''s CafÃ¨', '', '', 'Oggiona con Santo Stefano', 0, 'Via Milano 10/12', NULL, NULL, '348/8522166-349/5345053', '', '', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(111, 18671, 'Red Nuit Carpet', 'info@aperitivoroma.com', 'info@aperitivoroma.com', 'Roma', 0, 'Viale del Galoppatoio (villa Borghese)', NULL, NULL, '0645432294', '', '3662280921', 'Consigliati', '', '2012-07-04', ' Italy ', 1),
(112, 18670, 'Vista Club', 'info@aperitivoroma.com', 'info@aperitivoroma.com', 'Roma', 0, 'Via di San Gregorio', NULL, NULL, '0645432294', '', '3662280921', 'Consigliati', '', '2002-01-01', ' Italy ', 1),
(113, 18668, 'Coco''s', 'coco_s@hotmail.it', 'coco_s@hotmail.it', 'Vitulazio', 0, 'LocalitÃ  Miceli', NULL, NULL, '3276741320', '', '3200417595', 'Free', '', '2012-07-01', ' Italy ', 1),
(114, 18667, 'il miglio', 'alberiodavide@hotmail.it', 'alberiodavide@hotmail.it', 'varese', 0, 'sanvito silvestro 105', NULL, NULL, '', '', '3487023167', 'Free', '', '2012-07-01', ' Italy ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mt_profililocali`
--

CREATE TABLE IF NOT EXISTS `mt_profililocali` (
  `id_auto_inc` int(11) NOT NULL AUTO_INCREMENT,
  `IDlocale` int(11) NOT NULL,
  `specialita` text,
  `descrizione` text,
  `clientela` text,
  `homepage` text,
  `status` int(11) NOT NULL COMMENT '1-ACTIVE;0-INACTIVE',
  PRIMARY KEY (`id_auto_inc`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `mt_profililocali`
--

INSERT INTO `mt_profililocali` (`id_auto_inc`, `IDlocale`, `specialita`, `descrizione`, `clientela`, `homepage`, `status`) VALUES
(1, 18830, '', 'In zona Loreto, il ristorante giapponeseItoukediMilanodi Via Giovanni Pier Luigi da Palestrina 9. Un ristorante orientale, curato ed accogliente, disponibile sia per pranzo che per cena, che dispone di due sale interne: una principale ed una, piÃ¹ piccola, intima e riservata per un totale di 150 posti a sedere! Oltre alle sale interne c''Ã¨ uno splendido spazio in giardino, ideale per le serate in estivo. La cucina propone tantissime specialitÃ  giapponesi -hellip; oltre a sushi e sashimi, vi sono anche zuppe, insalate, diverse varietÃ  di roll e tanti altri piatti caldi che non si trovano in tutti i giapponesi della cittÃ . Il tutto con la formula all you can eat, tanto cara agli orientali e sempre piÃ¹ diffusa nelle grandi cittÃ  come Milano. Una carta del menÃ¹ dalla quale Ã¨ possibile ordinare tutte le portate che si desiderano ad un prezzo fisso! Basta non lasciare niente nel piatto! Cucina aperta fino alle ore 00.00', '', '', 1),
(2, 18829, '', 'Il Corsia del Giardino, ristorante e bistrot, si trova a Milano in galleria di Via Manzoni 16. Corsia del Giardino come l''antico nome della stessa galleria, per una location che nasce affacciata sul Giardino del Museo di Poldi Pezzoli. Il bistrot si estende per circa 200 metri quadri, tutti molto luminosi, che negli interni sono dominati dalla tonalitÃ  del verde e del marrone, proprio per richiamare il tema del giardino. In totale vi sono circa 50 posti a sedere. La proposta in cucina Ã¨ quella di piatti semplici ma di qualitÃ : dalla colazione (dalle ore 07.00 alle ore 12.00) con dolci di pasticceria artigianale o piatti piÃ¹ internazionali come uova o yogurt crumble; al pranzo (dalle ore 12.00 alle ore 15.00) in cui viene proposto un menÃ¹ semplice e veloce durante i giorni della settimana con piatti sempre diversi, ed un menÃ¹ piÃ¹ ricco per il pranzo domenicale; all''aperitivo servito con finger food caldi e freddi ogni pomeriggio dalle ore 18.00 alle ore 21.00. Il bistrot Corsia del Giardino Ã¨ aperto sette giorni su sette.', '', '', 1),
(3, 18828, '', 'Il ristoranteAl Mercantesi trova in zona Duomo aMilano, in Piazza Mercanti 17. Una struttura, quella del ristorante al Mercante, ospitata nelle sale del Palazzo quattrocentesco "Casa dei Panigarola": un ristorante di due sale disposte su due livelli, con circa 120 posti a sedere! Dalla sala superiore, la vista Ã¨ direttamente sul Duomo! Durante le belle stagioni, tra ombrelloni e fioriere, viene allestito lo spazio all''aperto del ristorante, con altri 80 posti a sedere. Cosa si mangia in questo ristorante del centro di Milano? Chiaramente i migliori piatti della tradizione culinaria italiana e meneghina! La filosofia degli chef vuole unire tradizione e innovazione -hellip; e quindi gusti nuovi realizzati a partire da -ldquo;semplici-rdquo; specialitÃ  quali risotto alla milanese, polente, cotolette e brasati. Cantina di qualitÃ  ed ampia selezione di dessert completano l''offerta! Il ristorante Ã¨ aperto sia a mezzogiorno che a cena sei giorni su sette, ed il giorno di riposo Ã¨ la domenica! Il ristorante Al Mercante Ã¨ anche ideale per occasioni o esigenze particolari, come pranzi o cene di lavoro e ricorrenze. Cucina aperta fino alle ore 22.30', '', '', 1),
(4, 18826, '', 'PER INFO E PRENOTAZIONI ALLA DISCOTECA DLQ - DIETRO ALLE QUINTE, CONTATTARE: Alessandro 349.46.25.654 oppure a.gavazzi@discotechebrescia.it Uno dei locali di tendenza di Brescia e Provincia: Dietro Le Quinte, meglio conosciuto nell''acronimo DLQ , Ã¨ una discoteca animata e vivace, che attira non solo per l''ambiente minimal chic, ma anche perchÃ¨ qui trovi tutta Brescia!', '', '', 1),
(5, 18825, '', 'Per Info, liste - Prenotazioni tavoli alla discoteca No Name Dinner - Dance interzona Lonato-Desenzano del Garda, Brescia, contattare: Alessandro al 349.46.25.654 oppure a.gavazzi@discotechebrescia.it No Name Club Dinner - Dance a Lonato del Garda, Brescia (Ex discoteca fura look club) dalle h 23,00 alle h 04,00 Discoteca No Name Club Dinner - Dance a Lonato del Garda, Brescia. Dalle ceneri della ex discoteca Fura, nasce No Name, nuovo discorestaurant del lago di Garda, per le tue cene e serate in discoteca... - we are coming - una nuova storia - una nuova stagione Mese di apertura previsto: dicembre 2012 No NameClub Ã¨ una discoteca-ristorante di nuova generazione, lontana anni luce dagli eccessi di oggi e allo stesso tempo perfetta per serate di spensieratezza fra amici. Ogni sera la discoteca No Name Club propone un programma diverso. Aperto ogni weekend, No Name Club di Desenzano del Garda, il venerdÃ¬ sera propone live music e sonoritÃ  anni ''80 e ''90. -Egrave; una notte da ballare e cantare. Il sabato sera invece si balla house - Commercial music, ma solo quella proposta dai protagonisti del DJ clubbing internazionale. La domenica invece va in scena il consueto party ad ingresso gratuito con musica revival ed italiana. -Egrave; una serata easy, perfetta per chiudere il weekend in bellezza. La discoteca No Name di Lonato del Garda ha giardino e ampio parcheggio;', '', '', 1),
(6, 18824, '', '', '', '', 1),
(7, 18822, ' Giropizza Pizza No Limits Compleanni Feste private Cene aziendali ', 'Pizza - Piu'' di Castelletto Sopra Ticino Ã¨ la location ideale per famiglie e compagnie numerose;A soli 12 euro cad. tutta la pizza che riesci a mangiare compreso di prima bevanda e caffÃ¨!!!!!!', 'Gli amanti della pizza in tutte le sue "salse"!!', '', 1),
(8, 18817, '', '', '', '', 1),
(9, 18816, 'Meravigliosa discoteca ad un passo da Como.', 'Torna "il Kiva" in veste riveduta e corretta, eccome.. Tante le novitÃ , dal nome del locale che rispecchia la voglia di stupire, alla programmazione che spesso ospita eventi che hanno toccato le capitali mondiali della movida, sugar daddy per dirne una... Quindi il VenrdÃ¬ ed il Sabato, K-Klass a Tavernerio vi aspetta per confezionare insieme delle serate davvero memorabili. Meravigliosi i giochi di luce e le installazioni, seconde solo alle meravigliose lounges firmate Visionnaire, giusto per non farsi mancare il meglio. Si prennuncia un anno ricco di successi per il K-Klass, da seguire!', 'Eterogenea', '', 1),
(10, 18815, ' Discoteca Ristorante ', 'Un angolo della piu''lussuriosa ed elegante cittÃ  del mondo Ã¨ stato magicamente creato in quel di Magenta a pochi KM dalla capitale del divertimento.L''atmosfera che si respira al Dubai"Disco - Restaurant"di Magenta Ã¨ quella tipica della location piu''IN della famosa location.', '', '', 1),
(11, 18814, ' Ristorante Disco Live Music Dj set ', 'Locale unico nel suo genere ,l''atmosfera Ã¨ tipica dell''america vintage anni''60;offre un''accurato e raffinato servizio di ristorazione e tutte le settimane un ricco programma di eventi', '', '', 1),
(12, 18813, '', '', '', '', 1),
(13, 18811, ' Latino americano Varese Karaoke Varese Sigarette Varese Feste private Varese Serate a tema Varese Ristorante Varese Superenalotto Varese Partite su Maxischermo 120 polllici Varese ', 'Il Marrakech si trova di fianco al C.C Carrefour di Gaggiolo a 500 metri dal confine svizzero,offre tutti i giorni un servizio completo a partire dall''alba fino a tarda serata,tutti i week end il locale Ã¨ animato da un ricco programma.', '', '', 1),
(14, 18810, '', '', '', '', 1),
(15, 18808, '', 'Lo SKY BAR rappresenta l''evoluzione notturna del Bar Ore20 che sorge al 4-deg; del palazzo COIN di San Giovanni in via Magna Grecia 2 a Roma. Locale affermato e giÃ  protagonista delle notti romane, dopo il grande successo della scorsa stagione, quest''anno il locale vestirÃ  un nuovo accattivante look. Un nuovo design e cambiamenti strutturali lo renderanno piÃ¹ accogliente e versatile. New look anche per l''aperitivo che proporrÃ  piatti piÃ¹ gustosi e sfiziosi accuratamente preparati dal nostro nuovo chef, rigorosamente serviti al tavolo accompagnati da un drink a scelta tra cocktails unici o degustando vini con ampia scelta tra le migliori cantine. Al tavolo le migliori marche di superalcolici e champagne pregiati.', 'Varia a seconda della serata', '', 1),
(16, 18807, '', '', '', '', 1),
(17, 18805, 'La discoteca di Saronno, da sempre.', 'Torna il 29 Settembre, rinnovato nella struttura e nei contenuti, quello che da anni Ã¨ il punto di riferimento per le serate danzanti nel basso varesotto. Il fu Dolce Club torna tutti i sabati con il nome di Twins Club! Artefici di questa nuova era sono alcuni tra i piÃ¹ prolifici gruppi di organizzazione eventi della zona. In attesa di tutte le news sulla discoteca Twins di Saronno, vi invitiamo a seguire su Metropolino gli happenings nella vostra cittÃ !', 'Eterogenea', '', 1),
(18, 18804, '', '', '', '', 1),
(19, 18801, '', '', '', '', 1),
(20, 18799, 'Discoteca divisa in piÃ¹ sale.', 'Torna a Paderno Dugnano unadiscoteca imponente e meravigliosa. Realizzata da uno degli architetti che ha fatto la storia dei locali in Lombardia, torna per regalare emozioni quello che Nausicaa e PeterPan Milano. Il nome? Emotion Club! Da fine ottobre. A breve tutte le news.', 'Eterogenea', '', 1),
(21, 18798, 'Una vera rivoluzione', 'Cresce l''attesa per l''apertura de "La Villa". Il nuovo locale di Erba, si definisce un DjBar, ma le etichette stanno strette a questa elegante location. La possibilitÃ  di accomodarsi ad ogni momento per un drink di qualitÃ  rende il locale un mondanissimo lounge bar, che perÃ² si prende la libertÃ  di movimentare il tutto a serata inoltrata. La clientela Ã¨ selezionata, non necessariamente adulta ma sicuramente distinta. Insomma aspettiamo di comunicare molte novitÃ  da questo locale che non vediamo l''ora di vivere.', 'Selezionata', '', 1),
(22, 18796, 'Il nuovissimo Sexy Club di Varese', 'Il Sotto Sopra Sexy Club di Varese vi aspetta dal MercoledÃ¬ al VenerdÃ¬ con: Lap Dance Varese Strip Tease Varese Addio al nubilato/celibato Varese Compleanni Varese Feste private Varese E....... ', '', '', 1),
(23, 18795, 'Panetteria, pasticceria e molto altro ancora.', 'El PrestinÃ¨ di Meda, in via Indipendenza, proprio sul confine con Seregno, Ã¨ la prova che la qualitÃ , oggi piÃ¹ che mai, Ã¨ richiesta e percepita dalla clientela d''oggi. Fin dal giorno della sua apertura, il 26 Maggio, El PrestinÃ¨ ha subito conquistato un posto nel cuore delle persone che hanno il piacere di accomodarsi in questo locale poliedrico. Non solo un moderno panificio ma una struttura ampia e luminosa per valorizzare ogni momento della giornata, dalle colazioni all''aperitivo. Come su un palco, i riflettori sono puntati sui prodotti che vengono sfornati ad ogni ora. Il laboratorio/cucina Ã¨ a vista ed il vetro domina il bancone dove sono esposte le varie specialitÃ . Tra i dolci meritano particolare attenzione le frolle e la piccola pasticceria, se vi accomodate invece tra i tavoli de El PrestinÃ¨, non assaggiare il tiramisÃ¹, logicamente fatto in casa, sarebbe un peccato mortale! Per chi invece preferisce stuzzicherie salate, consigliamo di provare gli sfilatini alle olive e la farinata, che insieme a focaccie e pizze, completano il quadro di quello che la nostra "boulangerie" italiana ha di meglio da offrire. Da Ottobre il locale prolunga la sua apertura domenicale, proponendoun super aperitivo da leccarsi i baffi. Il clima Ã¨ familiare e socievole, senza mai essere trascurato, vista l''abbondante (cosa contro tendenza) presenza di personale ai tavoli. Insomma El PrestinÃ¨ Ã¨ da provare per chi vuolegodersi ancora dei sapori autenticiin un ambiente elegante e moderno.', 'Eterogenea', '', 1),
(24, 18792, '', '', '', '', 1),
(25, 18790, 'Buon cibo, bere bene, e simpatia!', 'La location Ã¨ storica, in quanto per diversi anni il locale si chiamava Bar BÃ¨. Ora, a San Lorenzo di Parabiago (MI), c''Ã¨ il CafÃ¨ 33! Un locale curato nei minimi dettagli, con un grosso bancone, e diversi tavolini. A pranzo potrete mangiare con ottimi menÃ¹ fissi, proposti a prezzi molto competitivi (10 euro il menÃ¹ completo), e tutti con prodotti di prima qualitÃ .Alla sera, taglieri di affettato, maxi toast oltre a piadine e panini. Salumi solo di ottima qualitÃ , grazie all''esperienza dei due soci.Le serata al cafÃ¨ 33 di Parabiago (MI), sono sempre animate; da feste a tema, a ricorrenze (carnevale ed halloween richiamano persone da tutta la provincia), all''happy hour del giovedi (3 euro per biira media o cocktails), all''aperitivo della domenica. Ogni occasione Ã¨ una buona occasione per divertirsi con gli amici, e bere un buon cocktails.Ottima selezione di vini, oltre ad ampia scelta di cocktails e birre (sia alla spina che in bottiglia).', 'Amanti del mangiare e bere bene.', '', 1),
(26, 18789, 'Cocktail Lounge bar Aperitivo Gallarate', 'Un Lounge Bar accogliente ed elegante con un''atmosfera piacevole e rilassata di giorno, frizzante e magica di notte. Musica da ascolto, luci soffuse, succulento buffet e tante bollicine sono gli ingredienti del nuovo punto di ritrovo a Gallarate. DÃ©jA''- vu dove il tempo si Ã¨ fermato -hellip;-hellip; ', '', '', 1),
(27, 18788, ' Steak House Varese Pub Varese Birreria Varese Aperitivo Varese Serate Musicali Addio al celibato/nubilato Varese ', 'Celebrity beach Ã¨ il nuovo locale nel parco del Ticino, a 50 mt dalla spiaggetta di Somma Lombardo, posto ideale per godersi le giornate estive, ma esclusivo in tutte le stagioni dell'' anno, non solo per i cocktail, le birre ricercate e la steak house curata e di qualitÃ , ma anche per i continui eventi e feste organizzate con musica dal vivo, allo scopo di aggregare e far divertire compagnie di amici e coppie. Questo infatti Ã¨ la mission del Celebrity beach e del suo staff, alla ricerca continua di tutto cio'' che oggi serve a passare serate piacevoli, divertendosi per la musica, la compagnia e l ''ambiente, senza tralasciare la qualitÃ  del bar che della cucina, mantenendo sempre un targhet di prezzi molto competitivi.Venite a trovarci per un cocktail un aperitivo o una cena, siamo certi che tornerete con amici..', 'Per gli amanti del puro divertimento', '', 1),
(28, 18786, 'Birreria tipica bavarese', 'La storia birreria Beer-Banti, da settembre 2012 cambia location e cambia nome: Ã¨ diventata Mulino Beer Banti. Una location splendida ed esclusiva; i titolari hanno ridato vita al Mulino Galletto, uno degli edifici storici piÃ¹ importanti della tradizione molinatoria della zona.Il locale Ã¨ davvero bello e capiente. Si sviluppa su due piani, un piano dedicato prevalentemente alle cene, ed uno alla birreria. Inoltre un palco per i grandi concerti live. Oltre ai piatti tipici della cucina della tradizione tedesca, la grande novitÃ  Ã¨ la pizzeria, con forno a legna. Le tipologie di birra sono 8, tutte made in Germany! Birra e cibo di qualitÃ , per una serata da passare in compagnia!Un grande bier garten estivo Ã¨ in allestimento per l''estate 2013!', 'Amanti della birra di qualitÃ  e del cibo tipico bavarese, ma anche della pizza.', '', 1),
(29, 18785, '', '', 'Gay - Bisex', '', 1),
(30, 18784, '', '', '', '', 1),
(31, 18783, '', '', '', '', 1),
(32, 18781, 'birra alla spina, panini e piadine', 'Giovedi 13 Settembre Inaugurazione', 'varia', '', 1),
(33, 18777, '', '', '', '', 1),
(34, 18776, 'La grande novitÃ  del 2012,il Kartodromo 100% elettrico con 400 metri di pista Indoor!!', 'Pit Stop bar di Cassano Ã¨ un luogo dove poter organizzare tutto cio'' che hai in mente: Gare in kart con amici Feste per grandi e piccini Aperitivi Cene Eventi E.... ', '3-99 Anni', '', 1),
(35, 18774, '', '', '', '', 1),
(36, 18773, 'Per gli amanti del Rock e in generale della live music Ã¨ in arrivo direttamente a Varese !!!!', 'COMING SOON', '', '', 1),
(37, 18771, '', '', '', '', 1),
(38, 18770, '', '', '', '', 1),
(39, 18767, '', 'Leantiche mura di Montemagno parlano della storia e delle tradizioni del vero Monferrato. La sua esistenza risale al periodo napoleonico.AllaTenuta Montemagno, nulla Ã¨ lasciato al caso: le sue vigne, la cantina, le camere e i salotti. Ogni particolare Ã¨ curato nei minimi dettagli, tutto al fine didonare al visitatore un''esperienza unica e indimenticabile. La Tenuta Montemagno Ã¨un luogo creato seguendo un valore semplice ma spesso inafferrabile. Quello della bellezza.', 'Amanti della bellezza, in ogni suo lato: dal cibo, al vino, al panorama, agli arredi. Un logo fiabesco.', '', 1),
(40, 18765, '', '', '', '', 1),
(41, 18763, '', '', '', '', 1),
(42, 18760, 'Discoteca Ristorante Cocktail Bar...Lago Maggiore', 'Direttamente sul Lago Maggiore il locale piu''fashion del momento,fohhn audio per un''esperienza esclusiva,ricercati cocktail e per la tua cena in terrazzapuoi assaporare dal Cheesburger al piatto di alta cucina.. Due terrazze estive PossibilitÃ  di attracco barca ', '', '', 1),
(43, 18759, '', 'Un ristorante, una pizzeria, un lounge ed una birreria: tutto questo Ã¨ il Pepenero di Viale Umbria 11 a Milano! Disposto sullo spazio di due sale distinte, di cui una al pianterreno ed una in taverna, il ristorante Pepenero ospita fino a 90 posti a sedere: arredato in stile classico, la location si presenta accogliente ed ideale per svariate tipologie di situazioni e differenti target d''etÃ . La cucina proposta Ã¨ quella tipica italiana, con i prodotti utilizzati che vengono selezionati con grande cura: Ã¨ il caso dei salumi e formaggi, tutti di gran qualitÃ , e delle carni provenienti da allevamenti biologici o del pesce acquistato fresco, ogni giorno, al mercato ittico di Milano. Ed ecco che in menÃ¹ troverete formaggi quali pecorino toscano, sardo o romano, taleggio, asiago, caciocavallo silano, grana e parmigiano, e ancora salumi quali bresaola della Valtellina, speck dell''Alto Adige, prosciutto di Parma, salame Piacentino, mortadella di Bologna, coppa Piacentina e tanto altro. E poi c''Ã¨ la vera pizza napoletana, cotta nel forno a legna del Pepenero! Una pizza fatta con pasta a lievitazione naturale, e pizze fatte con farina di Kamut, oltre all''utilizzo di pomodoro San Marzano DOP ed olio extravergine d''oliva! Tra i servizi si segnala la presenta di un maxischermo in taverna per seguire le partite di calcio!', '', '', 1),
(44, 18758, '', 'L''Osteria Pugliese Strippoli di Milano si trova in Via Tadino 5, in una delle zone piÃ¹ centrali della cittÃ . Come si intuisce dal nome del ristorante, la cucina propone piatti della tradizione culinaria pugliese. Ed ecco allora che l''osteria di Via Tadino diventa ideale per chi avesse voglia di gustare mozzarella, stracciatella, burrata e latticini di Andria, oppure un bel piatto di orecchiette con cime di rapa -hellip; il tutto da condire con vino al calice, anch''esso proveniente dalla migliori cantine pugliesi. Solo per citare alcuni piatti ecco il pasticcio al forno, spaghetti alla Mario, Penne con verdure, lasagne, maccheroni al sugo di salsiccia, spaghetti al pomodoro fresco -hellip; mentre tra i secondi ci sono arrosto, braciola di maiale, costolette di maiale, salsiccia, fettine di manzo, punte di vitello e tanto altro. Aperto sia per il pranzo che per la cena dal lunedÃ¬ al sabato, Osteria Pugliese Strippoli dispone di due sale interne con oltre 150 posti a sedere. Questo ristorante si segnala per qualitÃ  nell''accoglienza, oltre che per l''ottima qualitÃ  dei piatti proposti. Un ristorante in stile rustico ed essenziale, ideale per un''occasione d''incontro con amici, partner o per un pranzo o una cena in famiglia. ', '', '', 1),
(45, 18757, '', 'Osteria Nuovo Convento, ristorante di Milano, si trova in Via Ricordi al civico 8, nel quartiere di CittÃ  Studi. Si tratta di un ristorante con cucina regionale sarda, specializzato nella preparazione dei piatti a base di carne. Carne ben esposta proprio subito dopo l''ingresso in sala! Il ristorante Osteria Nuovo convento dispone di due sale con un totale di 80 posti a sedere, in un ambiente accogliente e dall''atmosfera rilassata! Molto bello Ã¨ certamente il giardino esterno, con altri 80 posti a sedere, fiore all''occhiello del ristorante di Via Ricordi durante la bella stagione! Nella carta del menÃ¹ troverete antipasti, primi piatti e secondi: solo per segnalare qualche piatto ecco il risotto ai funghi porcini o ai frutti di mare, malloreddus alla campidanese o agli scampi, e poi fiorentina alla brace, tagliata di manzo della casa, carpaccio di carciofi crudi -hellip; ed infine i dolci, tra cui spiccano torta di mele della casa e tiramisÃ¹. La carta dei vini non Ã¨ particolarmente ricca, ma quelli presenti sono ben selezionati e di alta qualitÃ , ideali per accompagnare qualsiasi tipo di pasto e soddisfare ogni palato.', '', '', 1),
(46, 18756, '', 'Olio, Pomodoro e Basilico Ã¨ una delle pizzeria piÃ¹ apprezzate di zona Navigli a Milano, e si trova precisamente in Via Argelati 12. La proposta base della casa Ã¨ la pizza con formula -lsquo;all you can eat'', o detta piÃ¹ all''italiana -lsquo;giropizza''. Ad un prezzo fisso ad Olio, Pomodoro e Basilico potrete mangiare tutta la pizza che vorrete, fino a che non sarete completamente sazi. Pizza e birra a volontÃ  ad un prezzo fisso, da assaporare in un ambiente raccolto e volutamente semplice, per la felicitÃ  degli amanti di un piatto che ci invidiano in tutto il mondo. Pizza prima di tutto, ma non solo, perchÃ© Olio, Pomodoro e Basilico propone anche gustose grigliate miste di carne, da accompagnare con patatine fritte e tanto altro! Tra i servizi del ristorante si segnalano gli schermi per seguire le piÃ¹ importanti partite di cacio, cosÃ¬ da poter gustare ottima pizza, accompagnata magari da una birra, e seguire la propria squadra del cuore in TV!', '', '', 1),
(47, 18755, '', 'L''Oficina do Sabor di Milano Ã¨ un ristorante brasiliano e churrascaria situato in Via Agnesi 17!La zona Ã¨ quella di Porta Romana, e l''Oficina do Sabor Ã¨ un ristorante colorato e gradevole, con tre sale in interno per un totale di circa 90 posti a sedere. Oltre a queste c''Ã¨ una tavernette, piÃ¹ discreta e riservata per atmosfera, con zona bar e ampio bancone, ed altri 35 posti a sedere! La tavernetta Ã¨ quindi la zona lounge del locale, luogo ideale per gustare una capirinha o un altro cockitail tropicale -hellip; e se capita un po'' di buona musica tradizionale o spettacoli dal vivo! Come detto, la cucina propone churrasco brasiliano, rodizio di carne allo spiedo servito accompagnato da numerosi contorni caratteristici -hellip; e ancora tanti altri piatti tipici della cucina brasiliana, come fejoada picanha, strogonoff, vatapÃ , bobÃ² de camaraÃ², moqueca di pesce e tanto tanto altro. Certamente una proposta stuzzicante, assolutamente da provara! All''Oficina do Sabor di Milano la cucina Ã¨ curata personalmente dalla chef Natalia Costa, molto conosciuta e apprezzata nel panorama della ristorazione meneghina. Completa e ricca anche la carta dei vini, con oltre 180 etichette di vini italiani (piemontesi, veneti, lombaredi) e internazionali (vini provenienti dall''Argentina, Australia, California, Cile, Messico, Portogallo).', '', '', 1),
(48, 18754, '', 'Il ristorante NamastÃ¨, con cucina indiana e nepalese, si trova a Milano in Via Ricciarelli 12! Piccolo, intimo e riservato, il NamastÃ¨ di Milano dispone di 40 posti a sedere. Tutto Ã¨ arredato in stile etnico, tra statuette e tendaggi in arancione, e la cucina, come detto, Ã¨ quella indiana e nepalese, con una carta del menÃ¹ davvero ricca. Al NamastÃ¨ potrete gustare specialitÃ  -ldquo;tandoori-rdquo;, specialitÃ  al curry, specialitÃ  di verdure -ldquo;tarkari-rdquo;, riso -ldquo;bhat-rdquo;, piatti a base di riso -ldquo;biryani-rdquo;, pane (roti) e dolci (guliyo). Ed ecco che troverete piatti quali -ldquo;chicken tikka-rdquo; (gustosi bocconcini di petti di pollo marinati e cotti in forno tondo), -ldquo;lamb jhalfarezi-ldquo; (agnello in salsa di pomodori, cipolle, peperoni e spezie), -ldquo;sabzi mix-rdquo; (verdure miste con curry), -ldquo;methi bhat (riso basmati con spezie nepalesi), e ancora pane speciale e tanti dolci! Il ristorante propone anche bevande tipiche, e poi birre e liquori indiani, caffÃ¨ e infusi. Aperto tutti i giorni a pranzo con menÃ¹ fissi a prezzo agevolato e per cena con menÃ¹ alla carta!', '', '', 1),
(49, 18753, '', 'Il ristorante Nabucco di Milano si trova nella suggestiva zona Brera della cittÃ , precisamente in Via Fiori Chiari 10. Tre sale interne a cui si aggiunge una tavernetta con zona fumatori, fanno del Nabucco un ristorante elegante, raffinato e spazioso capace di ospitare piÃ¹ di 10-deg; posti a sedere. L''intero ambiente si presenta in stile classico, come a voler ricordare una locanda della storica Milano. La cucina proposta Ã¨ quella tradizionale italiana, con una sezione del menÃ¹ dedicata alle specialitÃ  tipiche milanesi. L''intera carta Ã¨ composta da antipasti di terra e antipasti di mare, primi piatti a base di pasta e pasta all''uovo, zuppe, risotti, secondi piatti di carne e secondi piatti di pesce, tartare e contorni. Solo per citare alcuni dei piatti, principalmente quelli milanesi, proposti dal Nabucco ecco il vero risotto alla milanese, la polenta e gorgonzola, la trippa (busecca), la polenta e ossobuco in gremolada, la costoletta di vitello alla milanese con rucola e pomodorini -hellip; tutto da accompagnare con vini, bianchi o rossi a seconda dei gusti, di gran qualitÃ . E per concludere, c''Ã¨ sempre spazio per un dolce tassativamente preparato in casa!', '', '', 1),
(50, 18752, '', 'Mucca Capricciosa Ã¨ un ristorante e lounge situato nel quartiere CittÃ  Studi di Milano, precisamente in Via Cesare Beruto 13. La location Ã¨ aperta in tutte le ore della giornata, dal primo mattino per la colazione e fino a tarda sera per la cena. La cucina proposta Ã¨ principalmente a base di carne, tanto che si puÃ² paragonare il ristorante Mucca Capricciosa ad una vera e propria steak house. Nel menÃ¹ molto apprezzate sono infatti le grigliate, con fiorentina, costata di scottona, hamburger di chianina, tagliata a farla da padrone, e poi piatti della cucina tradizionale italiana come tagliolini con speck e zucchine e zafferano -hellip; e ancora paste fresche, focaccine e pane fatti in casa. Oltre ai piatti appena citati va detto che il Mucca Capricciosa Ã¨ anche pizzeria ed ogni venerdÃ¬ e sabato c''Ã¨ la particolare formula giropizza. Il Mucca Capricciosa di Milano dispone di due sale interne con circa 70 posti a sedere e di una tavernetta con altre 50 sedute!La cucina resta aperta ogni sera (ad esclusione del lunedÃ¬ e della domenica) fino alle ore 22.30!', '', '', 1),
(51, 18751, 'Da sempre il tempio del live di qualitÃ  e serate dance da incorniciare.', 'Quello che molti non sanno, Ã¨ che l''Arena di Mendrisio si trova solo 5 minuti oltre il confine italiano di Bizzarone e che quindi non occorre percorrere l''autostrada per raggiungere questo locale dalle specifiche uniche. Basta varcare l''entrata per rendersi conto del perchÃ¨ del nome Arena. Un vero luogo di aggregazione con suoni e luci, dove gli ospiti, gladiatori moderni, hanno modo di godere di una location unica. L''impianto Ã¨ tra i migliori di sempre, basta dire che l''Arena non necessita di nessun service audio/luci anche per eventi di rilevanza internazionale, insomma una vera esperienza sensoriale per i cultori dei locali e del clubbing, le luci e l''impianto lasciano davvero senza parole. La programmazione Ã¨ varia, il life motive Ã¨ il divertimento, per questo trovate delle divertentissime serate 90''s Nightlife ed ospiti al top, Eiffel e Gigi D''Ag per citarne qualcuno. Il rapporto qualitÃ  prezzo Ã¨ ottimo e l''organizzazione si percepisce giÃ  dal parcheggio. L''Arena di Mendrisio si trova accanto al centro commerciale Fox Town ed Ã¨ la location ideale per una serata dove si ha voglia di incontrare gente nuova e vivere le vibrazioni della musica fino al cuore. Insomma, da provare, Ã¨ piÃ¹ vicino, almeno geograficamente, all''Italia di quello che sembra.', 'Eterogenea', '', 1),
(52, 18750, '', 'Il ristorante Millenovecento58 si trova nella periferia nord ovest di Milano, precisamente in Via Carlo Amoretti 94. Un ristorante dall''atmosfera calda ed accogliente, con uno stile un po'' barocco ed un po'' contemporaneo, con le tonalitÃ  del rosso e del blu in cui si insinuano dettagli in marmo, velluto, ottone e vetro di murano. Il tutto per 70 posti a sedere, di cui 50 sistemati in sala principale e 20 nella stravagante sala prive''. Il Millenovecento58 punta non solo a proporre un ambiente raffinato, ma anche una cucina in cui la ricerca della perfezione Ã¨ la filosofia di case. Il tutto parte dalla selezione e ricerca dei migliori ingredienti, per creare un menÃ¹ dal colore mediterraneo, con specialitÃ  sia di mare che di terra. Tra i piatti che troverete come non citare i carpacci e i mix di tartare a base di tonno, spada, salmone, o gambero rosso; la selezione di crostacei al vapore, con aragosta, scampi, astice e gamberi rosa; gli antipasti caldi di mare e di terra; gli spaghetti alle vongole veraci con bottarga di muggine di Cabras o il riso con ostriche e champagne; la gran grigliata mista del mediterraneo e i filetti di angus e kobe alla griglia. Tutto da accompagnare con un vino selezionato tra le oltre 160 etichette di cui dispone il ristorante Millenovecento58 di Milano.', '', '', 1),
(53, 18749, '', 'Il Mib Restaurant CafÃ¨ di Milano si trova nella zona di Piazza Affari, precisamente in Via Gaetano Negri 10. Davvero spazioso, il ristorante dispone di 800 metri quadri, con una grande sala ristorante con zona bar, a cui si aggiungono altre tre -ldquo;scatole preziose-rdquo;, ovvero salette intime e riservate, ideali per tutte le tipologie di occasioni importanti, ognuna dominata da un colore differente: una lilla (12 persone), l''altra rossa (8 persone) e l''ultima in verde (14 persone). In tutto l''ambiente, recentemente ristrutturato, viene dedicata massima attenzione ai dettagli e alle finiture, a partire dalla scelta dei materiali, in cui predomina la presenza di vetro, ottone, cristalli velluto e legno pregiato! Il tutto impreziosito da giochi di luce appositamente studiati! Il ristorante Mib di Milano Ã¨ disponibile sia per pranzo che per cena, oltre che aperitivo: a mezzogiorno la scelta Ã¨ tra pranzo a buffet oppure menÃ¹ alla carta; dalle ore 17.30 classico buffet per l''aperitivo; e in serata scelta dal menÃ¹ alla carta con tutti i piatti regionali italiani piÃ¹ conosciuti. Un menÃ¹, quello del Mib, composto da pietanze semplici ma di gran gusto, a cui abbinare uno dei tanti vini disponibili nella cantina di casa. Va detto, per concludere, che gli spazi del Mib possono essere riservati per eventi speciali come cene di lavoro o eventi e feste private per una capienza massimo di 300/400 persone.', '', '', 1),
(54, 18748, '', 'Manhattan Ã¨ un ristorante situato nel centro storico di Milano, precisamente in Piazza Erculea 9. Si tratta di una location elegante e raffinata, disposta sullo spazio di una estesa sala interna con circa 140 posti a sedere. Piante, colonne e giochi di luce con dipinti sui muri che richiamano lo sfondo della zona in di New York, impreziosiscono l''intera atmosfera interna. In dehor sono disponibili altri 60 posti a sedere! Il Manhattan di Milano propone i piatti italiani piÃ¹ famosi ed apprezzati nella-ldquo;Grande Mela-rdquo;: una cucina regionale italiana con specialitÃ  quali la Focaccia di Recco (in diverse varietÃ  come ad esempio con salame, con crudo di Parma, al formaggio con rucola e pomodorini ecc.), il calzone ripieno con mozzarelle e diverse varietÃ  di pizza -hellip; e ancora antipasti di mare e antipasti di terra, primi piatti di mare e primi piatti di terra, secondi a base pesce e secondi a base carne, insalatone, contorni e deliziosi dessert preparati direttamente in casa. Tra i servizi si segnala lo spazio per fumatore, gli schermi per seguire le partite di calcio previste in calendario, e un parcheggio convenzionato gratuito in Via Privata Pietro Calder-oacute;n de la Barca 5, a soli 2 minuti dalla location. Tra le offerte del Manhattan c''Ã¨ la cena light, con menÃ¹ da comporre scegliendo tra -ldquo;Focaccia di Recco-rdquo; o Sfilatino Golosone-rdquo; o -ldquo;Insalatona-rdquo;, dolce della casa, -frac12; di acqua o bibita e caffÃ¨ a soli 16 euro!', '', '', 1),
(55, 18747, '', 'Come dice il nome stesso del ristorante , L''Osteria di Brera, ci troviamo nel quartiere dell''arte per eccellenza di Milano, precisamente in Via Fiori Chiari al civico 8. L''osteria dispone di 3 sale con un totale di circa 150 posti a sedere. Si tratta di una location strutturata in modo tale da ricordare una storica locanda cittadina, visto l''ambiente rustico ed allo stesso tempo elegante. Travi e mattoncini a vista spiccano in sala, e tutto intorno tutte le migliori etichette di vini italiani e internazionali. Questo per quanto riguarda l''interno, visto che nella bella stagione sono disponibili altri 30 posti a sedere aggiuntivi direttamente sulle caratteristiche stradine di Brera. L''Osteria di Brera propone cucina tradizionale italiana, con buona parte del menÃ¹ dedicato a pietanze a base di pesce crudo. Pesce ma non solo, visto che non mancano le specialitÃ  di terra e che tra le specialitÃ  di casa Ã¨ molto apprezzato il tagliere di salumi accompagnato dallo gnocco fritto. A completare l''opera, una cantina dei vini davvero ben fornita. Il ristorante infatti Ã¨ aperto tutti i giorni, da mezzogiorno sino a mezzanotte!', '', '', 1),
(56, 18746, '', 'Il ristorante L''Isola del Gusto, di Via Angelo della Pergola 4 a Milano, propone una cucina tradizionale italiana, con specialitÃ  sia di mare che di terra. Accontentati tutti quindi, sia gli amanti del pesce che gli amanti della carne -hellip; e chi non ha preferenze puÃ² sempre assaggiare tutto, visto che l''offerta Ã¨ piÃ¹ che completa! La passione in cucina di Angelo e Costantino porta sulle tavole dei clienti dell''Isola del Gusto piatti quali il branzino ubriaco o il risotto con mele e porcini -hellip; e ancora specialitÃ  classiche come amatriciana o succulento filetto di manzo. In poche parole un''offerta completa e irrinunciabile. PeculiaritÃ  che va ad aggiungersi all''ambiente accogliente e dall''atmosfera famigliare, quella che si respira appunto a L''Isola del Gusto di Milano. La location Ã¨ semplice, raccolta ed accogliente, ideale per un pranzo o una cena di ogni giorno ed allo stesso tempo per l''organizzazione di eventi o feste private, o per passare le piÃ¹ importanti ricorrenze del corso dell''anno.', '', '', 1),
(57, 18745, '', '', '', '', 1),
(58, 18742, '', '', '', '', 1),
(59, 18740, '', '', '', '', 1),
(60, 18739, 'Da sempre, grandi eventi ed attenzione ai dettagli. Un must per chi cerca una serata di qualitÃ .', 'Descrivere Big Mama, ed il suo creatore, Alessandro Imarisio, non Ã¨ cosa facile. Descrivere un''emozione, un sogno, un''ovazione fatta di migliaia di persone che come amanti, al mattino svaniscono, ma che la notte si uniscono nel piÃ¹ primitivo rito di aggregazione: il ballo. Una passone autentica per la qualitÃ , per la valorizzazione dei dettagli di tutto quello che si concretizza in intrattenimento, show ed animazione. Cat Show Ã¨ sicuramente la serate porta bandiera di Big Mama, un format a metÃ  tra un musical ed uno spettacolo circense, dove tra personaggi eccentrici con costumi cangianti e scenografie studiate ad hoc, gli spettatori vengono trasportati in questa "isola che non c''Ã¨" che lascia emozioni e colori impressi "a fuoco" nella mente degli ospiti. Con Big Mama, le parole "direzione artistica" trovano il loro vero significato, dietro le one nights Big Mama, si cela un lungo lavoro di pianificazione e ricerca, trasgressione, ironia e tanta voglia di stupire, fanno il resto. Da "Nightlife addicted" quali siamo, ci sentiamo di raccomandare l''esperienza Big Mama al popolo della notte che ricerca veri contenuti artistici ed emozioni, sempre e solo nei migliori locali.', 'Eterogenea e festaiola', '', 1),
(61, 18738, '', 'Leoncino Club House Ã¨ uno storico ristorante e locale situato nel quartiere Brera di Milano, in Via Castelfidardo 7. Si tratta di una location spaziosa e curata in ogni dettaglio, ideale per un pasto veloce, un aperitivo o per una cena servita. Le due sale interne del Leoncino Club House dispongono di 130 coperti in interno, mentre altri 20 posti a sedere sono disponibili tra i tavoli e sedie in esterno. L''intero ristorante Ã¨ dominato dalle tonalitÃ  del legno e del bordÃ², con divanetti rossi e parquet scuro a caratterizzare l''intera atmosfera! La cucina del Leoncino CÃ²ub House propone ai clienti piatti della gastronomica tipica italiana. Particolare attenzione Ã¨ dedicata alla cucina regionale campana, ma non mancano sconfinamenti di pietanze fuori dai confini della nostra penisola. Molto gettonato Ã¨ l''appuntamento con l''aperitivo, che al Leoncino Ã¨ proposto ogni giorno con la formula del buffet a partire dalle ore 17.30 in poi ed accompagnato sempre da un evento diverso! Per cena la scelta Ã¨ invece dal menÃ¹ alla carta, mentre anche il pranzo - come l''aperitivo - Ã¨ proposto a buffet. Il Leoncino Club House di Milano resta aperto ogni sera, mentre il riposo settimanale Ã¨ previsto ogni sabato e domenica a mezzogiorno. Di sera la cucina resta aperta fino alle ore 23.30.', '', '', 1),
(62, 18737, '', 'Nella zona adiacente il Castello Sforzesco di Milano si trova il ristorante Le Briciole, situato precisamente in Via Camperio 17. Un ristorante che propone la migliore cucina tradizionale italiana, con specialitÃ  regionali prelevate principalmente dalle ricette di Liguria e Piemonte. Ed ecco che nel menÃ¹ del ristorante Le Briciole troverete piatti quali peperoni con bagna cauda, lasagnette al ragÃ¹ bianco, faraona al miele di castagne, trenette al pesto -hellip; tutti preparati con ingredienti di qualitÃ  selezionati in base alle disponibilitÃ  stagionali. Il tutto a comporre un menÃ¹ completo sia di terra che di mare. Per quanto riguarda lo stile, va detto che il ristorante Le Briciole Ã¨ arredato in modo classico con coperti in legno e quadri in grande ad adornare la sala unica, che dispone di circa 55 coperti. Le Briciole Ã¨ aperto sei giorni su sette, con la domenica giorno di riposo settimanale. Il menÃ¹ alla carta Ã¨ disponibile sia pranzo che per la cena, e la cucina resta aperta fino alle ore 23.30.', '', '', 1),
(63, 18736, '', 'Il ristorante L''Assassino di Milano Ã¨ situato in zona Missori, proprio nel centro storico della cittÃ . Un ristorante con tre sale interne ed 80 posti a sedere realizzate all''interno di uno spazio cinquecentesco, quello della struttura che ospita il ristorante L''Assassino di Milano. Le due sale principali, una color turchese e l''altra in verde, sono arredate in modo semplice ma elegante; la terza sala Ã¨ di color arancio, ed Ã¨ adibita a zona bistrot del ristorante, con servizio bar e piccola cucina. L''Assassino dispone anche di un bellissimo spazio all''aperto, appunto il chiostro di Palazzo Recalcati, con lo storico porticato splendida cornice illuminata a sera e salotto all''aperto nel resto della giornata. La struttura ospita sovente mostre ed eventi culturali di grande interesse! La cucina proposta in questo ristorante Ã¨ quella tradizionale italiana, con piatti quali la -ldquo;Cotoletta di vitello alla milanese con spinaci e patate cubo al rosmarino-rdquo;, le -ldquo;Capesante della Bretagna arrosto con insalatina di puntarelle, crostone di polenta in tempura, salsa di corallo-rdquo;, le -ldquo;Tagliatelle fresche all''astice, con piccole verdure e la sua salsa-rdquo; e tanto altro ancora, tutti presenti nella carta del menÃ¹ e da accompagnare con le pregiate etichette dei vini della cantina di casa L''Assassino.', '', '', 1),
(64, 18735, '', 'La Terrazza di Via Palestro Ã¨ una splendida location che si affaccia sui giardini di Porta Venezia e su Piazza Cavour a Milano. Situata precisamente in Via Palestro 2, al quarto piano del Centro Svizzero, La Terrazza Ã¨ un susseguirsi di spazi in interno ed in esterno, ideali per una cena o per un aperitivo di gran classe. La zona ristorante Ã¨ molto elegante, con pareti in legno e parquet e divani in pelle a caratterizzarne l''ambiente. Il dehor all''aperto invece ospita la zona lounge, che ospita la pausa pranzo nella bella stagione, cosÃ¬ come gli aperitivi in prima serata. Oltre a spazio lounge e spazio ristorante, La Terrazza di Via Palestro dispone di un''esclusiva -ldquo;Sala Terrazza-rdquo;, uno spazio pensato appositamente per eventi aziendali e privati di ogni genere! Non solo ambiente di gran classe, ma anche una cucina eccellente a caratterizzare questa location del centro di Milano: piatti delicati della gastronomia italiana e mediterranea vengono proposti ogni giorno dagli chef, che amano combinare tradizione ed un pizzico di originalitÃ  contemporanea! Vario infatti Ã¨ il menÃ¹, che cambia a seconda delle disponibilitÃ  dei prodotti di stagione, per proporre spacialitÃ  sia di mare che di terra. Per non farsi mancare proprio nulla. La Terrazza di Via Palestro Ã¨ aperta dal lunedÃ¬ al venerdÃ¬ per il pranzo di lavoro con menÃ¹ alla carta; tutti i giorni ad esclusione del sabato c''Ã¨ l''aperitivo servito al tavolo, e ogni primo mercoledÃ¬ del mese uno speciale party tematico!', '', '', 1),
(65, 18734, '', 'La Piola Ã¨ un ristorante di pesce situato nella zona di Viale Umbria a Milano, precisamente in Via Perugino 18. La cucina proposta in questo ristorante Ã¨ quella tipica mediterranea, con particolare attenzione per le specialitÃ  a base di pesce. Lo chef Giorgio, pugliese d''origine, propone piatti come i Gamberetti all''ananas o il Carpaccio di piovra, rucola e pomodori; gli Spaghetti al riccio o il Risotto alla Pescatora; la Grigliata mista di pesce o il Gran fritto misto imperiale -hellip; insomma tutte le migliori specialitÃ  di mare della cucina mediterranea presentate con classe ed originalitÃ . E c''Ã¨ soddisfazione anche per gli amanti della carne al ristorante La Piola di Milano, poichÃ© in menÃ¹ Ã¨ presente anche una consistente sezione dedicata ai piatti di terra. La Piola presenta un ambiente elegante classico, modalitÃ  in cui Ã¨ arredata la sala unica che contiene circa 40 coperti. Le calde tonalitÃ  dell''arancio impreziosiscono la sala e numerosi scaffali con bottiglie di vino esposte completano l''ambiente. La cucina resta aperta fino alle ore 23.00!', '', '', 1),
(66, 18733, '', '', '', '', 1),
(67, 18732, '', 'Il ristorante con cucina fusion Jade CafÃ¨ si trova in Via Palazzo Reale 5 a Milano, in zona Duomo.Due grandi sale interne realmente molto eleganti, e circa 70 posti a sedere. Tutto circondato dalle tonalitÃ  del nero e del grigio, ed impreziosito dai tantissimi dettagli in legno chiaro presenti. Jade CafÃ¨ Ã¨ uno dei ristoranti piÃ¹ apprezzati sulla scena milanese, anche per la sua posizione nel cuore del centro storico della cittÃ .La proposta in cucina Ã¨ principalmente qualla giapponese, con sushi e sashimi in primis (e l''utilizzo di ingredienti particolari come il riso nero integraere) e piatti caldi tra cui troverte, solo a titolo esemplificativo, il tataki (filetto di pesce marinato appena scottato e servito su letto d''insalata) o il teppanyaki (grigliata di pesce con contorni).Giapponese ma non solo, perchÃ© lo Jade CafÃ¨ di Milano propone anche alcune pietanze della cucina thailandese, vietnamita, indiana e coreana. Piatti presentati e preparati secondo quelle che sono le ricette originali del luogo.Oltre al menÃ¹ alla carta, sono disponibili anche menÃ¹ guidati di degustazione completi per apprezzare l''intera cucina d''Asia.', '', '', 1),
(68, 18730, '', 'Uno dei ristoranti piÃ¹ interessanti di zona Moscova a Milano, il ristorante in Veranda di Via Statuto 16. Il ristorante In Veranda Ã¨ disposto sullo spazio di 3 sale interne distinte, in grado di ospitare fino a 150 posti a sedere, di cui una riservata per la visione delle migliori partite di calcio. La tonalitÃ  dominante Ã¨ quella del verde, sullo stile di un giardino al coperto con piante e fiori in ogni angolo. La cucina di questo ristorante propone la migliore pizza napoletana, rigorosamente cotta a forno a legna, posizionato con vista diretta sui tavoli. Tutte le varietÃ  di pizza piÃ¹ note a cui si aggiungono varie specialitÃ  di Focaccia di Recco, oltre che diversi primi e secondi piatti della cucina tradizionale italiana. Va detto che oltre alla pizza cotta al forno a legna, anche pasta e dolci sono entrambi preparati direttamente in casa. Il ristorante In Veranda Ã¨ aperto sette giorni su sette ed Ã¨ disponibile sia per pranzo che per cena! La cucina resta aperto ogni giorno fino alle ore 23.30.', '', '', 1),
(69, 18729, '', 'Il Pescatore Ã¨ ristorante e pizzeria situato in Via Calvairate 4 a Milano.Una location semplice dall''atmosfera tranquilla e rilassata, con due sale interne e circa 70 posti a sedere, a cui se ne aggiungono altri 15 sistemati in esterno: la cucina de Il Pescatore di Milano propone piatti della tradizione culinaria italiana, con una carta del menÃ¹ completa di antipasti, primi e secondi piatti tipici, contorni, frutta e dolci di ogni tipo.Il Pescatore Ã¨ sia ristorante di carne che ristorante di pesce, con i piatti alla griglia che sono tra i piÃ¹ gettonati di clienti di questo ristorante.Ristorante di carne e ristorante di pesce ma anche pizzeria. Il Pescatore infatti propone la pizza cotta nel forno a legna, per offrire ai propri ospiti un prodotto di sicuro apprezzamento e che non stanca mai. Tra le specialitÃ  di casa si segnala proprio la cosiddetta Bigpizza: una pizza dal diametro di circa 40 centimetri!In questo ristorante potrete inoltre seguire tutte le partite di calcio previste in calendario; vengono accettati inoltre tutti i -lsquo;ticket restaurant''!', '', '', 1),
(70, 18728, '', 'Il ristorante Il Coriandolo si trova a Milano in Via dell''Orso al civico 1, a pochi passi dal Teatro della Scala e da Piazza Duomo.Composto da tre sale interne, tra cui una veranda molto luminosa (adibita eventualmente anche a zona fumatori), Il Coriandolo Ã¨ un ristorante elegante e molto accogliente, ideale per diverse tipologie di occasioni, sia per una cena tra amici che per un pranzo di lavoro.Oltre che per l''ambiente, il ristorante Il Coriandolo di Milano Ã¨ molto noto ed apprezzato anche per la cucina proposta: in questo ristorante infatti dominano i piatti di mare della tradizione mediterranea, con ingredienti che giungono freschissimi in cucina di giorno in giorno. Ingredienti grazie ai quali vengono proposti numerosi primi e secondi piatti, grazie alla passione ed alla professionalitÃ  dello chef di casa. Molto ricca e pregiata anche la selezione dei vini presente in sala, con etichette italiane e internazionali.Oltre al menÃ¹ alla carta vi Ã¨ la possibilitÃ  di richiedere menÃ¹ personalizzati su prenotazione!', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id of type',
  `name` text NOT NULL COMMENT 'type_name',
  `status` int(11) NOT NULL COMMENT 'type_status: 1-active,0-inactive/deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This is just a reference table for types' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`, `status`) VALUES
(1, 'users', 1),
(2, 'mt_locali', 1),
(3, 'event_show', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id-Auto Increment',
  `first_name` text NOT NULL COMMENT 'first name',
  `last_name` text NOT NULL COMMENT 'last name',
  `description` text COMMENT 'description',
  `email` varchar(128) NOT NULL COMMENT 'email for communication',
  `login_id` varchar(64) NOT NULL COMMENT 'login username',
  `login_password` varchar(32) NOT NULL COMMENT 'login password',
  `gender` varchar(1) NOT NULL COMMENT 'gender',
  `dob` date NOT NULL COMMENT 'date of birth-unchangable',
  `localita` text NOT NULL COMMENT 'address_details',
  `provincia` int(11) NOT NULL COMMENT 'address_details',
  `indirizzo` text NOT NULL COMMENT 'address details',
  `phone1` varchar(16) DEFAULT NULL COMMENT 'landline_no',
  `mobile` varchar(16) DEFAULT NULL COMMENT 'mobile_no',
  `photo_url` text COMMENT 'url to the location where photo is stored',
  `code` text COMMENT 'have to check if required or not',
  `online` int(11) DEFAULT NULL COMMENT '1-online_now, 0-offline_now',
  `register_date` date NOT NULL COMMENT 'date of registration - unchangable',
  `status` int(11) NOT NULL COMMENT '1-active, 0-inactive/deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `description`, `email`, `login_id`, `login_password`, `gender`, `dob`, `localita`, `provincia`, `indirizzo`, `phone1`, `mobile`, `photo_url`, `code`, `online`, `register_date`, `status`) VALUES
(1, 'Rohit', 'ch', NULL, 'rohitc_89@yahoo.com', 'qwerty', '123456', 'M', '1989-10-29', 'abc', 0, 'abc', NULL, '123456789', NULL, NULL, 1, '2012-10-01', 1),
(4, 'Rohit', 'ch', NULL, 'yoursbiki@yahoo.com', 'qwertyu', '123456', 'M', '1989-10-29', 'abnc', 0, 'abc', NULL, NULL, NULL, NULL, NULL, '2012-10-01', 1),
(5, 'Rohit', 'ch', NULL, 'raunak0101@gmail.com', 'asdfgh', '123456', 'M', '1989-10-29', 'abc', 0, 'abc', NULL, '123', NULL, NULL, NULL, '2012-10-01', 1),
(6, 'naveen', 'ku', NULL, 'naveen123@abc.com', 'naveen123', '123456', 'M', '1989-10-29', 'asc', 0, 'asc', NULL, '123', NULL, NULL, NULL, '2012-10-14', 1),
(7, 'monu', 'kumar', NULL, 'monu@abc.com', 'monukumar', '123456', 'M', '1980-10-10', 'abc', 0, 'abc', NULL, '124', NULL, NULL, 1, '2012-10-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_event_attendance`
--

CREATE TABLE IF NOT EXISTS `user_event_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id - Auto Increment',
  `user_id` int(11) NOT NULL COMMENT 'Id of the user, who is attending',
  `attending_type` int(11) NOT NULL COMMENT 'Reference form the type tbale, to know what the user is attending- event/show or local',
  `attending_type_id` int(11) NOT NULL COMMENT 'id of the event/show or the local the user is attending',
  `date_time_entered` datetime NOT NULL COMMENT 'date & time of the entry of the user at the event/show or local',
  `user_attended` int(11) NOT NULL COMMENT 'if the user has attended the event/show or not:1-attended, 0-Not Attended',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='For user RSVP option and will inform about their attendance' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
