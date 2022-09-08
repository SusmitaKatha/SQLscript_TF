-- Built since the year 2000
SELECT *
FROM planes
WHERE "year" >= 2000;
-- 2025 Records

--The manufacturer is BOEING
SELECT *
FROM planes
WHERE manufacturer = 'BOEING';
-- 1630 Records

-- What happens if you search for Boeing instead
SELECT *
FROM planes
WHERE manufacturer = 'Boeing';
-- 0 Record

-- Built between 1980 and 1990
SELECT *
FROM planes
WHERE "year" BETWEEN 1980 AND 1990;
-- 315 Records

-- The manufacturer is either CESSNA, BOEING, or AIRBUS
SELECT *
FROM planes
WHERE manufacturer IN('CESSNA', 'BOEING', 'AIRBUS');
-- 1975 Records

-- The year field is unknown
SELECT *
FROM planes
WHERE "year" IS NULL;
-- 70 Records

--The speed field isn't unknown
SELECT *
FROM planes
WHERE speed IS NOT NULL;
-- 23 REcords

-- Do not seat between 50 and 200
SELECT *
FROM planes
WHERE seats NOT BETWEEN 50 AND 200;
-- 417 Records

-- The engine field starts with Turbo
SELECT *
FROM planes
WHERE engine LIKE 'Turbo%';
-- 3292 Records

-- The model name is in the format XXX-XXX
SELECT *
FROM planes
WHERE model LIKE '___-___' ;
-- 1496 Records

-- Built before 1980 and seat more than 100
SELECT *
FROM planes
WHERE "year" < 1980 AND seats > 100;
-- 9 Records

-- Built after 2000 or have a Reciprocating engine
SELECT *
FROM planes
WHERE "year" > 2000 OR engine = 'Reciprocating';
-- 1806 Records

-- Built between 1980 and 1990
--not two-engine planes
--have a nonmissing value for speed
--either manufactured by BOEING or CESSNA.
SELECT *
FROM planes
WHERE "year" Between 1980 AND 1990
	AND engines != 2
	AND speed IS NOT NULL
	AND manufacturer IN('BOEING', 'CESSNA');
-- 1 Record

-- Either Built between 1980 and 1990
-- and not two-engine planes
-- and have a nonmissing value for speed
-- or, either manufactured by BOEING or CESSNA.
SELECT *
FROM planes
WHERE "year" Between 1980 AND 1990
	AND engines != 2
	AND speed IS NOT NULL
OR manufacturer IN('BOEING', 'CESSNA');
-- 1639 Records

-- Both built between 1980 and 1990
-- and not two-engine planes
-- And have a nonmissing value for speed
-- or either manufactured by BOEING or CESSNA.
SELECT *
FROM planes
WHERE "year" Between 1980 AND 1990
	AND engines != 2
	AND (speed IS NOT NULL
OR manufacturer IN('BOEING', 'CESSNA'));
-- 2 Records