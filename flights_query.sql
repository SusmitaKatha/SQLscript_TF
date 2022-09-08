-- To get all the fields in the table of airports
SELECT *
FROM airports;

--Select "faa","name","lat" and "lon" fields from airports table
SELECT faa, "name", lat, lon
FROM airports;

--Rename "lat" field to " latitude" and "lon" field to "longitude" from airports table
SELECT faa, "name", lat AS latitude, lon AS longitude
FROM airports;

--ROUND Funcion applied on "latitude" and "longitude" fields from airports table
SELECT faa, "name",
ROUND("lat",2) AS "latitude",
ROUND("lon",2) AS "longitude"
FROM airports;

--Convert "temp" field to "temp_celsius" from weather table
SELECT ("temp"-32)*5/9 AS temp_celsius
FROM weather;

--Create and return a field "plane_seats" from "seats" field of planes table
SELECT CONCAT('This plane seats ', seats, '.') AS plane_seats
FROM planes;

-- Create and return a field "model_seats" from "years","manufacturer" and "seats" of planes table
SELECT CONCAT('This ',"year",' ', INITCAP(manufacturer),' ',model, ' seats ',seats,'.') AS model_seats
FROM planes;