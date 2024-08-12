package org.vgbs.entity;

import java.time.LocalTime;

import org.vgbs.dto.DisciplinaRestanteDTO;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.SqlResultSetMapping;
import jakarta.persistence.ColumnResult;
import jakarta.persistence.ConstructorResult;

@Entity
@SqlResultSetMapping(
        name = "DisciplinasRestantesMapeamento",
        classes = @ConstructorResult(
                targetClass = DisciplinaRestanteDTO.class,
                columns = {
                        @ColumnResult(name = "disciplina_id", type = Long.class),
                        @ColumnResult(name = "disciplina_nome", type = String.class),
                        @ColumnResult(name = "disciplina_requisito_id", type = Long.class),
                        @ColumnResult(name = "requisito_nome", type = String.class),
                        @ColumnResult(name = "inicio", type = LocalTime.class),
                        @ColumnResult(name = "fim", type = LocalTime.class)
                }
        )
)
public class DisciplinaRestante extends PanacheEntity{
    
}
