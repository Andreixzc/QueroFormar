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
    public Curso curso;

    @MapsId("disciplinaId")
    @ManyToOne
    @JoinColumn(name="disciplina_id", nullable = false)
    public Disciplina disciplina;

    @MapsId("horarioId")
    @ManyToOne
    @JoinColumn(name="horario_id", nullable = false)
    public Horario horario;

    @MapsId("diaId")
    @ManyToOne
    @JoinColumn(name="dia_id", nullable = false)
    public Dia dia;

    public HorarioDisciplinaId getId() {
        return id;
    }

    public void setId(HorarioDisciplinaId id) {
        this.id = id;
    }

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
