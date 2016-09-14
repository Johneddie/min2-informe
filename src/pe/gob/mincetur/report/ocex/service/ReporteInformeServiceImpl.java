package pe.gob.mincetur.report.ocex.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import pe.gob.mincetur.report.ocex.dto.ReporteAccionPromocionDto;
import pe.gob.mincetur.report.ocex.dto.ReporteActividadDto;
import pe.gob.mincetur.report.ocex.dto.ReporteAlertaModificacionDto;
import pe.gob.mincetur.report.ocex.dto.ReporteAlertaParticipacionDto;
import pe.gob.mincetur.report.ocex.dto.ReporteAtencionConsultaDto;
import pe.gob.mincetur.report.ocex.dto.ReporteFichaMercadoDto;
import pe.gob.mincetur.report.ocex.dto.ReporteInformeActividadDto;
import pe.gob.mincetur.report.ocex.dto.ReporteInformeGestionDto;
import pe.gob.mincetur.report.ocex.dto.ReportePerfilInversionistaDto;
import pe.gob.mincetur.report.ocex.dto.ReportePrecioProductoDto;
import pe.gob.mincetur.report.ocex.model.dao.ReporteAccionPromocionDAO;
import pe.gob.mincetur.report.ocex.model.dao.ReporteActividadDAO;
import pe.gob.mincetur.report.ocex.model.dao.ReporteAlertaModificacionDAO;
import pe.gob.mincetur.report.ocex.model.dao.ReporteAlertaParticipacionDAO;
import pe.gob.mincetur.report.ocex.model.dao.ReporteAtencionConsultaDAO;
import pe.gob.mincetur.report.ocex.model.dao.ReporteFichaMercadoDAO;
import pe.gob.mincetur.report.ocex.model.dao.ReporteInformeActividadDAO;
import pe.gob.mincetur.report.ocex.model.dao.ReporteInformeGestionDAO;
import pe.gob.mincetur.report.ocex.model.dao.ReportePerfilInversionistaDAO;
import pe.gob.mincetur.report.ocex.model.dao.ReportePrecioProductoDAO;
import pe.gob.mincetur.report.ocex.util.Utils;


public class ReporteInformeServiceImpl implements ReporteInformeService{
	protected final Log log = LogFactory.getLog(getClass());

	private ReporteInformeGestionDAO reporteInformeGestionDAO;
	private ReporteAccionPromocionDAO reporteAccionPromocionDAO;
	private ReporteActividadDAO reporteActividadDAO;
	private ReporteAlertaModificacionDAO reporteAlertaModificacionDAO;
	private ReporteAlertaParticipacionDAO reporteAlertaParticipacionDAO;
	private ReporteAtencionConsultaDAO reporteAtencionConsultaDAO;
	private ReporteFichaMercadoDAO reporteFichaMercadoDAO;
	private ReportePerfilInversionistaDAO reportePerfilInversionistaDAO;
	private ReportePrecioProductoDAO reportePrecioProductoDAO;
	private Properties propiedades;
	
	private ReporteInformeActividadDAO reporteInformeActividadDAO;
	
	public Map<String,Object> obtenerReporteInformeGestion(Integer idInformeGestion) {
		if(log.isDebugEnabled()) log.debug("method obtenerReporteInformeGestion");
		
		Map<String,Object> hmReporteInformeGestion = new HashMap<String,Object>();
		
		//obtener cabecera
		ReporteInformeGestionDto informeGestion = new ReporteInformeGestionDto();
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
		hmReporteInformeGestion.putAll(Utils.obtenerNombreAnio(propiedades));
		
		log.debug("hmReporteInformeGestion: " + hmReporteInformeGestion);

		return hmReporteInformeGestion;
	}
	
	private Map<String,Object> obtenerDetalleExportaciones(ReporteInformeGestionDto informeGestion){
		if(log.isDebugEnabled()) log.debug("method obtenerDetalleExportaciones");
		
		Map<String,Object> hmReporteInformeGestion = new HashMap<String,Object>();
		List<ReporteAlertaModificacionDto> lstInfgeseRegacc;
		List<ReporteAccionPromocionDto> lstInfgeseProage;
		List<ReporteActividadDto> lstInfgeseAct;
		List<ReporteAtencionConsultaDto> lstInfgeseAtecon;
		
		informeGestion.setIdTipoAccion(1);
		//listar regulaciones de acceso
		lstInfgeseRegacc = reporteAlertaModificacionDAO.listarReporteAlertaModificacion(informeGestion);
		for(ReporteAlertaModificacionDto regulacion:lstInfgeseRegacc){
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
		List<ReporteAtencionConsultaDto> lstInfgeseAteconExportador =  reporteAtencionConsultaDAO.listarReporteAtencionConsulta(informeGestion);
		informeGestion.setIdTipoSolicitante(2);
		List<ReporteAtencionConsultaDto> lstInfgeseAteconComprador =  reporteAtencionConsultaDAO.listarReporteAtencionConsulta(informeGestion);
		lstInfgeseAtecon = obtenerAtencionConsultaExportaciones(lstInfgeseAteconExportador, lstInfgeseAteconComprador);
		
		hmReporteInformeGestion.put("lstInfgeseRegacc", lstInfgeseRegacc);
		hmReporteInformeGestion.put("lstInfgeseProage", lstInfgeseProage);
		hmReporteInformeGestion.put("lstInfgeseAct", lstInfgeseAct);
		hmReporteInformeGestion.put("lstInfgeseAtecon", lstInfgeseAtecon);
		
		return hmReporteInformeGestion;
	}
	
	private Map<String,Object> obtenerDetalleTurismo(ReporteInformeGestionDto informeGestion){
		if(log.isDebugEnabled()) log.debug("method obtenerDetalleTurismo");
		
		Map<String,Object> hmReporteInformeGestion = new HashMap<String,Object>();
		List<ReporteAccionPromocionDto> lstInfgestProage;
		List<ReporteActividadDto> lstInfgestAct;
		List<ReporteAtencionConsultaDto> lstInfgestAtecon;
		
		informeGestion.setIdTipoAccion(2);
		
		//listar promociones de agencias
		lstInfgestProage = reporteAccionPromocionDAO.listarReporteAccionPromocion(informeGestion);
		
		//listar actividades + resumenes
		lstInfgestAct = reporteActividadDAO.listarReporteActividad(informeGestion);
		
		//listar atención de consultas
		informeGestion.setIdTipoSolicitante(3);
		List<ReporteAtencionConsultaDto> lstInfgestAteconExportador =  reporteAtencionConsultaDAO.listarReporteAtencionConsulta(informeGestion);
		lstInfgestAtecon = obtenerAtencionConsultaTurismoInversiones(lstInfgestAteconExportador);
		
		hmReporteInformeGestion.put("lstInfgestProage", lstInfgestProage);
		hmReporteInformeGestion.put("lstInfgestAct", lstInfgestAct);
		hmReporteInformeGestion.put("lstInfgestAtecon", lstInfgestAtecon);
		
		return hmReporteInformeGestion;
	}
	
	private Map<String,Object> obtenerDetalleInversiones(ReporteInformeGestionDto informeGestion){
		if(log.isDebugEnabled()) log.debug("method obtenerDetalleInversiones");
		
		Map<String,Object> hmReporteInformeGestion = new HashMap<String,Object>();
		List<ReporteAccionPromocionDto> lstInfgesiProage;
		List<ReporteActividadDto> lstInfgesiAct;
		List<ReporteAtencionConsultaDto> lstInfgesiAtecon;
		
		informeGestion.setIdTipoAccion(3);
		
		//listar promociones de agencias
		lstInfgesiProage = reporteAccionPromocionDAO.listarReporteAccionPromocion(informeGestion);
		
		//listar actividades + resumenes
		lstInfgesiAct = reporteActividadDAO.listarReporteActividad(informeGestion);
		
		//listar atención de consultas
		informeGestion.setIdTipoSolicitante(4);
		List<ReporteAtencionConsultaDto> lstInfgestAteconExportador =  reporteAtencionConsultaDAO.listarReporteAtencionConsulta(informeGestion);
		lstInfgesiAtecon = obtenerAtencionConsultaTurismoInversiones(lstInfgestAteconExportador);
		
		hmReporteInformeGestion.put("lstInfgesiProage", lstInfgesiProage);
		hmReporteInformeGestion.put("lstInfgesiAct", lstInfgesiAct);
		hmReporteInformeGestion.put("lstInfgesiAtecon", lstInfgesiAtecon);
		
		return hmReporteInformeGestion;
	}
	
	private List<ReporteAtencionConsultaDto> obtenerAtencionConsultaExportaciones(List<ReporteAtencionConsultaDto> lstAteconExportador, List<ReporteAtencionConsultaDto> lstAteconComprador ){
		if(log.isDebugEnabled()) log.debug("method obtenerAtencionConsultaExportaciones");
		
		List<String> arrAtencionConsultaExp = new ArrayList<String>();
		List<ReporteAtencionConsultaDto> lstAtencionConsultaExp = new ArrayList<ReporteAtencionConsultaDto>();
		String idSectorNegocio;
		int index;
		
		for(ReporteAtencionConsultaDto atencion:lstAteconExportador){
			arrAtencionConsultaExp.add(atencion.getIdSectorNegocio());
			atencion.setNumConAteExp(atencion.getNumConsultas());
			atencion.setNumEmpAteExp(atencion.getNumConsultas());
			lstAtencionConsultaExp.add(atencion);
		}
		
		for(ReporteAtencionConsultaDto atencion:lstAteconComprador){
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
	
	private List<ReporteAtencionConsultaDto> obtenerAtencionConsultaTurismoInversiones(List<ReporteAtencionConsultaDto> lstAteconExportador){
		if(log.isDebugEnabled()) log.debug("method obtenerAtencionConsultaTurismoInversiones");
		
		List<String> arrAtencionConsulta = new ArrayList<String>();
		List<ReporteAtencionConsultaDto> lstAtencionConsulta = new ArrayList<ReporteAtencionConsultaDto>();
		
		for(ReporteAtencionConsultaDto atencion:lstAteconExportador){
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
		ReporteInformeActividadDto informeActividad = new ReporteInformeActividadDto();
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
		hmReporteInformeActividad.putAll(Utils.obtenerNombreAnio(propiedades));
		
		
		log.debug("hmReporteInformeGestion: " + hmReporteInformeActividad);
		return hmReporteInformeActividad;
	}
	
	//20160827
	public Map<String,Object> obtenerReporteAlertaModificacion(Integer idAlertaModificacion, Integer idOcex) {
		if(log.isDebugEnabled()) log.debug("method obtenerReporteInformeActividad");
		
		Map<String,Object> hmReporteAlertaModificacion = new HashMap<String,Object>();
		
		//obtener cabecera
		ReporteAlertaModificacionDto alertaModificacion = new ReporteAlertaModificacionDto();
		alertaModificacion.setIdAlertaModificacion(idAlertaModificacion);
		alertaModificacion.setIdOcex(idOcex);
		//alerta
		alertaModificacion = reporteAlertaModificacionDAO.obtenerReporteAlertaModificacion(alertaModificacion);
		
		if(alertaModificacion != null){
			if(alertaModificacion.getFecPublicaNorma() != null)
				alertaModificacion.setDesFecPublicaNorma(Utils.convertDateToWords(alertaModificacion.getFecPublicaNorma()));
			if(alertaModificacion.getFecInicioVigencia() != null)
				alertaModificacion.setDesFecInicioVigencia(Utils.convertDateToWords(alertaModificacion.getFecInicioVigencia()));
			List<ReporteAlertaModificacionDto> lstAlertaModificacion = new ArrayList<ReporteAlertaModificacionDto>();
			lstAlertaModificacion.add(alertaModificacion);
			hmReporteAlertaModificacion.put("lstRegulacionesAcceso", lstAlertaModificacion);
			
			hmReporteAlertaModificacion.put("desOcex", alertaModificacion.getDesOcex());
			hmReporteAlertaModificacion.put("desFecCrea", Utils.convertDateToText(alertaModificacion.getFecCrea()));
			hmReporteAlertaModificacion.put("desPeriodoTrim", Utils.obtenerDesPeriodoTrim(alertaModificacion.getNumPeriodoTrim()));
		}
		hmReporteAlertaModificacion.putAll(Utils.obtenerNombreAnio(propiedades));	
		
		log.debug("hmReporteAlertaModificacion: " + hmReporteAlertaModificacion);
		return hmReporteAlertaModificacion;
	}
	
	
	public Map<String,Object> obtenerReporteAccionPromocion(Integer idAccionPromocion, Integer idOcex) {
		if(log.isDebugEnabled()) log.debug("method obtenerReporteAccionPromocion");
		
		Map<String,Object> hmReporteAccionPromocion = new HashMap<String,Object>();
		
		//obtener cabecera
		ReporteAccionPromocionDto accionPromocion = new ReporteAccionPromocionDto();
		accionPromocion.setIdAccionPromocion(idAccionPromocion);
		accionPromocion.setIdOcex(idOcex);
		//alerta
		accionPromocion = reporteAccionPromocionDAO.obtenerReporteAccionPromocion(accionPromocion);
		
		if(accionPromocion != null){
			List<ReporteAccionPromocionDto> lstAccionPromocion = new ArrayList<ReporteAccionPromocionDto>();
			lstAccionPromocion.add(accionPromocion);
			hmReporteAccionPromocion.put("lstPromocionAgencias", lstAccionPromocion);
			
			hmReporteAccionPromocion.put("desOcex", accionPromocion.getDesOcex());
			hmReporteAccionPromocion.put("desFecCrea", Utils.convertDateToText(accionPromocion.getFecCrea()));
			hmReporteAccionPromocion.put("desPeriodoTrim", Utils.obtenerDesPeriodoTrim(accionPromocion.getNumPeriodoTrim()));
		}
		hmReporteAccionPromocion.putAll(Utils.obtenerNombreAnio(propiedades));
		
		log.debug("hmReporteAlertaModificacion: " + hmReporteAccionPromocion);
		return hmReporteAccionPromocion;
	}
	
	public Map<String,Object> obtenerReporteAlertaParticipacion(Integer idAlertaParticipacion, Integer idOcex) {
		if(log.isDebugEnabled()) log.debug("method obtenerReporteInformeActividad");
		
		Map<String,Object> hmReporteAlertaParticipacion = new HashMap<String,Object>();
		
		//obtener cabecera
		ReporteAlertaParticipacionDto alertaParticipacion = new ReporteAlertaParticipacionDto();
		alertaParticipacion.setIdAlertaParticipacion(idAlertaParticipacion);
		alertaParticipacion.setIdOcex(idOcex);
		//alerta
		alertaParticipacion = reporteAlertaParticipacionDAO.obtenerReporteAlertaParticipacion(alertaParticipacion);
		
		if(alertaParticipacion != null){
			if(alertaParticipacion.getFecPublicaLicitaci() != null)
				alertaParticipacion.setDesFecPublicaLicitaci(Utils.convertDateToWords(alertaParticipacion.getFecPublicaLicitaci()));
			if(alertaParticipacion.getFecInicioVigencia() != null)
				alertaParticipacion.setDesFecInicioVigencia(Utils.convertDateToWords(alertaParticipacion.getFecInicioVigencia()));
			List<ReporteAlertaParticipacionDto> lstAlertasParticipacion = new ArrayList<ReporteAlertaParticipacionDto>();
			lstAlertasParticipacion.add(alertaParticipacion);
			hmReporteAlertaParticipacion.put("lstAlertasParticipacion", lstAlertasParticipacion);
			
			hmReporteAlertaParticipacion.put("desOcex", alertaParticipacion.getDesOcex());
			hmReporteAlertaParticipacion.put("desFecCrea", Utils.convertDateToText(alertaParticipacion.getFecCrea()));
			hmReporteAlertaParticipacion.put("desPeriodoTrim", Utils.obtenerDesPeriodoTrim(alertaParticipacion.getNumPeriodoTrim()));
		}
		hmReporteAlertaParticipacion.putAll(Utils.obtenerNombreAnio(propiedades));
		
		log.debug("hmReporteAlertaParticipacion: " + hmReporteAlertaParticipacion);
		return hmReporteAlertaParticipacion;
	}
	
	public Map<String,Object> obtenerReporteFichaMercado(Integer idFichaMercado, Integer idOcex) {
		if(log.isDebugEnabled()) log.debug("method obtenerReporteFichaMercado");
		
		Map<String,Object> hmReporteFichaMercado = new HashMap<String,Object>();
		
		//obtener cabecera
		ReporteFichaMercadoDto fichaMercado = new ReporteFichaMercadoDto();
		fichaMercado.setIdFichaMercado(idFichaMercado);
		fichaMercado.setIdOcex(idOcex);
		//alerta
		fichaMercado = reporteFichaMercadoDAO.obtenerReporteFichaMercado(fichaMercado);
		
		if(fichaMercado != null){
			List<ReporteFichaMercadoDto> lstFichasMercado = new ArrayList<ReporteFichaMercadoDto>();
			lstFichasMercado.add(fichaMercado);
			hmReporteFichaMercado.put("lstFichasMercado", lstFichasMercado);
			hmReporteFichaMercado.put("desOcex", fichaMercado.getDesOcex());
			
			ReportePrecioProductoDto precioProducto = new ReportePrecioProductoDto();
			precioProducto.setIdFichaMercado(idFichaMercado);
			precioProducto.setIdOcex(idOcex);
			List<ReportePrecioProductoDto> lstPreciosProducto = reportePrecioProductoDAO.listarReportePrecioProductoByFicha(precioProducto);
			hmReporteFichaMercado.put("lstPreciosProducto", lstPreciosProducto);
			hmReporteFichaMercado.put("desFecCrea", Utils.convertDateToText(fichaMercado.getFecCrea()));
			hmReporteFichaMercado.put("desPeriodoTrim", Utils.obtenerDesPeriodoTrim(fichaMercado.getNumPeriodoTrim()));

		}
		hmReporteFichaMercado.putAll(Utils.obtenerNombreAnio(propiedades));
		
		log.debug("hmReporteFichaMercado: " + hmReporteFichaMercado);
		return hmReporteFichaMercado;
	}
	
	public Map<String,Object> obtenerReporteAtencionConsulta(Integer idAtencionConsulta, Integer idOcex) {
		if(log.isDebugEnabled()) log.debug("method obtenerReporteAtencionConsulta");
		
		Map<String,Object> hmReporteAtencionConsulta = new HashMap<String,Object>();
		
		//obtener cabecera
		ReporteAtencionConsultaDto atencionConsulta = new ReporteAtencionConsultaDto();
		atencionConsulta.setIdAtencionConsulta(idAtencionConsulta);
		atencionConsulta.setIdOcex(idOcex);
		//alerta
		atencionConsulta = reporteAtencionConsultaDAO.obtenerReporteAtencionConsulta(atencionConsulta);
		
		if(atencionConsulta != null){
			List<ReporteAtencionConsultaDto> lstAtencionConsultas = new ArrayList<ReporteAtencionConsultaDto>();
			lstAtencionConsultas.add(atencionConsulta);
			hmReporteAtencionConsulta.put("lstAtencionConsultas", lstAtencionConsultas);
			
			hmReporteAtencionConsulta.put("desOcex", atencionConsulta.getDesOcex());
			hmReporteAtencionConsulta.put("desFecCrea", Utils.convertDateToText(atencionConsulta.getFecCrea()));
			hmReporteAtencionConsulta.put("desPeriodoTrim", Utils.obtenerDesPeriodoTrim(atencionConsulta.getNumPeriodoTrim()));
		}
		hmReporteAtencionConsulta.putAll(Utils.obtenerNombreAnio(propiedades));
		
		log.debug("hmReporteAtencionConsulta: " + hmReporteAtencionConsulta);
		return hmReporteAtencionConsulta;
	}
	
	
	public Map<String,Object> obtenerReportePerfilInversionista(Integer idPerfilInversionista, Integer idOcex) {
		if(log.isDebugEnabled()) log.debug("method obtenerReporteInformeActividad");
		
		Map<String,Object> hmReportePerfilInversionista = new HashMap<String,Object>();
		
		//obtener cabecera
		ReportePerfilInversionistaDto perfilInversionista = new ReportePerfilInversionistaDto();
		perfilInversionista.setIdPerfilInversionista(idPerfilInversionista);
		perfilInversionista.setIdOcex(idOcex);
		//alerta
		perfilInversionista = reportePerfilInversionistaDAO.obtenerReportePerfilInversionista(perfilInversionista);
		
		if(perfilInversionista != null){
			//parte IV
			perfilInversionista.setDesVisitadoPeru(propiedades.getProperty("visitadoPeru." + perfilInversionista.getFlgVisitadoPeru()));
			perfilInversionista.setDesMotivoVisita(propiedades.getProperty("motivoVisita." + perfilInversionista.getCodMotivoVisita()));
			perfilInversionista.setDesOfertaTurist(propiedades.getProperty("ofertaTurist." + perfilInversionista.getCodOfertaTurist()));
			
			if(perfilInversionista.getFlgOportInver() == 1)
				perfilInversionista.setDesOportInver(propiedades.getProperty("oportInver." + perfilInversionista.getFlgOportInver()) + "· " + perfilInversionista.getDesOportInver());
			else
				perfilInversionista.setDesOportInver(propiedades.getProperty("oportInver." + perfilInversionista.getFlgOportInver()));
			
			String codMasInforma = perfilInversionista.getCodMasInforma();
			if(codMasInforma !=null){
				String[] arrCodMasInforma = codMasInforma.split(",");
				String desMasInforma = "";
				for(String cod:arrCodMasInforma){
					desMasInforma += propiedades.getProperty("masInforma." + cod)+", ";
				}
				if(desMasInforma.endsWith(", "))
					desMasInforma = desMasInforma.substring(0, desMasInforma.length()-2);
				perfilInversionista.setDesMasInforma(desMasInforma);
			}
			
			if("05".equals(perfilInversionista.getCodTipoRealizar()))
				perfilInversionista.setDesTipoRealizar(propiedades.getProperty("tipoRealizar." + perfilInversionista.getCodTipoRealizar()) + "· " + perfilInversionista.getDesTipoRealizar());
			else
				perfilInversionista.setDesTipoRealizar(propiedades.getProperty("tipoRealizar." + perfilInversionista.getCodTipoRealizar()));
			
			perfilInversionista.setDesMontoRealizar(propiedades.getProperty("montoRealizar." + perfilInversionista.getCodMontoRealizar()));
			
			//lista
			List<ReportePerfilInversionistaDto> lstPerfilesInversionista = new ArrayList<ReportePerfilInversionistaDto>();
			lstPerfilesInversionista.add(perfilInversionista);
			hmReportePerfilInversionista.put("lstPerfilesInversionista", lstPerfilesInversionista);
			
			hmReportePerfilInversionista.put("desOcex", perfilInversionista.getDesOcex());
			hmReportePerfilInversionista.put("desFecCrea", Utils.convertDateToText(perfilInversionista.getFecCrea()));
			hmReportePerfilInversionista.put("desPeriodoTrim", Utils.obtenerDesPeriodoTrim(perfilInversionista.getNumPeriodoTrim()));
		}
		hmReportePerfilInversionista.putAll(Utils.obtenerNombreAnio(propiedades));
		
		log.debug("hmReportePerfilInversionista: " + hmReportePerfilInversionista);
		return hmReportePerfilInversionista;
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

	public ReporteAlertaParticipacionDAO getReporteAlertaParticipacionDAO() {
		return reporteAlertaParticipacionDAO;
	}

	public void setReporteAlertaParticipacionDAO(ReporteAlertaParticipacionDAO reporteAlertaParticipacionDAO) {
		this.reporteAlertaParticipacionDAO = reporteAlertaParticipacionDAO;
	}

	public ReporteFichaMercadoDAO getReporteFichaMercadoDAO() {
		return reporteFichaMercadoDAO;
	}

	public void setReporteFichaMercadoDAO(ReporteFichaMercadoDAO reporteFichaMercadoDAO) {
		this.reporteFichaMercadoDAO = reporteFichaMercadoDAO;
	}

	public Properties getPropiedades() {
		return propiedades;
	}

	public void setPropiedades(Properties propiedades) {
		this.propiedades = propiedades;
	}

	public ReportePerfilInversionistaDAO getReportePerfilInversionistaDAO() {
		return reportePerfilInversionistaDAO;
	}

	public void setReportePerfilInversionistaDAO(ReportePerfilInversionistaDAO reportePerfilInversionistaDAO) {
		this.reportePerfilInversionistaDAO = reportePerfilInversionistaDAO;
	}

	public ReportePrecioProductoDAO getReportePrecioProductoDAO() {
		return reportePrecioProductoDAO;
	}

	public void setReportePrecioProductoDAO(ReportePrecioProductoDAO reportePrecioProductoDAO) {
		this.reportePrecioProductoDAO = reportePrecioProductoDAO;
	}
	
	
}




