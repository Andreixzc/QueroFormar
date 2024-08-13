package org.vgbs.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.vgbs.dto.DisciplinaRestanteDTO;

import com.google.common.collect.ListMultimap;
import com.google.common.collect.MultimapBuilder;

public class GrafoDependencia {
    
    
    public void montarGrafo(List<DisciplinaRestanteDTO> ld){
        ListMultimap<Long, DisciplinaRestanteDTO> multimap = MultimapBuilder.hashKeys().arrayListValues().build();
        List<DisciplinaRestanteDTO> listaDr;
        for (DisciplinaRestanteDTO d : ld) {
            multimap.put(d.getDisciplinaRequisitoId(), d);
        }

        List<DisciplinaRestanteDTO> disciplinasPossiveis;
        do{
            disciplinasPossiveis = multimap.get(null); // disciplinas sem dependencias
            /*todo
            * processamento disciplinaPossiveis
            */
            for (DisciplinaRestanteDTO dp : disciplinasPossiveis) {
                multimap.putAll(null, multimap.get(dp.getDisciplinaId()));
                multimap.removeAll(dp.getDisciplinaId());
            }
        }while( disciplinasPossiveis.isEmpty());
    }
    /*
     * 1-> selecionar disciplinas possiveis
     * 2-> processar disciplinas possiveis
     * 3-> atualizar dependencias baseada nas disciplinas que foram "concluidas"
     * 4-> repetir ate que nao disciplinas possiveis seja vazio
     */
}
