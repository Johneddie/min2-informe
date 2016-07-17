package pe.gob.mincetur.informe.bean;

public class ReporteAtencionConsulta {

	private String idSectorNegocio;
    private String desSectorNegocio;
    private Integer idTipoSolicitante;
    private Integer numConsultas;
    private Integer numConAteExp;
    private Integer numEmpAteExp;
    private Integer numConAteCom;
    private Integer numEmpAteCom;
    
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
}
