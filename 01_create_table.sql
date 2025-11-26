-- 1. Criação das Tabelas


CREATE TABLE Tutor (
    id_tutor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT,
    email TEXT UNIQUE 
);

CREATE TABLE Pet (
    id_pet INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especie TEXT,
    idade INTEGER,
    id_tutor INTEGER,
    FOREIGN KEY (id_tutor) REFERENCES Tutor(id_tutor)
);

CREATE TABLE Veterinario (
    id_veterinario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    crmv TEXT UNIQUE 
);

CREATE TABLE Consulta (
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    data DATETIME,
    tipo_servico TEXT,
    id_pet INTEGER,
    id_veterinario INTEGER,
    FOREIGN KEY (id_pet) REFERENCES Pet(id_pet),
    FOREIGN KEY (id_veterinario) REFERENCES Veterinario(id_veterinario)
);

CREATE TABLE Medicamento (
    id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    data_de_validade DATE,
    quantidade INTEGER
);

CREATE TABLE Exame (
    id_exame INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    tipo_exame TEXT
);

CREATE TABLE Medicamento_Aplicado (
    id_medicamento INTEGER,
    id_veterinario INTEGER,
    id_consulta INTEGER,
    dosagem REAL,
    data_aplicacao DATETIME,
    PRIMARY KEY (id_medicamento, id_veterinario, id_consulta),
    FOREIGN KEY (id_medicamento) REFERENCES Medicamento(id_medicamento),
    FOREIGN KEY (id_veterinario) REFERENCES Veterinario(id_veterinario),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);

CREATE TABLE Exame_Realizado (
    id_exame INTEGER,
    id_veterinario INTEGER,
    id_consulta INTEGER,
    data_realizacao DATETIME,
    PRIMARY KEY (id_exame, id_veterinario, id_consulta),
    FOREIGN KEY (id_exame) REFERENCES Exame(id_exame),
    FOREIGN KEY (id_veterinario) REFERENCES Veterinario(id_veterinario),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);