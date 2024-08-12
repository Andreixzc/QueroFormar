package org.vgbs.repository;

import java.util.List;

import org.vgbs.entity.Prerequisito;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class PrerequisitoRepository implements PanacheRepository<PrerequisitoRepository>{
    
    public List<Prerequisito> list(){
        return Prerequisito.listAll();
    }
}
