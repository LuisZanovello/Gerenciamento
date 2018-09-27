package Principal;


import dao.EspacoDAO;
import model.Espaco;

import java.sql.SQLException;

public class MainEspaco {

    public static void main(String[] args) {
        Espaco espaco = new Espaco((long)123,"SportMania" ,"1234567890" ,"36045000",
                "Logradouro" ,1 ,"compl" ,"Bairro" ,
                "Cidade","UF" ,80.5,900 ,
                "6h00","23h00",(long)12222);

        System.out.println(espaco.getNome());

        try {
            EspacoDAO.gravar(espaco);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
