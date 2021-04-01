package Implementacion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Conexion.AdministrarConexion;
import Interfaces.IntUsuario;
import Modelo.Capacitacion;
import Modelo.Usuario;

public class ImpUsuario extends AdministrarConexion implements IntUsuario {
	
	public ImpUsuario() throws SQLException {
		// TODO Auto-generated constructor stub
		Connection conn = generaConexion();
	}
	
	@Override
	public List<Usuario> obtenerUsuario() {
		// TODO Auto-generated method stub
		
		List<Usuario> usuarios = new ArrayList<Usuario>();
		
		String consultaSql = "select * from usuario";
		
		try {
			pstm = conn.prepareStatement(consultaSql);
			rs = pstm.executeQuery();

			while (rs.next()) {

				Usuario rsInscripcion = new Usuario();

				rsInscripcion.setuRun(rs.getString("U_RUN"));

				rsInscripcion.setUsuNombre(rs.getString("USU_NOMBRE"));

				rsInscripcion.setUsuApellido(rs.getString("USU_APELLIDO"));

				rsInscripcion.setUsuFechaNacimiento(rs.getString("USU_FECHA_NACIMIENTO"));

				rsInscripcion.setUsuTipo(rs.getString("USU_TIPO"));

				usuarios.add(rsInscripcion);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return usuarios;
	}

	@Override
	public Integer subirUsuario(Usuario subir) {
		// TODO Auto-generated method stub

		String consultaInsertar = "INSERT INTO USUARIO (U_RUN, USU_NOMBRE, USU_APELLIDO, USU_FECHA_NACIMIENTO, USU_TIPO) VALUES ( ?, ?, ?, ?, ?)";
		
		try {

			pstm = conn.prepareStatement(consultaInsertar);

			pstm.setString(1, subir.getuRun());

			pstm.setString(2, subir.getUsuNombre());

			pstm.setString(3, subir.getUsuApellido());

			pstm.setString(4, subir.getUsuFechaNacimiento());

			pstm.setString(5, subir.getUsuTipo());
			

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
