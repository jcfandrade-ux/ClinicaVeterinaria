-- 3. Consultas SQL (SELECT)

SELECT Pet.nome, Pet.especie, Tutor.nome AS tutor_nome
FROM Pet
JOIN Tutor ON Pet.id_tutor = Tutor.id_tutor;

SELECT Consulta.data, Consulta.tipo_servico, Pet.nome
FROM Consulta
JOIN Pet ON Consulta.id_pet = Pet.id_pet
WHERE Consulta.id_veterinario = 1;

SELECT Medicamento.nome, Medicamento_Aplicado.dosagem
FROM Medicamento_Aplicado
JOIN Medicamento ON Medicamento_Aplicado.id_medicamento = Medicamento.id_medicamento
WHERE Medicamento_Aplicado.id_consulta = 1;

SELECT Veterinario.nome, Consulta.data
FROM Consulta
JOIN Veterinario ON Consulta.id_veterinario = Veterinario.id_veterinario
ORDER BY Consulta.data DESC;