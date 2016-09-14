package pe.gob.mincetur.report.ocex.dto;

import java.util.Date;

public class ReporteAlertaModificacionDto {
	
	private Integer idAlertaModificacion;
	private Integer idOcex;
	private String desOcex;
	private Integer idEstadoInforme;
	
    private String desDenomNorma;
    private String desNorma;
    private Date fecPublicaNorma;
    private String desFecPublicaNorma;
    private Date fecInicioVigencia;
    private String desFecInicioVigencia;
    private String desAccRealizada;
    private String desEnlaceNorma;
    
    private Integer numPeriodoTrim;
    private Date fecCrea;
    private String desFecCrea;
    
	public String getDesDenomNorma() {
		return desDenomNorma;
	}
	public void setDesDenomNorma(String desDenomNorma) {
		this.desDenomNorma = desDenomNorma;
	}
	public String getDesNorma() {
		return desNorma;
	}
	public void setDesNorma(String desNorma) {
		this.desNorma = desNorma;
	}
	public Date getFecPublicaNorma() {
		return fecPublicaNorma;
	}
	public void setFecPublicaNorma(Date fecPublicaNorma) {
		this.fecPublicaNorma = fecPublicaNorma;
	}
	public String getDesFecPublicaNorma() {
		return desFecPublicaNorma;
	}
	public void setDesFecPublicaNorma(String desFecPublicaNorma) {
		this.desFecPublicaNorma = desFecPublicaNorma;
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
	public String getDesAccRealizada() {
		return desAccRealizada;
	}
	public void setDesAccRealizada(String desAccRealizada) {
		this.desAccRealizada = desAccRealizada;
	}
	public String getDesEnlaceNorma() {
		return desEnlaceNorma;
	}
	public void setDesEnlaceNorma(String desEnlaceNorma) {
		this.desEnlaceNorma = desEnlaceNorma;
	}
	public Integer getIdAlertaModificacion() {
		return idAlertaModificacion;
	}
	public void setIdAlertaModificacion(Integer idAlertaModificacion) {
		this.idAlertaModificacion = idAlertaModificacion;
	}
	public Integer getIdOcex() {
		return idOcex;
	}
	public void setIdOcex(Integer idOcex) {
		this.idOcex = idOcex;
	}
	public Integer getIdEstadoInforme() {
		return idEstadoInforme;
	}
	public void setIdEstadoInforme(Integer idEstadoInforme) {
		this.idEstadoInforme = idEstadoInforme;
	}
	public String getDesOcex() {
		return desOcex;
	}
	public void setDesOcex(String desOcex) {
		this.desOcex = desOcex;
	}
	public Integer getNumPeriodoTrim() {
		return numPeriodoTrim;
	}
	public void setNumPeriodoTrim(Integer numPeriodoTrim) {
		this.numPeriodoTrim = numPeriodoTrim;
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
