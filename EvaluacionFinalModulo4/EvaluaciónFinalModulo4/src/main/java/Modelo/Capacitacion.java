package Modelo;

public class Capacitacion {

	private Integer idCapacitacion;
	private String capFecha;
	private String capHora;
	private String capLugar;
	private String capDuracion;
	
	public Capacitacion() {
		super();
	}

	public Integer getIdCapacitacion() {
		return idCapacitacion;
	}

	public void setIdCapacitacion(Integer idCapacitacion) {
		this.idCapacitacion = idCapacitacion;
	}

	public String getCapFecha() {
		return capFecha;
	}

	public void setCapFecha(String capFecha) {
		this.capFecha = capFecha;
	}

	public String getCapHora() {
		return capHora;
	}

	public void setCapHora(String capHora) {
		this.capHora = capHora;
	}

	public String getCapLugar() {
		return capLugar;
	}

	public void setCapLugar(String capLugar) {
		this.capLugar = capLugar;
	}

	public String getCapDuracion() {
		return capDuracion;
	}

	public void setCapDuracion(String capDuracion) {
		this.capDuracion = capDuracion;
	}

	@Override
	public String toString() {
		return "Capacitacion [idCapacitacion=" + idCapacitacion + ", capFecha=" + capFecha + ", capHora=" + capHora
				+ ", capLugar=" + capLugar + ", capDuración=" + capDuracion + "]";
	}
	
}
