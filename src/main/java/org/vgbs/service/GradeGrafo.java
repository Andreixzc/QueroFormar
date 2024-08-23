package org.vgbs.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.vgbs.dto.DisciplinaRestanteDTO;

public class GradeGrafo {
    Map<Long, List<DisciplinaRestanteDTO>> listaAdj;

    public GradeGrafo(){
        this.listaAdj = new HashMap<>();
    }

    public GradeGrafo(List<DisciplinaRestanteDTO> disciplinas){
        this.listaAdj = new HashMap<>();
        for(DisciplinaRestanteDTO d : disciplinas){
            listaAdj.put(d.getDisciplinaId(), new ArrayList<>());
            add(d);
        }
    }

    public void add(DisciplinaRestanteDTO v){
        if(v.getDisciplinaRequisitoId() != null){
            List<DisciplinaRestanteDTO> dependencias =  listaAdj.get(v.getDisciplinaRequisitoId());
            if(dependencias != null){ // se == null, a disciplina ja foi concluida
                dependencias.add(v);
            } 
        }
    } 
}
