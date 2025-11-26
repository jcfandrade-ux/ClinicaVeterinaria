-- 4. Atualizações (UPDATE)

UPDATE Tutor SET telefone = '11777777777' WHERE id_tutor = 2;
UPDATE Medicamento SET quantidade = quantidade - 1 WHERE id_medicamento = 1;
UPDATE Consulta SET tipo_servico = 'Retorno' WHERE id_consulta = 2;

-- 5. Remoções (DELETE) - 

-- 1. Remover registros nas tabelas (Medicamento_Aplicado e Exame_Realizado)
-- que referenciam a Consulta ID 2 ou o Veterinário/Exame/Medicamento que serão excluídos.
DELETE FROM Medicamento_Aplicado WHERE id_consulta = 2;
DELETE FROM Exame_Realizado WHERE id_consulta = 2;

-- 2. Remover a Consulta (que referencia o Pet ID 2)
DELETE FROM Consulta WHERE id_consulta = 2;

-- 3. Remover o Pet (que referencia o Tutor, mas o Tutor não será excluído)
DELETE FROM Pet WHERE id_pet = 2;

-- 4. Remover o Medicamento
DELETE FROM Medicamento WHERE id_medicamento = 2;