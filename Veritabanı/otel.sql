-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Haz 2021, 11:03:05
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
-- Tablo için tablo yapısı `otel`
--

CREATE TABLE `otel` (
  `id` int(11) NOT NULL,
  `otel_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `otel_fiyat` int(11) NOT NULL,
  `otel_sehir_id` int(11) NOT NULL,
  `otel_text` text COLLATE utf8_turkish_ci NOT NULL,
  `otel_resim` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `otel`
--

INSERT INTO `otel` (`id`, `otel_ad`, `otel_fiyat`, `otel_sehir_id`, `otel_text`, `otel_resim`) VALUES
(1, 'Park Dedeman Otel', 701, 61, 'Karadeniz Sahil yolunda havaalanına 7 km. Şehir Merkezine ise 10 dk. mesafede olan PARK DEDEMAN Trabzon, aynı zamanda bölgenin denize girilebilen en güzel noktasına sadece 300 m. uzaklıktadır. Otelin bölgedeki tüm tarihi, kültürel ve turistik mekanlara yakınlığı, şüphesiz ki tatilinizin keyifli geçmesinde en önemli etkenlerden biri olacaktır.', 'dedeman.jpg'),
(2, 'Andalouse Elegante Suite Hotel', 260, 61, 'Evinizde gibi hissedin.Andalouse Elegant Suit, Andalouse Group bünyesinde bulunan 60 süit ve aile odasıyla Trabzon Havaalanına 500 m mesafede siz değerli misafirlerine hizmet etmektedir. Odalarımız eşsiz deniz manzarası ve bahçe manzarasına sahiptir.', 'AndalouseEleganteSuiteHotel.jpeg'),
(3, 'Saray Otel', 300, 31, 'Bir bar, teras ve dağ manzarası sunan Sami Akar Saray Otel, Hatay\'da, Tüm odalarda düz ekran uydu TV ve özel banyo bulunmaktadır. Klimalı odalar şehir manzaralıdır ve bir gardırop ve ücretsiz Wi-Fi ile donatılmıştır.\r\n\r\nSami Akar Saray Otel, Antakya Belediye Parkı\'na 500 metre, Hatay Otobüs Terminali\'ne 700 metre uzaklıktadır. En yakın havaalanı olan Hatay Havaalanı ise konaklama birimine 26 km uzaklıktadır.\r\n\r\n', 'sarayOtel.jpg'),
(4, 'Neccar Hotel', 270, 31, 'Tesisin klasik çizgilerle dekore edilmiş ışıltılı ve şık odalarında merkezi klima, Wi-Fi, su ısıtıcı, saç kurutma makinesi, minibar, uydu yayın LCD TV, banyo buklet ürünleri bulunuyor.', 'neccarOtel.jpg'),
(5, 'Ecrin Hotel Altıntaş', 180, 43, 'Kütahya’da misafirlerini sade ve konforlu odalarında ağırlayan Ecrin Hotel Altıntaş, Zafer Havalimanı’na araçla birkaç dakika uzaklıkta yer alıyor. Tesis havalimanı servisi, internet erişimi, restoran ve çamaşırhane olanaklarıyla öne çıkıyor.', 'ecrinOtel.jpg'),
(6, 'Nehir Termal Otel', 426, 43, 'Nehir Termal & Spa Otelimiz; Kütahya iline bağlı Yoncalı mevkiinde yer almaktadır.\r\nKütahya merkeze 16 km (merkezden dolmuşla ulaşım sağlayabilirsiniz)\r\nZafer Havalimanı 60 km mesafededir.\r\n\r\n1 adet Bay & Bayan özel Kapalı havuz, 1 adet bayanlara özel Açık havuz, 1 adet Karma açık havuz,1 adet çocuk havuzu ve 4 adet özel aile banyosu bulunmaktadır.\r\n\r\n1 adet Bay & Bayan özel Kapalı havuz, 1 adet bayanlara özel Açık havuz, 1 adet Karma açık havuz,1 adet çocuk havuzu ve 4 adet özel aile banyosu bulunmaktadır.\r\n\r\n', 'termalOtel.jpg'),
(7, 'Cityloft 161', 240, 34, 'İçinde kendi mutfağı bulunan 161 adet odasıyla hem otel hem uzun dönem kiralama seçenekleri sunan Cityloft 161, ayrıca 24 saat açık resepsiyon, kafe, restoran ve laundry hizmetleriyle ve lobisinde bulunan Starbucks ve mini market konsepti ile kurumsal şirketler, öğrenciler, gezginler, aileler ve iş adamları için eşsiz bir deneyim sunuyor.\r\nÖzel tasarım odalarıyla eşsiz ve farklı konaklama fırsatından sizde yararlanın.\r\n', 'city.jpg'),
(8, 'The Green Park Pendik', 309, 34, 'İstanbul Pendik’te yer alan The Green Park Hotel Pendik & Convention Center; iş, eğlence ve turistik gezilerde misafirlerine eşsiz bir konaklama deneyimi yaşatıyor.', 'green.jpg'),
(9, 'Hotel Patalya Thermal Resort', 600, 6, 'Kızılcahamam Soğuksu Milli Parkı içinde çam ormanlarıyla kaplı dağlar arasında, dört mevsim doğa ile baş başa kalabilceğiniz eşsiz bir tatil cennetidir.Tesisimiz Başkent Üniversitesi bünyesinde Ankara\'ya 80 km Esenboğa Hava Limanı\'na 70km mesafededir', 'patalya.jpg'),
(10, 'Ataköşk Group Hotel', 400, 6, 'Tesis Ankara’nın merkezi noktalarından Çankaya’da, konforlu bir konaklama seçeneği sunuyor. Modern tasarımlı odaları, restoranları, SPA ve sağlık merkezi ile tesis hem iş hem de turistik amaçlı seyahatlere hitap ediyor.', 'ataköşk.jpg'),
(11, 'Divan Bursa', 330, 16, 'Misafirlerine iş seyahatleri süresince çeşitli ihtiyaçlarını karşılayabilecekleri, konforlu bir konaklama imkanı sunan Divan Bursa, Bursa\'nın Osmangazi mevkiinde ev rahatlığında bir tatil olanağı oluşturuyor.', 'divan.jpg'),
(12, 'Holiday Inn Bursa City Centre', 573, 16, 'Yeşilova Holding bünyesinde işletilen ve şehir merkezinde yer alan Holiday Inn Bursa City Centre;2017 itibariyle 100den fazla ülkede,700.000 oda ve 5000\'den fazla otel ile dünyanın en büyük otel zinciri olan InterContinental Hotels Group (IHG) işbirliğinde,Bursa\'nın ilk ve tek Open Lobby konseptini hayata geçirmektedir. Otelimiz siz değerli misafirlerini modern şekilde dizayn edilmiş şık ve konforlu odalarında ağırlamaktan mutluluk duyar.', 'holiday.jpg');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `otel`
--
ALTER TABLE `otel`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `otel`
--
ALTER TABLE `otel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
