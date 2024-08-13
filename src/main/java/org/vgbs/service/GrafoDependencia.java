package org.vgbs.service;

import java.util.List;

import org.vgbs.dto.DisciplinaRestanteDTO;

import com.google.common.collect.ListMultimap;
import com.google.common.collect.MultimapBuilder;

public class GrafoDependencia {
    
    
    public void montarGrafo(List<DisciplinaRestanteDTO> ld){
        ListMultimap<Long, DisciplinaRestanteDTO> multimap = MultimapBuilder.hashKeys().arrayListValues().build();
        
        for (DisciplinaRestanteDTO d : ld) {
            multimap.put(d.getDisciplinaRequisitoId(), d);
        }

        var teste = multimap.get(null);
        var s = teste.stream();
    }
    
}
