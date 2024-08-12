package org.vgbs.repository;

import java.util.List;

import org.vgbs.dto.DisciplinaRestanteDTO;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;


@ApplicationScoped
public class QueroFormarRepository {
     @PersistenceContext
    EntityManager em;
    
    @Transactional
    public List<DisciplinaRestanteDTO> findMissingDisciplinas(Long alunoId) {
        String query = """
            WITH MissingDisciplinas AS (
            SELECT d.id AS disciplina_id, d.nome AS disciplina_nome
            FROM disciplina d
            JOIN curso_disciplina cd ON d.id = cd.disciplina_id
            JOIN aluno_curso ac ON cd.curso_id = ac.curso_id
            LEFT JOIN aluno_disciplina ad ON ad.disciplina_id = d.id AND ad.aluno_id = ac.aluno_id
            WHERE ac.aluno_id = :alunoId
            AND ad.disciplina_id IS NULL
            )

            SELECT md.disciplina_id, md.disciplina_nome, pr.disciplina_requisito_id, d2.nome AS requisito_nome,
            horario.inicio, horario.fim
            FROM MissingDisciplinas md
            LEFT JOIN prerequisito pr ON md.disciplina_id = pr.disciplina_id
            LEFT JOIN disciplina d2 ON pr.disciplina_requisito_id = d2.id
            LEFT JOIN horario_disciplina ON horario_disciplina.disciplina_id = md.disciplina_id
            LEFT JOIN horario ON horario_disciplina.horario_id = horario.id;
                """;
        return em.createNativeQuery(query, "DisciplinasRestantesMapeamento")
                .setParameter("alunoId", alunoId)
                .getResultList();
    }
}
