/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package base;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author comtij
 */
public class Conexion {

    Connection conn=null;
    private String error;
    InetAddress in = null;


    // Conexion a la Base de Datos
    public void connect() throws ClassNotFoundException,
                                                 SQLException,
                                                 Exception {
        try {
            Class.forName("org.postgresql.Driver").newInstance();
            conn=DriverManager.getConnection(
              "jdbc:postgresql://127.0.0.1:5432/premier","postgres","dimitri79");
        }
        catch(ClassNotFoundException cnfe) {
           error="ClassNotFoundException: Could not locate DB driver.";
           throw new ClassNotFoundException(error);
        }
        catch (SQLException cnfe) {
           error="SQLException: Could not connect to database.";
           throw new SQLException(error);
        }
        catch (Exception e) {
           error="Exception: An unknow error ocurred while connecting " +
                 "to database.";
           throw new Exception(error);
        }

  }
    // Desconexion a la Base de datos
    public void disconnect() throws SQLException {

        try {
            if (conn != null) {
               conn.close();
            }
        }
        catch (SQLException sqle) {
           error = ("SQLException: Unable to close the database connection.");
           throw new SQLException(error);
        }

  }

    // SQL query
    public ResultSet query(String sql_command) throws SQLException, Exception {

        ResultSet rs=null;

        try {
               Statement stmt=conn.createStatement();
               //stmt.executeUpdate(sql_command);
			   rs = stmt.executeQuery(sql_command);
        }
        catch (SQLException sqle) {
           error = "SQLException: Could not executee the query.";
           throw new SQLException(error);
        }
        catch (Exception e) {
           error = "An exception occured while retrieving table/data";
           throw new Exception(error);
        }

	    return rs;
  }

    // SQL insert
    public void insert(String table_name,String data) throws SQLException, Exception {
        if (conn != null)  {

           try {
               Statement stmt=conn.createStatement();
               stmt.executeUpdate("INSERT INTO "+ table_name+" VALUES ("+ data+")");
           }
           catch (SQLException sqle) {
              error = "SQLException: updated failed, possible duplicate entry";
              throw new SQLException(error);
           }

        }
        else {
           error="Exception: Connection to database was lost.";
           throw new Exception(error);
        }
  }

    // SQL delete
    public void delete(String table_name, String condicional)
                    throws SQLException, Exception {

        if (conn!=null) {

           try {
               PreparedStatement del;
               del=conn.prepareStatement("DELETE FROM "+table_name+" WHERE "+condicional);
               del.execute();
           }
           catch (SQLException sqle) {
              error= "SQLExceptiones: updated failed, posible duplicate entry";
              throw new SQLException(error);
           }
           catch (Exception e) {
              error= "An exception occured while deleting "+table_name+".";
              throw new Exception(error);
           }
        }
        else {
              error= "Exception: Connection to database was lost.";
              throw new Exception(error);
        }
   }

    // SQL update
    public void update(String table_name,String data,String filter)
                    throws SQLException, Exception {

        if (conn != null)  {

           try {
               Statement stmt=conn.createStatement();
               stmt.executeUpdate("UPDATE "+table_name+" SET "+ data+" "+filter);
           }
           catch (SQLException sqle) {
              error = "SQLException: updated failed, possible duplicate entry";
              throw new SQLException(error);
           }

        }
        else {
           error="Exception: Connection to database was lost.";
           throw new Exception(error);
        }
  }

    // SQL ping
    public int ping(String ip_address){
        
        int Estado = 0;
        
        try {
            //Definimos la ip de la cual haremos el ping
            in = InetAddress.getByName(ip_address);
        } catch (UnknownHostException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            if (in.isReachable(5000)) {
                Estado = 1;
                System.out.println("Responde OK");
            } else {
                Estado = 0;
                System.out.println("No responde: Time out");
            }
        } catch (IOException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Estado;
    }
}
