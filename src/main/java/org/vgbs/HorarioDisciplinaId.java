package org.vgbs;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class HorarioDisciplinaId implements Serializable {

    @Column(name = "curso_id")
    private Long cursoId;

    @Column(name = "disciplina_id")
    private Long disciplinaId;

    @Column(name = "horario_id")
    private Long horarioId;

    @Column(name = "dia_id")
    private Long diaId;

    // Getters, setters, hashCode, equals

    public Long getCursoId() {
        return cursoId;
    }

    public void setCursoId(Long cursoId) {
        this.cursoId = cursoId;
    }

    public Long getDisciplinaId() {
        return disciplinaId;
    }

    public void setDisciplinaId(Long disciplinaId) {
        this.disciplinaId = disciplinaId;
    }

    public Long getHorarioId() {
        return horarioId;
    }

    public void setHorarioId(Long horarioId) {
        this.horarioId = horarioId;
    }

    public Long getDiaId() {
        return diaId;
    }

    public void setDiaId(Long diaId) {
        this.diaId = diaId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        HorarioDisciplinaId that = (HorarioDisciplinaId) o;
        return Objects.equals(cursoId, that.cursoId) &&
                Objects.equals(disciplinaId, that.disciplinaId) &&
                Objects.equals(horarioId, that.horarioId) &&
                Objects.equals(diaId, that.diaId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(cursoId, disciplinaId, horarioId, diaId);
    }
}
