package manejodb;
import java.sql.*;
/**
 * <p>Title: </p>
 * <p>Description: Conexion y deconexion de una base de datos en PostgreSQL</p>
 * <p>Copyright: Copyright (c) 2013</p>
 * <p>Company: </p>
 * @author  
 * @version 1.0
 */

public class ManejadoresTablas extends Conexion{
  /********************************ATRIBUTOS***********************************/
  String sArgumento,sTbl,sDatos,sCampos;
  /******************************CONSTRUCTORES*********************************/
  public ManejadoresTablas() {
    super();
    sArgumento=new String();
    sTbl=new String();
    sDatos=new String();
    sCampos=new String();
  }
  public ManejadoresTablas(String sArgumento, String sTbl, String sDatos){
    super();
    this.sArgumento=sArgumento;
    this.sTbl=sTbl;
    this.sDatos=sDatos;
    this.sCampos=sCampos;
  }
  /********************************ACCESADORE
     * @return S*********************************/
  public String getArgumento(){
    return sArgumento;
  }
  public String getTabla(){
    return sTbl;
  }
  public String getDatos(){
    return sDatos;
  }
  public String getCampos(){
    return sCampos;
  }
  /*********************************MUTADORE
     * @param sArgumentoS**********************************/
  public void setArgumento(String sArgumento){
    this.sArgumento=sArgumento;
  }
  public void setTabla(String sTbl){
    this.sTbl=sTbl;
  }
  public void setDatos(String sDatos){
    this.sDatos=sDatos;
  }
  public void setCampos(String sCampos){
    this.sCampos=sCampos;
  }
  /**********************************QUERYS************************************/
  public ResultSet getQuery(String sArgumento) throws SQLException, Exception {
    if (super.cnx != null)  {
      try {
        Statement stmt = super.cnx.createStatement();
        return stmt.executeQuery(sArgumento);
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudo ejecutar el Query.");
        throw new SQLException(getError());
      }
      catch (Exception e) {
        setError("Un error ocurrio cuando se manejaban las tablas y/o datos.");
        throw new Exception(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }

  public ResultSet getQuery() throws SQLException, Exception {
    if (super.cnx != null)  {
      try {
        Statement stmt = super.cnx.createStatement();
        return stmt.executeQuery(sArgumento);
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudo ejecutar el Query.");
        throw new SQLException(getError());
      }
      catch (Exception e) {
        setError("Un error ocurrio cuando se manejaban las tablas y/o datos.");
        throw new Exception(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }
  /**********************************INSERTAR**********************************/
  public void setInsertar(String sTbl,String sDatos) throws SQLException, Exception {
    if (getCnx() != null)  {
      try {
        Statement stmt=getCnx().createStatement();
        stmt.executeUpdate("INSERT INTO "+ sTbl +" VALUES ("+ sDatos+")");
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudieron introducir los datos");
        throw new SQLException(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }

  public void setInsertar(String sDatos) throws SQLException, Exception {
    if (getCnx() != null)  {
      try {
        Statement stmt=getCnx().createStatement();
        stmt.executeUpdate("INSERT INTO "+ sTbl +" VALUES ("+ sDatos+")");
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudieron introducir los datos");
        throw new SQLException(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }

  public void setInsertar() throws SQLException, Exception {
    if (getCnx() != null)  {
      try {
        Statement stmt=getCnx().createStatement();
        stmt.executeUpdate("INSERT INTO "+ sTbl +" VALUES ("+ sDatos+")");
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudieron introducir los datos");
        throw new SQLException(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }

  public void setInsertarSel(String sTbl,String sCampos,String sDatos) throws SQLException, Exception {
    if (getCnx() != null)  {
      try {
        Statement stmt=getCnx().createStatement();
        stmt.executeUpdate("INSERT INTO "+ sTbl +"("+sCampos+") VALUES ("+ sDatos+")");
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudieron introducir los datos");
        throw new SQLException(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }

  public void setInsertarSel(String sCampos,String sDatos) throws SQLException, Exception {
    if (getCnx() != null)  {
      try {
        Statement stmt=getCnx().createStatement();
        stmt.executeUpdate("INSERT INTO "+ sTbl +"("+sCampos+") VALUES ("+ sDatos+")");
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudieron introducir los datos");
        throw new SQLException(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }

  public void setInsertarSel() throws SQLException, Exception {
    if (getCnx() != null)  {
      try {
        Statement stmt=getCnx().createStatement();
        stmt.executeUpdate("INSERT INTO "+ sTbl +"("+sCampos+") VALUES ("+ sDatos+")");
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudieron introducir los datos");
        throw new SQLException(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }
  /***********************************BORRAR***********************************/
  public void setBorrar(String sTbl, String sArgumento) throws SQLException, Exception {
    if (getCnx()!=null) {
      try {
        Statement stmt = getCnx().createStatement();
        stmt.executeUpdate("DELETE FROM "+sTbl+" WHERE "+sArgumento);
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudo borrar el registro");
        throw new SQLException(getError());
      }
      catch (Exception e) {
        setError("Un error ocurrio mientras se borrarba en "+sTbl);
        throw new Exception(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }

  public void setBorrar(String sTbl) throws SQLException, Exception {
    if (getCnx()!=null) {
      try {
        Statement stmt = getCnx().createStatement();
        stmt.executeUpdate("DELETE FROM "+sTbl+" WHERE "+sArgumento);
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudo borrar el registro");
        throw new SQLException(getError());
      }
      catch (Exception e) {
        setError("Un error ocurrio mientras se borrarba en "+sTbl);
        throw new Exception(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }

  public void setBorrar() throws SQLException, Exception {
    if (getCnx()!=null) {
      try {
        Statement stmt = getCnx().createStatement();
        stmt.executeUpdate("DELETE FROM "+sTbl+" WHERE "+sArgumento);
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudo borrar el registro");
        throw new SQLException(getError());
      }
      catch (Exception e) {
        setError("Un error ocurrio mientras se borrarba en "+sTbl);
        throw new Exception(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }
  public void setBorrarTodo(String sTbl) throws SQLException, Exception {
    if (getCnx()!=null) {
      try {
        Statement stmt = getCnx().createStatement();
        stmt.executeUpdate("DELETE FROM "+sTbl);
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudo borrar el registro");
        throw new SQLException(getError());
      }
      catch (Exception e) {
        setError("Un error ocurrio mientras se borrarba en "+sTbl);
        throw new Exception(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }
  public void setBorrarTodo() throws SQLException, Exception {
    if (getCnx()!=null) {
      try {
        Statement stmt = getCnx().createStatement();
        stmt.executeUpdate("DELETE FROM "+sTbl);
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudo borrar el registro");
        throw new SQLException(getError());
      }
      catch (Exception e) {
        setError("Un error ocurrio mientras se borrarba en "+sTbl);
        throw new Exception(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }
  /**********************************MODIFICAR*********************************/

  public void setModificar(String sTbl,String sDatos,String sArgumento) throws SQLException, Exception {
    if (getCnx()!=null)  {
      try {
        Statement stmt=getCnx().createStatement();
        stmt.executeUpdate("UPDATE "+sTbl+" SET "+ sDatos+" WHERE "+sArgumento);
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudo realizar la actualizacion");
        throw new SQLException(getError());
      }
      catch (Exception e) {
        setError("Un error ocurrio mientras se actualizaba "+sTbl);
        throw new Exception(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }

  public void setModificar(String sDatos,String sArgumento) throws SQLException, Exception {
    if (getCnx()!=null)  {
      try {
        Statement stmt=getCnx().createStatement();
        stmt.executeUpdate("UPDATE "+sTbl+" SET "+ sDatos+" WHERE "+sArgumento);
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudo realizar la actualizacion");
        throw new SQLException(getError());
      }
      catch (Exception e) {
        setError("Un error ocurrio mientras se actualizaba "+sTbl);
        throw new Exception(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }

  public void setModificar(String sDatos) throws SQLException, Exception {
    if (getCnx()!=null)  {
      try {
        Statement stmt=getCnx().createStatement();
        stmt.executeUpdate("UPDATE "+sTbl+" SET "+ sDatos+" WHERE "+sArgumento);
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudo realizar la actualizacion");
        throw new SQLException(getError());
      }
      catch (Exception e) {
        setError("Un error ocurrio mientras se actualizaba "+sTbl);
        throw new Exception(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }

  public void setModificarSE(String sArgumento) throws SQLException, Exception {
    if (getCnx()!=null)  {
      try {
        Statement stmt=getCnx().createStatement();
        stmt.executeUpdate("UPDATE "+sTbl+" SET "+ sDatos+" WHERE "+sArgumento);
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudo realizar la actualizacion");
        throw new SQLException(getError());
      }
      catch (Exception e) {
        setError("Un error ocurrio mientras se actualizaba "+sTbl);
        throw new Exception(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }


  public void setModificar() throws SQLException, Exception {
    if (getCnx()!=null)  {
      try {
        Statement stmt=getCnx().createStatement();
        stmt.executeUpdate("UPDATE "+sTbl+" SET "+ sDatos+" WHERE "+sArgumento);
      }
      catch (SQLException sqle) {
        setError("SQLException: No se pudo realizar la actualizacion");
        throw new SQLException(getError());
      }
      catch (Exception e) {
        setError("Un error ocurrio mientras se actualizaba "+sTbl);
        throw new Exception(getError());
      }
    }
    else {
      setError("Exception: La conexion se perdio.");
      throw new Exception(getError());
    }
  }
  /************************************VISTA***********************************/
  public ResultSet getVista(String sTbl, String sColumna, String sOrden) throws SQLException, Exception {
    try {
      Statement stmt = getCnx().createStatement();
      return stmt.executeQuery("SELECT * FROM "+ sTbl +" ORDER BY "+sColumna+" "+ sOrden);
    }
    catch (SQLException sqle) {
      setError("SQLException: No se pudo ejecutar el Query.");
      throw new SQLException(getError());
    }
    catch (Exception e) {
      setError("Un error ocurrio en "+sTbl);
      throw new Exception(getError());
    }
  }

  public ResultSet getVista(String sColumna) throws SQLException, Exception {
    try {
      Statement stmt = getCnx().createStatement();
      return stmt.executeQuery("SELECT * FROM "+ sTbl +" ORDER BY "+sColumna+" ASC");
    }
    catch (SQLException sqle) {
      setError("SQLException: No se pudo ejecutar el Query.");
      throw new SQLException(getError());
    }
    catch (Exception e) {
      setError("Un error ocurrio en "+sTbl);
      throw new Exception(getError());
    }
  }
  public ResultSet getVista(String sColumna, String sOrden) throws SQLException, Exception {
    try {
      Statement stmt = getCnx().createStatement();
      return stmt.executeQuery("SELECT * FROM "+ sTbl +" ORDER BY "+sColumna+" "+ sOrden);
    }
    catch (SQLException sqle) {
      setError("SQLException: No se pudo ejecutar el Query.");
      throw new SQLException(getError());
    }
    catch (Exception e) {
      setError("Un error ocurrio en "+sTbl);
      throw new Exception(getError());
    }
  }

  public ResultSet getVistaSel(String sTbl,String sCampos,String sColumna, String sOrden) throws SQLException, Exception {
    try {
      Statement stmt = getCnx().createStatement();
      return stmt.executeQuery("SELECT "+sCampos+" FROM "+ sTbl +" ORDER BY "+sColumna+" "+ sOrden);
    }
    catch (SQLException sqle) {
      setError("SQLException: No se pudo ejecutar el Query.");
      throw new SQLException(getError());
    }
    catch (Exception e) {
      setError("Un error ocurrio en "+sTbl);
      throw new Exception(getError());
    }
  }

  public ResultSet getVistaSel(String sCampos,String sColumna, String sOrden) throws SQLException, Exception {
    try {
      Statement stmt = getCnx().createStatement();
      return stmt.executeQuery("SELECT "+sCampos+" FROM "+ sTbl +" ORDER BY "+sColumna+" "+ sOrden);
    }
    catch (SQLException sqle) {
      setError("SQLException: No se pudo ejecutar el Query.");
      throw new SQLException(getError());
    }
    catch (Exception e) {
      setError("Un error ocurrio en "+sTbl);
      throw new Exception(getError());
    }
  }
  /**********************************UTILERIA**********************************/
  public ResultSet getSigId(String sSecuencia)throws SQLException, Exception {
  if (super.cnx != null)  {
    try {
      Statement stmt = super.cnx.createStatement();
      return stmt.executeQuery("SELECT nextval('"+sSecuencia+"')");
    }
    catch (SQLException sqle) {
      setError("SQLException: No se pudo ejecutar el Query.");
      throw new SQLException(getError());
    }
    catch (Exception e) {
      setError("Un error ocurrio cuando se manejaban las tablas y/o datos.");
      throw new Exception(getError());
    }
  }
  else {
    setError("Exception: La conexion se perdio.");
    throw new Exception(getError());
  }
}
