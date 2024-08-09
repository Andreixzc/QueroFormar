package org.vgbs.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
@Entity
@Table(name = "horario_disciplina", uniqueConstraints = @UniqueConstraint(columnNames = {"curso_id", "disciplina_id", "horario_id", "dia_id"}))
public class HorarioDisciplina extends PanacheEntityBase{

    @EmbeddedId
    private HorarioDisciplinaId id;
    
    @MapsId("cursoId")
    @ManyToOne
    @JoinColumn(name="curso_id", nullable = false)
    public Curso cursoId;

    @MapsId("disciplinaId")
    @ManyToOne
    @JoinColumn(name="disciplina_id", nullable = false)
    public Disciplina disciplinaId;

    @MapsId("horarioId")
    @ManyToOne
    @JoinColumn(name="horario_id", nullable = false)
    public Horario horarioId;

    @MapsId("diaId")
    @ManyToOne
    @JoinColumn(name="dia_id", nullable = false)
    public Dia diaId;

    public Curso getCursoId() {
        return cursoId;
    }

    public void setCursoId(Curso cursoId) {
        this.cursoId = cursoId;
    }

    public Disciplina getDisciplinaId() {
        return disciplinaId;
    }

    public void setDisciplinaId(Disciplina disciplinaId) {
        this.disciplinaId = disciplinaId;
    }

    public Horario getHorarioId() {
        return horarioId;
    }

    public void setHorarioId(Horario horarioId) {
        this.horarioId = horarioId;
    }

    public Dia getDiaId() {
        return diaId;
    }

    public void setDiaId(Dia diaId) {
        this.diaId = diaId;
    }
}
