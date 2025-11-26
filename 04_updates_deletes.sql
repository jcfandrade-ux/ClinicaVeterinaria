-- 4. Atualizações (UPDATE)

UPDATE Tutor SET telefone = '11777777777' WHERE id_tutor = 2;
UPDATE Medicamento SET quantidade = quantidade - 1 WHERE id_medicamento = 1;
UPDATE Consulta SET tipo_servico = 'Retorno' WHERE id_consulta = 2;

-- 5. Remoções (DELETE)

DELETE FROM Pet WHERE id_pet = 2;
DELETE FROM Medicamento WHERE id_medicamento = 2;
DELETE FROM Consulta WHERE id_consulta = 2;