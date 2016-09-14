package pe.gob.mincetur.report.ocex.dto;

import java.util.Date;

public class ReporteAlertaParticipacionDto {
	
	private Integer idAlertaParticipacion;
	private Integer idOcex;
	private String desOcex;
	private Integer idEstadoInforme;
	
    private String desLicitacion;
    private String desProductoRequ;
    private Date fecPublicaLicitaci;
    private String desFecPublicaLicitaci;
    private Date fecInicioVigencia;
    private String desFecInicioVigencia;
    private String desEntLicitante;
    private String desEnlaceLicitacio;
    private String desEntCompra;
    private String desContacto;
    
    private Integer numPeriodoTrim;
    private Date fecCrea;
    private String desFecCrea;
    
	public Integer getIdAlertaParticipacion() {
		return idAlertaParticipacion;
	}
	public void setIdAlertaParticipacion(Integer idAlertaParticipacion) {
		this.idAlertaParticipacion = idAlertaParticipacion;
	}
	public Integer getIdOcex() {
		return idOcex;
	}
	public void setIdOcex(Integer idOcex) {
		this.idOcex = idOcex;
	}
	public String getDesOcex() {
		return desOcex;
	}
	public void setDesOcex(String desOcex) {
		this.desOcex = desOcex;
	}
	public Integer getIdEstadoInforme() {
		return idEstadoInforme;
	}
	public void setIdEstadoInforme(Integer idEstadoInforme) {
		this.idEstadoInforme = idEstadoInforme;
	}
	public Integer getNumPeriodoTrim() {
		return numPeriodoTrim;
	}
	public void setNumPeriodoTrim(Integer numPeriodoTrim) {
		this.numPeriodoTrim = numPeriodoTrim;
	}
	public String getDesLicitacion() {
		return desLicitacion;
	}
	public void setDesLicitacion(String desLicitacion) {
		this.desLicitacion = desLicitacion;
	}
	public String getDesProductoRequ() {
		return desProductoRequ;
	}
	public void setDesProductoRequ(String desProductoRequ) {
		this.desProductoRequ = desProductoRequ;
	}
	public Date getFecPublicaLicitaci() {
		return fecPublicaLicitaci;
	}
	public void setFecPublicaLicitaci(Date fecPublicaLicitaci) {
		this.fecPublicaLicitaci = fecPublicaLicitaci;
	}
	public String getDesFecPublicaLicitaci() {
		return desFecPublicaLicitaci;
	}
	public void setDesFecPublicaLicitaci(String desFecPublicaLicitaci) {
		this.desFecPublicaLicitaci = desFecPublicaLicitaci;
	}
	public Date getFecInicioVigencia() {
		return fecInicioVigencia;
	}
	public void setFecInicioVigencia(Date fecInicioVigencia) {
		this.fecInicioVigencia = fecInicioVigencia;
	}
	public String getDesFecInicioVigencia() {
		return desFecInicioVigencia;
	}
	public void setDesFecInicioVigencia(String desFecInicioVigencia) {
		this.desFecInicioVigencia = desFecInicioVigencia;
	}
	public String getDesEntLicitante() {
		return desEntLicitante;
	}
	public void setDesEntLicitante(String desEntLicitante) {
		this.desEntLicitante = desEntLicitante;
	}
	public String getDesEnlaceLicitacio() {
		return desEnlaceLicitacio;
	}
	public void setDesEnlaceLicitacio(String desEnlaceLicitacio) {
		this.desEnlaceLicitacio = desEnlaceLicitacio;
	}
	public String getDesEntCompra() {
		return desEntCompra;
	}
	public void setDesEntCompra(String desEntCompra) {
		this.desEntCompra = desEntCompra;
	}
	public String getDesContacto() {
		return desContacto;
	}
	public void setDesContacto(String desContacto) {
		this.desContacto = desContacto;
	}
	public Date getFecCrea() {
		return fecCrea;
	}
	public void setFecCrea(Date fecCrea) {
		this.fecCrea = fecCrea;
	}
	public String getDesFecCrea() {
		return desFecCrea;
	}
	public void setDesFecCrea(String desFecCrea) {
		this.desFecCrea = desFecCrea;
	}
    
}
