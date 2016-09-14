package pe.gob.mincetur.report.ocex.dto;

import java.util.Date;

public class ReportePrecioProductoDto {
	
	private Integer idPrecioProducto;
	private Integer idFichaMercado;
	private Integer idOcex;
	private String desCanal;
	private String desUnidad;
	private Integer numPrecio;
	private String desOrigen; 
	private Date fecTomaDatos;   
	private String desFecTomaDatos;
	private String desCaracteristicas;    
	private String codFoto;
	
	public Integer getIdPrecioProducto() {
		return idPrecioProducto;
	}
	public void setIdPrecioProducto(Integer idPrecioProducto) {
		this.idPrecioProducto = idPrecioProducto;
	}
	public Integer getIdFichaMercado() {
		return idFichaMercado;
	}
	public void setIdFichaMercado(Integer idFichaMercado) {
		this.idFichaMercado = idFichaMercado;
	}
	public Integer getIdOcex() {
		return idOcex;
	}
	public void setIdOcex(Integer idOcex) {
		this.idOcex = idOcex;
	}
	public String getDesCanal() {
		return desCanal;
	}
	public void setDesCanal(String desCanal) {
		this.desCanal = desCanal;
	}
	public String getDesUnidad() {
		return desUnidad;
	}
	public void setDesUnidad(String desUnidad) {
		this.desUnidad = desUnidad;
	}
	public Integer getNumPrecio() {
		return numPrecio;
	}
	public void setNumPrecio(Integer numPrecio) {
		this.numPrecio = numPrecio;
	}
	public String getDesOrigen() {
		return desOrigen;
	}
	public void setDesOrigen(String desOrigen) {
		this.desOrigen = desOrigen;
	}
	public Date getFecTomaDatos() {
		return fecTomaDatos;
	}
	public void setFecTomaDatos(Date fecTomaDatos) {
		this.fecTomaDatos = fecTomaDatos;
	}
	public String getDesFecTomaDatos() {
		return desFecTomaDatos;
	}
	public void setDesFecTomaDatos(String desFecTomaDatos) {
		this.desFecTomaDatos = desFecTomaDatos;
	}
	public String getDesCaracteristicas() {
		return desCaracteristicas;
	}
	public void setDesCaracteristicas(String desCaracteristicas) {
		this.desCaracteristicas = desCaracteristicas;
	}
	public String getCodFoto() {
		return codFoto;
	}
	public void setCodFoto(String codFoto) {
		this.codFoto = codFoto;
	}  
	
}
