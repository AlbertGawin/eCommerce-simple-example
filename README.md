# Ageno-Flutter-Assessment-Skills - Albert Gawin


# Działanie aplikacji
- Główny ekran wyświetla listę przedmiotów. Dodano sztuczne ładowanie, które symuluje wczytywanie produktów z internetu (opóźnienie 2 sekundy).
- Każdy przedmiot posiada przycisk, który po kliknięciu dodaje go do koszyka.
- W prawym górnym rogu znajduje się ikona koszyka, która wyświetla liczbę przedmiotów w koszyku.
- Po kliknięciu w koszyk przenosimy się na ekran koszyka, na którym widzimy listę przedmiotów.
- Na dole ekranu koszyka znajduje się zsumowana cena wszystkich przedmiotów.
- Każdy przedmiot w koszyku ma opcję usunięcia, którą aktywujemy klikając na ikonę minusa.


# Architektura aplikacji
Aplikacja jest podzielona na trzy główne warstwy:
- `Data` warstwa odpowiedzialna za pobieranie danych. Dzięki temu oddzieleniu, łatwo będzie wymienić istniejący kod na pobieranie grafik z internetu.
- `Domain` pośredniczy pomiędzy warstwą danych a warstwą prezentacji, utrzymując spójność danych.
- `Presentation` warstwa odpowiadająca za UI, czyli wygląd aplikacji, gdzie dane są prezentowane użytkownikowi.

Takie podejście pozwala w sposób uporządkowany zarządzać kodem, co ułatwi dodawanie nowych funkcji w przyszłości.


# Stany aplikacji (Bloc)
Podzieliłem aplikację na dwa stany (Bloc):
- `ProductState` odpowiada za odczyt produktów z bazy danych.
- `CartState` przechowuje informacje o koszyku oraz znajdujących się w nim produktach.

Dzięki temu podziałowi zarządzanie stanami jest łatwiejsze, a oddzielanie logiki koszyka od produktów pozwala uniknąć problemu przesyłania całej listy produktów (czasami liczonej w setkach lub tysiącach) do stanu koszyka. Każdy stan posiada również enuma o informacji połączenia tzn. mamy przygotowane informacje oraz łatwe wdrożenie pzabezpieczenia przed potencjalnymi błędami lub ładowaniem danych `ResponseStatus`.


# Informacje techniczne:
- Wygląd aplikacji został stworzony w krótkim czasie, aby zmieścić się w ramach 3 godzin. Większość czasu poświęciłem na implementację funkcjonalności opisanych powyżej.
- Dodano sztuczne ładowanie, symulujące opóźnione ładowanie z internetu (z opóźnieniem 2 sekundy).
- Grafiki zostały zmienione na mniejszą rozdzielczość (nieco za małą), aby uniknąć efektu ładowania przy przechodzeniu między ekranami. Gdyby aplikacja korzystała z obrazów pobieranych z internetu, użyłbym biblioteki CachedNetworkImage.
