package Interfaces;

import java.util.List;
import Modelo.Usuario;

public interface IntUsuario {

	public List<Usuario> obtenerUsuario();

	public Integer subirUsuario(Usuario subir);

}
