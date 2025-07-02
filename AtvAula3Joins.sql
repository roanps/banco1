-- COM BASE NO BANCO DE DADOS DE VETERINÁRIA, ELABORE CONSULTAS SQL PARA RESPONDER AS SEGUINTES QUESTÕES:
use veterinaria;
-- A) QUAL A QUANTIDADE DE ANIMAIS REGISTRADAS NO SISTEMA?
SELECT COUNT(*) AS total_animais
FROM animais;
-- B) QUAL O TOTAL DE VACINAS APLICADAS REGISTRADAS NO SISTEMA?
SELECT COUNT(*) AS total_vacinas
FROM vacinacao;
-- C) QUANTOS ANIMAIS TEMOS REGISTRADOS PARA CADACATEGORIA?
SELECT t.tipo AS categoria, COUNT(a.id) AS total_animais
FROM tipos_animais t
LEFT JOIN animais a ON t.id = a.id_tipo_animal
GROUP BY t.tipo;
-- D) QUAL A CATEGORIA DE ANIMAIS QUE MAIS VACINAS RECEBEU?
SELECT t.tipo AS categoria, COUNT(v.id) AS total_vacinas
FROM tipos_animais t
JOIN animais a ON t.id = a.id_tipo_animal
JOIN vacinacao v ON a.id = v.id_animal
GROUP BY t.tipo
ORDER BY total_vacinas DESC
LIMIT 1;