-- 2. Inserção de Dados

INSERT INTO Tutor (nome, telefone, email) VALUES ('João Silva', '11999999999', 'joao@email.com');
INSERT INTO Tutor (nome, telefone, email) VALUES ('Maria Souza', '11888888888', 'maria@email.com');

INSERT INTO Pet (nome, especie, idade, id_tutor) VALUES ('Rex', 'Canina', 3, 1);
INSERT INTO Pet (nome, especie, idade, id_tutor) VALUES ('Mimi', 'Felina', 2, 2);

INSERT INTO Veterinario (nome, crmv) VALUES ('Dra. Paula', 'SP123456');
INSERT INTO Veterinario (nome, crmv) VALUES ('Dr. Carlos', 'SP654321');

INSERT INTO Consulta (data, tipo_servico, id_pet, id_veterinario) VALUES ('2025-11-15 14:00:00', 'Vacina', 1, 1);
INSERT INTO Consulta (data, tipo_servico, id_pet, id_veterinario) VALUES ('2025-11-16 09:20:00', 'Exame', 2, 2);

INSERT INTO Medicamento (nome, data_de_validade, quantidade) VALUES ('Amoxicilina', '2026-05-10', 100);
INSERT INTO Medicamento (nome, data_de_validade, quantidade) VALUES ('Cephalexin', '2026-10-01', 50);

INSERT INTO Exame (nome, tipo_exame) VALUES ('Hemograma', 'Sangue');
INSERT INTO Exame (nome, tipo_exame) VALUES ('Raio-X', 'Imagem');

INSERT INTO Medicamento_Aplicado (id_medicamento, id_veterinario, id_consulta, dosagem, data_aplicacao)
VALUES (1, 1, 1, 2.5, '2025-11-15 14:15:00');

INSERT INTO Medicamento_Aplicado (id_medicamento, id_veterinario, id_consulta, dosagem, data_aplicacao)
VALUES (2, 2, 2, 1.0, '2025-11-16 09:40:00');

INSERT INTO Exame_Realizado (id_exame, id_veterinario, id_consulta, data_realizacao)
VALUES (1, 2, 2, '2025-11-16 09:45:00');

INSERT INTO Exame_Realizado (id_exame, id_veterinario, id_consulta, data_realizacao)
VALUES (2, 1, 1, '2025-11-15 14:30:00');