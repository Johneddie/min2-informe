package pe.gob.mincetur.report.ocex.dto;

import java.util.Date;

public class ReporteAtencionConsultaDto {

	private String idSectorNegocio;
    private String desSectorNegocio;
    private Integer idTipoSolicitante;
    private Integer numConsultas;
    private Integer numConAteExp;
    private Integer numEmpAteExp;
    private Integer numConAteCom;
    private Integer numEmpAteCom;
    
    private Integer idAtencionConsulta;
    private String desTipoSolicitante;
    private String desEmpresa;
    private String desContacto;
    private String desCorreo;
    private String desTelefono;
    private String desConsulta;
    private String desRespuesta;
    private Integer idOcex;
    private String desOcex;
    
    private Integer numPeriodoTrim;
    private Date fecCrea;
    private String desFecCrea;
    
    private Integer numEmpAte;//turismo e inversiones
    private Integer numConAte;
    
	public String getDesSectorNegocio() {
		return desSectorNegocio;
	}
	public void setDesSectorNegocio(String desSectorNegocio) {
		this.desSectorNegocio = desSectorNegocio;
	}
	public Integer getIdTipoSolicitante() {
		return idTipoSolicitante;
	}
	public void setIdTipoSolicitante(Integer idTipoSolicitante) {
		this.idTipoSolicitante = idTipoSolicitante;
	}
	public Integer getNumConsultas() {
		return numConsultas;
	}
	public void setNumConsultas(Integer numConsultas) {
		this.numConsultas = numConsultas;
	}
	public Integer getNumConAteExp() {
		return numConAteExp;
	}
	public void setNumConAteExp(Integer numConAteExp) {
		this.numConAteExp = numConAteExp;
	}
	public Integer getNumEmpAteExp() {
		return numEmpAteExp;
	}
	public void setNumEmpAteExp(Integer numEmpAteExp) {
		this.numEmpAteExp = numEmpAteExp;
	}
	public Integer getNumConAteCom() {
		return numConAteCom;
	}
	public void setNumConAteCom(Integer numConAteCom) {
		this.numConAteCom = numConAteCom;
	}
	public Integer getNumEmpAteCom() {
		return numEmpAteCom;
	}
	public void setNumEmpAteCom(Integer numEmpAteCom) {
		this.numEmpAteCom = numEmpAteCom;
	}
	public String getIdSectorNegocio() {
		return idSectorNegocio;
	}
	public void setIdSectorNegocio(String idSectorNegocio) {
		this.idSectorNegocio = idSectorNegocio;
	}
	public Integer getNumEmpAte() {
		return numEmpAte;
	}
	public void setNumEmpAte(Integer numEmpAte) {
		this.numEmpAte = numEmpAte;
	}
	public Integer getNumConAte() {
		return numConAte;
	}
	public void setNumConAte(Integer numConAte) {
		this.numConAte = numConAte;
	}
	public String getDesTipoSolicitante() {
		return desTipoSolicitante;
	}
	public void setDesTipoSolicitante(String desTipoSolicitante) {
		this.desTipoSolicitante = desTipoSolicitante;
	}
	public Integer getNumPeriodoTrim() {
		return numPeriodoTrim;
	}
	public void setNumPeriodoTrim(Integer numPeriodoTrim) {
		this.numPeriodoTrim = numPeriodoTrim;
	}
	public String getDesEmpresa() {
		return desEmpresa;
	}
	public void setDesEmpresa(String desEmpresa) {
		this.desEmpresa = desEmpresa;
	}
	public String getDesContacto() {
		return desContacto;
	}
	public void setDesContacto(String desContacto) {
		this.desContacto = desContacto;
	}
	public String getDesCorreo() {
		return desCorreo;
	}
	public void setDesCorreo(String desCorreo) {
		this.desCorreo = desCorreo;
	}
	public String getDesTelefono() {
		return desTelefono;
	}
	public void setDesTelefono(String desTelefono) {
		this.desTelefono = desTelefono;
	}
	public String getDesConsulta() {
		return desConsulta;
	}
	public void setDesConsulta(String desConsulta) {
		this.desConsulta = desConsulta;
	}
	public String getDesRespuesta() {
		return desRespuesta;
	}
	public void setDesRespuesta(String desRespuesta) {
		this.desRespuesta = desRespuesta;
	}
	public String getDesOcex() {
		return desOcex;
	}
	public void setDesOcex(String desOcex) {
		this.desOcex = desOcex;
	}
	public Integer getIdOcex() {
		return idOcex;
	}
	public void setIdOcex(Integer idOcex) {
		this.idOcex = idOcex;
	}
	public Integer getIdAtencionConsulta() {
		return idAtencionConsulta;
	}
	public void setIdAtencionConsulta(Integer idAtencionConsulta) {
		this.idAtencionConsulta = idAtencionConsulta;
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
