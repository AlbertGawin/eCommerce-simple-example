# Ageno-Flutter-Assessment-Skills - Albert Gawin

# Działanie aplikacji
- Główny ekran wyświetla listę przedmiotów, dodano sztuczne ładowanie w celu symulacji wczytywania produktów z internetu (2 sekundy).
- Każdy z przedmiotów ma przycisk, który po kliknięciu dodajego go do koszyka
- W prawym górnym rogu mamy koszyk, który wyświetla ilość przedmiotów
- Po kliknięciu w koszyk przenosi nas na ekran koszyka, gdzie mamy listę przedmiotów w koszyku
- Na dole ekranu koszyka widać zsumowaną cenę wszystkich przedmiotów
- Każdy z przedmiotów w ekranie koszyka posiada opcję usuwanie, poprzez kliknięcie w ikonkę minusa

# Aplikacja dzieli się na trzy główne warstwy:
- `Data` to właśnie z tego miejsca pobierane są dane, dzięki temu oddzieleniu łatwo będzie zamienić istniejący kod na pobieranie grafik z internetu
- `Domain` połączenie pomiędzy warstwą danych i prezentacji, trzyma wszystko w ryzach i upewnia się, że dane są spójne
- `Presentation` warstwa UI, czyli wygląd końcowy użytkownika, to tutaj wszystkie dane prezentowane są w aplikacji

Takie podejście pozwala w uporządkowany sposób zarządzać kodem, co w przyszłości zaoowocuje łatwiejszym dodaniem nowych funkcjonalności.


# Podzieliłem aplikacje na dwa stany (bloc): 
- `ProductState` odczytuje produkty z bazy danych.
- `CartState` trzyma informacje o koszyku oraz znajdującym się w nich produktach.

Dzięki takiemu podziałowi, zarządzanie osobnymi stanami jest łatwe oraz nie mieszamy koszyka ze wszystkimi produktami. Gdybyśmy trzymali to w jednym stanie, to przesyłalibyśmy całą listę produktów (czasami liczone w setkach jak nie tysiącach) do stanu koszyka, czego byśmy nie chcieli.


# Informacje techniczne:
- Wygląd robiony na szybko, żeby zmieścić się w tych trzech godzinach. Główny czas spędzony na funkcjonalnościach opisanych w punktach wyżej.
- Dodałem sztuczne ładowanie, taka symulacja ładowania z internetu
- Grafiki zmienione na mniejszą rozdzielczość (troszeczkę za małą), żeby nie było efektu ładowania podczas zmiany następnego/poprzedniego ekranu. Normalnie użyłbym biblioteki `CachedNetworkImage` gdyby to były zdjęcia z internetu (2 sekundy).
