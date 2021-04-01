package Implementacion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Interfaces.IntCapacitacion;
import Modelo.Capacitacion;
import Conexion.AdministrarConexion;

public class ImpCapacitacion extends AdministrarConexion implements IntCapacitacion {

	public ImpCapacitacion() throws SQLException {
		// TODO Auto-generated constructor stub
		Connection conn = generaConexion();
	}

	@Override
	public List<Capacitacion> obtenerCapacitacion() {
		// TODO Auto-generated method stub

		List<Capacitacion> capacitaciones = new ArrayList<Capacitacion>();

		String consultaSql = "select * from capacitacion";

		try {
			pstm = conn.prepareStatement(consultaSql);
			rs = pstm.executeQuery();

			while (rs.next()) {

				Capacitacion rsInscripcion = new Capacitacion();

				rsInscripcion.setIdCapacitacion(rs.getInt("ID_CAPACITACION"));

				rsInscripcion.setCapFecha(rs.getString("CAP_FECHA"));

				rsInscripcion.setCapHora(rs.getString("CAP_HORA"));

				rsInscripcion.setCapLugar(rs.getString("CAP_LUGAR"));

				rsInscripcion.setCapDuracion(rs.getString("CAP_DURACION"));

				capacitaciones.add(rsInscripcion);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return capacitaciones;
	}

	@Override
	public Integer subirCapacitacion(Capacitacion subir) {
		// TODO Auto-generated method stub

		String consultaId = "select MAX(id_capacitacion)+1 FROM capacitacion";

		String consultaInsertar = "INSERT INTO CAPACITACION (ID_CAPACITACION, CAP_FECHA, CAP_HORA, CAP_LUGAR, CAP_DURACION) VALUES (?, ?, ?, ?, ?)";

		try {
			PreparedStatement pstm1 = conn.prepareStatement(consultaId);

			pstm = conn.prepareStatement(consultaInsertar);

			ResultSet rs1 = pstm1.executeQuery();

			if (rs1.next()) {

				pstm.setInt(1, rs1.getInt(1));

				pstm.setString(2, subir.getCapFecha());

				pstm.setString(3, subir.getCapHora());

				pstm.setString(4, subir.getCapLugar());

				pstm.setString(5, subir.getCapDuracion());

				if (pstm.executeUpdate() != 1) {

					throw new RuntimeException("Esto no funciono");

				}

			}

		} catch (SQLException e) {

			// TODO Auto-generated catch block
			e.printStackTrace();

		}

		return 1;
	}

}
