-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Haz 2021, 11:01:11
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
-- Tablo için tablo yapısı `gezi`
--

CREATE TABLE `gezi` (
  `id` int(11) NOT NULL,
  `gezi_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `gezi_fiyat` int(11) NOT NULL,
  `gezi_sehir_id` int(11) NOT NULL,
  `gezi_text` text COLLATE utf8_turkish_ci NOT NULL,
  `gezi_resim` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gezi`
--

INSERT INTO `gezi` (`id`, `gezi_ad`, `gezi_fiyat`, `gezi_sehir_id`, `gezi_text`, `gezi_resim`) VALUES
(1, 'Sümela Manastırı', 120, 61, 'Trabzon’un Maçka ilçesindeki Altındere Vadisi’nde yer alan Sümela Manastırı, denizden 1300 m yükseklikte bulunuyor ve sarp bir kayalık üzerinde görkemli bir manzara sunuyor ziyaretçilerine. Bu doğal güzellikten yararlanmak için düzenlenen turlara katılabilirsiniz.', 'sumela.jpg'),
(2, 'Antakya Uzun Çarşı', 50, 31, 'Hatay’ın göz bebeklerinden birisi olan Antakya Uzun Çarşı, dar sokakları, renkli dükkanlarıyla oldukça popülerdir. Tarihi İpek Yolu üzerinde yer alan bu tarihi çarşı, ticaretin kalbi konumunda bulunuyor. Çarşıya gittiğiniz zaman içerisinde bulunan Kurşunlu Han’ı da ziyaret planınıza eklemenizde fayda var.', 'uzunÇarşı.jpg'),
(3, 'İskenderun', 20, 31, 'Hatay’a geldiğinizde deniz kıyısında bulunan ilçesi İskenderun’u görmeden dönmeyin deriz. İskenderun Limanı’nda yürüyüş yapabilir ve Hatay mutfağının enfes lezzetlerini deneyimleyebilirsiniz.\r\n\r\n', 'iskenderun.jpg'),
(4, 'Harbiye', 100, 31, 'Hem bir mesire alanı hem de bir antik kent olan Harbiye, yeşillikler içinde bir yer. Antik kent ise ne yazık ki depremlerden dolayı bir hayli zarar görmüş durumda. Bu nedenle de görülecek pek fazla bir eser yok. Ancak biraz olsun huzur dolu vakitler geçirmek ve doğanın tadını çıkarmak için Harbiye’ye mutlaka uğramanızı tavsiye ediyoruz.', 'harbiye.jpg'),
(5, 'Habib-i Neccar Camisi', 50, 31, 'Roma döneminden kalma bir Pagan tapınağının üzerine inşa edilen Habib-i Neccar Camisi, Anadolu’da yapılan ilk cami olarak biliniyor. Peygamberin havarilerinden Yunus ve Yahya ile onların müridi ilk şehit Antakyalı Habib-i Neccar’ın türbesine ev sahipliği yapan cami, çok kez restore edilerek bugünlere gelmiş.\r\n\r\n', 'habibineccar.jpg'),
(6, 'Titus Kaya Tüneli', 100, 31, 'İmparator Vespasianus tarafından M.Ö. 3000 yılında yaptırılmış olan Titus Kaya Tünel, Samandağ ilçesinde yer alıyor. Dağın hemen bitiminde bulunan bir iç limanın kenti sular altında bırakması üzerine yapılan Titus Kaya Tüneli, çok sayıda kaya mezarına da ev sahipliği yapıyor.', 'titus.jpg'),
(7, 'Hatay Arkeoloji Müzesi', 40, 31, 'Harbiye, Antakya, Aççana, Çevik ve İskenderun’da yapılan kazılarla ele geçirilen eserlerin sergilendiği Hatay Arkeoloji Müzesi, Hatay’a geldiğinizde mutlaka görmeniz gereken bir yer. Mozaik ve para koleksiyonu yönünden dünyanın en önemli müzeleri arasından gösterilen Hatay Arkeoloji Müzesi’ni mutlaka ziyaret listenize eklemelisiniz.\r\n\r\n', 'müze.jpg'),
(8, 'Murat Dağı Kaplıcaları', 500, 43, 'Tam bir oksijen deposu olan ve huzurlu bir şekilde doğayla iç içe olmanın keyfini çıkarmak isteyenlerin tercih ettiği Murat Dağı Kaplıcaları şifanın önemli adreslerinden biridir. Burada yan yana iki tane hamam vardır ve bu hamamların Germiyanoğulları döneminde yaptırıldığı düşünülmektedir. Kaplıcalar aynı zamanda Gediz\'e 30 kilometre uzaklıktadır. Murat Dağı Kaplıcaları, sağlığınız için düşündüğünüz tatil noktalarından biridir.', 'kaplıca.jpg'),
(9, 'Kütahya Ulu Camii', 20, 43, '1381 yılında inşa edilen Kütahya Ulu Camii, şehrin merkezinde bulunmaktadır. Caminin en önemli özelliği şehrin en büyük iç alana sahip ibadet mekanı olmasıdır.\r\n\r\nKütahya Merkez\'de bulunan caminin inşasında tamamı ile kesme taş kullanılmıştır. Kütahya Ulu Camii; 64 pencereye, 2 tam kubbeye ve 6 yarım kubbeye sahiptir. Camideki Kabe tasviri dışında hiç çini kullanılmamıştır. Kütahya Merkez gezilecek yerlerinize Kütahya Ulu Camii\'ni dahil edebilirsiniz.', 'cami.jpg'),
(10, 'Zafertepe Anıtı', 100, 43, ' Kütahya Zafertepe Anıtı, Altıntaş ilçesine bağlı olan Çalköy\'de bulunuyor. Anıt, ulaşım açısından çok rahat bir noktada… 1922 yılında gerçekleşen Başkomutanlık Meydan Muharebesi\'nde Atatürk\'ün “\'Ordular ilk hedefiniz Akdeniz\'dir, ileri.”\' Sözünü söylediği yer olmasından dolayı turistler tarafından ziyaret edilmektedir. Aynı zamanda bölgeye okul gezileri de yapılmaktadır. 1972 yılında tamamlanan bu sembol, gezinizin bir parçası olabilir.', 'anıt.jpg'),
(11, 'Kütahya Kalesi', 100, 43, 'Kütahya Kalesi, Kütahya\'nın ilk kurulduğu yerde bulunan kale, şehrin merkezinde olup Bizanslılar\'dan kalma bir yapıdır. Antik çağlardan bu yana varlığını korumaya devam eden şehir ve kale, 5. yüzyılda Bizanslıların yaptırdığı surlara ek olarak, Selçuklular, Germiyanoğulları ve Osmanlılar tarafından birçok kez onarımımdan geçmiş ve eklerle güçlendirilmiştir.', 'kale.jpg'),
(12, 'Kütahya Arkeoloji Müzesi', 5, 43, 'Kütahya Arkeoloji Müzesi, Kütahya merkezde Anadolu\'nun binlerce yıllık yaşamından izlerin günümüzde görebileceğiniz oldukça kapsamlı bir müzedir. Anadolu\'nun ve bulunduğu bölgenin geçmişine ışık tutan miraslara ev sahipliği yapan müze binası, Kütahya Ulu Cami yanında bulunan Vacidiye Medresesi olarak bilinen tarihi yapıdır.\r\n Müze haftanın 7 günü açıktır. Sadece dini bayramların birinci günü saat 13:00\'e kadar kapalıdır. ', 'arkeoloji.jpg'),
(13, 'Aizanoi Antik Kenti', 150, 43, 'Kütahya\'ya bir gezi planlıyorsanız, şehrin gezilecek yerlerine zaman ayırmayı unutmayın. Aizanoi Antik Kenti de ziyaret etmenizi önerdiğimiz yerlerden biridir.\r\nŞehir merkezine 48 kilometre uzaklıkta olan antik kent, Çavdarhisar ilçesinde bulunmaktadır. Aizanoi sizlere en sağlam ve en değerli kalıntılarını sunmaya hazır. Yapmanız gereken tek şey Aizanoi Antik Kenti yakınındaki otellerin birinde konaklamak olacak.\r\n\r\n ', 'kent.jpg'),
(14, 'Ayasofya', 100, 34, 'İstanbul’un gözbebeği Tarihi Yarımada’yı gezmeye başlamak için en doğru yer Ayasofya Cami. Dünyanın en tanınmış ibadethanelerinden biri olarak aynı yerde 3 defa inşa edilen Ayasofya, son halini 537 yılında aldı. Ayasofya’nın ibadete açıldığı gün İmparator Justinianos’un, “Tanrım bana böyle bir ibadet yeri yapabilme fırsatı sağladığın için şükürler olsun” dediği ve Kudüs’teki Hz. Süleyman Mabedi’ni kastederek “Ey Süleyman seni geçtim” diye bağırdığı rivayet ediliyor.\r\n\r\n', 'ayasofya.jpg'),
(15, 'Topkapı Sarayı', 100, 34, 'Osmanlı İmparatorluğu, dünyanın en geniş sınırlara ulaşmış ve yüzyıllarca hakimiyetini sürdürmüş imparatorluklarından biri. Bu köklü tarihin ve ihtişamlı yapının 400 yıl boyunca yönetildiği, sultanların ve ailelerinin yaşadığı Topkapı Sarayı ise bütün görkemiyle Tarihi Yarımada’da görülmeyi bekliyor.', 'topkapı.jpg'),
(16, 'Kapalı Çarşı (Grand Bazaar)', 50, 34, 'Tarihi Yarımada’nın en gözde duraklarından biri de Beyazıt’ta 550 yıldır ayakta duran Kapalı Çarşı. Yabancıların Grand Bazaar adıyla tanıdığı Kapalı Çarşı, içinde kaybolacağınız sokakları ve dünya altın piyasasına yön veren kuyumcularıyla ünlü\r\nİstanbul’un en eski çarşısının içinde alışveriş yapmanın yanı sıra, burada satılan her şeyin İstanbul’un kadim ruhunu yansıttığını göreceksiniz.', 'kapalıÇarşı.jpg'),
(17, 'Yerebatan Sarnıcı', 50, 34, 'Bizans Dönemi’nde sarayın su ihtiyacını karşılamak için yaptırılan sarnıç, göz alıcı sütunları ve Medusa heykeli ile hala kendisine hayran bırakıyor.\r\nBugün içinde birçok sanat etkinliğine de ev sahipliği yapan Yerebatan Sarnıcı’nda gerçekleşen konserler ve dinletiler, katılanlara büyülü bir dünyanın kapılarını aralıyor.', 'yerebatan.jpg'),
(18, 'Galata Kulesi\r\n', 50, 34, 'Bugün en tepesine çıkıp İstanbul manzarasını seyretmek için uzun kuyrukların beklendiği Galata Kulesi, İstanbul’un siluetini çizen en önemli simgelerden biri.\r\n528 yılında inşa edilen yapı, İstanbul Boğazı ve Haliç’e akim konumda, bir fener kulesi olarak inşa edilmiş ama dönem dönem zindan olarak da kullanılmış.\r\n\r\nKuleye birlikte çıkan âşıkların sonunda evlendikleri, kuleyle ilgili rivayetlerin en popüler olanı…\r\n\r\n', 'galataKulesi.jpg'),
(19, 'Rumeli Hisarı\r\n\r\n', 100, 34, 'Fatih Sultan Mehmet’in İstanbul’un Fethi esnasında Karadeniz’den Bizans’a gelebilecek yardımları kesmek amacıyla 90 günde yapılan Rumelihisarı, amacına uygun olarak Boğazkesen Hisarı adıyla da biliniyor.Üç büyük kulesi ve surlarıyla muhteşem bir yapı olan Rumelihisarı, Boğaz’ın iki kıyısının birbirine en çok yaklaştığı nokta’da Anadolu Hisarı’nın tam karşısında yer alıyor. Günümüzde müze olarak ziyarete açık. \r\n', 'rumeliHisarı.jpg'),
(20, 'Anıtkabir', 50, 6, 'Ankara dendiğinde ziyaret edilecek yerlerin en başında elbette Anıtkabir geliyor. Gazi Mustafa Kemal’in ebedi istirahat yeri olan anıt mezar büyük komutanın şanına ve şahsiyetine yakışır nitelikte bir mimari yapı.\r\n\r\n', 'anıtkabir.jpg'),
(21, 'Kızılay Meydanı', 100, 6, 'Adını Kızılay Genel Merkez Binası’ndan alan meydan şehrin hareket ve eğlence bakımından en yaşayan merkezlerinden.\r\n\r\nAlışveriş ve eğlence mekanlarının bir arada bulunan bu meydanda istediğiniz her şeye ulaşabilmeniz mümkün.', 'kızılay.jpg'),
(22, 'Kocatepe Camisi', 50, 6, 'İnşasına 1967’de başlanılan caminin tamamlanması 20 yıl sürmüş. 1987’de hizmete açılan cami bugün başkentin en büyük ve ihtişamlı dini yapılarından.\r\nAçılışı dönemin başbakanı Turgut Özal tarafından yapılan caminin mimarisi genel anlamda Osmanlı esintileri taşıyor. Kocatepe Camii’nin tarihi bir niteliği olmamasına karşın işçiliğindeki estetik ve sanat mutlaka görülmeye değer.\r\n\r\n', 'kocatepe.jpg'),
(23, 'Ankara Kalesi', 100, 6, 'Ankara Kalesi şehre hâkim bir tepede konumlanıyor. Kaleye çıktığınızda tüm Ankara ayaklarınızın altına seriliyor.\r\nAnkara kadar kadim olan kalede Galatlardan Osmanlı’ya kadar onlarca medeniyetin kalp atışlarını duymak mümkün. Tarihin yaşayan tanıklarından olan kaleye giriş için herhangi bir ücret talep edilmiyor.\r\nAltındağ ilçesi sınırları içerisinde bulunan kaleye ulaşım sağlamak için Ulus’tan geçen metro, otobüs vb. gibi toplu taşıma araçlarından faydalanabilirsiniz.', 'ankaraKalesi.jpg'),
(24, 'Anadolu Medeniyetleri Müzesi', 36, 6, ' Paleolitik Çağ’dan Osmanlı’ya kadarki zamanın tarihi ve kültürel mirasına ev sahipliği yapmasından ötürü bugün dünyanın en önemli müzelerinden olan Anadolu Medeniyetleri Müzesi 1997 yılında İsviçre’de yapılan bir elemede Avrupa genelinde “Yılın Müzesi” seçilmiş. Müzeye giriş ücreti 36 TL.', 'ankaraMüze.jpg'),
(25, 'Botanik Parkı', 20, 6, 'Botanik Parkı Atakule’nin arkasına kendini gizlemiş olağanüstü bir güzellik. Şehrin göbeğinde farklı bir coğrafyadaymışsınız gibi hissediyor. Öylesine sakin ve huzurlu ki, burada ömrünüzün uzadığını hissediyorsunuz.', 'park.jpg'),
(26, 'Muradiye Külliyesi', 50, 16, 'Bursa tarihi yerler arasında can alıcı bir öneme sahip olan Muradiye Külliyesi, Osmanlılar döneminde yaptırılan son külliye olma özelliği taşıyor.\r\n\r\nSultan 2. Murat döneminde inşa edilen külliyenin içinde hamam, camii, medrese ve türbeler var. Osmangazi’de yer alan Muradiye Külliyesi, Bursa merkezde gezilecek yerlerin en önemlisi olarak nitelendirilebilir.\r\n\r\nBu arada külliyenin konumlandığı Muradiye Mahallesi’ne, direkt çalışan otobüslerle de ulaşılabilir.', 'muradiye.jpg'),
(27, 'Osman Gazi ve Orhan Gazi Türbeleri', 50, 16, 'Osmangazi semtindeki bu iki türbe karşılıklı konumlanarak Bursa gezisinin tarih haritasını oluşturuyor. Osmanlı Devleti’nin kurucuları Osman Bey ve Orhan Bey’in kabirlerinin bulunduğu türbeler, Tophane Meydanı’nda yer alıyor.\r\nOsman Gazi’nin kuşatma sırasında vasiyeti üzerine, Saint Elie Bizans manastırının bir kısmı üzerine inşa edilen türbeye Bursa’nın fethinden sonra gömüldüğü belirtiliyor.', 'türbe.jpg'),
(28, 'Ulu Camii', 50, 16, 'Bursa’nın sembollerinden olan Ulu Camii, şehri ziyaret eden herkesin gezmesi gereken görkemli bir yapı. Yirmi kubbesi olan Ulu Camii, ülkenin iç alanı en geniş camisi olarak biliniyor.\r\n\r\nI. Bayezid tarafından yaptırılan cami, hat sanatının Osmanlı dönemindeki en kıymetli örnekleri arasında.\r\n\r\n1855 yılında yaşanan depremde büyük hasar görmesine rağmen, özellikle şadırvanıyla hala göz kamaştırıyor. Ulu Camii, Bursa kent merkezinde yer alıyor.', 'uluCami.jpg');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `gezi`
--
ALTER TABLE `gezi`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `gezi`
--
ALTER TABLE `gezi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
