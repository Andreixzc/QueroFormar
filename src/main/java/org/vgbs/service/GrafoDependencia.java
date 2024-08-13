package org.vgbs.service;

import org.vgbs.dto.DisciplinaRestanteDTO;

import com.google.common.collect.ListMultimap;
import com.google.common.collect.MultimapBuilder;

public class GrafoDependencia {
    public void montarGrafo(){
        ListMultimap<Long, DisciplinaRestanteDTO> multimap = MultimapBuilder.hashKeys().arrayListValues().build();
        multimap.put(null, new DisciplinaRestanteDTO(1L, "disciplina1", null, null, null, null));
        multimap.put(null, new DisciplinaRestanteDTO(2L, "disciplina2", null, null, null, null));
        

        var teste = multimap.get(null);
        for (DisciplinaRestanteDTO disciplinaRestanteDTO : teste) {
            System.out.println("testando: " + teste);
        }
    }
    
}
