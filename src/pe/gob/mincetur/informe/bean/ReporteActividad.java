package pe.gob.mincetur.informe.bean;

import java.util.Date;

public class ReporteActividad {

    private String desTitulo;
    private String desCiudad;
    private Date fecIniActividad;
    private Date fecFinActividad;
    private String desFecActividad;
    private String desOtrosComent;
    private String desSectorNegocio; //resumen
    private Integer numExportadores;
    private Integer numCompradores;
    private Integer numMontoProy;
    
	public String getDesTitulo() {
		return desTitulo;
	}
	public void setDesTitulo(String desTitulo) {
		this.desTitulo = desTitulo;
	}
	public String getDesCiudad() {
		return desCiudad;
	}
	public void setDesCiudad(String desCiudad) {
		this.desCiudad = desCiudad;
	}
	public Date getFecIniActividad() {
		return fecIniActividad;
	}
	public void setFecIniActividad(Date fecIniActividad) {
		this.fecIniActividad = fecIniActividad;
	}
	public Date getFecFinActividad() {
		return fecFinActividad;
	}
	public void setFecFinActividad(Date fecFinActividad) {
		this.fecFinActividad = fecFinActividad;
	}
	public String getDesFecActividad() {
		return desFecActividad;
	}
	public void setDesFecActividad(String desFecActividad) {
		this.desFecActividad = desFecActividad;
	}
	public String getDesOtrosComent() {
		return desOtrosComent;
	}
	public void setDesOtrosComent(String desOtrosComent) {
		this.desOtrosComent = desOtrosComent;
	}
	public String getDesSectorNegocio() {
		return desSectorNegocio;
	}
	public void setDesSectorNegocio(String desSectorNegocio) {
		this.desSectorNegocio = desSectorNegocio;
	}
	public Integer getNumExportadores() {
		return numExportadores;
	}
	public void setNumExportadores(Integer numExportadores) {
		this.numExportadores = numExportadores;
	}
	public Integer getNumCompradores() {
		return numCompradores;
	}
	public void setNumCompradores(Integer numCompradores) {
		this.numCompradores = numCompradores;
	}
	public Integer getNumMontoProy() {
		return numMontoProy;
	}
	public void setNumMontoProy(Integer numMontoProy) {
		this.numMontoProy = numMontoProy;
	}
    
}
