-- Create tables
CREATE TABLE IF NOT EXISTS curso (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS disciplina (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL UNIQUE,
    carga_horaria INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS curso_disciplina (
    id SERIAL PRIMARY KEY,
    curso_id INTEGER NOT NULL,
    disciplina_id INTEGER NOT NULL,
    FOREIGN KEY(curso_id) REFERENCES curso(id),
    FOREIGN KEY(disciplina_id) REFERENCES disciplina(id),
    UNIQUE(curso_id, disciplina_id)
);

CREATE TABLE IF NOT EXISTS corpo_docente (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS prerequisito (
    id SERIAL PRIMARY KEY,
    disciplina_id INTEGER NOT NULL,
    disciplina_requisito_id INTEGER NOT NULL,
    FOREIGN KEY (disciplina_id) REFERENCES disciplina(id),
    FOREIGN KEY (disciplina_requisito_id) REFERENCES disciplina(id),
    UNIQUE (disciplina_id, disciplina_requisito_id)
);

CREATE TABLE IF NOT EXISTS dia (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS horario (
    id SERIAL PRIMARY KEY,
    inicio TIME NOT NULL,
    fim TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS horario_disciplina (
    curso_id INTEGER NOT NULL,
    disciplina_id INTEGER NOT NULL,
    horario_id INTEGER NOT NULL,
    dia_id INTEGER NOT NULL,
    PRIMARY KEY (curso_id, disciplina_id, horario_id, dia_id),
    FOREIGN KEY (curso_id) REFERENCES curso(id),
    FOREIGN KEY (disciplina_id) REFERENCES disciplina(id),
    FOREIGN KEY (horario_id) REFERENCES horario(id),
    FOREIGN KEY (dia_id) REFERENCES dia(id),
);

CREATE TABLE IF NOT EXISTS aluno (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL UNIQUE,
    matricula TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS aluno_curso (
    id SERIAL PRIMARY KEY,
    aluno_id INTEGER NOT NULL,
    curso_id INTEGER NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES aluno(id),
    FOREIGN KEY (curso_id) REFERENCES curso(id),
    UNIQUE (aluno_id, curso_id)
);

CREATE TABLE IF NOT EXISTS aluno_disciplina (
    id SERIAL PRIMARY KEY,
    aluno_id INTEGER NOT NULL,
    disciplina_id INTEGER NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES aluno(id),
    FOREIGN KEY (disciplina_id) REFERENCES disciplina(id),
    UNIQUE (aluno_id, disciplina_id)
);