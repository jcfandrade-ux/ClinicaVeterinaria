# Banco de Dados – Clínica Veterinária
Projeto acadêmico de banco de dados relacional para uma clínica veterinária, utilizando SQLite (SQLiteStudio ou extensão SQLite no VS Code) e SQL para criação e manipulação de dados.

## Objetivo
* Modelar e implementar um banco de dados normalizado até a 3FN.
* Praticar comandos SQL de DML: INSERT, SELECT, UPDATE e DELETE.
* Utilizar VS Code e Git/GitHub para edição, versionamento e compartilhamento dos scripts.

## Tecnologias
* Banco de dados: SQLite
* Ferramentas:
    * VS Code (editor)
    * SQLiteStudio ou extensão SQLite para VS Code
* Linguagem: SQL

## Estrutura do Projeto

### Sugestão de arquivos na raiz do repositório:
* 01_create_tables.sql – Criação das tabelas e chaves.
* 02_insert_data.sql – Inserts para popular as tabelas principais.
* 03_select_queries.sql – Consultas (SELECT) com WHERE, ORDER BY, LIMIT, JOIN etc.
* 04_updates_deletes.sql – Comandos UPDATE e DELETE.
* README.md – Documentação do projeto (este arquivo).

### Modelo Lógico (Resumo das Tabelas)
* Tutor(id_tutor, nome, telefone, email)
* Pet(id_pet, nome, especie, idade, id_tutor)
* Veterinario(id_veterinario, nome, crmv)
* Consulta(id_consulta, data, tipo_servico, id_pet, id_veterinario)
* Medicamento(id_medicamento, nome, data_de_validade, quantidade)
* Exame(id_exame, nome, tipo_exame)
* Medicamento_Aplicado(id_medicamento, id_veterinario, id_consulta, dosagem, data_aplicacao)
* Exame_Realizado(id_exame, id_veterinario, id_consulta, data_realizacao)
As tabelas Medicamento_Aplicado e Exame_Realizado resolvem os relacionamentos N:N entre consultas, medicamentos e exames.

## Como usar
1 - Abra o VS Code e a pasta do projeto.
2 - Certifique-se de que os arquivos .sql estão na raiz (ou em uma pasta sql/ que você preferir).
3 - Crie ou aponte um banco SQLite, por exemplo: clinica_veterinaria.db.
4 - Execute os scripts na seguinte ordem:
    * 01_create_tables.sql
    * 02_insert_data.sql
    * 03_select_queries.sql (para testar consultas)
    * 04_updates_deletes.sql (para testar alterações e exclusões)

Você pode executar os scripts:
    * Pelo SQLiteStudio, abrindo cada arquivo .sql e rodando.
    * Pela extensão de SQLite no VS Code, conectando no arquivo .db e executando os scripts.
