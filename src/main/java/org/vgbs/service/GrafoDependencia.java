package org.vgbs.service;

import java.util.ArrayList;
import java.util.List;

import org.vgbs.dto.DisciplinaRestanteDTO;

import com.google.common.collect.ListMultimap;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.SetMultimap;

public class GrafoDependencia {
    
    
    public void montarGrafo(List<DisciplinaRestanteDTO> ld){
        SetMultimap<Long, DisciplinaRestanteDTO> multimap = MultimapBuilder.hashKeys().hashSetValues().build();
        List<List<DisciplinaRestanteDTO>> grade = new ArrayList<>();

        for (DisciplinaRestanteDTO d : ld) {
            multimap.put(d.getDisciplinaRequisitoId(), d);
        }

        for(var disciplinasPossiveis = multimap.get(null); disciplinasPossiveis!=null && !disciplinasPossiveis.isEmpty(); disciplinasPossiveis = multimap.get(null)){
            var tmpPossiveis = new ArrayList<>(disciplinasPossiveis);
            grade.add(tmpPossiveis);
            multimap.removeAll(null);
            for(var possiveis : tmpPossiveis){
                var dependencias = multimap.get(possiveis.getDisciplinaId());
                if(!multimap.containsEntry(null, possiveis.getDisciplinaId())){
                    multimap.putAll(null, dependencias);
                }
            }
        }
        for (List<DisciplinaRestanteDTO> semestre : grade) {
            System.out.println("periodo:");
            for (var materia : semestre) {
                System.out.println("materia: " + materia.getDisciplinaNome() + " id: " + materia.getDisciplinaId());
            }
        }
    }
    /*
     * 1-> selecionar disciplinas possiveis
     * 2-> processar disciplinas possiveis
     * 3-> atualizar dependencias baseada nas disciplinas que foram "concluidas"
     * 4-> repetir ate que nao disciplinas possiveis seja vazio
     */
}
