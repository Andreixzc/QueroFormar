package org.vgbs.resource;

import java.util.List;

import org.vgbs.entity.HorarioDisciplina;
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
        List<HorarioDisciplina> hd = HorarioDisciplina.listAll();
         for (var t : hd) {
            System.out.println("teste: " + t);
        }
        queroFormarServ.foo();
        return "Hello from Quarkus REST";
    }
}
