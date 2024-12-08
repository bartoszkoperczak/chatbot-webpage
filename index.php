<?php
if (!isset($_SESSION)) {
    session_start();
}

// Połączenie z bazą danych
$conn = mysqli_connect('localhost', 's168738', 'my1NfY9sql', 's168738');

if (!$conn) {
    die('Nie można połączyć z bazą danych: ' . mysqli_connect_error());
}

// Zapytanie SQL, aby policzyć liczbę użytkowników
$sql = "SELECT COUNT(id) AS liczba_uzytkownikow FROM uzytkownicy";
$result = mysqli_query($conn, $sql);

if ($result) {
    $row = mysqli_fetch_assoc($result);
    $liczba_uzytkownikow = $row['liczba_uzytkownikow'];
} else {
    $liczba_uzytkownikow = "Błąd w zapytaniu SQL: " . mysqli_error($conn);
}

// Zamknięcie połączenia z bazą danych
mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Porozmawiaj z Chatbotem!</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <nav>
        <div class="logo">CHATBOT</div>
        <div class="nav-items">
            <a href="#focus1">Strona główna</a>
            <a href="#focus2">Czym są chatboty</a>
            <a href="#focus3">Korzyści</a>
            <a href="#focus4">Zagrożenia</a>
            <a href="galeria.html">Galeria</a>
            <a href="#focus5">Porozmawiajmy</a>
        </div>
        <div class="menu-toggle" id="menu-toggle">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </nav>
    <section id="focus1" class="hero">
        <div class="hero-container">
            <div class="column-left">
                <h1>Porozmawiaj z Chatbotem</h1>
                <p>Witaj na stronie poświęconej Chatbotom, niezwykłym cyfrowym asystentom, które rewolucjonizują nasz sposób komunikacji z technologią. Jeśli chcesz pogłębić swoją wiedzę na temat tych nowoczesnych stworzeń, to idealnie trafiłeś! Tutaj możesz odkryć fascynujący świat sztucznej inteligencji i dowiedzieć się, jak chatboty mogą ułatwić codzienne zadania, oferując wsparcie i interakcję niemalże ludzką. Możesz dowiedzieć się więcej o korzyściach i zagrożeniach płynących z korzystania z Chatbotów w codziennym życiu - od automatyzacji obsługi klienta po personalizację doświadczeń zakupowych. Stwórzmy razem społeczność osób zainteresowanych tematem botów, gdzie każdy może znaleźć miejsce dla siebie. Zachęcam do rejestracji konta, aby dołączyć do naszego rosnącego grona entuzjastów. Pokażemy wszystkim, jak wielki potencjał drzemie w tej technologii, ile już nas jest i jak możemy wspólnie kształtować przyszłość komunikacji. A jeśli chcesz wypróbować mojego autorskiego bota, który jest wynikiem wielu godzin programowania i dopracowywania szczegółów, kliknij przycisk poniżej! Dołącz do nas i bądź częścią tej ekscytującej podróży w świat chatbotów.</p>
                <div class="buttons-container">
                    <button onclick="location.href='#focus5'">Porozmawiajmy!</button>
                    <button onclick="window.location.href='logowanie.php'">Zaloguj się!</button>
                    <button onclick="window.location.href='rejestracja.php'">Zarejestruj się!</button>
                </div>
                <h1>Dołącz do nas!</h1>
                <p>Chcesz, żebyś miał realny wpływ na zmiany strony internetowej? Twoje opinie i sugestie mogą kształtować przyszłość naszej platformy, dając Ci możliwość współtworzenia treści, które odzwierciedlają potrzeby i oczekiwania społeczności. Jeśli tak, to załóż konto na mojej stronie, a Twoja obecność zostanie zauważona nie tylko przez innych użytkowników, ale także przez twórców strony. Będziesz wyświetlany jako jeden z pionierów, którzy założyli już swoje konta i przyczyniają się do ewolucji naszego serwisu. Dołączając do nas zostaniesz uhonorowanym fanem Chatbotów, co jest wyrazem uznania dla Twojego zaangażowania i pasji do tej innowacyjnej technologii. Rejestruj się już dziś i zacznij tworzyć z nami historię interaktywnych asystentów cyfrowych!</p>
                <h2>Naszą społeczność tworzy <strong><?php echo $liczba_uzytkownikow; ?></strong> użytkowników.</h2>
            </div>
            <div class="column-right">
                <div class="slider-container">
                    <img src="logo2.png" alt="Slider Image" class="slider-image active"> <!-- Obrazek domyślny -->
                    <img src="logo3.png" alt="Slider Image" class="slider-image">
                    <img src="logo4.png" alt="Slider Image" class="slider-image">
                    <img src="logo5.png" alt="Slider Image" class="slider-image">
                </div>
            </div>
        </div>
    </section>

    <section id="focus2" class="about">
    <div class="about-container">
        <div class="about-top">
            <h1>Czym jestem?</h1>
            <p>Chatboty są nie tylko cyfrowymi asystentami stworzonymi do pomocy i interakcji z użytkownikami w różnych kontekstach, ale także nieocenionymi towarzyszami w cyfrowym świecie. Wykorzystują zaawansowane technologie, takie jak przetwarzanie języka naturalnego (NLP) i uczenie maszynowe (ML), aby nie tylko zrozumieć i odpowiedzieć na pytania, ale również uczyć się z każdej interakcji, stając się coraz bardziej efektywnymi i inteligentnymi. Chatboty mogą być integrowane z różnymi platformami komunikacyjnymi, od prostych stron internetowych po zaawansowane aplikacje mobilne i dynamiczne media społecznościowe, co czyni je wszechstronnym narzędziem dostępnym dla szerokiego grona odbiorców. Ich elastyczność pozwala na dostosowanie do specyficznych potrzeb branżowych, oferując spersonalizowane rozwiązania, które mogą na przykład automatyzować obsługę klienta, personalizować rekomendacje produktów lub nawet prowadzić edukacyjne kursy online. Dzięki swojej elastyczności, chatboty otwierają nowe możliwości dla biznesu i edukacji, przekształcając sposób, w jaki komunikujemy się i uczymy, a ich rola w naszym codziennym życiu będzie tylko rosła.</p>
        </div>
        <ul class="about-bottom">
            <li>
                <h2>COPILOT</h2>
                <p>Jest to zaawansowany chatbot stworzony przez Microsoft, który pomaga programistom w tworzeniu kodu, udzielaniu odpowiedzi na pytania techniczne i wiele więcej.</p>
            </li>
            <li>
                <h2>SIRI</h2>
                <p>Siri jest asystentem głosowym stworzonym przez Apple, który pomaga użytkownikom w codziennych zadaniach, takich jak wyszukiwanie informacji, zarządzanie terminarzem, wysyłanie wiadomości i wiele więcej.</p>
            </li>
            <li>
                <h2>GOOGLE ASSISTANT</h2>
                <p>Jest to popularny chatbot od Google, który pomaga użytkownikom w codziennych zadaniach, takich jak wyszukiwanie informacji, zarządzanie terminarzem i kontrola urządzeń inteligentnych.</p>
            </li>
            <li>
                <h2>ALEXA</h2>
                <p>Alexa jest chatbotem od Amazon, który jest szeroko stosowany w domach inteligentnych do sterowania urządzeniami, odtwarzania muzyki, udzielania odpowiedzi na pytania i wiele więcej.</p>
            </li>
            <li>
                <h2>CORTANA</h2>
                <p>Cortana to inteligentny asystent osobisty stworzony przez Microsoft, który pomaga w organizacji pracy, przypomina o ważnych zdarzeniach i terminach oraz oferuje pomoc w wielu innych codziennych czynnościach.</p>
            </li>
            <li>
                <h2>BIXBY</h2>
                <p>Bixby to asystent głosowy opracowany przez Samsung, który ułatwia zarządzanie urządzeniami mobilnymi i domowymi, umożliwia szybkie wykonywanie zadań i dostosowuje się do indywidualnych preferencji użytkownika.</p>
            </li>
        </ul>
    </div>
    </section>

    <section id="focus3" class="benefits">
        <div class="benefits-container">
            <div class="benefits-top">
                <h1>Korzyści</h1>
                <p>Chatboty, te inteligentne cyfrowe asystenty, stają się nieodłącznym elementem współczesnego świata biznesu i codzienności użytkowników indywidualnych. Dzięki nim firmy mogą cieszyć się automatyzacją obsługi klienta, co przekłada się na znaczne obniżenie kosztów i skrócenie czasu oczekiwania na wsparcie. Są one dostępne dla klientów przez całą dobę, siedem dni w tygodniu, co jest kluczowe w świecie, który nigdy nie śpi. Chatboty oferują również spersonalizowane doświadczenia, zapamiętując preferencje użytkowników i dostosowując komunikację, co buduje ich satysfakcję i lojalność. Ponadto, zbierają cenne dane o zachowaniach i preferencjach konsumentów, dostarczając firmom wgląd w potrzeby swojej bazy klientów. Wreszcie, ich zdolność do komunikacji w wielu językach pozwala na obsługę międzynarodowej klienteli bez konieczności zatrudniania wielojęzycznego personelu. Wszystkie te zalety sprawiają, że chatboty są cennym narzędziem, które pomaga organizacjom w osiąganiu wyższej efektywności i zadowolenia klientów.</p>
            </div>
                    <ul class="benefits-bottom">
                        <li>
                            <h2>Dostępność 24/7</h2>
                            <p>Chatboty są dostępne całą dobę, siedem dni w tygodniu, co oznacza, że użytkownicy mogą uzyskać odpowiedzi na swoje pytania w dowolnym momencie.</p>
                        </li>
                        <li>
                            <h2>Automatyzacja zadań</h2>
                            <p>Chatboty mogą automatyzować wiele rutynowych zadań, takich jak obsługa klienta, zamawianie produktów czy usług, co pozwala zaoszczędzić czas i zasoby.</p>
                        </li>
                        <li>
                            <h2>Szybkość i efektywność</h2>
                            <p>Chatboty mogą szybko przetwarzać i odpowiadać na zapytania, co przekłada się na wyższą efektywność i satysfakcję użytkowników.</p>
                        </li>
                        <li>                        
                            <h2>Uczenie się i adaptacja</h2>
                            <p>Zaawansowane chatboty są w stanie uczyć się i dostosowywać do potrzeb użytkowników, co pozwala im na ciągłe ulepszanie swoich usług.</p>
                        </li>
                        <li>                        
                            <h2>Zmniejszenie kosztów</h2>
                            <p>Wdrożenie chatbotów może znacznie obniżyć koszty związane z obsługą klienta, ponieważ redukuje potrzebę zatrudniania dużej liczby pracowników.</p>
                        </li>
                        <li>                        
                            <h2>Skalowalność</h2>
                            <p>W przeciwieństwie do ludzi, chatboty mogą obsługiwać duże ilości zapytań jednocześnie, co jest szczególnie przydatne dla dużych firm.</p>
                        </li>
                    </ul>
                </div>
    </section>

    <section id="focus4" class="danger">
    <div class="danger-container">
        <div class="danger-top">
            <h1>Zagrożenia</h1>
            <p>Chatboty, choć pełne zalet, niosą ze sobą również pewne zagrożenia, które są ważne do rozważenia. Wśród nich znajduje się ryzyko naruszenia prywatności, gdyż chatboty mogą gromadzić i przetwarzać duże ilości danych osobowych. Istnieje również obawa przed nadmierną zależnością od technologii, co może prowadzić do ograniczenia bezpośredniej komunikacji międzyludzkiej. Ponadto, chatboty mogą być wykorzystywane do wprowadzania użytkowników w błąd lub rozpowszechniania fałszywych informacji, jeśli nie są odpowiednio monitorowane. Wreszcie, istnieje ryzyko, że niektóre chatboty mogą nie być w stanie zrozumieć złożonych lub niestandardowych zapytań, co może prowadzić do frustracji użytkowników. Świadomość tych zagrożeń jest kluczowa dla bezpiecznego i odpowiedzialnego wdrażania chatbotów w różnych sektorach. Istotne jest również zwrócenie uwagi na potencjalne wyzwania technologiczne związane z chatbotami. Mogą one obejmować trudności w integracji z istniejącymi systemami i infrastrukturą, co może wpływać na płynność i efektywność ich działania. Kwestie etyczne również wchodzą w grę, ponieważ twórcy chatbotów muszą zapewnić, że ich algorytmy nie będą dyskryminować ani nie będą miały negatywnego wpływu na użytkowników. Zagrożenia związane z bezpieczeństwem cyfrowym są kolejnym aspektem, który wymaga stałej uwagi, aby chronić dane użytkowników przed cyberatakami. Wreszcie, utrzymanie aktualności wiedzy chatbotów jest kluczowe, aby mogły one dostarczać trafne i aktualne informacje, co wymaga regularnych aktualizacji i ciągłego uczenia. Świadomość tych dodatkowych aspektów jest niezbędna dla pełnego zrozumienia potencjału i ograniczeń chatbotów.</p>
        </div>
                <ul class="danger-bottom">
                    <li>
                        <h2>Prywatność danych</h2>
                        <p>Chatboty zbierają i przetwarzają duże ilości danych użytkowników, co może stanowić zagrożenie dla prywatności, jeśli dane te nie są odpowiednio zabezpieczone.</p>
                    </li>
                    <li>
                        <h2>Niewłaściwe wykorzystanie</h2>
                        <p>Chatboty mogą być wykorzystywane do celów niezgodnych z prawem lub nieetycznych, takich jak rozpowszechnianie fałszywych informacji czy spamu.</p>
                    </li>
                    <li>
                        <h2>Brak ludzkiego kontaktu</h2>
                        <p>Zbyt duża zależność od chatbotów może prowadzić do braku bezpośredniego kontaktu międzyludzkiego, co może mieć negatywny wpływ na relacje interpersonalne.</p>
                    </li>
                    <li>
                        <h2>Zależność od technologii</h2>
                        <p>Nadmierne poleganie na chatbotach może prowadzić do zależności od technologii i utraty umiejętności, które są ważne w codziennym życiu.</p>
                    </li>
                    <li>
                        <h2>Błędy i nieporozumienia</h2>
                        <p>Mimo zaawansowanych technologii, chatboty mogą popełniać błędy lub nie zrozumieć złożonych zapytań, co może prowadzić do frustracji użytkowników.</p>
                    </li>
                    <li>
                        <h2>Ograniczenia technologiczne</h2>
                        <p>Mimo iż chatboty są coraz bardziej zaawansowane, nadal mają swoje ograniczenia. Mogą nie być w stanie zrozumieć złożonych zapytań lub kontekstu, co może prowadzić do nieprecyzyjnych lub nieodpowiednich odpowiedzi.</p>
                    </li>
                </ul>
        </div>
    </section>

<section id="focus5" class="chat">
    <h1>Porozmawiajmy</h1>
    <p>Rozpocznij rozmowę z moim chatbotem, aby dowiedzieć się więcej!</p>
<div class="main-container">
    <div class="chat-container">
        <div class="chat-box" id="chat-box">
            <?php if (isset($_SESSION['responses'])): ?>
                <?php foreach ($_SESSION['responses'] as $question => $answer): ?>
                    <div class="chat-message">
                        <div class="question"><?php echo $question; ?></div>
                        <div class="answer"><?php echo $answer; ?></div>
                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <div class="chat-message">
                    <div class="answer">Witaj! Napisz dla mnie wiadomość lub zadaj pytanie.</div>
                </div>
            <?php endif; ?>
        </div>
        <form action="chatbot.php" method="post" class="chat-input">
            <input type="text" name="userMessage" id="userMessage" placeholder="Zadaj pytanie..." required>
            <button type="submit">Wyślij</button>
        </form>
    </div>
</div>
</section>

<footer>
    <section id="copy-right">
      <div class="copy-right-sec">
        <i class="fa-solid fa-copyright"></i>  
          CHATBOT 2024. Wszystkie prawa zastrzeżone.
      </div>
    </section>
  </footer>

    <script>
        var chatBox = document.getElementById("chat-box");
        chatBox.scrollTop = chatBox.scrollHeight;
        var inputElement = document.getElementById("userMessage");
        inputElement.focus();

        // Zmienne do obsługi slidera
        let currentSlide = 0;
        const slides = document.querySelectorAll('.slider-image');
        const totalSlides = slides.length;

        // Funkcja do zmiany slajdu
        function changeSlide() {
            // Ukryj wszystkie slajdy
            slides.forEach(slide => {
                slide.classList.remove('active');
            });

            // Wyświetl aktualny slajd
            slides[currentSlide].classList.add('active');

            // Przejdź do następnego slajdu
            currentSlide++;
            if (currentSlide >= totalSlides) {
                currentSlide = 0;
            }

            // Powtórz funkcję co 3 sekundy (3000 milisekund)
            setTimeout(changeSlide, 3000);
        }

        // Wywołaj funkcję changeSlide aby rozpocząć automatyczne przewijanie slajdów
        changeSlide();

        // Obsługa menu na mniejszych ekranach
        const menuToggle = document.getElementById('menu-toggle');
        const navItems = document.querySelector('.nav-items');

        menuToggle.addEventListener('click', () => {
            navItems.classList.toggle('active');
        });
    </script>

</body>
</html>