package org.vgbs.service;

import java.util.ArrayList;
import java.util.List;

import org.vgbs.dto.DisciplinaRestanteDTO;

public class GrafoDependencia {
    
    
    public void montarGrafo(List<DisciplinaRestanteDTO> ld){
        List<List<DisciplinaRestanteDTO>> grade = new ArrayList<>();
    
        GradeGrafo g = new GradeGrafo(ld);
        for (DisciplinaRestanteDTO d : ld) {
            g.add(d);
        }
        
        for(var entry : g.listaAdj.entrySet()){
            Long key = entry.getKey();
            List<DisciplinaRestanteDTO> valueList = entry.getValue();
            System.out.println("Key: " + key);
            for (var value : valueList) {
                System.out.println("Disciplina Nome: " + value.getDisciplinaNome());
            }
        }
    }
}
