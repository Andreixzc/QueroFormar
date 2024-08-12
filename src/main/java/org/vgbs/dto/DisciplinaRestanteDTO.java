package org.vgbs.dto;

import java.time.LocalTime;

import jakarta.persistence.Column;


public class DisciplinaRestanteDTO {
    @Column(name = "disciplina_id")
    private Long disciplinaId;

    @Column(name = "disciplina_nome")
    private String disciplinaNome;

    @Column(name = "disciplina_requisito_id")
    private Long disciplinaRequisitoId;

    @Column(name = "requisito_nome")
    private String requisitoNome;

    @Column(name = "inicio")
    private LocalTime inicio;

    @Column(name = "fim")
    private LocalTime fim;
    
    public DisciplinaRestanteDTO(Long disciplinaId, String disciplinaNome, Long disciplinaRequisitoId,
            String requisitoNome, LocalTime inicio, LocalTime fim) {
        this.disciplinaId = disciplinaId;
        this.disciplinaNome = disciplinaNome;
        this.disciplinaRequisitoId = disciplinaRequisitoId;
        this.requisitoNome = requisitoNome;
        this.inicio = inicio;
        this.fim = fim;
    }

    public Long getDisciplinaId() {
        return disciplinaId;
    }

    public void setDisciplinaId(Long disciplinaId) {
        this.disciplinaId = disciplinaId;
    }

    public String getDisciplinaNome() {
        return disciplinaNome;
    }

    public void setDisciplinaNome(String disciplinaNome) {
        this.disciplinaNome = disciplinaNome;
    }

    public Long getDisciplinaRequisitoId() {
        return disciplinaRequisitoId;
    }

    public void setDisciplinaRequisitoId(Long disciplinaRequisitoId) {
        this.disciplinaRequisitoId = disciplinaRequisitoId;
    }

    public String getRequisitoNome() {
        return requisitoNome;
    }

    public void setRequisitoNome(String requisitoNome) {
        this.requisitoNome = requisitoNome;
    }

    public LocalTime getInicio() {
        return inicio;
    }

    public void setInicio(LocalTime inicio) {
        this.inicio = inicio;
    }

    public LocalTime getFim() {
        return fim;
    }

    public void setFim(LocalTime fim) {
        this.fim = fim;
    }

}
