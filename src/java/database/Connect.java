package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Connect {
    /**
     * @attributes
     */
    private Connection con;
    private String host;
    private String db;
    private String username;
    private String password;
    private static Connect connect;
    
    /**
     * @method: Constructor  
    */
    @SuppressWarnings("LeakingThisInConstructor")
    public Connect(){
        this.host = "COMFRED-WINDOWS\\DEVELOPMENT:50377";
        this.db = "Aves_Prueba";
        this.username = "sa";
        this.password = "123456";
        
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
            String url = "jdbc:sqlserver://"+host+";databaseName="+db;
            con = DriverManager.getConnection(url, username, password);
            System.out.println("Se creo la conexion");
        } catch (InstantiationException | ClassNotFoundException | IllegalAccessException | SQLException ex) {
            Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
        }
        connect = this;
    }
    
    /**
     * @method: Constructor 
     * @param host
     * @param db
     * @param username
     * @param password
    */
    @SuppressWarnings("LeakingThisInConstructor")
    public Connect(String host, String db, String username, String password){
        try{
        Class.forName("com.mysql.jdbc.Driver");
        this.host = host;
        this.db = db;
        this.username = username;
        this.password = password;
        con = DriverManager.getConnection ("jdbc:mysql://" + host +"/"+db,username,password);
        }catch(ClassNotFoundException | SQLException ex){
            Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
        }
        connect = this;
    }
    
    /*
     * @method: getConnection
     * @return: conexión activa
     */
    public Connection connection(){
        return con;
    }
    
    /*
     * @method: closeConnection
    */
    public void closeConnection(){
        try{
            con.close();
        }catch(SQLException ex){
            Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /*
     * Getter's and Setter's
     */
    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public String getDb() {
        return db;
    }

    public void setDb(String db) {
        this.db = db;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public static Connect getConnect() {
        return connect;
    }

    public static void setConnect(Connect connect) {
        Connect.connect = connect;
    }
}