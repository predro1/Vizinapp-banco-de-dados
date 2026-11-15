
USE vizinapp;

START TRANSACTION;

INSERT INTO associacaomoradores (id_associacao, nome_associacao, bairro, cidade)
VALUES
  (1, 'Associação de Moradores do Centro', 'Centro', 'Maricá'),
  (2, 'Associação de Moradores de Itaipuaçu', 'Itaipuaçu', 'Maricá'),
  (3, 'Associação de Moradores de Inoã', 'Inoã', 'Maricá'),
  (4, 'Associação de Moradores de Ponta Negra', 'Ponta Negra', 'Maricá'),
  (5, 'Associação de Moradores de São José do Imbassaí', 'São José do Imbassaí', 'Maricá'),
  (6, 'Associação de Moradores de Araçatiba', 'Araçatiba', 'Maricá'),
  (7, 'Associação de Moradores de Bananal', 'Bananal', 'Maricá'),
  (8, 'Associação de Moradores de Ubatiba', 'Ubatiba', 'Maricá'),
  (9, 'Associação de Moradores de Cordeirinho', 'Cordeirinho', 'Maricá'),
  (10, 'Associação de Moradores de Itapeba', 'Itapeba', 'Maricá');


INSERT INTO secretaria (id_secretaria, nome_secretaria, email_responsavel)
VALUES
  (1, 'Secretaria de Obras', 'obras@vizinapp.com'),
  (2, 'Secretaria de Saneamento', 'saneamento@vizinapp.com'),
  (3, 'Secretaria de Iluminação Pública', 'iluminacao@vizinapp.com'),
  (4, 'Secretaria de Mobilidade', 'mobilidade@vizinapp.com'),
  (5, 'Secretaria de Serviços Urbanos', 'servicos.urbanos@vizinapp.com'),
  (6, 'Secretaria de Meio Ambiente', 'meio.ambiente@vizinapp.com'),
  (7, 'Secretaria de Defesa Civil', 'defesa.civil@vizinapp.com'),
  (8, 'Secretaria de Conservação', 'conservacao@vizinapp.com'),
  (9, 'Secretaria de Planejamento', 'planejamento@vizinapp.com'),
  (10, 'Secretaria de Fiscalização', 'fiscalizacao@vizinapp.com');


INSERT INTO statussolicitacao (id_status, nome_status)
VALUES
  (1, 'Aberta'),
  (2, 'Em análise'),
  (3, 'Encaminhada'),
  (4, 'Em andamento'),
  (5, 'Aguardando vistoria'),
  (6, 'Aguardando material'),
  (7, 'Resolvida'),
  (8, 'Cancelada'),
  (9, 'Reaberta'),
  (10, 'Pendente de informação');


INSERT INTO usuario (id_usuario, nome, cpf, endereco, email, senha, is_associado, id_associacao)
VALUES
  (1, 'Ana Paula Martins', '30261832079', 'Centro, Maricá', 'ana.martins@vizinapp.com', 'Senha01@2026', 1, 1),
  (2, 'Bruno Ribeiro', '26446505324', 'Itaipuaçu, Maricá', 'bruno.ribeiro@vizinapp.com', 'Senha02@2026', 1, 2),
  (3, 'Carla Souza', '98763870494', 'Inoã, Maricá', 'carla.souza@vizinapp.com', 'Senha03@2026', 1, 3),
  (4, 'Daniel Ferreira', '18572692260', 'Ponta Negra, Maricá', 'daniel.ferreira@vizinapp.com', 'Senha04@2026', 1, 4),
  (5, 'Elisa Costa', '20056517232', 'São José do Imbassaí, Maricá', 'elisa.costa@vizinapp.com', 'Senha05@2026', 1, 5),
  (6, 'Felipe Almeida', '71966010748', 'Araçatiba, Maricá', 'felipe.almeida@vizinapp.com', 'Senha06@2026', 1, 6),
  (7, 'Gabriela Nunes', '91197721575', 'Bananal, Maricá', 'gabriela.nunes@vizinapp.com', 'Senha07@2026', 1, 7),
  (8, 'Henrique Lopes', '82585415664', 'Ubatiba, Maricá', 'henrique.lopes@vizinapp.com', 'Senha08@2026', 1, 8),
  (9, 'Isabela Rocha', '25345945984', 'Cordeirinho, Maricá', 'isabela.rocha@vizinapp.com', 'Senha09@2026', 0, NULL),
  (10, 'João Pedro Lima', '82409864079', 'Itapeba, Maricá', 'joao.lima@vizinapp.com', 'Senha10@2026', 0, NULL);


INSERT INTO solicitacao (id_solicitacao, titulo, descricao, localizacao, prioridade,
is_anonimo, protocolo, data_criacao, id_usuario, id_secretaria, id_status)
VALUES
  (1, 'Buracos na rua principal', 'A rua tem vários buracos e os carros precisam desviar.', 'Centro', 'Alta', 0, 260001, '2026-08-05 09:15:00', 1, 1, 7),
  (2, 'Esgoto vazando', 'Tem esgoto correndo pela calçada perto das casas.', 'Itaipuaçu', 'Urgente', 0, 260002, '2026-08-06 11:30:00', 2, 2, 4),
  (3, 'Postes apagados', 'Dois postes estão apagados na mesma rua.', 'Inoã', 'Alta', 0, 260003, '2026-08-07 18:40:00', 3, 3, 7),
  (4, 'Faixa de pedestres apagada', 'A faixa perto do ponto de ônibus quase não aparece mais.', 'Ponta Negra', 'Média', 0, 260004, '2026-08-09 08:05:00', 4, 4, 3),
  (5, 'Lixo acumulado', 'A coleta não passou e o lixo está acumulando na rua.', 'São José do Imbassaí', 'Média', 0, 260005, '2026-08-10 14:22:00', 5, 5, 4),
  (6, 'Entulho em área verde', 'Jogaram restos de obra no terreno ao lado da praça.', 'Araçatiba', 'Média', 0, 260006, '2026-08-12 10:10:00', 6, 6, 5),
  (7, 'Rua alagando quando chove', 'Mesmo com chuva fraca a água já entra na rua.', 'Bananal', 'Urgente', 0, 260007, '2026-08-15 16:50:00', 7, 7, 4),
  (8, 'Calçada quebrada', 'Uma parte da calçada está solta e dificulta a passagem.', 'Ubatiba', 'Média', 0, 260008, '2026-08-17 12:00:00', 8, 8, 7),
  (9, 'Bueiro sem tampa', 'O bueiro fica perto da esquina e está aberto.', 'Cordeirinho', 'Urgente', 1, 260009, '2026-08-19 09:48:00', NULL, 1, 7),
  (10, 'Ponto de ônibus descoberto', 'O ponto está sem cobertura há algum tempo.', 'Itapeba', 'Baixa', 1, 260010, '2026-08-21 07:25:00', NULL, 4, 8),
  (11, 'Vazamento de água', 'Tem água saindo do asfalto o dia todo.', 'Centro', 'Alta', 0, 260011, '2026-09-02 08:25:00', 1, 2, 7),
  (12, 'Luz piscando na rua', 'A lâmpada do poste fica piscando durante a noite.', 'Itaipuaçu', 'Média', 0, 260012, '2026-09-03 20:13:00', 2, 3, 6),
  (13, 'Semáforo com defeito', 'O sinal fica travado e os carros não sabem quando passar.', 'Inoã', 'Alta', 0, 260013, '2026-09-05 07:35:00', 3, 4, 7),
  (14, 'Mato alto em terreno público', 'O mato já está ocupando parte da passagem.', 'Ponta Negra', 'Baixa', 0, 260014, '2026-09-06 15:15:00', 4, 5, 7),
  (15, 'Queimada perto das casas', 'Estão queimando lixo perto das residências.', 'São José do Imbassaí', 'Alta', 0, 260015, '2026-09-08 13:55:00', 5, 6, 2),
  (16, 'Barranco com risco de cair', 'A terra está cedendo perto da rua depois das chuvas.', 'Araçatiba', 'Urgente', 0, 260016, '2026-09-10 17:50:00', 6, 7, 5),
  (17, 'Asfalto afundando', 'Uma parte do asfalto começou a ceder.', 'Bananal', 'Alta', 0, 260017, '2026-09-12 11:42:00', 7, 8, 4),
  (18, 'Água parada após chuva', 'A água fica acumulada na rua por vários dias.', 'Ubatiba', 'Alta', 0, 260018, '2026-09-15 10:27:00', 8, 9, 3),
  (19, 'Obra sem isolamento', 'A obra está sem fita ou placa de aviso para quem passa.', 'Cordeirinho', 'Alta', 1, 260019, '2026-09-18 09:12:00', NULL, 10, 7),
  (20, 'Bancos quebrados na praça', 'Tem bancos com madeira solta na praça.', 'Itapeba', 'Baixa', 1, 260020, '2026-09-20 16:30:00', NULL, 5, 9),
  (21, 'Buracos perto da escola', 'Os buracos ficam bem na entrada da escola.', 'Centro', 'Alta', 0, 260021, '2026-10-01 08:15:00', 1, 1, 4),
  (22, 'Mau cheiro de esgoto', 'O cheiro de esgoto está muito forte na rua.', 'Itaipuaçu', 'Média', 0, 260022, '2026-10-03 13:20:00', 2, 2, 7),
  (23, 'Avenida mal iluminada', 'O trecho perto da travessia fica muito escuro.', 'Inoã', 'Alta', 0, 260023, '2026-10-05 19:10:00', 3, 3, 2),
  (24, 'Placa caída', 'Uma placa de trânsito caiu na calçada.', 'Ponta Negra', 'Média', 0, 260024, '2026-10-07 09:05:00', 4, 4, 10),
  (25, 'Lixeira quebrada', 'A lixeira está quebrada e o lixo cai no chão.', 'São José do Imbassaí', 'Baixa', 0, 260025, '2026-10-09 14:12:00', 5, 5, 7),
  (26, 'Entulho dentro do canal', 'Colocaram entulho no canal e a água está passando com dificuldade.', 'Araçatiba', 'Urgente', 0, 260026, '2026-10-12 10:35:00', 6, 6, 3),
  (27, 'Galhos perto da rede elétrica', 'Os galhos estão muito próximos dos fios.', 'Bananal', 'Alta', 0, 260027, '2026-10-14 11:50:00', 7, 7, 1),
  (28, 'Ponte de pedestres danificada', 'O piso da passagem está quebrado em alguns pontos.', 'Ubatiba', 'Urgente', 0, 260028, '2026-11-03 08:40:00', 8, 8, 5),
  (29, 'Rua sem escoamento', 'A água fica empoçada depois da chuva.', 'Cordeirinho', 'Média', 1, 260029, '2026-11-08 15:45:00', NULL, 9, 1),
  (30, 'Descarte irregular de lixo', 'Tem gente deixando entulho na beira da rua.', 'Itapeba', 'Média', 1, 260030, '2026-11-12 10:20:00', NULL, 10, 2);

COMMIT;
