package org.vgbs.repository;

import java.util.List;

import org.vgbs.entity.Curso;
import org.vgbs.entity.HorarioDisciplina;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class HorarioDisciplinaRepository implements PanacheRepository<HorarioDisciplina>{
    
    public List<HorarioDisciplina> findByCurso(Long id){
        Curso curso = new Curso();
        curso.setId(id);
        return HorarioDisciplina.find("curso", curso).list();
    }
}
