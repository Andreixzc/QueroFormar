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

        List<DisciplinaRestanteDTO> disciplinasPossiveis;
        do{
            System.out.println("comeco do while");
            disciplinasPossiveis = multimap.get(null); // disciplinas sem dependencias

            /*todo
            * processamento disciplinaPossiveis
            */
            System.out.println("disciplinas Possiveis: " + disciplinasPossiveis);
            for (DisciplinaRestanteDTO dp : disciplinasPossiveis) {
                System.out.println("putAll: " + dp.getDisciplinaNome());

                //multimap.putAll(null, multimap.get(dp.getDisciplinaId()));
                System.out.println("removeAll: " + dp.getDisciplinaNome());

                //multimap.removeAll(dp.getDisciplinaId());
            }
            disciplinasPossiveis = null;
        }while( disciplinasPossiveis != null && disciplinasPossiveis.isEmpty());
        System.out.println("fim do while");
    }
    /*
     * 1-> selecionar disciplinas possiveis
     * 2-> processar disciplinas possiveis
     * 3-> atualizar dependencias baseada nas disciplinas que foram "concluidas"
     * 4-> repetir ate que nao disciplinas possiveis seja vazio
     */
}
