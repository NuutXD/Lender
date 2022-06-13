-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 10:40 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utstyr`
--

-- --------------------------------------------------------

--
-- Table structure for table `elever`
--

CREATE TABLE `elever` (
  `id` bigint(11) NOT NULL,
  `elevnr` bigint(11) NOT NULL,
  `etternavn` varchar(64) NOT NULL,
  `fornavn` varchar(64) NOT NULL,
  `klasse` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elever`
--

INSERT INTO `elever` (`id`, `elevnr`, `etternavn`, `fornavn`, `klasse`) VALUES
(1, 20136232, 'Alstad', 'Linn Sofie', 'IM1A'),
(2, 20136164, 'Hansen-Karlsen', 'Andrine', 'IM1A'),
(3, 20136168, 'Kure', 'Jonas Storm', 'IM1A'),
(4, 20136130, 'Moen', 'Adele Mari Enoksen', 'IM1A'),
(5, 20136138, 'Pedersen', 'Elias Johan', 'IM1A'),
(6, 20136217, 'Pettersen', 'Kristian Aleksander', 'IM1A'),
(7, 20136186, 'Robertsen', 'Roar Leander Lynghaug', 'IM1A'),
(8, 20136135, 'Sandvold', 'Elias', 'IM1A'),
(9, 20136133, 'Ås', 'Maria Ramberg', 'IM1A'),
(10, 20132417, 'Aghabo', 'Nelly Ambo', 'IM1B'),
(11, 20136187, 'Bråten', 'Jasper', 'IM1B'),
(12, 20118554, 'Finnesen', 'Isak Andreas', 'IM1B'),
(13, 20136110, 'Hageli', 'Hannah', 'IM1B'),
(14, 20136142, 'Lorentzen', 'Eirik-Elias', 'IM1B'),
(15, 20136156, 'Ludvigsen', 'Sander Nicolai Sund', 'IM1B'),
(16, 20136105, 'Lyngli', 'Elise', 'IM1B'),
(17, 20131873, 'Løkås', 'Peder', 'IM1B'),
(18, 20136179, 'Robertsen', 'Christine Sofie', 'IM1B'),
(19, 20136114, 'Steffensen', 'Marcus Isaksen', 'IM1B'),
(20, 20125969, 'Almendingen', 'Henrik', 'IM2A'),
(21, 20131199, 'Aspenes', 'Juline Nikoletta', 'IM2A'),
(22, 20131172, 'Eikre', 'Odin', 'IM2A'),
(23, 20132171, 'Eliassen', 'Eline Heggevoll', 'IM2A'),
(24, 20132385, 'Gaasland', 'Brage Rønne', 'IM2A'),
(25, 20132159, 'Halvorsen', 'Sander Torbjørnsen', 'IM2A'),
(26, 20125893, 'Hansen', 'Daniel Hong', 'IM2A'),
(27, 20131229, 'Johansen', 'Håvard Andreas Krogstad', 'IM2A'),
(28, 20117791, 'Jonassønn', 'Elias Øksnes', 'IM2A'),
(29, 20125897, 'Kuntze', 'Hanna', 'IM2A'),
(30, 20131677, 'Løkås', 'Kornelius Harvey', 'IM2A'),
(31, 20125664, 'Moholt', 'Torben', 'IM2A'),
(32, 20131187, 'Moltzau', 'Kaia Marie Ra', 'IM2A'),
(33, 20125968, 'Olsen', 'Bror Axel', 'IM2A'),
(34, 20131140, 'Oshaug', 'Timothy Aksel Olandesca', 'IM2A'),
(35, 20132852, 'Cranner', 'Odin Delphin', 'IM2B'),
(36, 20131192, 'Iversen', 'Mathilde Sofie Myhre', 'IM2B'),
(37, 20099054, 'Karlsen', 'Stian', 'IM2B'),
(38, 20131232, 'Karwowska', 'Aleksandra', 'IM2B'),
(39, 20131210, 'Kruse', 'Marcus Skovgaard', 'IM2B'),
(40, 20131173, 'Paulsen', 'Sindre Vevik', 'IM2B'),
(41, 20131150, 'Pedersen', 'David', 'IM2B'),
(42, 20131196, 'Pettersen', 'Viljar Gabriel', 'IM2B'),
(43, 20124238, 'Vangsvik', 'Emil Andre', 'IM2B'),
(44, 20131230, 'Walsnes-Frivåg', 'Sander Kristiansen', 'IM2B'),
(45, 20126955, 'Ytrøy', 'Håvard Andre', 'IM2B');

-- --------------------------------------------------------

--
-- Table structure for table `lendlog`
--

CREATE TABLE `lendlog` (
  `id` int(11) NOT NULL,
  `lend_by` int(11) NOT NULL,
  `lend_equip` int(11) NOT NULL,
  `lend_from` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lend_until` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lendlog`
--

INSERT INTO `lendlog` (`id`, `lend_by`, `lend_equip`, `lend_from`, `lend_until`, `status`) VALUES
(1, 1, 1, '2022-06-12 21:53:38', '2022-06-22 22:00:00', 1),
(2, 1, 1, '2022-06-12 21:54:07', '2022-06-22 22:00:00', 1),
(3, 30, 55, '2022-06-13 10:37:05', '2022-06-15 22:00:00', 1),
(4, 1, 1, '2022-06-13 10:40:47', '2022-06-21 22:00:00', 1),
(5, 11, 2, '2022-06-13 11:18:07', '2022-06-16 22:00:00', 1),
(6, 6, 2, '2022-06-13 18:40:06', '2022-06-16 22:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `utstyr`
--

CREATE TABLE `utstyr` (
  `id` bigint(11) NOT NULL,
  `navn` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL DEFAULT 'andre',
  `status` int(1) NOT NULL DEFAULT 0,
  `bilde` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utstyr`
--

INSERT INTO `utstyr` (`id`, `navn`, `type`, `status`, `bilde`) VALUES
(1, 'Canon kamera EOS 70D 1', 'Kamera', 0, 'https://www.dpreview.com/files/p/E~products/canon_eos70d/shots/9948ec97cb3441acb762a30dd681ea74.png'),
(2, 'Canon kamera EOS 70D 2', 'Kamera', 1, 'https://www.dpreview.com/files/p/E~products/canon_eos70d/shots/9948ec97cb3441acb762a30dd681ea74.png'),
(3, 'Canon kamera EOS 70D 3', 'Kamera', 0, 'https://www.dpreview.com/files/p/E~products/canon_eos70d/shots/9948ec97cb3441acb762a30dd681ea74.png'),
(4, 'Canon kamera EOS 70D 4', 'Kamera', 0, 'https://www.dpreview.com/files/p/E~products/canon_eos70d/shots/9948ec97cb3441acb762a30dd681ea74.png'),
(5, 'Canon kamera EOS 70D 5', 'Kamera', 0, 'https://www.dpreview.com/files/p/E~products/canon_eos70d/shots/9948ec97cb3441acb762a30dd681ea74.png'),
(6, 'Canon kamera EOS 70D 6', 'Kamera', 0, 'https://www.dpreview.com/files/p/E~products/canon_eos70d/shots/9948ec97cb3441acb762a30dd681ea74.png'),
(7, 'Canon kamera EOS 70D 7', 'Kamera', 0, 'https://www.dpreview.com/files/p/E~products/canon_eos70d/shots/9948ec97cb3441acb762a30dd681ea74.png'),
(8, 'Canon kamera EOS 70D 8', 'Kamera', 0, 'https://www.dpreview.com/files/p/E~products/canon_eos70d/shots/9948ec97cb3441acb762a30dd681ea74.png'),
(9, 'Canon kamera EOS 90D 1', 'Kamera', 0, 'https://i1.adis.ws/i/canon/canon_EOS_90D_360c_324654534168'),
(10, 'Canon kamera EOS 90D 2', 'Kamera', 0, 'https://i1.adis.ws/i/canon/canon_EOS_90D_360c_324654534168'),
(11, 'Canon kamera EOS 90D 3', 'Kamera', 0, 'https://i1.adis.ws/i/canon/canon_EOS_90D_360c_324654534168'),
(12, 'Sony kamera A7S', 'Kamera', 0, 'https://www.sony.no/image/b6fd628a9043fbbbe74d275e740e254c?fmt=pjpeg&wid=330&bgcolor=FFFFFF&bgc=FFFFFF'),
(13, 'Canon lens IF18x', 'Kameralinse', 0, 'https://www.avgear.com/app/uploads/2020/10/canon-yj18x9b4-irs-sx12-if-18x-bctv-zoom-lens-6-scaled.jpg'),
(14, 'Canon lens 18-55mm 1', 'Kameralinse', 0, 'https://img.prisguiden.no/814/814285/i_814285.320x240!m.jpg'),
(15, 'Canon lens 18-55mm 2', 'Kameralinse', 0, 'https://img.prisguiden.no/814/814285/i_814285.320x240!m.jpg'),
(16, 'Canon lens 28-80mm', 'Kameralinse', 0, 'data:image/jpeg;base64,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'),
(17, 'Canon lens 50mm', 'Kameralinse', 0, 'https://butikk.foto.no/Media/Cache/Images/1/5/WEB_Image_Canon_EF_50mm_f_1_8_STM__0570c005_2501608375_plid_12495.Jpeg'),
(18, 'Canon lens 70-200mm', 'Kameralinse', 0, 'https://www.scandinavianphoto.no/globalassets/1039990.jpg?ref=E74E7A78B5&w=640&h=640&mode=max'),
(19, 'Canon lens 18-135mm 1', 'Kameralinse', 0, 'https://shop.usa.canon.com/wcsstore/eStore/images/EF-S-18-135mm-f35-56-IS-USM-Lens_1_xl.jpg'),
(20, 'Canon lens 18-135mm 2', 'Kameralinse', 0, 'https://shop.usa.canon.com/wcsstore/eStore/images/EF-S-18-135mm-f35-56-IS-USM-Lens_1_xl.jpg'),
(21, 'Canon lens 18-135mm 3', 'Kameralinse', 0, 'https://shop.usa.canon.com/wcsstore/eStore/images/EF-S-18-135mm-f35-56-IS-USM-Lens_1_xl.jpg'),
(22, 'Canon lens 18-135mm 4', 'Kameralinse', 0, 'https://shop.usa.canon.com/wcsstore/eStore/images/EF-S-18-135mm-f35-56-IS-USM-Lens_1_xl.jpg'),
(23, 'Canon lens 18-135mm 5', 'Kameralinse', 0, 'https://shop.usa.canon.com/wcsstore/eStore/images/EF-S-18-135mm-f35-56-IS-USM-Lens_1_xl.jpg'),
(24, 'Canon lens 18-135mm 6', 'Kameralinse', 0, 'https://shop.usa.canon.com/wcsstore/eStore/images/EF-S-18-135mm-f35-56-IS-USM-Lens_1_xl.jpg'),
(25, 'Canon Flash Speedlite 320EX 1', 'Lys', 0, 'https://www.usa.canon.com/internet/wcm/connect/us/ebe4da22-7897-4004-a7d7-7c2a24a9b29b/speedlite-320ex-675x450.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_P1KGHJ01L85180AUEPQQJ53034-ebe4da22-7897-4004-a7d7-7c2a24a9b29b-l0A9VTi'),
(26, 'Canon Flash Speedlite 320EX 2', 'Lys', 0, 'https://www.usa.canon.com/internet/wcm/connect/us/ebe4da22-7897-4004-a7d7-7c2a24a9b29b/speedlite-320ex-675x450.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_P1KGHJ01L85180AUEPQQJ53034-ebe4da22-7897-4004-a7d7-7c2a24a9b29b-l0A9VTi'),
(27, 'Panasonic lens Lumix 14-42mm 1', 'Kameralinse', 0, 'https://www.scandinavianphoto.no/globalassets/1002949.jpg?ref=61707BA3F2&w=960&h=960&mode=max'),
(28, 'Panasonic lens Lumix 14-42mm 2', 'Kameralinse', 0, 'https://www.scandinavianphoto.no/globalassets/1002949.jpg?ref=61707BA3F2&w=960&h=960&mode=max'),
(29, 'Hasselblad X1Dii kamera', 'Kamera', 0, 'data:image/jpeg;base64,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'),
(30, 'Dji Osmo kamera', 'Kamera', 0, 'https://www.mytrendyphone.no/images/DJI-Osmo-Pocket-4K-Action-Camera-3-Axis-Gimbal-Stabilizer-875mAh-3840x2160-Black-6958265186189-26042021-01-p.jpg'),
(31, 'Aputure lens plate 1', 'Andre', 0, 'pictures/placeholder.png'),
(32, 'Aputure lens plate 2', 'Andre', 0, 'pictures/placeholder.png'),
(33, 'Aputure lens plate 3', 'Andre', 0, 'pictures/placeholder.png'),
(34, 'Panasonic wide lens 46mm', 'Kameralinse', 0, 'https://www.adorama.com/images/Large/ipcdmwlw46.jpg'),
(35, 'Dji mavic dronekamera', 'Drone', 0, 'https://www.komplett.no/img/p/800/1200699.jpg'),
(36, 'Atomos NinjaV HDR Monitor recorder', 'Monitor', 0, 'https://www.japanphoto.no/imageserver/750/750/scale/p/japan/PIM_PROD/Atomos/PIM1079284_Atomos_1568276772945.jpg'),
(37, 'Canon batterilader 1', 'Batterilader', 0, 'https://www.stavangerfoto.no/Media/Cache/Images/1/9/WEB_Image%20Canon%20LC-E6%20Batterilader%20For%20LP-E6%20batte1564714732.Jpeg'),
(38, 'Canon batterilader 2', 'Batterilader', 0, 'https://www.stavangerfoto.no/Media/Cache/Images/1/9/WEB_Image%20Canon%20LC-E6%20Batterilader%20For%20LP-E6%20batte1564714732.Jpeg'),
(39, 'Canon batterilader 3', 'Batterilader', 0, 'https://www.stavangerfoto.no/Media/Cache/Images/1/9/WEB_Image%20Canon%20LC-E6%20Batterilader%20For%20LP-E6%20batte1564714732.Jpeg'),
(40, 'Canon batterilader 4', 'Batterilader', 0, 'https://www.stavangerfoto.no/Media/Cache/Images/1/9/WEB_Image%20Canon%20LC-E6%20Batterilader%20For%20LP-E6%20batte1564714732.Jpeg'),
(41, 'Canon batterilader 5', 'Batterilader', 0, 'https://www.stavangerfoto.no/Media/Cache/Images/1/9/WEB_Image%20Canon%20LC-E6%20Batterilader%20For%20LP-E6%20batte1564714732.Jpeg'),
(42, 'Canon batterilader 6', 'Batterilader', 0, 'https://www.stavangerfoto.no/Media/Cache/Images/1/9/WEB_Image%20Canon%20LC-E6%20Batterilader%20For%20LP-E6%20batte1564714732.Jpeg'),
(43, 'Canon batterilader 7', 'Batterilader', 0, 'https://www.stavangerfoto.no/Media/Cache/Images/1/9/WEB_Image%20Canon%20LC-E6%20Batterilader%20For%20LP-E6%20batte1564714732.Jpeg'),
(44, 'Canon batterilader 8', 'Batterilader', 0, 'https://www.stavangerfoto.no/Media/Cache/Images/1/9/WEB_Image%20Canon%20LC-E6%20Batterilader%20For%20LP-E6%20batte1564714732.Jpeg'),
(45, 'Canon batterilader 9', 'Batterilader', 0, 'https://www.stavangerfoto.no/Media/Cache/Images/1/9/WEB_Image%20Canon%20LC-E6%20Batterilader%20For%20LP-E6%20batte1564714732.Jpeg'),
(46, 'Canon batterilader 10', 'Batterilader', 0, 'https://www.stavangerfoto.no/Media/Cache/Images/1/9/WEB_Image%20Canon%20LC-E6%20Batterilader%20For%20LP-E6%20batte1564714732.Jpeg'),
(47, 'Canon batterilader 11', 'Batterilader', 0, 'https://www.stavangerfoto.no/Media/Cache/Images/1/9/WEB_Image%20Canon%20LC-E6%20Batterilader%20For%20LP-E6%20batte1564714732.Jpeg'),
(48, 'Canon batterilader 12', 'Batterilader', 0, 'https://www.stavangerfoto.no/Media/Cache/Images/1/9/WEB_Image%20Canon%20LC-E6%20Batterilader%20For%20LP-E6%20batte1564714732.Jpeg'),
(49, 'M Vesa Flexarm tilt and turn 1', 'Stativ', 0, 'https://cdn.cnetcontent.com/e6/f1/e6f1cfa1-6225-4d56-8dc2-0a93e3280adf.jpg'),
(50, 'M Vesa Flexarm tilt and turn 2', 'Stativ', 0, 'https://cdn.cnetcontent.com/e6/f1/e6f1cfa1-6225-4d56-8dc2-0a93e3280adf.jpg'),
(51, 'Transceiver Plus X PocketWizard', 'Andre', 0, 'https://butikk.foto.no/Media/Cache/Images/4/1/WEB_Image_PocketWizard_Plus_X_Transceiver_Radio_Ut_pw-plusx-ce_1-941050446.Jpeg'),
(52, 'Libec AP-1 Adapterplate', 'Andre', 0, 'https://www.bhphotovideo.com/images/images1000x1000/Libec_AP_1_AP_1_Adapter_Plate_688746.jpg'),
(53, 'Atomos web presenter blackmagic', 'Andre', 0, 'https://cdn.shopify.com/s/files/1/2299/7111/products/Blackmagic-Web-Presenter-HD_Front_1024x1024.jpg?v=1613695681'),
(54, 'THX stort stativ', 'Stativ', 0, 'pictures/placeholder.png'),
(55, 'Vel flo 10 stort stativ', 'Stativ', 0, 'pictures/placeholder.png'),
(56, 'TH 650 DV medium stativ', 'Stativ', 0, 'https://www.provideoglobal.com/media/catalog/product/cache/2/image/9df78eab33525d08d6e5fb8d27136e95/l/i/libec-th-650dv-tripod.jpg'),
(57, 'Manfrotto MK3 stort stativ', 'Stativ', 0, 'https://pricespy-75b8.kxcdn.com/product/standard/280/853918.jpg'),
(58, 'Manfrotto bassamo medium stativ', 'Stativ', 0, 'pictures/placeholder.png'),
(59, 'Vel flo 9 lite stativ', 'Stativ', 0, 'pictures/placeholder.png');

-- --------------------------------------------------------

--
-- Table structure for table `utstyr_out`
--

CREATE TABLE `utstyr_out` (
  `id` bigint(11) NOT NULL,
  `utstyr_id` bigint(11) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `out_from` timestamp NOT NULL DEFAULT current_timestamp(),
  `out_until` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utstyr_out`
--

INSERT INTO `utstyr_out` (`id`, `utstyr_id`, `user_id`, `out_from`, `out_until`) VALUES
(19, 2, 6, '2022-06-13 18:40:06', '2022-06-16 22:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `elever`
--
ALTER TABLE `elever`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lendlog`
--
ALTER TABLE `lendlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utstyr`
--
ALTER TABLE `utstyr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utstyr_out`
--
ALTER TABLE `utstyr_out`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `elever`
--
ALTER TABLE `elever`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `lendlog`
--
ALTER TABLE `lendlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `utstyr`
--
ALTER TABLE `utstyr`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `utstyr_out`
--
ALTER TABLE `utstyr_out`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
