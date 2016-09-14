package pe.gob.mincetur.report.ocex.dto;

import java.util.Date;

public class ReporteAccionPromocionDto {
	
	private Integer idAccionPromocion;
	private Integer idOcex;
	private String desOcex;
	private Integer idEstadoInforme;
	
    private String desAgenPromotora;
    private String desAccPromocion;
    private String desPublicoObj;
    private String desFormActiv;
    private String desProductoRel;
    private String desPais;
    
    private Integer numPeriodoTrim;
    private Date fecCrea;
    private String desFecCrea;
    
	public String getDesAgenPromotora() {
		return desAgenPromotora;
	}
	public void setDesAgenPromotora(String desAgenPromotora) {
		this.desAgenPromotora = desAgenPromotora;
	}
	public String getDesAccPromocion() {
		return desAccPromocion;
	}
	public void setDesAccPromocion(String desAccPromocion) {
		this.desAccPromocion = desAccPromocion;
	}
	public String getDesPublicoObj() {
		return desPublicoObj;
	}
	public void setDesPublicoObj(String desPublicoObj) {
		this.desPublicoObj = desPublicoObj;
	}
	public String getDesFormActiv() {
		return desFormActiv;
	}
	public void setDesFormActiv(String desFormActiv) {
		this.desFormActiv = desFormActiv;
	}
	public String getDesProductoRel() {
		return desProductoRel;
	}
	public void setDesProductoRel(String desProductoRel) {
		this.desProductoRel = desProductoRel;
	}
	public String getDesPais() {
		return desPais;
	}
	public void setDesPais(String desPais) {
		this.desPais = desPais;
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
	public Integer getIdAccionPromocion() {
		return idAccionPromocion;
	}
	public void setIdAccionPromocion(Integer idAccionPromocion) {
		this.idAccionPromocion = idAccionPromocion;
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
