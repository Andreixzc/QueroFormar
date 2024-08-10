package org.vgbs.repository;

import java.util.List;

import org.vgbs.entity.Aluno;
import org.vgbs.entity.AlunoDisciplina;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class AlunoDisciplinaRepository implements PanacheRepository<AlunoDisciplina>{
    public List<AlunoDisciplina>  findByMatricula(Long matricula){
        Aluno aluno = new Aluno();
        aluno.setId(matricula);
        AlunoDisciplina alunoDisciplina = new AlunoDisciplina();
        alunoDisciplina.setAluno(aluno);
        //List<AlunoDisciplina> lista = AlunoDisciplina.findAll();
        return AlunoDisciplina.listAll();
    }
}
