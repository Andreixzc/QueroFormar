package org.vgbs.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;

import org.vgbs.dto.DisciplinaRestanteDTO;

public class GradeGrafo {
    Map<Long, List<DisciplinaRestanteDTO>> listaAdj;

    public GradeGrafo(){
        this.listaAdj = new HashMap<>();
    }

    public void printEntries(){
        for (var tmp : this.listaAdj.entrySet()) {
            System.out.println("entry: " + tmp.getValue());
            for (var d : tmp.getValue()) {
                System.out.println("dId: " + d.getDisciplinaId());
                
            }
        }
    }
    public void add(Long vertexId, DisciplinaRestanteDTO v){
        List<DisciplinaRestanteDTO> vertex = listaAdj.get(vertexId);

        if(vertex == null){
            vertex = new ArrayList<>();
            listaAdj.put(vertexId, vertex);
        }
        vertex.add(v);
    } 

    public void bfs(Long x){
        Queue<Long> q = new LinkedList<>();
        Map<Long, Boolean> visited = new HashMap<>();
        Map<Long, Integer> distance = new HashMap<>();

        visited.put(x, true);
        distance.put(x, 0);
        q.offer(x);

        while(!q.isEmpty()){
            Long s = q.poll(); 
            List<DisciplinaRestanteDTO> disciplinas = listaAdj.get(s);
            System.out.println("disciplinas: " + s + " with object: " + listaAdj.get(s));
            System.out.println("Processing node: " + s + " with distance: " + distance.get(s));
            if(disciplinas != null){
                for (DisciplinaRestanteDTO d : disciplinas) {                    
                    if( visited.get(d.getDisciplinaId()) != null && visited.get(d.getDisciplinaId()) )
                        continue;
                    visited.put(d.getDisciplinaId(), true);
                    distance.put(d.getDisciplinaId(), distance.get(s)+1);
                    q.offer(d.getDisciplinaId());
                }
            }
        }

    }
}
