package Modelo;

public class Usuario {

	private String uRun;
	private String usuNombre;
	private String usuApellido;
	private String usuFechaNacimiento;
	private String usuTipo;
	
	
	public Usuario() {
		super();
	}

	public String getuRun() {
		return uRun;
	}

	public void setuRun(String uRun) {
		this.uRun = uRun;
	}

	public String getUsuNombre() {
		return usuNombre;
	}

	public void setUsuNombre(String usuNombre) {
		this.usuNombre = usuNombre;
	}


	public String getUsuApellido() {
		return usuApellido;
	}


	public void setUsuApellido(String usuApellido) {
		this.usuApellido = usuApellido;
	}


	public String getUsuFechaNacimiento() {
		return usuFechaNacimiento;
	}


	public void setUsuFechaNacimiento(String usuFechaNacimiento) {
		this.usuFechaNacimiento = usuFechaNacimiento;
	}


	public String getUsuTipo() {
		return usuTipo;
	}


	public void setUsuTipo(String usuTipo) {
		this.usuTipo = usuTipo;
	}


	@Override
	public String toString() {
		return "Usuario [uRun=" + uRun + ", usuNombre=" + usuNombre + ", usuApellido=" + usuApellido
				+ ", usuFechaNacimiento=" + usuFechaNacimiento + ", usuTipo=" + usuTipo + "]";
	}
	
}
