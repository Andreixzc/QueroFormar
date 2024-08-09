package org.vgbs.service;

import org.vgbs.repository.AlunoDisciplinaRepository;
import org.vgbs.repository.HorarioDisciplinaRepository;
import org.vgbs.repository.PrerequisitoRepository;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;

@ApplicationScoped
public class QueroFormarService {
    @Inject
    AlunoDisciplinaRepository alunoDisciplinaRepo;
    
    @Inject
    HorarioDisciplinaRepository horarioDisciplinaRepo;
    
    @Inject
    PrerequisitoRepository prerequisitoRepo;

    public void foo(){
        var teste1 = alunoDisciplinaRepo.findByCurso(1L);
        var teste2 = horarioDisciplinaRepo.findByCurso(1L);
        var teste3 = prerequisitoRepo.list();

        System.out.println("teste1: " + teste1);
        System.out.println("teste2: " + teste2);
        System.out.println("teste3: " + teste3);
    }
}
