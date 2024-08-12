package org.vgbs.entity;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

@Embeddable
public class HorarioDisciplinaId implements Serializable {

    @Column(name = "curso_id")
    private Long curso;

    @Column(name = "disciplina_id")
    private Long disciplina;

    @Column(name = "horario_id")
    private Long horario;

    @Column(name = "dia_id")
    private Long dia;

    // Getters, setters, hashCode, equals

    public Long getCurso() {
        return curso;
    }

    public void setCurso(Long curso) {
        this.curso = curso;
    }

    public Long getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(Long disciplina) {
        this.disciplina = disciplina;
    }

    public Long getHorario() {
        return horario;
    }

    public void setHorario(Long horario) {
        this.horario = horario;
    }

    public Long getDia() {
        return dia;
    }

    public void setDia(Long dia) {
        this.dia = dia;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        HorarioDisciplinaId that = (HorarioDisciplinaId) o;
        return Objects.equals(curso, that.curso) &&
                Objects.equals(disciplina, that.disciplina) &&
                Objects.equals(horario, that.horario) &&
                Objects.equals(dia, that.dia);
    }

    @Override
    public int hashCode() {
        return Objects.hash(curso, disciplina, horario, dia);
    }
}
