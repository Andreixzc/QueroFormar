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
    
    @MapsId("curso")
    @ManyToOne
    @JoinColumn(name="curso_id", nullable = false)
    public Curso curso;

    @MapsId("disciplina")
    @ManyToOne
    @JoinColumn(name="disciplina_id", nullable = false)
    public Disciplina disciplina;

    @MapsId("horario")
    @ManyToOne
    @JoinColumn(name="horario_id", nullable = false)
    public Horario horario;

    @MapsId("dia")
    @ManyToOne
    @JoinColumn(name="dia_id", nullable = false)
    public Dia dia;

    public Curso getCurso() {
        return curso;
    }

    public void setCurso(Curso curso) {
        this.curso = curso;
    }

    public Disciplina getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(Disciplina disciplina) {
        this.disciplina = disciplina;
    }

    public Horario getHorario() {
        return horario;
    }

    public void setHorario(Horario horario) {
        this.horario = horario;
    }

    public Dia getDia() {
        return dia;
    }

    public void setDia(Dia dia) {
        this.dia = dia;
    }
}
