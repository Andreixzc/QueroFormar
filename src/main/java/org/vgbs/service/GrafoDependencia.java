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

    }
    /*
     * 1-> dr = selecionar disciplinas null
     * 2-> iterar sobre elemementos de dr e salvar dr.getDisciplinaId()
     * 3-> multimap.remove(dr.getDisciplinaId()) para cada disciplina removida
     * 4-> adicionar todas as disciplinas removidas para chave null
     */
}
