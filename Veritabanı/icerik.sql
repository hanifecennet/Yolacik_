-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Haz 2021, 12:45:46
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
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE `icerik` (
  `id` int(11) NOT NULL,
  `icerik_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_text` text COLLATE utf8_turkish_ci NOT NULL,
  `icerik_kategori_id` int(50) NOT NULL,
  `yazar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `icerik`
--

INSERT INTO `icerik` (`id`, `icerik_baslik`, `image`, `icerik_text`, `icerik_kategori_id`, `yazar_id`) VALUES
(41, 'Kütahya', '2324-mnza.jpg', 'Manzara', 3, 11),
(42, 'Kütahya', '2849-manzara.jpg', 'Manzara', 3, 11),
(43, 'Eskişehir', '9950-eskişehir.jpg', 'Akvaryum', 3, 11),
(44, 'Bursa', '2841-teleferek.jpg', 'Teleferik', 3, 11),
(46, 'Kütahya', '9817-vazo.jpg', 'Vazo', 1, 2),
(47, 'Bursa', '1353-bursamanza.jpg', 'Gün batımı', 3, 4);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `icerik`
--
ALTER TABLE `icerik`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `icerik`
--
ALTER TABLE `icerik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
