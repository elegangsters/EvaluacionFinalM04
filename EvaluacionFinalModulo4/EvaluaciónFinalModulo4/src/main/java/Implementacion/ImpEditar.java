package Implementacion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Conexion.AdministrarConexion;
import Interfaces.IntEditar;
import Modelo.Usuario;

public class ImpEditar extends AdministrarConexion implements IntEditar {
	
	public ImpEditar() throws SQLException {
		// TODO Auto-generated constructor stub
		Connection conn = generaConexion();
	}

	@Override
	public Integer editeUsuario(Usuario subir) {
		// TODO Auto-generated method stub
		
		String consultaEditar = "UPDATE USUARIO SET USU_NOMBRE = ?, USU_APELLIDO = ?, USU_FECHA_NACIMIENTO = ?, USU_TIPO = ? where U_RUN = ?";

		try {

			pstm = conn.prepareStatement(consultaEditar);
			
			pstm.setString(1, subir.getUsuNombre());

			pstm.setString(2, subir.getUsuApellido());

			pstm.setString(3, subir.getUsuFechaNacimiento());

			pstm.setString(4, subir.getUsuTipo());
			
			pstm.setString(5, subir.getuRun());

			if (pstm.executeUpdate() != 1) {

				throw new RuntimeException("Esto no funciono");
			}

		} catch (SQLException e) {

			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return 1;
	}

}
