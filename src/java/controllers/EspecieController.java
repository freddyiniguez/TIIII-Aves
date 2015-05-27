package controllers;

import database.*;
import java.sql.*;
import java.util.*;

public class EspecieController {
    /**
     * @method obtenerTablaEspecies
     * @return lista de especies
     * @description Procedimiento que regresa un listado de las especies existentes
     */
    public static List<Especie> obtenerTablaEspecies() {
        @SuppressWarnings("Convert2Diamond")
        List<Especie> lista = new ArrayList<Especie>();

        @SuppressWarnings("UnusedAssignment")
        ResultSet rs = null;
        Connection conn1 = new Connect().connection();
        CallableStatement cs;
        try {
            cs = conn1.prepareCall("{call dbo.obtenerEspecies(1)}");
            Boolean bol = cs.execute();
            rs = cs.getResultSet();
            while (rs != null && rs.next()) {
                Especie especie = new Especie();
                especie.setIdorden(Integer.parseInt(rs.getString("idorden")));
                especie.setIdfamilia(Integer.parseInt(rs.getString("idfamilia")));
                especie.setIdgenero(Integer.parseInt(rs.getString("idgenero")));
                especie.setEspecie(rs.getString("especie"));
                especie.setIdmicrohabitat(Integer.parseInt(rs.getString("idmicrohabitat")));
                especie.setIdestrato(Integer.parseInt(rs.getString("idestrato")));
                especie.setMinimo(rs.getString("minimo"));
                especie.setMaximo(rs.getString("maximo"));
                especie.setIdcentroA(Integer.parseInt(rs.getString("idcentroA")));
                especie.setArelativa(Integer.parseInt(rs.getString("arelativa")));
                especie.setSensible(Integer.parseInt(rs.getString("sensible")));
                especie.setPconserva(Integer.parseInt(rs.getString("pconserva")));
                especie.setPinvestiga(Integer.parseInt(rs.getString("pinvestiga")));
                especie.setNotas(rs.getString("notas"));
                lista.add(especie);
            }
            conn1.close();
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return lista;
    }

    /**
     * @method obtenerEspecie
     * @param especie
     * @return lista de especie
     * @description Procedimiento que regresa la especie solicitada
     */
    public static List<Especie> obtenerEspecie(String especie){
        @SuppressWarnings("Convert2Diamond")
        List<Especie> lista = new ArrayList<Especie>();
        
        @SuppressWarnings("UnusedAssignment")
        ResultSet rs = null;
        Connection conn1 = new Connect().connection();
        CallableStatement cs;
        try {
            cs = conn1.prepareCall("{call dbo.obtenerEspecie(?)}");
            cs.setString(1, especie);
            Boolean bol = cs.execute();
            rs = cs.getResultSet();
            while (rs != null && rs.next()) {
                Especie especi = new Especie();
                especi.setIdorden(Integer.parseInt(rs.getString("idorden")));
                especi.setIdfamilia(Integer.parseInt(rs.getString("idfamilia")));
                especi.setIdgenero(Integer.parseInt(rs.getString("idgenero")));
                especi.setEspecie(rs.getString("especie"));
                especi.setIdmicrohabitat(Integer.parseInt(rs.getString("idmicrohabitat")));
                especi.setIdestrato(Integer.parseInt(rs.getString("idestrato")));
                especi.setMinimo(rs.getString("minimo"));
                especi.setMaximo(rs.getString("maximo"));
                especi.setIdcentroA(Integer.parseInt(rs.getString("idcentroA")));
                especi.setArelativa(Integer.parseInt(rs.getString("arelativa")));
                especi.setSensible(Integer.parseInt(rs.getString("sensible")));
                especi.setPconserva(Integer.parseInt(rs.getString("pconserva")));
                especi.setPinvestiga(Integer.parseInt(rs.getString("pinvestiga")));
                especi.setNotas(rs.getString("notas"));
                lista.add(especi);
                System.out.println("Pasa una vez");
            }
            conn1.close();
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return lista;
    }
    
    /**
     * @method procedimientoInsertaEspecie
     * @param idorden
     * @param idfamilia
     * @param idgenero
     * @param especie
     * @param idmicrohabitat
     * @param idestrato
     * @param minimo
     * @param maximo
     * @param idcentroA
     * @param arelativa
     * @param sensible
     * @param pconserva
     * @param pinvestiga
     * @param notas
     * @return result
     * @description Procedimienti que inserta una nueva especie
     */
    public static Boolean procedimientoInsertaEspecie(int idorden, int idfamilia, int idgenero, String especie, int idmicrohabitat, int idestrato, String minimo, String maximo, int idcentroA, int arelativa, int sensible, int pconserva, int pinvestiga, String notas ) {	
        Connection conn1 = new Connect().connection();
        CallableStatement cs;
        Boolean verif = false;
        try {
            cs = conn1.prepareCall("{call dbo.insertarEspecie(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");                        
            cs.setInt(1, idorden);
            cs.setInt(2, idfamilia);
            cs.setInt(3, idgenero);
            cs.setString(4, especie);
            cs.setInt(5, idmicrohabitat);
            cs.setInt(6, idestrato);
            cs.setString(7, minimo);
            cs.setString(8, maximo);
            cs.setInt(9, idcentroA);
            cs.setInt(10, arelativa);
            cs.setInt(11, sensible);
            cs.setInt(12, pconserva);
            cs.setInt(13, pinvestiga);
            cs.setString(14, notas);
            if (!cs.execute()) {
                verif = true;
            }  
            conn1.close();
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return verif;
    }
    
    /**
     * @method eliminarEspecie
     * @param especie
     * @return result
     * @description Procedimiento que elimina una especie
     */
    @SuppressWarnings("CallToPrintStackTrace")
    public static Boolean eliminarEspecie(String especie){
        Connection conn1 = new Connect().connection();	
        CallableStatement cs;
        boolean verif = false;
        try{                    
            cs = conn1.prepareCall("{call dbo.eliminarEspecie(?)}");  
            cs.setString(1, especie);
            if(!cs.execute())
                verif = true;
            conn1.close();
        }catch(SQLException ex){
            ex.printStackTrace();
        }
        return verif;
    }

    /** 
     * @method modificarEspecie
     * @param especie
     * @param minimo
     * @param maximo
     * @param arelativa
     * @param sensible
     * @param pconserva
     * @param pinvestiga
     * @param notas
     * @return result
     * @description Procedimiento que modifica una especie
     */
    public static Boolean modificarEspecie(String especie, String minimo, String maximo, int arelativa, int sensible, int pconserva, int pinvestiga, String notas){
        Connection conn1 = new Connect().connection();
        CallableStatement cs;
        Boolean verif = false;
        try {
            cs = conn1.prepareCall("{call dbo.modificarEspecie(?,?,?,?,?,?,?,?)}");                        
            cs.setString(1, especie);
            cs.setString(2, minimo);
            cs.setString(3, maximo);
            cs.setInt(4, arelativa);
            cs.setInt(5, sensible);
            cs.setInt(6, pconserva);
            cs.setInt(7, pinvestiga);
            cs.setString(8, notas);
            if (!cs.execute()) {
                verif = true;
            }  
            conn1.close();
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return verif;
    }
}