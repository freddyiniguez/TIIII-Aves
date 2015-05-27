package controllers;
import database.Connect;
import java.sql.*;

public class EspecieController {
    
    public static String getEspecie(){
        ResultSet rs = null;
        
        Connection conn1 = new Connect().connection();
        CallableStatement cs;
        String resultado = "";
        try{
            cs = conn1.prepareCall("SELECT especie FROM Especie WHERE idespecie=8");
            cs.execute();
            rs = cs.getResultSet();
            resultado = rs.getString(0);
            conn1.close();
        }catch(SQLException ex){
            ;
        }
        return resultado;
    }
}