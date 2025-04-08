# Ageno-Flutter-Assessment-Skills - Albert Gawin

# 1
Aplikacja dzieli się na trzy główne warstwy:
- `Data` to właśnie z tego miejsca pobierane są dane, dzięki temu oddzieleniu łatwo będzie zamienić istniejący kod na pobieranie grafik z internetu
- `Domain` połączenie pomiędzy warstwą danych i prezentacji, trzyma wszystko w ryzach i upewnia się, że dane są spójne
- `Presentation` warstwa UI, czyli wygląd końcowy użytkownika, to tutaj wszystkie dane prezentowane są w aplikacji

Takie podejście pozwala w uporządkowany sposób zarządzać kodem, co w przyszłości zaoowocuje łatwiejszym dodaniem nowych funkcjonalności.


# 2
Podzieliłem aplikacje na dwa stany (bloc): 
- `ProductState` odczytuje produkty z bazy danych.
- `CartState` trzyma informacje o koszyku oraz znajdującym się w nich produktach.

Dzięki takiemu podziałowi, zarządzanie osobnymi stanami jest łatwe oraz nie mieszamy koszyka ze wszystkimi produktami. Gdybyśmy trzymali to w jednym stanie, to przesyłalibyśmy całą listę produktów (czasami liczone w setkach jak nie tysiącach) do stanu koszyka, czego byśmy nie chcieli.


# 3
Informacje techniczne:
- Dodałem sztuczne ładowanie, taka symulacja ładowania z internetu
- Grafiki zmienione na mniejszą rozdzielczość (troszeczkę za małą), żeby nie było efektu ładowania podczas zmiany następnego/poprzedniego ekranu. Normalnie użyłbym biblioteki `CachedNetworkImage` gdyby to były zdjęcia z internetu.
