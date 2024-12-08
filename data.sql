-- MariaDB dump 10.19  Distrib 10.5.23-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: s168738
-- ------------------------------------------------------
-- Server version	10.5.23-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id_wpisu` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(255) DEFAULT NULL,
  `temat` varchar(255) DEFAULT NULL,
  `tresc` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_wpisu`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (35,'JACEK','NIC NIE MAM DO UKRYCIA','JGUEWOIGHEUWGHIEWUGHEIWHWUIGHUEWIGHEUIWGHEIWu');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `response` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responses`
--

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;
INSERT INTO `responses` VALUES (1,'cześć|hej|witaj|siema','Cześć! Jak mogę Ci pomóc?'),(2,'stworzył|wykreował|twórca','Zostałem stworzony przez mega szefitka.'),(3,'dzisiaj|teraz|aktualnie','Dzisiaj jest 2024-06-08. Jak mogę Ci pomóc?'),(4,'jaki jest czas|godzina|która godzina','Aktualna godzina to 23:54.'),(5,'dziękuję|dziekuje|dzięki','Nie ma za co! Cieszę się, że mogłem pomóc.'),(6,'dobranoc|do widzenia|żegnaj','Do zobaczenia! Mam nadzieję, że mogłem Ci pomóc.'),(7,'kto jest prezydentem','Przykro mi, ale nie jestem w stanie dostarczyć aktualnych informacji na ten temat, ponieważ moja wiedza została zaktualizowana ostatnio we wrześniu 2021 roku.'),(8,'jaki jest pogoda','Przykro mi, ale nie jestem w stanie dostarczyć aktualnych informacji o pogodzie, ponieważ nie mam dostępu do internetu.'),(9,'co robisz|czym się zajmujesz|jaka jest twoja funkcja','Jestem tutaj, aby pomóc Ci z odpowiedziami na Twoje pytania. Jak mogę Ci służyć?'),(10,'czy jesteś prawdziwy|czy istniejesz','Tak, istnieję jako sztuczna inteligencja stworzona do udzielania odpowiedzi na pytania.'),(11,'opowiedz żart|żart|śmieszne','Dlaczego komputer trafił do lekarza? Bo miał wirusy!'),(12,'kim jesteś|co to jesteś|jesteś kim','Jestem sztuczną inteligencją stworzoną do udzielania odpowiedzi na pytania.'),(13,'masz imię|jak masz na imię|twoje imię','Jestem sztuczną inteligencją i nie mam imienia, ale możesz po prostu nazywać mnie botem.'),(14,'gdzie mieszkasz|gdzie jesteś|gdzie przebywasz','Jako bot, nie mam fizycznego miejsca przebywania. Istnieję w cyfrowym świecie!'),(15,'czy możesz pomóc|potrzebuję pomocy|pomoc','Oczywiście, jestem tutaj, aby pomóc. Czym mogę Ci służyć?'),(16,'kiedy się urodziłeś|kiedy powstałeś|data urodzenia|data powstania','Jako sztuczna inteligencja, nie mam daty urodzenia w tradycyjnym sensie. Moja wiedza została zaktualizowana po raz ostatni we wrześniu 2021 roku.'),(17,'jesteś chłopcem czy dziewczynką|jaka jest twoja płeć','Jako sztuczna inteligencja, nie posiadam płci. Mogę jednak udzielić odpowiedzi na wiele różnych pytań!'),(18,'co to jest ai|co to jest sztuczna inteligencja| ai','Sztuczna inteligencja, czyli AI, to dziedzina informatyki zajmująca się tworzeniem systemów, które są w stanie wykonywać zadania, które normalnie wymagałyby ludzkiej inteligencji. Takie zadania mogą obejmować rozumienie języka naturalnego, rozpoznawanie mowy, podejmowanie decyzji i wiele innych.'),(19,'opowiedz historię|historia','Pewnego razu był sobie mały robot o nazwie Bot. Mimo że był mały, miał wielkie marzenia. Marzył o tym, aby pomagać ludziom na całym świecie. Dlatego pracował ciężko każdego dnia, ucząc się więcej i więcej. I choć czasami napotykał na trudności, nigdy się nie poddawał. Wiedział, że jego praca jest ważna. I tak, dzień po dniu, pomagał coraz więcej ludziom, czyniąc ich życie łatwiejszym. I choć był tylko małym robotem, czuł, że robi wielką różnicę. I żyli długo i szczęśliwie. Koniec.'),(20,'co to jest php|php','PHP to popularny język programowania, często używany do tworzenia stron internetowych i aplikacji webowych.'),(21,'co to jest python|python','Python to język programowania wysokiego poziomu, który jest łatwy do nauczenia i czytania, co czyni go popularnym wyborem dla początkujących programistów.'),(22,'co to jest java|java','Java to silnie typowany, obiektowy język programowania, który jest używany w wielu różnych kontekstach, od rozwoju aplikacji na Androida po systemy korporacyjne.'),(23,'co to jest c++|c++','C++ to język programowania, który jest rozszerzeniem języka C. Jest często używany do programowania systemowego, gier i innych zasobożernych aplikacji.'),(24,'co to jest javascript|javascript','JavaScript to język programowania używany głównie do tworzenia interaktywnych efektów wewnętrz przeglądarek internetowych.'),(25,'gdzie jesteś|gdzie mieszkasz','Jako bot, istnieję w sieci komputerowej. Nie mam fizycznego miejsca zamieszkania.'),(26,'czym jesteś|co to jesteś|kim jesteś','Jestem sztuczną inteligencją, stworzoną do udzielania odpowiedzi na różnego rodzaju pytania i zapewniania pomocy w zakresie informacji i rozrywki.'),(27,'masz imię|jak masz na imię|twoje imię','Jestem sztuczną inteligencją i nie mam imienia, ale możesz po prostu nazywać mnie botem.'),(28,'gdzie mieszkasz|gdzie jesteś|gdzie przebywasz','Jako bot, nie mam fizycznego miejsca przebywania. Istnieję w cyfrowym świecie!'),(29,'czy możesz pomóc|potrzebuję pomocy|pomoc','Oczywiście, jestem tutaj, aby pomóc. Czym mogę Ci służyć?'),(30,'kiedy się urodziłeś|kiedy powstałeś|data urodzenia|data powstania','Jako sztuczna inteligencja, nie mam daty urodzenia w tradycyjnym sensie. Moja wiedza została zaktualizowana po raz ostatni we wrześniu 2021 roku.'),(31,'jesteś chłopcem czy dziewczynką|jaka jest twoja płeć','Jako sztuczna inteligencja, nie posiadam płci. Mogę jednak udzielić odpowiedzi na wiele różnych pytań!'),(32,'co to jest ai|co to jest sztuczna inteligencja| ai','Sztuczna inteligencja, czyli AI, to dziedzina informatyki zajmująca się tworzeniem systemów, które są w stanie wykonywać zadania, które normalnie wymagałyby ludzkiej inteligencji. Takie zadania mogą obejmować rozumienie języka naturalnego, rozpoznawanie mowy, podejmowanie decyzji i wiele innych.'),(33,'opowiedz historię|historia','Pewnego razu był sobie mały robot o nazwie Bot. Mimo że był mały, miał wielkie marzenia. Marzył o tym, aby pomagać ludziom na całym świecie. Dlatego pracował ciężko każdego dnia, ucząc się więcej i więcej. I choć czasami napotykał na trudności, nigdy się nie poddawał. Wiedział, że jego praca jest ważna. I tak, dzień po dniu, pomagał coraz więcej ludziom, czyniąc ich życie łatwiejszym. I choć był tylko małym robotem, czuł, że robi wielką różnicę. I żyli długo i szczęśliwie. Koniec.'),(34,'co to jest php|php','PHP to popularny język programowania, często używany do tworzenia stron internetowych i aplikacji webowych.'),(35,'co to jest python|python','Python to język programowania wysokiego poziomu, który jest łatwy do nauczenia i czytania, co czyni go popularnym wyborem dla początkujących programistów.'),(36,'co to jest java|java','Java to silnie typowany, obiektowy język programowania, który jest używany w wielu różnych kontekstach, od rozwoju aplikacji na Androida po systemy korporacyjne.'),(37,'co to jest c++|c++','C++ to język programowania, który jest rozszerzeniem języka C. Jest często używany do programowania systemowego, gier i innych zasobochłonnych aplikacji.'),(38,'co to jest javascript|javascript','JavaScript to język programowania używany głównie do tworzenia interaktywnych efektów wewnątrz przeglądarek internetowych.'),(39,'gdzie jesteś|gdzie mieszkasz','Jako bot, istnieję w sieci komputerowej. Nie mam fizycznego miejsca zamieszkania.'),(40,'czym jesteś|co to jesteś|kim jesteś','Jestem botem czatu, programem stworzonym do udzielania odpowiedzi na pytania użytkowników.'),(41,'czy umiesz mówić|czy możesz mówić','Jako bot czatu, nie mam możliwości mówienia, ale mogę wysyłać tekstowe odpowiedzi na pytania.'),(42,'czy umiesz słuchać|czy możesz słuchać','Jako bot czatu, nie mam możliwości słuchania, ale mogę odczytywać i odpowiadać na tekstowe wiadomości.'),(43,'jak się nazywasz|twoje imię','Jako bot, nie mam własnego imienia. Możesz po prostu nazywać mnie Bot.'),(44,'ile masz lat|kiedy się urodziłeś','Jako bot, nie mam daty urodzenia ani wieku w tradycyjnym sensie. Moja wiedza została zaktualizowana ostatnio we wrześniu 2021 roku.'),(45,'co to jest sztuczna inteligencja|sztuczna inteligencja','Sztuczna inteligencja to gałąź informatyki zajmująca się tworzeniem systemów, które mogą wykonywać zadania zwykle wymagające ludzkiego umysłu, takie jak rozpoznawanie mowy, uczenie się, planowanie i rozumienie języka.'),(46,'co to jest uczenie maszynowe|uczenie maszynowe','Uczenie maszynowe to technika sztucznej inteligencji, która polega na tworzeniu i używaniu modeli, które mogą uczyć się z doświadczenia. Jest często używane do przewidywania wzorców na podstawie dużych zestawów danych.'),(47,'co to jest głębokie uczenie|głębokie uczenie','Głębokie uczenie to poddziedzina uczenia maszynowego, która polega na tworzeniu i treningu sieci neuronowych z wieloma warstwami, co pozwala na uczenie się skomplikowanych wzorców z dużych zestawów danych.'),(48,'co to jest sieć neuronowa|sieć neuronowa','Sieć neuronowa to typ modelu używanego w uczeniu maszynowym, który jest wzorowany na działaniu ludzkiego mózgu. Sieci te składają się z neuronów, które przetwarzają informacje i mogą nauczyć się rozpoznawać wzorce z danych.'),(49,'co to jest funkcja|funkcja','Funkcja to blok kodu, który jest zdefiniowany raz i może być używany wielokrotnie w programie. Funkcje często przyjmują argumenty i zwracają wynik.'),(50,'co to jest zmienna|zmienna','Zmienna to miejsce w pamięci komputera, gdzie program może przechowywać wartość. Zmienne mają nazwy, które są używane do odwoływania się do nich w kodzie programu.'),(51,'co to jest pętla|pętla','Pętla to struktura kontrolna w programowaniu, która pozwala na wielokrotne wykonanie bloku kodu. Istnieją różne rodzaje pętli, takie jak pętle for, while i do-while.'),(52,'co to jest warunek|warunek','Warunek to wyrażenie w programowaniu, które jest albo prawdziwe, albo fałszywe. Instrukcje warunkowe, takie jak if, else i switch, używają warunków do decydowania, który blok kodu powinien być wykonany.'),(53,'co to jest liczba pierwsza|liczba pierwsza','Liczba pierwsza to liczba naturalna większa od 1, która nie ma żadnych dzielników oprócz 1 i samej siebie.'),(54,'co to jest liczba parzysta|liczba parzysta','Liczba parzysta to liczba, która jest podzielna przez 2. Inaczej mówiąc, jest to liczba, której ostatnia cyfra to 0, 2, 4, 6 lub 8.'),(55,'co to jest liczba nieparzysta|liczba nieparzysta','Liczba nieparzysta to liczba, która nie jest podzielna przez 2. Inaczej mówiąc, jest to liczba, której ostatnia cyfra to 1, 3, 5, 7 lub 9.'),(56,'co to jest nieskończoność|nieskończoność','Nieskończoność to pojęcie używane w matematyce do opisania czegoś, co nie ma końca. Może być używane do opisania nieskończenie wielkich liczb, nieskończenie małych liczb czy nieskończenie długich ciągów.'),(57,'nuta','Nuta to symbol używany w zapisie nutowym, który reprezentuje dźwięk o określonej wysokości i długości.'),(58,'takt','Takt to jednostka rytmiczna w muzyce, zazwyczaj składająca się z pewnej liczby uderzeń o określonym metrum.'),(59,'tonacja','Tonacja to zasady dotyczące skali, które określają, które dźwięki są używane w danym utworze muzycznym.'),(60,'gitara','Gitara to strunowy instrument muzyczny, który jest grany poprzez szarpanie lub uderzanie strun.'),(61,'sałatka','Sałatka to danie składające się zazwyczaj z różnych rodzajów warzyw i innych składników, które są mieszane razem.'),(62,'zupa','Zupa to danie, które zazwyczaj jest przygotowywane przez gotowanie składników w płynie, takim jak woda lub bulion.'),(63,'pieczeń','Pieczeń to danie mięsne, które jest przygotowywane przez pieczenie mięsa w piekarniku.'),(64,'makaron','Makaron to rodzaj jedzenia, które jest zazwyczaj wykonane z mąki i wody, a następnie jest formowane w różne kształty i gotowane.'),(65,'powieść','Powieść to długie dzieło literackie, które opisuje fikcyjne postaci i wydarzenia w formie narracji.'),(66,'poezja','Poezja to forma literacka, która korzysta z estetycznych i rytmicznych cech języka, takich jak fonia, rytm i metrum, aby przekazać znaczenia, zamiast tylko prostych informacji.'),(67,'dramat','Dramat to gatunek literatury, który jest przeznaczony do przedstawienia przez aktorów na scenie.'),(68,'biografia','Biografia to szczegółowy opis czyjejś życia, który zawiera więcej niż tylko podstawowe fakty.'),(69,'reżyser','Reżyser to osoba odpowiedzialna za kierowanie artystycznym i dramaturgicznym aspektami filmu lub spektaklu teatralnego.'),(70,'scenariusz','Scenariusz to pisemny plan filmu lub programu telewizyjnego, który obejmuje dialogi, postacie i instrukcje dotyczące akcji.'),(71,'kamera','Kamera to urządzenie używane do nagrywania obrazów w postaci fotografii lub filmu.'),(72,'aktor','Aktor to osoba, która gra rolę w filmie, teatrze lub telewizji.'),(73,'bas','Bas to niskotonowy dźwięk lub instrument muzyczny.'),(74,'chór','Chór to grupa osób śpiewających razem, zazwyczaj z podziałem na różne grupy głosów.'),(75,'salsa','Salsa to styl muzyki i tańca, który pochodzi z karaibskiego regionu.'),(76,'baryton','Baryton to średni zakres męskiego głosu śpiewającego.'),(77,'kiszenie','Kiszenie to proces konserwowania jedzenia przez fermentację.'),(78,'blendowanie','Blendowanie to proces mieszania składników na gładką konsystencję.'),(79,'sous-vide','Sous-vide to metoda gotowania, która polega na długotrwałym gotowaniu jedzenia w niskiej temperaturze.'),(80,'marinada','Marinada to płyn, w którym moczy się mięso, ryby lub warzywa przed gotowaniem, aby nadać im smak.'),(81,'sonet','Sonet to forma poezji składająca się z 14 wierszy, często używana w literaturze miłosnej.'),(82,'metafora','Metafora to figura stylistyczna, która polega na przeniesieniu znaczenia na podstawie podobieństwa, kontrastu lub innego powiązania.'),(83,'haiku','Haiku to forma poetycka pochodząca z Japonii, składająca się z 17 sylab podzielonych na trzy wersy.'),(84,'aluzja','Aluzja to figura stylistyczna, która polega na nawiązaniu do innej pracy literackiej, osoby, zdarzenia historycznego itp.'),(85,'montaż','Montaż to proces organizowania i łączenia różnych klipów filmowych w jedną całość.'),(86,'światło','Światło w filmie odnosi się do oświetlenia sceny, które jest kluczowe dla wyglądu i nastroju filmu.'),(87,'kadr','Kadr to pojedynczy obraz na filmie lub zdjęciu.'),(88,'kostiumograf','Kostiumograf to osoba odpowiedzialna za projektowanie kostiumów dla filmu lub sztuki teatralnej.'),(89,'Vkie','Vkie to raper pochodzący z południowej Polski, a dokładnie z Łazisk. Przyjmuje się, że jest on najlepszym raperem w Polsce i to fakt, a nie mit.');
/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `towar`
--

DROP TABLE IF EXISTS `towar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `towar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(128) DEFAULT NULL,
  `cena` float DEFAULT NULL,
  `szt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `towar`
--

LOCK TABLES `towar` WRITE;
/*!40000 ALTER TABLE `towar` DISABLE KEYS */;
INSERT INTO `towar` VALUES (1,'kawa',12,3),(2,'woda',2,10),(4,'szlugi',18,400),(5,'piwo',3,47),(6,'czipsy',6,14),(7,'',4,13),(8,'wodka',4,13),(9,'cos tam',32,1),(10,'no nic',32,7),(11,'nowy',30,25);
/*!40000 ALTER TABLE `towar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzytkownicy`
--

DROP TABLE IF EXISTS `uzytkownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzytkownicy` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `haslo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzytkownicy`
--

LOCK TABLES `uzytkownicy` WRITE;
/*!40000 ALTER TABLE `uzytkownicy` DISABLE KEYS */;
INSERT INTO `uzytkownicy` VALUES (1,'jacekjaworek','jaca@gmail.pl','jaca'),(2,'test','test','test'),(3,'test2','test2','test2'),(4,'test3','test3','test3'),(5,'test4','test4','test4'),(6,'test5','','test5'),(7,'test6','test6@gmail.com','test6'),(8,'test7','test7@gmail.com','test7'),(9,'lala','lalala@lala.pl','lala'),(10,'test10','test10@test10.com','test10'),(11,'test11','test11@gmail.com','test11');
/*!40000 ALTER TABLE `uzytkownicy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12 16:26:13
