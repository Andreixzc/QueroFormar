package org.vgbs.service;

import java.util.ArrayList;
import java.util.List;

import org.vgbs.dto.DisciplinaRestanteDTO;

import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.SetMultimap;

public class GrafoDependencia {
    
    
    public void montarGrafo(List<DisciplinaRestanteDTO> ld){
        SetMultimap<Long, DisciplinaRestanteDTO> multimap = MultimapBuilder.hashKeys().hashSetValues().build();
        List<List<DisciplinaRestanteDTO>> grade = new ArrayList<>();
        //Long firstId = ld.get(0).getDisciplinaId();
        //System.out.println("firstId: " + firstId);
        //System.out.println("firstNome: " + ld.get(0).getDisciplinaNome());
    
        GradeGrafo g = new GradeGrafo();
        for (DisciplinaRestanteDTO d : ld) {
            multimap.put(d.getDisciplinaRequisitoId(), d);
            g.add( d.getDisciplinaRequisitoId()!=null ? d.getDisciplinaRequisitoId() : 0 , d);
        }
        //g.printEntries();

        g.bfs(0L);
       
    }
}
