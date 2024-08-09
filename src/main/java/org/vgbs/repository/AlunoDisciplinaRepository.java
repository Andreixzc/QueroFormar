package org.vgbs.repository;

import java.util.List;

import org.vgbs.entity.Aluno;
import org.vgbs.entity.AlunoDisciplina;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class AlunoDisciplinaRepository implements PanacheRepository<AlunoDisciplina>{
    public List<AlunoDisciplina>  findByCurso(Long alunoId){
        Aluno aluno = new Aluno();
        aluno.setId(alunoId);
        return AlunoDisciplina.find("aluno", aluno).list();
    }
}
