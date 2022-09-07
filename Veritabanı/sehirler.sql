-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Haz 2021, 11:06:40
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yolacik`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sehirler`
--

CREATE TABLE `sehirler` (
  `id` int(11) NOT NULL,
  `sehir_adi` varchar(150) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sehirler`
--

INSERT INTO `sehirler` (`id`, `sehir_adi`) VALUES
(2, 'adıyaman'),
(1, 'adana'),
(3, 'afyon'),
(4, 'ağrı'),
(5, 'amasya'),
(6, 'ankara'),
(7, 'antalya'),
(8, 'artvin'),
(9, 'aydın'),
(10, 'balıkesir'),
(11, 'bilecik'),
(12, 'bingöl'),
(13, 'bitlis'),
(14, 'bolu'),
(15, 'burdur'),
(16, 'bursa'),
(17, 'çanakkale'),
(18, 'çankırı'),
(19, 'çorum'),
(20, 'denizli'),
(21, 'diyarbakır'),
(22, 'edirne'),
(23, 'elazığ'),
(24, 'erzincan'),
(25, 'erzurum'),
(26, 'eskişehir'),
(27, 'gaziantep'),
(28, 'giresun'),
(29, 'gümüşhane'),
(30, 'hakkari'),
(31, 'hatay'),
(32, 'ısparta'),
(33, 'içel'),
(36, 'kars'),
(35, 'izmir'),
(34, 'istanbul'),
(37, 'kastamonu'),
(38, 'kayseri'),
(39, 'kırklareli'),
(40, 'kırşehir'),
(41, 'kocaeli'),
(42, 'konya'),
(43, 'kütahya'),
(44, 'malatya'),
(45, 'manisa'),
(46, 'kahramanmaraş'),
(47, 'mardin'),
(48, 'muğla'),
(49, 'muş'),
(50, 'nevşehir'),
(51, 'niğde'),
(52, 'ordu'),
(53, 'rize'),
(54, 'sakarya'),
(55, 'samsun'),
(56, 'siirt'),
(57, 'sinop'),
(58, 'sivas'),
(59, 'tekirdağ'),
(60, 'tokat'),
(61, 'trabzon'),
(62, 'tunceli'),
(63, 'şanlıurfa'),
(64, 'uşak'),
(65, 'van'),
(66, 'yozgat'),
(67, 'zonguldak'),
(68, 'aksaray'),
(69, 'bayburt'),
(70, 'karaman'),
(71, 'kırıkkale'),
(72, 'batman'),
(73, 'şırnak'),
(74, 'bartın'),
(75, 'ardahan'),
(76, 'ığdır'),
(77, 'yalova'),
(78, 'karabük'),
(79, 'kilis'),
(80, 'osmaniye'),
(81, 'düzce');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `sehirler`
--
ALTER TABLE `sehirler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `sehirler`
--
ALTER TABLE `sehirler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
