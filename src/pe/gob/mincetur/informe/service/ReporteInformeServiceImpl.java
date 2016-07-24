package pe.gob.mincetur.informe.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import pe.gob.mincetur.informe.bean.ReporteAccionPromocion;
import pe.gob.mincetur.informe.bean.ReporteActividad;
import pe.gob.mincetur.informe.bean.ReporteAlertaModificacion;
import pe.gob.mincetur.informe.bean.ReporteAtencionConsulta;
import pe.gob.mincetur.informe.bean.ReporteInformeActividad;
import pe.gob.mincetur.informe.bean.ReporteInformeGestion;
import pe.gob.mincetur.informe.model.dao.ReporteAccionPromocionDAO;
import pe.gob.mincetur.informe.model.dao.ReporteActividadDAO;
import pe.gob.mincetur.informe.model.dao.ReporteAlertaModificacionDAO;
import pe.gob.mincetur.informe.model.dao.ReporteAtencionConsultaDAO;
import pe.gob.mincetur.informe.model.dao.ReporteInformeActividadDAO;
import pe.gob.mincetur.informe.model.dao.ReporteInformeGestionDAO;
import pe.gob.mincetur.informe.util.Utils;


public class ReporteInformeServiceImpl implements ReporteInformeService{
	protected final Log log = LogFactory.getLog(getClass());

	private ReporteInformeGestionDAO reporteInformeGestionDAO;
	private ReporteAccionPromocionDAO reporteAccionPromocionDAO;
	private ReporteActividadDAO reporteActividadDAO;
	private ReporteAlertaModificacionDAO reporteAlertaModificacionDAO;
	private ReporteAtencionConsultaDAO reporteAtencionConsultaDAO;
	
	private ReporteInformeActividadDAO reporteInformeActividadDAO;
	
	public Map<String,Object> obtenerReporteInformeGestion(Integer idInformeGestion) {
		if(log.isDebugEnabled()) log.debug("method obtenerReporteInformeGestion");
		
		Map<String,Object> hmReporteInformeGestion = new HashMap<String,Object>();
		
		//obtener cabecera
		ReporteInformeGestion informeGestion = new ReporteInformeGestion();
		informeGestion.setIdInformeGestion(idInformeGestion);
		informeGestion = reporteInformeGestionDAO.obtenerReporteInformeGestion(informeGestion);
		
		if(informeGestion != null){
			//E
			hmReporteInformeGestion.putAll(obtenerDetalleExportaciones(informeGestion));
			
			//T
			hmReporteInformeGestion.putAll(obtenerDetalleTurismo(informeGestion));
			
			//I
			hmReporteInformeGestion.putAll(obtenerDetalleInversiones(informeGestion));
			
			hmReporteInformeGestion.put("idInformeGestion", informeGestion.getIdInformeGestion());
			hmReporteInformeGestion.put("desOcex", informeGestion.getDesOcex());
			hmReporteInformeGestion.put("desReceptorPersona", ""+informeGestion.getIdReceptorPersona());
			hmReporteInformeGestion.put("desReceptorOficina", ""+informeGestion.getIdReceptorOficina());
			hmReporteInformeGestion.put("desAsunto", informeGestion.getDesAsunto());
			hmReporteInformeGestion.put("desFecEmisionInforme", Utils.convertDateToWords(informeGestion.getFecEmisionInforme()));
			hmReporteInformeGestion.put("desCualidadMercado", informeGestion.getDesCualidadMercado());
			hmReporteInformeGestion.put("desConclusiones", informeGestion.getDesConclusiones());
			hmReporteInformeGestion.put("desRecomendaciones", informeGestion.getDesRecomendaciones());
		}
		hmReporteInformeGestion.put("nomDecenio", "Decenio de las Personas con Discapacidad en el Perú");
		hmReporteInformeGestion.put("nomAnio", "Año de la Consolidación del Mar de Grau");
		
		log.debug("hmReporteInformeGestion: " + hmReporteInformeGestion);

		return hmReporteInformeGestion;
	}
	
	private Map<String,Object> obtenerDetalleExportaciones(ReporteInformeGestion informeGestion){
		if(log.isDebugEnabled()) log.debug("method obtenerDetalleExportaciones");
		
		Map<String,Object> hmReporteInformeGestion = new HashMap<String,Object>();
		List<ReporteAlertaModificacion> lstInfgeseRegacc;
		List<ReporteAccionPromocion> lstInfgeseProage;
		List<ReporteActividad> lstInfgeseAct;
		List<ReporteAtencionConsulta> lstInfgeseAtecon;
		
		informeGestion.setIdTipoAccion(1);
		//listar regulaciones de acceso
		lstInfgeseRegacc = reporteAlertaModificacionDAO.listarReporteAlertaModificacion(informeGestion);
		for(ReporteAlertaModificacion regulacion:lstInfgeseRegacc){
			if(regulacion.getFecPublicaNorma()!=null)
				regulacion.setDesFecPublicaNorma(Utils.convertDateToWords(regulacion.getFecPublicaNorma()));
			if(regulacion.getFecInicioVigencia()!=null)
				regulacion.setDesFecInicioVigencia(Utils.convertDateToWords(regulacion.getFecInicioVigencia()));
		}
		
		//listar promociones de agencias
		lstInfgeseProage = reporteAccionPromocionDAO.listarReporteAccionPromocion(informeGestion);
		
		//listar actividades + resumenes
		lstInfgeseAct = reporteActividadDAO.listarReporteActividad(informeGestion);
		
		//listar atención de consultas
		informeGestion.setIdTipoSolicitante(1);
		List<ReporteAtencionConsulta> lstInfgeseAteconExportador =  reporteAtencionConsultaDAO.listarReporteAtencionConsulta(informeGestion);
		informeGestion.setIdTipoSolicitante(2);
		List<ReporteAtencionConsulta> lstInfgeseAteconComprador =  reporteAtencionConsultaDAO.listarReporteAtencionConsulta(informeGestion);
		lstInfgeseAtecon = obtenerAtencionConsultaExportaciones(lstInfgeseAteconExportador, lstInfgeseAteconComprador);
		
		hmReporteInformeGestion.put("lstInfgeseRegacc", lstInfgeseRegacc);
		hmReporteInformeGestion.put("lstInfgeseProage", lstInfgeseProage);
		hmReporteInformeGestion.put("lstInfgeseAct", lstInfgeseAct);
		hmReporteInformeGestion.put("lstInfgeseAtecon", lstInfgeseAtecon);
		
		return hmReporteInformeGestion;
	}
	
	private Map<String,Object> obtenerDetalleTurismo(ReporteInformeGestion informeGestion){
		if(log.isDebugEnabled()) log.debug("method obtenerDetalleTurismo");
		
		Map<String,Object> hmReporteInformeGestion = new HashMap<String,Object>();
		List<ReporteAccionPromocion> lstInfgestProage;
		List<ReporteActividad> lstInfgestAct;
		List<ReporteAtencionConsulta> lstInfgestAtecon;
		
		informeGestion.setIdTipoAccion(2);
		
		//listar promociones de agencias
		lstInfgestProage = reporteAccionPromocionDAO.listarReporteAccionPromocion(informeGestion);
		
		//listar actividades + resumenes
		lstInfgestAct = reporteActividadDAO.listarReporteActividad(informeGestion);
		
		//listar atención de consultas
		informeGestion.setIdTipoSolicitante(3);
		List<ReporteAtencionConsulta> lstInfgestAteconExportador =  reporteAtencionConsultaDAO.listarReporteAtencionConsulta(informeGestion);
		lstInfgestAtecon = obtenerAtencionConsultaTurismoInversiones(lstInfgestAteconExportador);
		
		hmReporteInformeGestion.put("lstInfgestProage", lstInfgestProage);
		hmReporteInformeGestion.put("lstInfgestAct", lstInfgestAct);
		hmReporteInformeGestion.put("lstInfgestAtecon", lstInfgestAtecon);
		
		return hmReporteInformeGestion;
	}
	
	private Map<String,Object> obtenerDetalleInversiones(ReporteInformeGestion informeGestion){
		if(log.isDebugEnabled()) log.debug("method obtenerDetalleInversiones");
		
		Map<String,Object> hmReporteInformeGestion = new HashMap<String,Object>();
		List<ReporteAccionPromocion> lstInfgesiProage;
		List<ReporteActividad> lstInfgesiAct;
		List<ReporteAtencionConsulta> lstInfgesiAtecon;
		
		informeGestion.setIdTipoAccion(3);
		
		//listar promociones de agencias
		lstInfgesiProage = reporteAccionPromocionDAO.listarReporteAccionPromocion(informeGestion);
		
		//listar actividades + resumenes
		lstInfgesiAct = reporteActividadDAO.listarReporteActividad(informeGestion);
		
		//listar atención de consultas
		informeGestion.setIdTipoSolicitante(4);
		List<ReporteAtencionConsulta> lstInfgestAteconExportador =  reporteAtencionConsultaDAO.listarReporteAtencionConsulta(informeGestion);
		lstInfgesiAtecon = obtenerAtencionConsultaTurismoInversiones(lstInfgestAteconExportador);
		
		hmReporteInformeGestion.put("lstInfgesiProage", lstInfgesiProage);
		hmReporteInformeGestion.put("lstInfgesiAct", lstInfgesiAct);
		hmReporteInformeGestion.put("lstInfgesiAtecon", lstInfgesiAtecon);
		
		return hmReporteInformeGestion;
	}
	
	private List<ReporteAtencionConsulta> obtenerAtencionConsultaExportaciones(List<ReporteAtencionConsulta> lstAteconExportador, List<ReporteAtencionConsulta> lstAteconComprador ){
		if(log.isDebugEnabled()) log.debug("method obtenerAtencionConsultaExportaciones");
		
		List<String> arrAtencionConsultaExp = new ArrayList<String>();
		List<ReporteAtencionConsulta> lstAtencionConsultaExp = new ArrayList<ReporteAtencionConsulta>();
		String idSectorNegocio;
		int index;
		
		for(ReporteAtencionConsulta atencion:lstAteconExportador){
			arrAtencionConsultaExp.add(atencion.getIdSectorNegocio());
			atencion.setNumConAteExp(atencion.getNumConsultas());
			atencion.setNumEmpAteExp(atencion.getNumConsultas());
			lstAtencionConsultaExp.add(atencion);
		}
		
		for(ReporteAtencionConsulta atencion:lstAteconComprador){
			idSectorNegocio = atencion.getIdSectorNegocio();
			index = arrAtencionConsultaExp.indexOf(idSectorNegocio);
			if(index == -1){
				arrAtencionConsultaExp.add(idSectorNegocio);
				atencion.setNumConAteCom(atencion.getNumConsultas());
				atencion.setNumEmpAteCom(atencion.getNumConsultas());
				lstAtencionConsultaExp.add(atencion);
			}else{
				lstAtencionConsultaExp.get(index).setNumConAteCom(atencion.getNumConsultas());
				lstAtencionConsultaExp.get(index).setNumEmpAteCom(atencion.getNumConsultas());
			}
		}
	
		return lstAtencionConsultaExp;
	}
	
	private List<ReporteAtencionConsulta> obtenerAtencionConsultaTurismoInversiones(List<ReporteAtencionConsulta> lstAteconExportador){
		if(log.isDebugEnabled()) log.debug("method obtenerAtencionConsultaTurismoInversiones");
		
		List<String> arrAtencionConsulta = new ArrayList<String>();
		List<ReporteAtencionConsulta> lstAtencionConsulta = new ArrayList<ReporteAtencionConsulta>();
		
		for(ReporteAtencionConsulta atencion:lstAteconExportador){
			arrAtencionConsulta.add(atencion.getIdSectorNegocio());
			atencion.setNumConAte(atencion.getNumConsultas());
			atencion.setNumEmpAte(atencion.getNumConsultas());
			lstAtencionConsulta.add(atencion);
		}
	
		return lstAtencionConsulta;
	}
	
	
	public Map<String,Object> obtenerReporteInformeActividad(Integer idInformeActividad) {
		if(log.isDebugEnabled()) log.debug("method obtenerReporteInformeActividad");
		
		Map<String,Object> hmReporteInformeActividad = new HashMap<String,Object>();
		
		//obtener cabecera
		ReporteInformeActividad informeActividad = new ReporteInformeActividad();
		informeActividad.setIdInformeActividad(idInformeActividad);
		informeActividad = reporteInformeActividadDAO.obtenerReporteInformeActividad(informeActividad);
		
		if(informeActividad != null){
			hmReporteInformeActividad.put("informeActividad", informeActividad);
			
			hmReporteInformeActividad.put("idInformeActividad", informeActividad.getIdInformeActividad());
			hmReporteInformeActividad.put("desOcex", informeActividad.getDesOcex());
			hmReporteInformeActividad.put("desReceptorPersona", ""+informeActividad.getIdReceptorPersona());
			hmReporteInformeActividad.put("desReceptorOficina", ""+informeActividad.getIdReceptorOficina());
			hmReporteInformeActividad.put("desAsunto", informeActividad.getDesAsunto());
			hmReporteInformeActividad.put("desFecEmisionInforme", Utils.convertDateToWords(informeActividad.getFecEmisionInforme()));
			hmReporteInformeActividad.put("desFecProxEdicion", Utils.convertDateToWords(informeActividad.getFecProxEdicion()));
		}
		hmReporteInformeActividad.put("nomDecenio", "Decenio de las Personas con Discapacidad en el Perú");
		hmReporteInformeActividad.put("nomAnio", "Año de la Consolidación del Mar de Grau");
		
		
		log.debug("hmReporteInformeGestion: " + hmReporteInformeActividad);
		return hmReporteInformeActividad;
	}
	
	

	//setters and getters
	public ReporteInformeGestionDAO getReporteInformeGestionDAO() {
		return reporteInformeGestionDAO;
	}

	public void setReporteInformeGestionDAO(ReporteInformeGestionDAO reporteInformeGestionDAO) {
		this.reporteInformeGestionDAO = reporteInformeGestionDAO;
	}

	public ReporteAccionPromocionDAO getReporteAccionPromocionDAO() {
		return reporteAccionPromocionDAO;
	}

	public void setReporteAccionPromocionDAO(ReporteAccionPromocionDAO reporteAccionPromocionDAO) {
		this.reporteAccionPromocionDAO = reporteAccionPromocionDAO;
	}

	public ReporteActividadDAO getReporteActividadDAO() {
		return reporteActividadDAO;
	}

	public void setReporteActividadDAO(ReporteActividadDAO reporteActividadDAO) {
		this.reporteActividadDAO = reporteActividadDAO;
	}

	public ReporteAlertaModificacionDAO getReporteAlertaModificacionDAO() {
		return reporteAlertaModificacionDAO;
	}

	public void setReporteAlertaModificacionDAO(ReporteAlertaModificacionDAO reporteAlertaModificacionDAO) {
		this.reporteAlertaModificacionDAO = reporteAlertaModificacionDAO;
	}

	public ReporteAtencionConsultaDAO getReporteAtencionConsultaDAO() {
		return reporteAtencionConsultaDAO;
	}

	public void setReporteAtencionConsultaDAO(ReporteAtencionConsultaDAO reporteAtencionConsultaDAO) {
		this.reporteAtencionConsultaDAO = reporteAtencionConsultaDAO;
	}

	public ReporteInformeActividadDAO getReporteInformeActividadDAO() {
		return reporteInformeActividadDAO;
	}

	public void setReporteInformeActividadDAO(ReporteInformeActividadDAO reporteInformeActividadDAO) {
		this.reporteInformeActividadDAO = reporteInformeActividadDAO;
	}
	
}




