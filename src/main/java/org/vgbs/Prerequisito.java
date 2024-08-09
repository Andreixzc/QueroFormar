package org.vgbs;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;


@Entity
@Table(name="prerequisito")
public class Prerequisito extends PanacheEntityBase{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;

    @ManyToOne
    @JoinColumn(name="disciplina_id", nullable = false)
    public Disciplina disciplinaId;

    @ManyToOne
    @JoinColumn(name="disciplina_requisito_id", nullable = false)
    public Disciplina disciplinaRequisitoId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Disciplina getDisciplinaId() {
        return disciplinaId;
    }

    public void setDisciplinaId(Disciplina disciplinaId) {
        this.disciplinaId = disciplinaId;
    }

    public Disciplina getDisciplinaRequisitoId() {
        return disciplinaRequisitoId;
    }

    public void setDisciplinaRequisitoId(Disciplina disciplinaRequisitoId) {
        this.disciplinaRequisitoId = disciplinaRequisitoId;
    }

}
