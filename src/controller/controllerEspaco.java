package controller;


import dao.EspacoDAO;
import model.Espaco;

import java.sql.SQLException;

public class controllerEspaco {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Espaco espaco = new Espaco((long)6,"SportMania" ,"2234567890" ,"36045000",
                "Logradouro" ,1 ,"compl" ,"Bairro" ,
                "Cidade","UF" ,80.5,900 ,
                "6:00","23:00",(long)1274);

        Espaco espaco1 = new Espaco((long)7,"SportMania" ,"2234567890" ,"36045000",
                "Logradouro" ,1 ,"compl" ,"Bairro" ,
                "Cidade","UF" ,80.5,900 ,
                "6:00","23:00",(long)1274);

        //EspacoDAO.gravar(espaco);
        // EspacoDAO.alterar(espaco);
        // EspacoDAO.excluir(espaco);

        //EspacoDAO.gravar(espaco1);
       // EspacoDAO.alterar(espaco1);
       // EspacoDAO.excluir(espaco1);

        // System.out.println(EspacoDAO.obterEspaco((long)6).getNome());
       //System.out.println(EspacoDAO.obterEspaco((long)7).getNome());
        System.out.println(EspacoDAO.obterTodosEspacos().get(0));
        System.out.println(EspacoDAO.obterTodosEspacos().get(1));
    }

}