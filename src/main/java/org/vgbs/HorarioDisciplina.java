package org.vgbs;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
@Entity
@Table(name = "horario_disciplina", uniqueConstraints = @UniqueConstraint(columnNames = {"curso_id", "disciplina_id", "horario_id", "dia_id"}))
public class HorarioDisciplina extends PanacheEntityBase{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="curso_id")
    public Long cursoId;

    @Column(name="disciplina_id")
    public Long disciplinaId;

    @Column(name="horario_id")
    public Long horarioId;

    @Column(name="dia_id")
    public Long diaId;
}
