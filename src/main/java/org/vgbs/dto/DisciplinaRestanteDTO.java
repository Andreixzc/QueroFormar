package org.vgbs.dto;

import java.time.LocalTime;

public class DisciplinaRestanteDTO {
    private Long disciplina_id;
    private String disciplina_nome;
    private Long disciplina_requisito_id;
    private String requisito_nome;
    private LocalTime inicio;
    private LocalTime fim;
    
    public DisciplinaRestanteDTO(Long disciplinaId, String disciplina_nome, Long disciplina_requisito_id,
            String requisito_nome, LocalTime inicio, LocalTime fim) {
        this.disciplina_id = disciplinaId;
        this.disciplina_nome = disciplina_nome;
        this.disciplina_requisito_id = disciplina_requisito_id;
        this.requisito_nome = requisito_nome;
        this.inicio = inicio;
        this.fim = fim;
    }

    public Long getDisciplinaId() {
        return disciplina_id;
    }

    public void setDisciplinaId(Long disciplinaId) {
        this.disciplina_id = disciplinaId;
    }

    public String getdisciplina_nome() {
        return disciplina_nome;
    }

    public void setdisciplina_nome(String disciplina_nome) {
        this.disciplina_nome = disciplina_nome;
    }

    public Long getdisciplina_requisito_id() {
        return disciplina_requisito_id;
    }

    public void setdisciplina_requisito_id(Long disciplina_requisito_id) {
        this.disciplina_requisito_id = disciplina_requisito_id;
    }

    public String getrequisito_nome() {
        return requisito_nome;
    }

    public void setrequisito_nome(String requisito_nome) {
        this.requisito_nome = requisito_nome;
    }

    public LocalTime getinicio() {
        return inicio;
    }

    public void setinicio(LocalTime inicio) {
        this.inicio = inicio;
    }

    public LocalTime getfim() {
        return fim;
    }

    public void setfim(LocalTime fim) {
        this.fim = fim;
    }

}
