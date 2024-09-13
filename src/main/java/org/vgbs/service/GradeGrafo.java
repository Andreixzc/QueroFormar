package org.vgbs.service;

import java.security.KeyStore.Entry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;

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

    public void kahn(){
        //int[] indegree = new int[listaAdj.size()];
        Map<Long, Integer> inDegree = new HashMap<>();
        for(var entry : this.listaAdj.entrySet()){
            for (var value :  entry.getValue()) {
                Integer prev = inDegree.get(value.getDisciplinaId());
                if(prev == null)
                    prev = 0;
                inDegree.put(value.getDisciplinaId(), ++prev);
            }
        }

    }


}
