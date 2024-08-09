package org.vgbs;

import java.util.List;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;

@Path("/hello")
public class GreetingResource {

    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String hello() {
        List<HorarioDisciplina> hd = HorarioDisciplina.listAll();
        for (var t : hd) {
            System.out.println("teste: " + t);
        }
        System.out.println("ooo aaa ");

        return "Hello from Quarkus RESTs";
    }
}
