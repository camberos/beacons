package manejodb;
import java.sql.*;

/**
 * <p>Title: </p>
 * <p>Description: Conexion y deconexion de una base de datos en PostgreSQL</p>
 * <p>Copyright: Copyright (c) 2004</p>
 * <p>Company: </p>
 * @author
 * @version 1.0
 */

public class Conexion{
  /********************************ATRIBUTOS***********************************/
  String sError,sUrl,sUsuario,sContrasenya;
  Connection cnx;
  /******************************CONSTRUCTORES*********************************/
  public Conexion (){
    cnx=null;
    sError=new String();
    sUrl="jdbc:postgresql://127.0.0.1:5432/premier";
    sUsuario="postgres";
    sContrasenya="dimitri79";
  }
  public Conexion (String sUrl,String sUsuario,String sContrasenya){
    cnx=null;
    this.sError=new String();
    this.sUrl=sUrl;
    this.sUsuario=sUsuario;
    this.sContrasenya=sContrasenya;
  }

  /********************************ACCESADORE
     * @return S*********************************/
  public Connection getCnx(){
    return cnx;
  }
  public String getError(){
    return sError;
  }
  public String getUrl(){
    return sUrl;
  }
  public String getUsuario(){
    return sUsuario;
  }
  public String getContrasenya(){
    return sContrasenya;
  }
  /*********************************MUTADORE
     * @param cnxS**********************************/
  public void setCnx(Connection cnx){
    this.cnx=cnx;
  }
  public void setError(String sError){
    this.sError=sError;
  }
  public void setUrl(String sUrl){
    this.sUrl=sUrl;
  }
  public void setUsuario(String sUsuario){
    this.sUsuario=sUsuario;
  }
  public void setContrasenya(String sContrasenya){
    this.sContrasenya=sContrasenya;
  }

  /***********************METODOS DE CONEXIO Y DESCONEXION*********************/
  public void setConectar() throws ClassNotFoundException,SQLException, Exception {
    try {
      Class.forName("org.postgresql.Driver").newInstance();
      cnx=DriverManager.getConnection(sUrl,sUsuario,sContrasenya);
    }
    catch(ClassNotFoundException cnfe) {
      sError="ClassNotFoundException: No se localizo el driver de la base de datos. "+cnfe.getCause();
      throw new ClassNotFoundException(sError);
    }
    catch (SQLException sqle) {
      sError="SQLException: No se conecto a la base de datos. "+sqle.getErrorCode();
      throw new SQLException(sError);
    }
    catch (Exception e){
      sError="Exception: Error desconocido mientra de conectaba a la base de datos. ";
      throw new Exception(sError);
    }
  }

  public void setDesconectar() throws SQLException {
    try {
      if (cnx != null) cnx.close();
    }
    catch (SQLException sqle) {
      sError = ("SQLException: Imposible cerrar la Base de Datos.");
      throw new SQLException(sError);
    }
  }

  /*public static void main(String[] args) {
    Conexion conexion1 = new Conexion();
    System.out.println(conexion1.getUrl());
  }*/

}