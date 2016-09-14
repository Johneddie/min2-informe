package pe.gob.mincetur.report.ocex.web.controller;


import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;

import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import pe.gob.mincetur.report.ocex.dto.ReporteInformeActividadDto;
import pe.gob.mincetur.report.ocex.service.ReporteInformeService;
import pe.gob.mincetur.report.ocex.util.Constantes;

@SuppressWarnings("rawtypes")
public class ReporteInformeController extends BaseController{

	protected final Log log = LogFactory.getLog(getClass());
	
	private ReporteInformeService reporteInformeService;

	public ModelAndView iniciarInformeReporte(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(log.isDebugEnabled()) log.debug("method iniciarInformeReporte");
		
		ModelAndView viewPage = null;
		
		viewPage = new ModelAndView("informeReporte");

		return viewPage;
	}
	
	public void descargarInformeGestionPdf(HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(log.isDebugEnabled()) log.debug("method descargarInformeGestionPdf");
		
		Integer idInformeGestion = Integer.parseInt(request.getParameter("idInformeGestion"));//Si se especifica de un personal
		Map<String,Object> parametrosPdf = reporteInformeService.obtenerReporteInformeGestion(idInformeGestion);
		
		List<HashMap> lstDetalles = new ArrayList<HashMap>();
		lstDetalles.add(new HashMap());
        
		descargarReportePdf(request, response, "PLANTILLA_INFGES.jasper", "INFORME_GESTION.pdf", parametrosPdf, lstDetalles);
    }
	

	public void descargarInformeActividadPdf(HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(log.isDebugEnabled()) log.debug("method descargarInformeActividadPdf");
		
		Integer idInformeActividad = Integer.parseInt(request.getParameter("idInformeActividad"));
		Map<String,Object> parametrosPdf = reporteInformeService.obtenerReporteInformeActividad(idInformeActividad);
		
		ReporteInformeActividadDto informeActividad = (ReporteInformeActividadDto)parametrosPdf.get("informeActividad");
		List<ReporteInformeActividadDto> lstDetalles = new ArrayList<ReporteInformeActividadDto>();
		lstDetalles.add(informeActividad);
		
		descargarReportePdf(request, response, "PLANTILLA_INFACT.jasper", "INFORME_ACTIVIDAD.pdf", parametrosPdf, lstDetalles);
    }
	
	public void descargarAlertaModificacionPdf(HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(log.isDebugEnabled()) log.debug("method descargarAlertaModificacionPdf");
		
		Integer idAlertaModificacion = Integer.parseInt(request.getParameter("idAlertaModificacion"));
		Integer idOcex = Integer.parseInt(request.getParameter("idOcex"));
		Map<String,Object> parametrosPdf = reporteInformeService.obtenerReporteAlertaModificacion(idAlertaModificacion, idOcex);
		
		List<HashMap> lstDetalles = new ArrayList<HashMap>();
		lstDetalles.add(new HashMap());
		
		descargarReportePdf(request, response, "PLANTILLA_REGACC_INF.jasper", "ALERTA_MODIFICACION.pdf", parametrosPdf, lstDetalles);
    }
	
	
	public void descargarAccionPromocionPdf(HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(log.isDebugEnabled()) log.debug("method descargarAccionPromocionPdf");
		
		Integer idAccionPromocion = Integer.parseInt(request.getParameter("idAccionPromocion"));
		Integer idOcex = Integer.parseInt(request.getParameter("idOcex"));
		Map<String,Object> parametrosPdf = reporteInformeService.obtenerReporteAccionPromocion(idAccionPromocion, idOcex);
		
		List<HashMap> lstDetalles = new ArrayList<HashMap>();
		lstDetalles.add(new HashMap());
        
		descargarReportePdf(request, response, "PLANTILLA_PROAGE_INF.jasper", "ACCION_PROMOCION.pdf", parametrosPdf, lstDetalles);
    }
	
	
	public void descargarAlertaParticipacionPdf(HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(log.isDebugEnabled()) log.debug("method descargarAlertaParticipacionPdf");
		
		Integer idAlertaParticipacion = Integer.parseInt(request.getParameter("idAlertaParticipacion"));
		Integer idOcex = Integer.parseInt(request.getParameter("idOcex"));
		Map<String,Object> parametrosPdf = reporteInformeService.obtenerReporteAlertaParticipacion(idAlertaParticipacion, idOcex);
		
		List<HashMap> lstDetalles = new ArrayList<HashMap>();
		lstDetalles.add(new HashMap());
        
		descargarReportePdf(request, response, "PLANTILLA_ALEPAR_INF.jasper", "ALERTA_PARTICIPACION.pdf", parametrosPdf, lstDetalles);
    }
	
	
	public void descargarAtencionConsultaPdf(HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(log.isDebugEnabled()) log.debug("method descargarAtencionConsultaPdf");
		
		Integer idAtencionConsulta = Integer.parseInt(request.getParameter("idAtencionConsulta"));
		Integer idOcex = Integer.parseInt(request.getParameter("idOcex"));
		Map<String,Object> parametrosPdf = reporteInformeService.obtenerReporteAtencionConsulta(idAtencionConsulta, idOcex);
		
		List<HashMap> lstDetalles = new ArrayList<HashMap>();
		lstDetalles.add(new HashMap());
        
		descargarReportePdf(request, response, "PLANTILLA_ATECON_INF.jasper", "ATENCION_CONSULTA.pdf", parametrosPdf, lstDetalles);
    }
	
	
	public void descargarFichaMercadoPdf(HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(log.isDebugEnabled()) log.debug("method descargarFichaMercadoPdf");
		
		Integer idFichaMercado = Integer.parseInt(request.getParameter("idFichaMercado"));
		Integer idOcex = Integer.parseInt(request.getParameter("idOcex"));
		Map<String,Object> parametrosPdf = reporteInformeService.obtenerReporteFichaMercado(idFichaMercado, idOcex);
		List lstDetalles = (List)parametrosPdf.get("lstFichasMercado");
        
		descargarReportePdf(request, response, "PLANTILLA_FICMER_INF.jasper", "FICHA_MERCADO.pdf", parametrosPdf, lstDetalles);
    }
	
	
	public void descargarPerfilInversionistaPdf(HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(log.isDebugEnabled()) log.debug("method descargarPerfilInversionistaPdf");
		
		Integer idPerfilInversionista = Integer.parseInt(request.getParameter("idPerfilInversionista"));
		Integer idOcex = Integer.parseInt(request.getParameter("idOcex"));
		Map<String,Object> parametrosPdf = reporteInformeService.obtenerReportePerfilInversionista(idPerfilInversionista, idOcex);
		List lstDetalles = (List)parametrosPdf.get("lstPerfilesInversionista");
		
		descargarReportePdf(request, response, "PLANTILLA_PERINV_INF.jasper", "PERFIL_INVERSIONISTA.pdf", parametrosPdf, lstDetalles);
    }
	
	
	public void descargarReportePdf(HttpServletRequest request, HttpServletResponse response, 
			String nameJasper, String nameReport, Map<String,Object> parametrosPdf, List lstDetalles)  throws Exception {
		String jasperFile = Constantes.URI_REPORT + nameJasper;
		URL url= request.getSession().getServletContext().getResource(Constantes.URI_REPORT);
		parametrosPdf.put("LOGO", url.getPath());
		parametrosPdf.put("SUBREPORT_DIR", url.getPath());
	
    	InputStream inputStreamJasper = request.getSession().getServletContext().getResourceAsStream(jasperFile);
        
    	JRBeanCollectionDataSource dataAPdf = new JRBeanCollectionDataSource(lstDetalles);
    	JasperPrint jasperPrint = JasperFillManager.fillReport(inputStreamJasper, parametrosPdf, dataAPdf);
    	JRPdfExporter exportador = new JRPdfExporter();
    	exportador.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
    	exportador.setParameter(JRExporterParameter.OUTPUT_STREAM, response.getOutputStream());
        response.setHeader("Cache-Control", "max-age=1");
        response.setHeader("Pragma", "public");
        response.setHeader("Content-Disposition", "attachment; filename="+nameReport);
        response.setContentType("application/octet-stream");
        exportador.exportReport();
		
	}
	
	public ReporteInformeService getReporteInformeService() {
		return reporteInformeService;
	}

	public void setReporteInformeService(ReporteInformeService reporteInformeService) {
		this.reporteInformeService = reporteInformeService;
	}
	
}
