import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class Parser {
    public static void main(String[] args) {
        String filename = "Assets/Curriculo.txt";
        String delimitedCvPath = "Assets/CurriculoFormatado.txt";
        String idsPath = "Assets/IdsMaterias.txt";
        String parsedOutput = "Assets/MateriasCSV.txt";
        String finalOutput = "Assets/final.csv";
        HashSet<String> ids = buildHash(idsPath);
        // addingDelimiter(filename, parsedFile, ids);
        // buildMaterias(delimitedCvPath, parsedOutput);
        parseRequisitos(parsedOutput, finalOutput, ids);

    }

    public static void addingDelimiter(String inputFilename, String outputFilename, HashSet<String> ids) {
        char delimiter = '*';
        try (BufferedReader br = new BufferedReader(new FileReader(inputFilename));
                BufferedWriter bw = new BufferedWriter(new FileWriter(outputFilename))) {

            String line;
            while ((line = br.readLine()) != null) {
                line = line.trim();
                bw.write(line);
                bw.newLine();
                if (ids.contains(line)) {
                    bw.write(delimiter);
                    bw.newLine();
                }
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static HashSet<String> buildHash(String filename) {
        HashSet<String> hash = new HashSet<>();
        try {
            BufferedReader br = new BufferedReader(new FileReader(filename));
            String line;
            while ((line = br.readLine()) != null) {
                hash.add(line.trim());
            }

        } catch (Exception e) {

        }
        return hash;
    }

    public static void buildMaterias(String formatedPath, String outputPath) {
        try (BufferedReader br = new BufferedReader(new FileReader(formatedPath));
                BufferedWriter bw = new BufferedWriter(new FileWriter(outputPath))) {
            String line;
            StringBuilder sb = new StringBuilder();
            while ((line = br.readLine()) != null) {
                line = line.trim();
                if (line.equals("*")) {
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1); // Remove the last comma
                    }
                    bw.write(sb.toString());
                    bw.newLine(); // Write a new line to the output file
                    sb.setLength(0); // Clear the StringBuilder
                } else {
                    sb.append(line);
                    sb.append(",");
                }
            }
            // Write the last set if there is no trailing "*"
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1); // Remove the last comma
                bw.write(sb.toString());
                bw.newLine();
            }
        } catch (IOException e) {
            e.printStackTrace(); // Print exception details for debugging
        }
    }

    public static void parseRequisitos(String inputFilename, String outputFilename, HashSet<String> ids) {
        try (BufferedReader br = new BufferedReader(new FileReader(inputFilename));
             FileWriter fw = new FileWriter(outputFilename)) {

            // Write headers to the output file
            fw.write("ID,Title,SomeNumber,Requisites,SomeOtherField\n");

            String line;
            while ((line = br.readLine()) != null) {
                String[] splited = line.split(",");
                StringBuilder sb = new StringBuilder();
                for (int i = 3; i < splited.length; i++) {
                    if (!ids.contains(splited[i])) {
                        sb.append(splited[i]);
                        if (i < splited.length - 1) {
                            sb.append("/");
                        }
                    }
                }
                // Format the line with concatenated requisites
                String formattedLine = String.format("%s,%s,%s,%s,%s\n", splited[0], splited[1], splited[2], sb.toString(), splited[splited.length - 1]);
                fw.write(formattedLine);
            }
            System.out.println("Output file '" + outputFilename + "' generated successfully.");

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}