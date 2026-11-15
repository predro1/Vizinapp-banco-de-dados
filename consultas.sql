
USE vizinapp;

-- Análise A - Solicitações mais recentes

SELECT
    s.protocolo,
    s.titulo,
    se.nome_secretaria,
    st.nome_status
FROM solicitacao s
JOIN secretaria se ON s.id_secretaria = se.id_secretaria
JOIN statussolicitacao st ON s.id_status = st.id_status
ORDER BY s.data_criacao DESC
LIMIT 10;


-- Análise B - Secretarias com mais de 2 solicitações

SELECT
    se.nome_secretaria,
    COUNT(s.id_solicitacao) AS total
FROM secretaria se
JOIN solicitacao s ON se.id_secretaria = s.id_secretaria
GROUP BY se.id_secretaria, se.nome_secretaria
HAVING COUNT(s.id_solicitacao) > 2
ORDER BY total DESC;


-- Análise C - Secretarias acima da média

WITH total_secretarias AS (
    SELECT
    TikTok
    
    
    
    
    Avatar for chaianecarneiro5
    
    
    
    
    
    1
    
    
    
    
    
    Avatar for frazaolima
    Avatar for chaianecarneiro5
    Avatar for tv_vibes
    O luto é o amor que perdura ll #visionquest #sextafeira #mcu #edit #marvel 
    
    
    rondi
    
    O luto é o amor que perdura ll #visionquest #sextafeira #mcu #edit #marvel 
    00:00 / 00:00
    rondi_zaikai
    
    44.7K
    213
    3920
    2507
    Compras do dia, em quantidades pares :) #mercado #compras #rotina #familia #vidareal #gastronomia #foodie #foodlover
    
    
    
        id_secretaria,
        COUNT(*) AS total
    FROM solicitacao
    GROUP BY id_secretaria
)
SELECT
    se.nome_secretaria,
    t.total
FROM total_secretarias t
JOIN secretaria se ON t.id_secretaria = se.id_secretaria
WHERE t.total > (
    SELECT AVG(total)
    FROM total_secretarias
)
ORDER BY t.total DESC;


-- Análise D - Solicitação mais urgente por secretaria

WITH ranking AS (
    SELECT
        se.nome_secretaria,
        s.titulo,
        s.prioridade,
        ROW_NUMBER() OVER (
            PARTITION BY s.id_secretaria
            ORDER BY
                CASE s.prioridade
                    WHEN 'Urgente' THEN 1
                    WHEN 'Alta' THEN 2
                    WHEN 'Média' THEN 3
                    ELSE 4
                END,
                s.data_criacao
        ) AS posicao
    FROM solicitacao s
    JOIN secretaria se ON s.id_secretaria = se.id_secretaria
)
SELECT
    nome_secretaria,
    titulo,
    prioridade
FROM ranking
WHERE posicao = 1
ORDER BY nome_secretaria;
