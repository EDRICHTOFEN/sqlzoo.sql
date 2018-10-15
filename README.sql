# ---- sqlzoo.sql -----

# --- Problemas de SUM and COUNT ---

# -- Problema 1 --
SELECT SUM(population)
FROM world
# -- Problema 2 --
SELECT DISTINCT(continent)
FROM world
# -- Problema 3 --
SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa'
# -- Problema 4 --
SELECT COUNT(name)
FROM world
WHERE area >= 1000000
# -- Problema 5 --
SELECT SUM(population)
FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')
# -- Problema 6 --
SELECT continent, COUNT(name)
FROM world
GROUP BY continent
# -- Problema 7 --
SELECT continent, COUNT(name)
FROM world
WHERE population >= 10000000
GROUP BY continent
# -- Problema 8 --
SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) > 100000000

# --- Problemas de SELECT from Nobel Tutorial ---

# -- Problema 1 --
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950
# -- Problema 2 --
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'
# -- Problema 3 --
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'
# -- Problema 4 --
SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >= 2000
# -- Problema 5 --
SELECT yr, subject, winner
FROM nobel
WHERE (yr >=1980 AND yr <=1989) AND subject = 'Literature'
# -- Problema 6 --
SELECT *
FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')
# -- Problema 7 --
SELECT winner
FROM nobel
WHERE winner LIKE 'john%'
# -- Problema 8 --
SELECT *
FROM nobel
WHERE (subject = 'Physics' AND yr = '1980') OR (subject = 'Chemistry' AND yr = 1984)
# -- Problema 9 --
SELECT *
FROM nobel
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine')
# -- Problema 10 --
SELECT *
FROM nobel
WHERE (subject  = 'Medicine' AND yr < 1910) OR (subject = 'Literature' AND yr >= 2004)
# -- Problema 11 --
SELECT *
FROM nobel
WHERE winner LIKE 'peter gr%nberg'
# -- Problema 12 --
SELECT *
FROM nobel
WHERE winner = 'Eugene O''Neill'
# -- Problema 13 --
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'sir%'
ORDER BY yr DESC, winner
# -- Problema 14 --
SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY subject IN ('Physics','Chemistry'),subject,winner
