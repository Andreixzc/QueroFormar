package org.vgbs.resource;

import java.util.List;

import org.vgbs.dto.DisciplinaRestanteDTO;
import org.vgbs.service.QueroFormarService;

import jakarta.inject.Inject;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;

@Path("/hello")
public class QueroFormarResource {

    @Inject
    QueroFormarService queroFormarServ;

    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String hello() {
        List<DisciplinaRestanteDTO> ldr = queroFormarServ.listarDisciplinasRestantes();
        
        for (DisciplinaRestanteDTO dto : ldr) {
            System.out.println("dto: " + dto.getDisciplinaNome());
        }
        return "Hello from Quarkus REST";
    }
}
