package org.vgbs.repository;

import java.util.List;

import org.vgbs.dto.DisciplinaRestanteDTO;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import jakarta.transaction.Transactional;


@ApplicationScoped
public class QueroFormarRepository {
     @PersistenceContext
    EntityManager em;
    
    @Transactional
    public List<DisciplinaRestanteDTO> findMissingDisciplinas(Long alunoId) {
        String jpqlQuery = """
            SELECT new DisciplinaRestanteDTO(
                d.id, d.nome, pr.disciplinaRequisito.id, d2.nome, h.inicio, h.fim)
            FROM Disciplina d
            JOIN CursoDisciplina cd ON d.id = cd.disciplina.id
            JOIN AlunoCurso ac ON cd.curso.id = ac.curso.id
            LEFT JOIN AlunoDisciplina ad ON ad.disciplina.id = d.id AND ad.aluno.id = ac.aluno.id
            LEFT JOIN Prerequisito pr ON d.id = pr.disciplina.id
            LEFT JOIN Disciplina d2 ON pr.disciplinaRequisito.id = d2.id
            LEFT JOIN HorarioDisciplina hd ON hd.disciplina.id = d.id
            LEFT JOIN Horario h ON hd.horario.id = h.id
            WHERE ac.aluno.id = :alunoId
            AND ad.id IS NULL
        """;
    
        TypedQuery<DisciplinaRestanteDTO> query = em.createQuery(jpqlQuery, DisciplinaRestanteDTO.class);
        query.setParameter("alunoId", alunoId);
        
        return query.getResultList();
    }
}
