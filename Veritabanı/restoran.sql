-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Haz 2021, 11:06:26
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
-- Tablo için tablo yapısı `restoran`
--

CREATE TABLE `restoran` (
  `id` int(11) NOT NULL,
  `restoran_ad` varchar(100) NOT NULL,
  `restoran_fiyat` int(11) NOT NULL,
  `restoran_sehir_id` int(11) NOT NULL,
  `restoran_text` text NOT NULL,
  `restoran_resim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `restoran`
--

INSERT INTO `restoran` (`id`, `restoran_ad`, `restoran_fiyat`, `restoran_sehir_id`, `restoran_text`, `restoran_resim`) VALUES
(1, 'KONAK RESTAURANT/ANTAKYA', 50, 31, ' Konak Restaurant, Hatay’ın ambiyansı en şahane mekanı olabilir. Ne yiyelim diye soracak olursanız ise gözünüz kapalı sipariş edebileceğiniz tabaklar: mezelerden Muhammara ve Mütebbel, ara sıcaklardan Oruk (yani bizim bildiğimiz adıyla içli köfte), Güveçte Antakya Peyniri, Falafel, ana yemeklerden Et Öcce ve tatlılardan tabii ki künefe. Her şey dahil kişi başı maksimum 50-60 liraya mekandan çıkacağınızı da ayrıca belirtmek isterim.', 'konak.jpg'),
(2, 'PÖÇ KASABI/ANTAKYA', 15, 31, ' Uzun Çarşı’nın içerisinde konuşlanan ve minicik bir girişi olan dükkanın vitrininde etler sallanıyor. Bildiğiniz kasap yani. Salaş bir yer olduğunu düşünebilirsiniz ama içeriye girmemizle üç katlı devasa bir mekan sizleri karşılıyor. Kuzu etinden sanat yaptıklarına inandığım Pöç Kasabı’nda Kağıt Kebabı ve Tepsi Kebabı yemeden sakın ola çıkmayın. Porsiyon fiyatları 15 TL.', 'kasap.jpg'),
(3, 'SAVON HOTEL/ANTAKYA', 30, 31, 'Akşamları otelin avlusunda canlı müzik ya da DJ performansı keyfini de yakalayabileceğiniz otelin gecelik oda fiyatı ortalama 250 TL civarında. Humusların, muhammaraların, zahter salatalarının, sürk, çökelek gibi  tüm yöresel peynirlerin de yer aldığı kahvaltıya dışarıdan katılmak isterseniz de kişi başı fiyatı 30 TL. Konaklamasanız bile kahvaltıyı mutlaka deneyimlemeye gelmelisiniz. ', 'savon.jpg'),
(4, 'KURTOĞLU RESTAURANT/BELEN', 15, 31, ' Kurtoğlu, Hatay’ın en iyilerinden. 1950\'den beri ayakta. Kuzu eti, sebze ve sarımsak sotenin eritilmiş kuyruk yağı ile birlikte güveçte 30-35 dakika pişirilmesiyle ortaya çıkan bu kocaman porsiyonlu lezzetin fiyatı ise 15 TL. Belen Tava’nın pişmesi uzun sürdüğünden insanlar mekana gelmeden önce restoranı arayarak veriyormuş siparişlerini. Gezi sırasında zaman kazanmak isterseniz iyi taktik bence.', 'belen.jpg'),
(5, 'ÇINARALTI KÜNEFE/ANTAKYA', 20, 31, '  Hatay’da en iyi künefeyi Uzun Çarşı’da konuşlanan ve künefeyi közde yapan Yusuf Usta’nın Yeri’nde mutlaka denemelisiniz. Bir diğer adıyla Çınaraltı Künefe. ', 'künefe.jpg'),
(6, 'SVEYKA RESTAURANT/ANTAKYA', 60, 31, ' Antakya mutfağını Halep mutfağıyla harmanlayan bir yer burası. Muhammarası, İbrahim Usta\'dan alıp servis ettiği humusu, kırma zeytinli zahter salatası, tebbulesi, maklubesi (patlıcan kızartmaya sarılı iç pilav), vişneli kebabı, etli aşırı (keşkek yani) ve taze kıymadan yapılan sucuklu rulosu olmazsa olmaz spesiyalleri. Akşam yemeği için harika bir mekan. Kişi başı ortalama 60 TL’ye tamamsınız burada.\r\n\r\n', 'sveyka.jpg'),
(7, 'AFFAN KAHVESİ/ANTAKYA', 5, 31, 'Mısır unu ve sütten yapılan muhallebi, gül suyu ve dondurma: nam-ı diğer Haytalı! Bir diğer adıyla Bıcı Bıcı! En iyisi Affan Kahvesi\'ndeymiş, biz de oraya gittik. Ben gül suyundan pek hoşlanmadığım için aromasının baskınlığı çok yememe engel oldu. Ama ekipte 2 porsiyon yiyenler vardı. Bilginize. Fiyatı: 5 TL', 'affan.jpg'),
(8, 'Trabzon Pilavcısı/Merkez', 6, 61, 'Trabzon Pilavcısı bundan yaklaşık bir yıl önce açılmasına rağmen şimdiden efsane olmuş memlekette. Mekan, pilavında baldo pirinç kullanıyor ve en önemlisi kaliteli tavuk eti servis ediyor. Dükkanları normalde şehir merkezinde ama hedef kitle öğrenci olunca, çok yakında Karadeniz Teknik Üniversitesi\'nin konuşlandığı Kalkınma bölgesine taşınacaklarmış. Tavuklu nohutlu pilavlarının porsiyon fiyatı: 6 TL\r\n\r\n', 'pilav.jpg'),
(9, 'Lokma Şana/Yomra', 20, 61, 'Lokma aslında Trabzon’un yerel pastane zincirlerinden biri ama Şana’daki şubesi diğerlerine göre bir tık daha geniş bir mutfağa sahip. İnsanları Trabzon’un merkezinden 10-15 kilometrelik mesafeye getiren şey ise buranın kahvaltısı. Özenle seçilmiş ürünlerin yer aldığı serpme kahvaltının kişi başı fiyatı 20 TL iken, kuymak 10 TL, kaygana ise 6 TL’den servis ediliyor.', 'lokma.jpg'),
(10, 'Muharrem Usta/Merkez', 8, 61, 'Trabzon\'da tatlı denince akla belki ilk Hamsiköy Sütlacı, Sürmene Burmalısı, Laz Böreği gibi lezzetler geliyor ama bence (döneriyle de buranın en beğenilen lokantalarından biri olan) Muharrem Usta\'nın \"Krema\"sı da en az bahsettiğim tatlılar kadar efsane. Halis muhlis inek sütünden yapılan bu sütlü tatlıyı geldiğinizde muhakkak denemenizi öneririm. Muharrem Usta şehir merkezinde hemen Trabzonspor Müzesi\'nin karşısında. Tatlının fiyatı: 7.50 TL\r\n\r\n', 'sütlac.jpg'),
(11, 'Bozo Pide/Sürmene', 15, 61, ' Sürmene\'deki Bozo Pide\'de şehrin popüler mekânlarından biri. Yumurtanın sarısı ve bol tereyağı olmadan yenmeyen Trabzon Pidesi, Bozo Pide\'de; benim bildiğim ve sevdiğim diğer Trabzon pidelerine göre biraz daha ince hamurdan yapılıyor. Pide fiyatları ise ortalama 15 TL civarında.', 'bozo.jpg'),
(12, 'Bordo Mavi Balık/Merkez', 40, 61, ' Yarmalı dolma, turşu, haşlanmış patates, minzi vb. keyifli ikramlarla ziyafete başladığınız mekanda balık olarak ne önerirsin derseniz, somon şiş iyiydi ama mezgit tava tek kelimeyle efsaneydi diyebilirim. Siz yine de balık seçiminizi mekan sahibi Erşan Yılmaz’a bırakın. Hatta sipariş öncesi bir selamımı muhakkak iletin kendisine. Kişi başı fiyatı ortalama 40 TL.', 'balik.jpg'),
(13, 'Komaroğlu Köfte Salonu/Akçaabat', 65, 61, 'Trabzon\'da en lezzetli köfteyi Komaroğlu\'nda yiyebilirsiniz. Bu çok lezzetli Akçaabat köftesinin kilosu 65 TL (yaklaşık 24-25 adet köfte). Yemeden sakın dönmeyin.\r\n\r\n', 'kofte.jpg'),
(14, 'Akın Pide Fırını/Merkez', 10, 61, ' “Gerçek Trabzon Pidesi” budur. Lafı fazla uzatmayacağım lakin görünen köy zaten kılavuz istemiyor. Akın Pide Fırını’nda açık kıymalı pidenin fiyatı: 10 TL\r\n\r\n', 'akın.jpg'),
(15, 'Butcha Steakhouse – Cennet Çamuru', 50, 6, 'Çankaya’da bulunan Butcha Steakhouse, envaiçeşit etiyle öne çıksa da öyle bir saklı lezzeti var ki ilk tadımınızdan itibaren adıyla gönderme yapılan cennete düşmüş gibi olacaksınız. Cennet Çamuru adını verdikleri bu tatlıda Antep fıstığı ve tel kadayıfı resmen gözünüzün önünde aşk yaşıyor. Merkezi bir konumda bulunduğundan ulaşım sıkıntısı ise kesinlikle yaşamayacaksınız.', 'cennet.jpg'),
(16, 'Çukurağa Sofrası – Yaprak Kebabı', 37, 6, '“Lezzeti en güzel şekilde sunmak, en çok haz aldığım hobimdir.” diyerek yaptığı işe gönül verdiğini açıkça belli eden mekân sahibi İrfan Tanrıverdi, Çukurağa Sofrası’na gelen misafirlerinin midesi kadar yüreğini de okşuyor.bu mekandaki favori yemeğimiz yaprak kebabı oldu.\r\nKebabınızın gelmesini beklerken ücreti karşılığında önden servis edilen ve çok nefis bir tada sahip içli köftelerin tadına bakabilirsiniz.', 'yaprak.jpg'),
(17, 'Mavi dükkan: İskender', 60, 16, 'Nam-ı diğer Mavi Dükkan! \"Bursa’da iskender nerede yenir?”in ilk cevabıdır kendisi. 1867 yılından beri şehrin en iyi İskender dönercisi olan mekan, şimdiye kadar yediğiniz dönerleri unutturacak cinsten. Domates sosunun, süzme yoğurdun ve o kızgın tereyağının tadı bile sizi alt üst edecek cinsten.\r\nİskender adres: Tayyare Kültür Merkezi Yanı, Atatürk Caddesi No:60, Osmangazi, Bursa', 'mavi.jpg'),
(18, 'Abdal Simit Fırını', 2, 16, 'Bursa simidiyle efsane olmuş Abdal Simit Fırını huzurlarınızda. Tarihi 1969 yılına dayanan bu fırındaki ürünler ilk açıldığı günden bu yana odun ateşinde pişiyor. Ve o gün bugündür mütevazi kahvaltıların, minik atıştırmalıkların, çay molalarının Bursa’daki en özel adresidir bu fırın.\r\nAbdal Simit Fırını adres: Tuz Pazarı Mahallesi, Abdal Caddesi, Fırın Sokak, No:2, Bursa', 'abdal.jpg');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `restoran`
--
ALTER TABLE `restoran`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `restoran`
--
ALTER TABLE `restoran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
