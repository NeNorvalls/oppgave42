-- Ukesoppgaver


-- Oppgave 1: Grunnleggende SELECT og WHERE

-- A. Skriv en SQL-spørring som viser alle land fra Country-tabellen der population er større enn 50 millioner.
--    Vis kolonnene name og population.
SELECT name, population
FROM Country
WHERE population > 50000000;
-- Explanation: Displays all countries with more than 50 million inhabitants.


-- B. Finn alle byer i City-tabellen der district er "California".
--    Vis kolonnene name, district, og population.
SELECT name, district, population
FROM City
WHERE district = 'California';
-- Explanation: Shows all cities located in the district named “California.”


-- C. Hent ut alle land fra Country-tabellen der region er "Caribbean".
--    Vis kolonnene name, region, og independenceYear.
SELECT name, region, independenceYear
FROM Country
WHERE region = 'Caribbean';
-- Explanation: Lists all countries from the Caribbean region.



-- Oppgave 2: SELECT med ORDER BY

-- A. Bruk World-databasen til å finne alle land fra Country-tabellen og sorter dem alfabetisk etter name.
--    Vis kolonnene code, name, og region.
SELECT code, name, region
FROM Country
ORDER BY name ASC;
-- Explanation: Retrieves all countries and sorts them alphabetically by name.


-- B. Skriv en spørring som viser alle byer fra City-tabellen, sortert etter population i synkende rekkefølge.
--    Vis kolonnene name og population.
SELECT name, population
FROM City
ORDER BY population DESC;
-- Explanation: Shows all cities sorted by population in descending order (largest first).


-- C. Hent alle land fra Country-tabellen der continent er "Europe" og sorter dem etter surfaceArea i stigende rekkefølge.
--    Vis name, surfaceArea, og continent.
SELECT name, surfaceArea, continent
FROM Country
WHERE continent = 'Europe'
ORDER BY surfaceArea ASC;
-- Explanation: Lists European countries sorted by surface area from smallest to largest.



-- Oppgave 3: SELECT med WHERE og ORDER BY

-- A. Skriv en spørring som viser alle land fra Country-tabellen der region er "Asia" og population er større enn 10 millioner.
--    Sorter resultatet etter population i synkende rekkefølge.
--    Vis name, population, og region.
SELECT name, population, region
FROM Country
WHERE region = 'Asia' AND population > 10000000
ORDER BY population DESC;
-- Explanation: Filters for Asian countries with over 10 million population and sorts by population descending.


-- B. Hent alle byer fra City-tabellen der countryCode er "BRA" (Brasil) og population er større enn 500,000.
--    Sorter resultatet etter name i stigende rekkefølge.
--    Vis name og population.
SELECT name, population
FROM City
WHERE countryCode = 'BRA' AND population > 500000
ORDER BY name ASC;
-- Explanation: Finds Brazilian cities with more than 500,000 inhabitants, sorted alphabetically.


-- C. Finn alle land fra Country-tabellen der lifeExpectancy er over 80 og sorter dem etter lifeExpectancy i synkende rekkefølge.
--    Vis name, continent, og lifeExpectancy.
SELECT name, continent, lifeExpectancy
FROM Country
WHERE lifeExpectancy > 80
ORDER BY lifeExpectancy DESC;
-- Explanation: Lists all countries where life expectancy is over 80, highest first.



-- Oppgave 4: SELECT med flere WHERE-betingelser

-- A. Skriv en spørring som viser alle land i Country-tabellen der region er "Europe" og surfaceArea er mellom 100,000 og 300,000 kvadratkilometer.
--    Vis name, region, og surfaceArea, og sorter etter surfaceArea i stigende rekkefølge.
SELECT name, region, surfaceArea
FROM Country
WHERE region = 'Europe'
  AND surfaceArea BETWEEN 100000 AND 300000
ORDER BY surfaceArea ASC;
-- Explanation: Uses BETWEEN to select European countries with an area between 100k and 300k km².


-- B. Hent ut alle byer fra City-tabellen der countryCode er "USA" og population er mellom 200,000 og 1,000,000.
--    Vis name, population, og sorter etter population i stigende rekkefølge.
SELECT name, population
FROM City
WHERE countryCode = 'USA'
  AND population BETWEEN 200000 AND 1000000
ORDER BY population ASC;
-- Explanation: Finds U.S. cities with a population between 200k and 1M, smallest first.


-- C. Finn alle land fra Country-tabellen der region er "Middle East" og governmentForm er "Republic".
--    Vis name, region, og governmentForm, og sorter etter name.
SELECT name, region, governmentForm
FROM Country
WHERE region = 'Middle East'
  AND governmentForm = 'Republic'
ORDER BY name ASC;
-- Explanation: Retrieves all Middle Eastern republics, sorted alphabetically.



-- Oppgave 5: Kombinering av WHERE med AND og OR

-- A. Skriv en spørring som viser alle byer i City-tabellen der countryCode er "USA" og population er mellom 500,000 og 1,000,000.
--    Vis name og population, og sorter etter population i synkende rekkefølge.
SELECT name, population
FROM City
WHERE countryCode = 'USA'
  AND population BETWEEN 500000 AND 1000000
ORDER BY population DESC;
-- Explanation: Shows U.S. cities with population between 500k and 1M, largest first.


-- B. Hent alle land fra Country-tabellen der continent er "Africa" og independenceYear er etter 1960.
--    Vis name, continent, og independenceYear, og sorter etter independenceYear i stigende rekkefølge.
SELECT name, continent, independenceYear
FROM Country
WHERE continent = 'Africa'
  AND independenceYear > 1960
ORDER BY independenceYear ASC;
-- Explanation: Lists African countries that became independent after 1960, earliest first.


-- C. Skriv en spørring som viser alle land i Country-tabellen der governmentForm er enten "Monarchy" eller "Republic", og population er over 10 millioner.
--    Vis name, governmentForm, og population, sortert etter name.
SELECT name, governmentForm, population
FROM Country
WHERE (governmentForm = 'Monarchy' OR governmentForm = 'Republic')
  AND population > 10000000
ORDER BY name ASC;
-- Explanation: Uses OR for government form and AND for population filter, sorted alphabetically.



-- Oppgave 6: SELECT med LIKE

-- A. Skriv en spørring som finner alle byer i City-tabellen der name starter med bokstaven "S".
--    Sorter resultatet etter name.
--    Vis name og countryCode.
SELECT name, countryCode
FROM City
WHERE name LIKE 'S%'
ORDER BY name ASC;
-- Explanation: The pattern 'S%' finds all cities whose names start with the letter S.


-- B. Hent ut alle land fra Country-tabellen der name inneholder ordet "Island".
--    Vis name og region, og sorter etter name.
SELECT name, region
FROM Country
WHERE name LIKE '%Island%'
ORDER BY name ASC;
-- Explanation: The pattern '%Island%' finds all country names containing the word "Island."


-- C. Finn alle byer fra City-tabellen der name slutter med bokstavene "ville".
--    Vis name, countryCode, og sorter etter name i stigende rekkefølge.
SELECT name, countryCode
FROM City
WHERE name LIKE '%ville'
ORDER BY name ASC;
-- Explanation: The pattern '%ville' returns all city names ending with “ville”.
