-- 1. ¿Cuál es el nombre y la superficie terrestre de cada continente?
SELECT name, area FROM
FROM continent; 

-- 2. ¿Cuál es la superficie y la profundidad del lago Malawi?
SELECT area, DEPTH 
FROM lake 
WHERE name = 'Malawi';

-- 3. ¿Cuáles son los nombres y la superficie de todos los lagos en orden decreciente de profundidad?
SELECT name, area
FROM lake 
ORDER BY DEPTH DESC;

-- 4. ¿Cuál es el nombre de los países donde la agricultura representa al menos el 50% del producto interno bruto? -- use INNE
SELECT C.name, E.agriculture
FROM country C
INNER JOIN economy E ON C.code = E.C
WHERE E.agriculture >= 50; 

-- 5. ¿Cómo se llama el río más largo? -- use una subconsulta
SELECT name 
FROM river
WHERE length = (SELECT MAX(length) FROM river);

