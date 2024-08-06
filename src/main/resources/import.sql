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
    id SERIAL PRIMARY KEY,
    curso_id INTEGER NOT NULL,
    disciplina_id INTEGER NOT NULL,
    horario_id INTEGER NOT NULL,
    dia_id INTEGER NOT NULL,
    FOREIGN KEY (curso_id) REFERENCES curso(id),
    FOREIGN KEY (disciplina_id) REFERENCES disciplina(id),
    FOREIGN KEY (horario_id) REFERENCES horario(id),
    FOREIGN KEY (dia_id) REFERENCES dia(id),
    UNIQUE (curso_id, disciplina_id, horario_id, dia_id)
);

CREATE TABLE IF NOT EXISTS aluno (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL UNIQUE
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

INSERT INTO curso(nome) VALUES ('CIÊNCIA DA COMPUTAÇÃO')

INSERT INTO disciplina (nome, carga_horaria) VALUES ('INTRODUÇÃO À COMPUTAÇÃO', 70);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('LABORATÓRIO DE INICIAÇÃO À PROGRAMAÇÃO', 50);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TRABALHO INTERDISCIPLINAR I: FRONT-END', 45);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('ENGENHARIA DE SOFTWARE I', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('CULTURA RELIGIOSA: FENÔMENO RELIGIOSO', 40);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('BANCO DE DADOS', 90);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('LINGUAGENS DE PROGRAMAÇÃO', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TRABALHO INTERDISCIPLINAR III: PESQUISA APLICADA', 25);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('MODELAGEM E AVALIAÇÃO DE DESEMPENHO', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('LABORATÓRIO DE DESENVOLVIMENTO PARA DISPOSITIVOS MÓVEIS', 40);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('INTELIGÊNCIA ARTIFICIAL', 90);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TEORIA DOS GRAFOS E COMPUTABILIDADE', 120);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TRABALHO INTERDISCIPLINAR IV: APLICAÇÕES MÓVEIS', 25);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('ENGENHARIA DE SOFTWARE II', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('PROJETO E ANÁLISE DE ALGORITMOS', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('SISTEMAS OPERACIONAIS', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TRABALHO INTERDISCIPLINAR V: SISTEMAS COMPUTACIONAIS', 25);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('FUNDAMENTOS TEÓRICOS DA COMPUTAÇÃO', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('GEOMETRIA ANALÍTICA E ÁLGEBRA LINEAR', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TRABALHO INTERDISCIPLINAR VI: SISTEMAS PARALELOS E DISTRIBUÍDOS', 25);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('COMPILADORES', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('OTIMIZAÇÃO DE SISTEMAS', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('COMPUTADORES E SOCIEDADE', 40);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('SEGURANÇA E AUDITORIA DE SISTEMAS', 60);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('CULTURA RELIGIOSA: PESSOA E SOCIEDADE', 40);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('ALGORITMOS E ESTRUTURAS DE DADOS I', 120);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('CÁLCULO I', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('DESENVOLVIMENTO DE INTERFACES WEB', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('FILOSOFIA: RAZÃO E MODERNIDADE', 40);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('ALGORITMOS E ESTRUTURAS DE DADOS II', 120);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('ARQUITETURA DE COMPUTADORES I', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('OPTATIVA I', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TRABALHO INTERDISCIPLINAR II: BACK-END', 25);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('ALGORITMOS E ESTRUTURAS DE DADOS III', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('ARQUITETURA DE COMPUTADORES II', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('CÁLCULO II', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('ESTATÍSTICA E PROBABILIDADE', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('OPTATIVA II', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('ARQUITETURA DE COMPUTADORES III', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('OPTATIVA III', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('REDES DE COMPUTADORES I', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('COMPUTAÇÃO DISTRIBUÍDA', 60);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('COMPUTAÇÃO PARALELA', 60);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('PROCESSAMENTO E ANÁLISE DE IMAGENS', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('COMPUTAÇÃO GRÁFICA', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('FILOSOFIA: ANTROPOLOGIA E ÉTICA', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('REDES DE COMPUTADORES II', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TÓPICOS EM COMPUTAÇÃO I', 40);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TÓPICOS EM COMPUTAÇÃO II', 40);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TRABALHO DE CONCLUSÃO DE CURSO I', 70);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('CIBERSEGURANÇA E ETHICAL HACKING', 40);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('OPTATIVA IV', 80);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TÓPICOS EM COMPUTAÇÃO III', 40);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TÓPICOS EM COMPUTAÇÃO IV', 40);
INSERT INTO disciplina (nome, carga_horaria) VALUES ('TRABALHO DE CONCLUSÃO DE CURSO II', 70);

INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES (SELECT id FROM disciplina WHERE nome='ALGORITMOS E ESTRUTURAS DE DADOS II', SELECT id FROM disciplina WHERE nome='ALGORITMOS E ESTRUTURAS DE DADOS I');
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES (SELECT id FROM disciplina WHERE nome='ENGENHARIA DE SOFTWARE I', SELECT id FROM disciplina WHERE nome='ALGORITMOS E ESTRUTURAS DE DADOS II');
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='TRABALHO INTERDISCIPLINAR II: BACK-END'), (SELECT id FROM disciplina WHERE nome='ENGENHARIA DE SOFTWARE I'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES II'), (SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES I'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='BANCO DE DADOS'), (SELECT id FROM disciplina WHERE nome='TRABALHO INTERDISCIPLINAR II: BACK-END'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='CÁLCULO II'), (SELECT id FROM disciplina WHERE nome='CÁLCULO I'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='LINGUAGENS DE PROGRAMAÇÃO'), (SELECT id FROM disciplina WHERE nome='ALGORITMOS E ESTRUTURAS DE DADOS II'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='TRABALHO INTERDISCIPLINAR III: PESQUISA APLICADA'), (SELECT id FROM disciplina WHERE nome='ALGORITMOS E ESTRUTURAS DE DADOS II'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='ESTATÍSTICA E PROBABILIDADE'), (SELECT id FROM disciplina WHERE nome='CÁLCULO I'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='INTELIGÊNCIA ARTIFICIAL'), (SELECT id FROM disciplina WHERE nome='TEORIA DOS GRAFOS E COMPUTABILIDADE'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='LABORATÓRIO DE DESENVOLVIMENTO PARA DISPOSITIVOS MÓVEIS'), (SELECT id FROM disciplina WHERE nome='ALGORITMOS E ESTRUTURAS DE DADOS II'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='MODELAGEM E AVALIAÇÃO DE DESEMPENHO'), (SELECT id FROM disciplina WHERE nome='TEORIA DOS GRAFOS E COMPUTABILIDADE'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='TRABALHO INTERDISCIPLINAR IV: APLICAÇÕES MÓVEIS'), (SELECT id FROM disciplina WHERE nome='LABORATÓRIO DE DESENVOLVIMENTO PARA DISPOSITIVOS MÓVEIS'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES III'), (SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES II'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='ENGENHARIA DE SOFTWARE II'), (SELECT id FROM disciplina WHERE nome='ENGENHARIA DE SOFTWARE I'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='PROJETO E ANÁLISE DE ALGORITMOS'), (SELECT id FROM disciplina WHERE nome='TEORIA DOS GRAFOS E COMPUTABILIDADE'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='PROJETO E ANÁLISE DE ALGORITMOS'), (SELECT id FROM disciplina WHERE nome='ESTATÍSTICA E PROBABILIDADE'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='REDES DE COMPUTADORES I'), (SELECT id FROM disciplina WHERE nome='TEORIA DOS GRAFOS E COMPUTABILIDADE'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='SISTEMAS OPERACIONAIS'), (SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES II'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='TRABALHO INTERDISCIPLINAR V: SISTEMAS COMPUTACIONAIS'), (SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES III'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='COMPUTAÇÃO DISTRIBUÍDA'), (SELECT id FROM disciplina WHERE nome='REDES DE COMPUTADORES I'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='COMPUTAÇÃO PARALELA'), (SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES III'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='FUNDAMENTOS TEÓRICOS DA COMPUTAÇÃO'), (SELECT id FROM disciplina WHERE nome='TEORIA DOS GRAFOS E COMPUTABILIDADE'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='PROCESSAMENTO E ANÁLISE DE IMAGENS'), (SELECT id FROM disciplina WHERE nome='PROJETO E ANÁLISE DE ALGORITMOS'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='TRABALHO INTERDISCIPLINAR VI: SISTEMAS PARALELOS E DISTRIBUÍDOS'), (SELECT id FROM disciplina WHERE nome='PROJETO E ANÁLISE DE ALGORITMOS'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='COMPILADORES'), (SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES II'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='COMPUTAÇÃO GRÁFICA'), (SELECT id FROM disciplina WHERE nome='GEOMETRIA ANALÍTICA E ÁLGEBRA LINEAR'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='REDES DE COMPUTADORES II'), (SELECT id FROM disciplina WHERE nome='REDES DE COMPUTADORES I'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='TÓPICOS EM COMPUTAÇÃO I'), (SELECT id FROM disciplina WHERE nome='FUNDAMENTOS DE PROJETO E ANÁLISE DE ALGORITMOS'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='TÓPICOS EM COMPUTAÇÃO II'), (SELECT id FROM disciplina WHERE nome='FUNDAMENTOS DE PROJETO E ANÁLISE DE ALGORITMOS'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='TRABALHO DE CONCLUSÃO DE CURSO I'), (SELECT id FROM disciplina WHERE nome='PROJETO E ANÁLISE DE ALGORITMOS'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='CIBERSEGURANÇA E ETHICAL HACKING'), (SELECT id FROM disciplina WHERE nome='REDES DE COMPUTADORES II'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='OTIMIZAÇÃO DE SISTEMAS'), (SELECT id FROM disciplina WHERE nome='GEOMETRIA ANALÍTICA E ÁLGEBRA LINEAR'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='SEGURANÇA E AUDITORIA DE SISTEMAS'), (SELECT id FROM disciplina WHERE nome='ENGENHARIA DE SOFTWARE II'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='TÓPICOS EM COMPUTAÇÃO III'), (SELECT id FROM disciplina WHERE nome='PROJETO E ANÁLISE DE ALGORITMOS'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='TÓPICOS EM COMPUTAÇÃO IV'), (SELECT id FROM disciplina WHERE nome='PROJETO E ANÁLISE DE ALGORITMOS'));
INSERT INTO prerequisito(disciplina_id, disciplina_requisito_id) VALUES ((SELECT id FROM disciplina WHERE nome='TRABALHO DE CONCLUSÃO DE CURSO II'), (SELECT id FROM disciplina WHERE nome='TRABALHO DE CONCLUSÃO DE CURSO I'));


INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 1);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 2);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 3);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 4);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 5);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 6);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 7);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 8);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 9);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 10);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 11);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 12);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 13);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 14);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 15);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 16);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 17);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 18);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 19);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 20);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 21);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 22);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 23);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 24);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 25);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 26);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 27);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 28);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 29);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 30);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 31);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 32);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 33);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 34);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 35);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 36);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 37);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 38);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 39);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 40);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 41);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 42);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 43);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 44);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 45);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 46);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 47);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 48);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 49);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 50);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 51);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 52);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 53);
INSERT INTO curso_disciplina (curso_id, disciplina_id) VALUES (1, 54);


-- corpo_docente_queries
INSERT INTO corpo_docente (nome) VALUES ('Carlos Alberto Marques Pietrobon');
INSERT INTO corpo_docente (nome) VALUES ('Felipe Domingos da Cunha');
INSERT INTO corpo_docente (nome) VALUES ('Ilo Amy Saldanha Rivero');
INSERT INTO corpo_docente (nome) VALUES ('Amália Soares Vieira de Vasconcelos');
INSERT INTO corpo_docente (nome) VALUES ('Pedro Henrique Ramos Costa');
INSERT INTO corpo_docente (nome) VALUES ('João Carlos Oliveira Caetano');
INSERT INTO corpo_docente (nome) VALUES ('Luciana Mara Freitas Diniz');
INSERT INTO corpo_docente (nome) VALUES ('Rommel Vieira Carneiro');
INSERT INTO corpo_docente (nome) VALUES ('Arnon de Miranda Gomes');
INSERT INTO corpo_docente (nome) VALUES ('Wladmir Cardoso Brandao');
INSERT INTO corpo_docente (nome) VALUES ('Marco Rodrigo Costa');
INSERT INTO corpo_docente (nome) VALUES ('Felipe de Castro Belém');
INSERT INTO corpo_docente (nome) VALUES ('Hayala Nepomuceno Curto');
INSERT INTO corpo_docente (nome) VALUES ('Leonardo Vilela Cardoso');
INSERT INTO corpo_docente (nome) VALUES ('Maury Meirelles Gouvea Junior');
INSERT INTO corpo_docente (nome) VALUES ('Professor(es) a definir');
INSERT INTO corpo_docente (nome) VALUES ('Marcos Roberto do Nascimento');
INSERT INTO corpo_docente (nome) VALUES ('Theldo Cruz Franqueira');
INSERT INTO corpo_docente (nome) VALUES ('Walisson Ferreira de Carvalho');
INSERT INTO corpo_docente (nome) VALUES ('Carina Pinheiro Soares de Torres Alves Mendes');
INSERT INTO corpo_docente (nome) VALUES ('Revero Campos da Silva');
INSERT INTO corpo_docente (nome) VALUES ('Jose Claudio do Nascimento Henriques');
INSERT INTO corpo_docente (nome) VALUES ('Thiago Augusto da Costa Silva Lopes');
INSERT INTO corpo_docente (nome) VALUES ('Thiago Teixeira Santos');
INSERT INTO corpo_docente (nome) VALUES ('Max do Val Machado');
INSERT INTO corpo_docente (nome) VALUES ('Romanelli Lodron Zuim');
INSERT INTO corpo_docente (nome) VALUES ('Flaviana Santos Dutra');
INSERT INTO corpo_docente (nome) VALUES ('Roney Rachide Nunes');
INSERT INTO corpo_docente (nome) VALUES ('Maria Dulce Reis');

-- dia_queries
INSERT INTO dia (nome) VALUES ('segunda');
INSERT INTO dia (nome) VALUES ('terca');
INSERT INTO dia (nome) VALUES ('quarta');
INSERT INTO dia (nome) VALUES ('quinta');
INSERT INTO dia (nome) VALUES ('sexta');
INSERT INTO dia (nome) VALUES ('');

-- horario_queries
INSERT INTO horario (inicio, fim) VALUES ('07:00', '08:40');
INSERT INTO horario (inicio, fim) VALUES ('08:50', '10:30');
INSERT INTO horario (inicio, fim) VALUES ('10:40', '12:20');
INSERT INTO horario (inicio, fim) VALUES ('', '');

-- horario_disciplina_queries
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='INTRODUÇÃO À COMPUTAÇÃO'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='LABORATÓRIO DE INICIAÇÃO À PROGRAMAÇÃO'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TRABALHO INTERDISCIPLINAR I: FRONT-END'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='LABORATÓRIO DE INICIAÇÃO À PROGRAMAÇÃO'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='LABORATÓRIO DE INICIAÇÃO À PROGRAMAÇÃO'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='sexta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ENGENHARIA DE SOFTWARE I'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='CULTURA RELIGIOSA: FENÔMENO RELIGIOSO'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ENGENHARIA DE SOFTWARE I'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='BANCO DE DADOS'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='BANCO DE DADOS'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='LINGUAGENS DE PROGRAMAÇÃO'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='LINGUAGENS DE PROGRAMAÇÃO'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TRABALHO INTERDISCIPLINAR III: PESQUISA APLICADA'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='sexta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='MODELAGEM E AVALIAÇÃO DE DESEMPENHO'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='LABORATÓRIO DE DESENVOLVIMENTO PARA DISPOSITIVOS MÓVEIS'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='INTELIGÊNCIA ARTIFICIAL'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='MODELAGEM E AVALIAÇÃO DE DESEMPENHO'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TEORIA DOS GRAFOS E COMPUTABILIDADE'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='INTELIGÊNCIA ARTIFICIAL'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='sexta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TEORIA DOS GRAFOS E COMPUTABILIDADE'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='LABORATÓRIO DE DESENVOLVIMENTO PARA DISPOSITIVOS MÓVEIS'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TEORIA DOS GRAFOS E COMPUTABILIDADE'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TRABALHO INTERDISCIPLINAR IV: APLICAÇÕES MÓVEIS'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ENGENHARIA DE SOFTWARE II'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ENGENHARIA DE SOFTWARE II'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='PROJETO E ANÁLISE DE ALGORITMOS'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='SISTEMAS OPERACIONAIS'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='PROJETO E ANÁLISE DE ALGORITMOS'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='SISTEMAS OPERACIONAIS'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TRABALHO INTERDISCIPLINAR V: SISTEMAS COMPUTACIONAIS'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='FUNDAMENTOS TEÓRICOS DA COMPUTAÇÃO'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='GEOMETRIA ANALÍTICA E ÁLGEBRA LINEAR'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='FUNDAMENTOS TEÓRICOS DA COMPUTAÇÃO'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='GEOMETRIA ANALÍTICA E ÁLGEBRA LINEAR'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TRABALHO INTERDISCIPLINAR VI: SISTEMAS PARALELOS E DISTRIBUÍDOS'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='sexta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='COMPILADORES'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='COMPILADORES'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='sexta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='COMPILADORES'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='OTIMIZAÇÃO DE SISTEMAS'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='OTIMIZAÇÃO DE SISTEMAS'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='COMPUTADORES E SOCIEDADE'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='SEGURANÇA E AUDITORIA DE SISTEMAS'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='CULTURA RELIGIOSA: PESSOA E SOCIEDADE'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ALGORITMOS E ESTRUTURAS DE DADOS I'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ALGORITMOS E ESTRUTURAS DE DADOS I'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='CÁLCULO I'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='CÁLCULO I'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='DESENVOLVIMENTO DE INTERFACES WEB'), (SELECT id FROM horario WHERE inicio='' AND fim=''), (SELECT id FROM dia WHERE nome=''));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='FILOSOFIA: RAZÃO E MODERNIDADE'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='sexta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ALGORITMOS E ESTRUTURAS DE DADOS II'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ALGORITMOS E ESTRUTURAS DE DADOS II'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES I'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES I'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='OPTATIVA I'), (SELECT id FROM horario WHERE inicio='' AND fim=''), (SELECT id FROM dia WHERE nome=''));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TRABALHO INTERDISCIPLINAR II: BACK-END'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ALGORITMOS E ESTRUTURAS DE DADOS III'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ALGORITMOS E ESTRUTURAS DE DADOS III'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES II'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='CÁLCULO II'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='CÁLCULO II'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ESTATÍSTICA E PROBABILIDADE'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='OPTATIVA II'), (SELECT id FROM horario WHERE inicio='' AND fim=''), (SELECT id FROM dia WHERE nome=''));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES III'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='ARQUITETURA DE COMPUTADORES III'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='OPTATIVA III'), (SELECT id FROM horario WHERE inicio='' AND fim=''), (SELECT id FROM dia WHERE nome=''));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='REDES DE COMPUTADORES I'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='REDES DE COMPUTADORES I'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='sexta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='COMPUTAÇÃO DISTRIBUÍDA'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='COMPUTAÇÃO PARALELA'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='PROCESSAMENTO E ANÁLISE DE IMAGENS'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='PROCESSAMENTO E ANÁLISE DE IMAGENS'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='COMPUTAÇÃO GRÁFICA'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='segunda'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='COMPUTAÇÃO GRÁFICA'), (SELECT id FROM horario WHERE inicio='10:40' AND fim='12:20'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='FILOSOFIA: ANTROPOLOGIA E ÉTICA'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='FILOSOFIA: ANTROPOLOGIA E ÉTICA'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='REDES DE COMPUTADORES II'), (SELECT id FROM horario WHERE inicio='07:00' AND fim='08:40'), (SELECT id FROM dia WHERE nome='quarta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TÓPICOS EM COMPUTAÇÃO I'), (SELECT id FROM horario WHERE inicio='' AND fim=''), (SELECT id FROM dia WHERE nome=''));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TÓPICOS EM COMPUTAÇÃO II'), (SELECT id FROM horario WHERE inicio='' AND fim=''), (SELECT id FROM dia WHERE nome=''));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TRABALHO DE CONCLUSÃO DE CURSO I'), (SELECT id FROM horario WHERE inicio='' AND fim=''), (SELECT id FROM dia WHERE nome=''));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='CIBERSEGURANÇA E ETHICAL HACKING'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='quinta'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='OPTATIVA IV'), (SELECT id FROM horario WHERE inicio='' AND fim=''), (SELECT id FROM dia WHERE nome=''));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TÓPICOS EM COMPUTAÇÃO III'), (SELECT id FROM horario WHERE inicio='' AND fim=''), (SELECT id FROM dia WHERE nome=''));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TÓPICOS EM COMPUTAÇÃO IV'), (SELECT id FROM horario WHERE inicio='08:50' AND fim='10:30'), (SELECT id FROM dia WHERE nome='terca'));
INSERT INTO horario_disciplina (curso_id, disciplina_id, horario_id, dia_id) VALUES (1, (SELECT id FROM disciplina WHERE nome='TRABALHO DE CONCLUSÃO DE CURSO II'), (SELECT id FROM horario WHERE inicio='' AND fim=''), (SELECT id FROM dia WHERE nome=''));