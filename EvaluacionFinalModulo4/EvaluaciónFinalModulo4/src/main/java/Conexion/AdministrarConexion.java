package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdministrarConexion {

	protected Connection conn = null;
	protected PreparedStatement pstm = null;
	protected ResultSet rs = null;

	public Connection generaConexion() throws SQLException {
		
		String user = "System";
		String pass = "zepolugo";
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		
		try {
			Class.forName(driver);
			
			conn = DriverManager.getConnection(url, user, pass);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn; 
	}
	
}
