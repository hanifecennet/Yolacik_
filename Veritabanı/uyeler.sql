-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: sql209.epizy.com
-- Üretim Zamanı: 04 Haz 2021, 05:30:47
-- Sunucu sürümü: 5.6.48-88.0
-- PHP Sürümü: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `epiz_28340894_yolacik`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(11) NOT NULL,
  `tam_ad` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `eposta` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `sifree` varchar(150) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `tam_ad`, `kullanici_ad`, `eposta`, `sifree`) VALUES
(2, 'Aybüke Şanal', 'aybükk', 'aybukesnl7@gmail.com', '1234'),
(4, 'yasemin merve ayar', 'yaseminmerve', 'yaseminmerve.ayar@gmail.com', 'aaa'),
(6, 'senem bayer', 'sbyr', 'senem2@gmail.com', '12345'),
(8, 'senem bayer', 'sbyr', 'senembayer83@gmail.com', 'Senem12345.'),
(10, 'senem bayer', 'senem bayer', 'senembayer83@gmail.com', 'Senem12345.'),
(11, 'hanife', 'hanifay', 'hanife.alkn@hotmail.com', '1q2w3e4r'),
(12, 'hanife', 'hanifay', 'hanife.alkn@hotmail.com', '1q2w3e4r'),
(13, 'Senem bayer', 'sbr', 'se@gmail.com', '12345'),
(14, 'AybÃ¼ke Åžanal', 'aybÃ¼ke', 'aybukesnl7@gmail.com', '123'),
(15, 'Hanife Cennet Alkan', 'hanifayy', 'hanife@hotmail.com', '12345');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
