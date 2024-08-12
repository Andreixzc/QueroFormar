package org.vgbs.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
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
    public Disciplina disciplina;

    @ManyToOne
    @JoinColumn(name="disciplina_requisito_id", nullable = false)
    public Disciplina disciplinaRequisito;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Disciplina getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(Disciplina disciplina) {
        this.disciplina = disciplina;
    }

    public Disciplina getDisciplinaRequisito() {
        return disciplinaRequisito;
    }

    public void setDisciplinaRequisito(Disciplina disciplinaRequisito) {
        this.disciplinaRequisito = disciplinaRequisito;
    }

}
