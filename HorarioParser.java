import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class HorarioParser {
    public static void main(String[] args) {
        final String[] horariosManha = { "07:00 - 08:40", "08:50 - 10:30", "10:40 - 12:20" };
        final String[] horariosTarde = { "13:30 - 15:10", "15:20 - 17:00", "17:10 - 18:50" };
        final String[] dias = { "Segunda", "Terça", "Quarta", "Quinta", "Sexta" };

        String[][] horarioDisciplinas = {
            // Primeira imagem
            { "LAB AEDs I (T1/G1) - WALISSON", "Cálculo I (T1)", "AEDs I (T1) - WALISSON", "Cálculo I (T1)", "Filosofia: R.M. (T1)" },
            { "AEDs I (T1) - WALISSON", "IC (T1) - FELIPE", "", "LAB AEDs I (T1/G2) - WALISSON", "" },
            { "", "", "LIP (G1) - PEDRO", "LAB AEDs I (T1/G4)", "" },
            { "LAB AEDs I (T2/G1) - THELDO", "Cálculo I (T1)", "", "LAB AEDs I (T1/G2)", "LIP (T2G2) - JOAO PAULO" },
            { "AEDs I (T2) - THELDO", "Cálculo I (T2)", "", "LAB AEDs I (T2/G3) - THELDO", "Filosofia: R.M. (T2)" },
            { "LAB AEDs I (T2/G1) - THELDO", "LAB AEDs I (T2/G2) - THELDO", "", "LAB AEDs I (T2/G4) - THELDO", "LIP (T2G3) - JOAO PAULO" },
            { "TI1", "", "", "", "" },
            { "AEDs I - THELDO", "Cálculo I (T1)", "Filosofia: R.M. (T1)", "", "" },
            { "LIP (G1)", "Cálculo I (T2)", "", "LIP (G3) - AMALIA", "" },
            { "LAB AEDs I (G1) - THELDO", "", "", "LAB AEDs I (T1/G2)", "" },
            { "", "IC - FÁTIMA", "", "", "LIP (T2G3) - JOAO PAULO" },

            // Segunda imagem
            { "LAB.AEDs II (T1/G2) - CIDA", "", "LAB.AEDs II (T1/G3) - PEDRO RAMOS", "", "" },
            { "AEDs II (T1) - MAX", "", "ES1 (T1) - Humberto", "ES1 (T1) - Humberto", "OFERTADA NA PRAÇA" },
            { "CR:FR (T1) - CIDA", "AC I (T1) - THELDO", "", "AC I (T1) - THELDO", "OFERTADA NA PRAÇA" },
            { "LAB.AEDs II (T2/G1) - FELIPE", "", "LAB.AEDs II (T2/G3) - PEDRO RAMOS", "", "" },
            { "AEDs II (T2) - FELIPE", "", "ES1 (T2) - LUCIANA", "ES1 (T2) - LUCIANA", "OFERTADA NA PRAÇA" },
            { "CR:FR (T2) - CIDA", "AC I (T2) - CLÁUDIO", "", "AC I (T2) - CLÁUDIO", "OFERTADA NA PRAÇA" },
            { "LAB.AEDs II (G1) - NAÍSSES", "", "ES1 - AMALIA", "ES1 - AMALIA", "OFERTADA NA PRAÇA" },
            { "AEDs II - NAÍSSES", "", "AC I - THELDO", "AC I - THELDO", "OFERTADA NA PRAÇA" },
            { "CR:FR (T3) - CIDA", "", "", "", "OFERTADA NA PRAÇA" },
            { "AEDs III - KUTOVA", "", "LAC (G2) - ROMANELLI", "LAC (G2) - ROMANELLI", "OFERTADA NA PRAÇA" },
            { "LP - M.RODRIGO", "", "Cálculo II", "Cálculo II", "OFERTADA NA PRAÇA" },
            { "BD - WLADIMIR", "BD - WLADIMIR", "", "AC II - HENRIQUE", "AC II - HENRIQUE" },
            { "MAD - ZÁRATE", "", "GRAFOS - SÍLVIO", "GRAFOS - SÍLVIO", "OFERTADA NA PRAÇA" },
            { "LDDM (G1) - ILO", "IA - CRIS", "CRIS / MOL / ROSI", "CRIS / MOL / ROSI", "OFERTADA NA PRAÇA" }
        };

        try (BufferedWriter writer = new BufferedWriter(new FileWriter("horarios.txt"))) {
            for (int i = 0; i < horarioDisciplinas.length; i++) {
                for (int j = 0; j < dias.length; j++) {
                    if (!horarioDisciplinas[i][j].isEmpty()) {
                        String horario;
                        if (i < 3) {
                            horario = horariosManha[i];
                        } else if (i < 6) {
                            horario = horariosManha[i - 3];
                        } else if (i < 9) {
                            horario = horariosTarde[i - 6];
                        } else if (i < 12) {
                            horario = horariosTarde[i - 9];
                        } else if (i < 15) {
                            horario = horariosManha[i - 12];
                        } else if (i < 18) {
                            horario = horariosManha[i - 15];
                        } else if (i < 21) {
                            horario = horariosTarde[i - 18];
                        } else if (i < 24) {
                            horario = horariosTarde[i - 21];
                        } else if (i < 27) {
                            horario = horariosManha[i - 24];
                        } else if (i < 30) {
                            horario = horariosManha[i - 27];
                        } else if (i < 33) {
                            horario = horariosTarde[i - 30];
                        } else {
                            horario = horariosTarde[i - 33];
                        }
                        writer.write(dias[j] + " - " + horario + " - " + horarioDisciplinas[i][j]);
                        writer.newLine();
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
