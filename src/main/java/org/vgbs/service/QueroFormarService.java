package org.vgbs.service;

import java.util.List;

import org.vgbs.dto.DisciplinaRestanteDTO;
import org.vgbs.repository.QueroFormarRepository;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;

@ApplicationScoped
public class QueroFormarService {
    @Inject
    QueroFormarRepository qfRepo;

    public List<DisciplinaRestanteDTO> listarDisciplinasRestantes(){
        GrafoDependencia gd = new GrafoDependencia();
        List<DisciplinaRestanteDTO> listDependencias = qfRepo.findMissingDisciplinas(1L);
        gd.montarGrafo(listDependencias);
        return listDependencias;
    }
}


