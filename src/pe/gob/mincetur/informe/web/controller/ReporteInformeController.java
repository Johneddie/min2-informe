package pe.gob.mincetur.informe.web.controller;


import java.io.FileInputStream;
import java.io.InputStream;
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
import pe.gob.mincetur.informe.bean.ReporteInformeActividad;
import pe.gob.mincetur.informe.service.ReporteInformeService;

@SuppressWarnings("rawtypes")
public class ReporteInformeController extends BaseController{

	protected final Log log = LogFactory.getLog(getClass());
	
	/*
	 * Servicios de este controlador
	 */
	private ReporteInformeService reporteInformeService;

	
	/**
	 * Carga la p√°gina inicial del formulario de consulta de evaluaciones 
	 * devueltas. 
	 * @param HttpServletRequest request, data entrante
	 * @param HttpServletResponse response, data de salidas
	 * @return ModelAndView, p√°gina hacia la cual se redirige esta solicitud, en este caso la 
	 * p√°gina se redirige hacia el formulario de consulta <code>iniciarAdministrarEvalDevueltas</code>
	 * */
	public ModelAndView iniciarInformeReporte(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(log.isDebugEnabled()) log.debug("method iniciarInformeReporte");
		
		ModelAndView viewPage = null;
		
		viewPage = new ModelAndView("informeReporte");

		return viewPage;
	}
	
	
	public void descargarInformeGestionPdf(HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(log.isDebugEnabled()) log.debug("method descargarInformeGestionPdf");
		
		Integer idInformeGestion = Integer.parseInt(request.getParameter("idInformeGestion"));//Si se especifica de un personal
		Map<String,Object> parametrosPdf = prepararInformeGestionPdf(idInformeGestion);
		
		List<HashMap> informes = new ArrayList<HashMap>();
		informes.add(new HashMap());
        
		//String jasperFile = "/WEB-INF/reportes/PLANTILLA_INFGES.jasper";
		String jasperFile = "/PROYECTOS/REPO_MINCETUR/PLANTILLAS/PLANTILLA_INFGES.jasper";
		
        log.info("Directorio jasper-"+jasperFile);
        
    	//InputStream input1 = request.getSession().getServletContext().getResourceAsStream(jasperFile);
        InputStream input1 = new FileInputStream(jasperFile);
        
    	JRBeanCollectionDataSource dataAPdf = new JRBeanCollectionDataSource(informes);
    	JasperPrint jasperPrint = JasperFillManager.fillReport(input1, parametrosPdf, dataAPdf);
    	JRPdfExporter exportador = new JRPdfExporter();
    	exportador.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
    	exportador.setParameter(JRExporterParameter.OUTPUT_STREAM, response.getOutputStream());
        response.setHeader("Cache-Control", "max-age=1");
        response.setHeader("Pragma", "public");
        response.setHeader("Content-Disposition", "attachment; filename=INFORME_GESTION.pdf");
        response.setContentType("application/octet-stream");
        exportador.exportReport();
    }
	

	public void descargarInformeActividadPdf(HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(log.isDebugEnabled()) log.debug("method descargarInformeActividadPdf");
		
		Integer idInformeActividad = Integer.parseInt(request.getParameter("idInformeActividad"));
		Map<String,Object> parametrosPdf = prepararInformeActividadPdf(idInformeActividad);
		
		ReporteInformeActividad informeActividad = (ReporteInformeActividad)parametrosPdf.get("informeActividad");
		List<ReporteInformeActividad> informes = new ArrayList<ReporteInformeActividad>();
		informes.add(informeActividad);
        
		//String jasperFile = "/WEB-INF/reportes/PLANTILLA_INFGES.jasper";
		String jasperFile = "/PROYECTOS/REPO_MINCETUR/PLANTILLAS/PLANTILLA_INFACT.jasper";
		
        log.info("Directorio jasper-"+jasperFile);
        
    	//InputStream input1 = request.getSession().getServletContext().getResourceAsStream(jasperFile);
        InputStream input1 = new FileInputStream(jasperFile);
        
    	JRBeanCollectionDataSource dataAPdf = new JRBeanCollectionDataSource(informes);
    	JasperPrint jasperPrint = JasperFillManager.fillReport(input1, parametrosPdf, dataAPdf);
    	JRPdfExporter exportador = new JRPdfExporter();
    	exportador.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
    	exportador.setParameter(JRExporterParameter.OUTPUT_STREAM, response.getOutputStream());
        response.setHeader("Cache-Control", "max-age=1");
        response.setHeader("Pragma", "public");
        response.setHeader("Content-Disposition", "attachment; filename=INFORME_ACTIVIDAD.pdf");
        response.setContentType("application/octet-stream");
        exportador.exportReport();
    }
	
	
	private Map<String,Object> prepararInformeGestionPdf(Integer idInformeGestion){
		if(log.isDebugEnabled()) log.debug("method prepararParametrosPdf");
		
		//obtener cabecera
		Map<String,Object> parametrosPdf = reporteInformeService.obtenerReporteInformeGestion(idInformeGestion);
		
		parametrosPdf.put("desTitPromocionExp","COMERCIALES");
		parametrosPdf.put("desTitPromocionTur","DE TURISMO");
		parametrosPdf.put("desTitPromocionInv","DE INVERSIONES");
		
		parametrosPdf.put("metadata_asunto","Informe de GestiÛn");
		parametrosPdf.put("metadata_titulo","Informe de GestiÛn");
		parametrosPdf.put("net.sf.jasperreports.engine.export.JRPdfExporterParameter.METADATA_AUTHOR", "mincetur.gob.pe");
		parametrosPdf.put("net.sf.jasperreports.engine.export.JRPdfExporterParameter.METADATA_CREATOR", "MINCETUR Java GenDoc derechos reservados");
    	return parametrosPdf;
    }
	
	private Map<String,Object> prepararInformeActividadPdf(Integer idInformeActividad){
		if(log.isDebugEnabled()) log.debug("method prepararInformeActividadPdf");
		
		//obtener cabecera
		Map<String,Object> parametrosPdf = reporteInformeService.obtenerReporteInformeActividad(idInformeActividad);
		
		parametrosPdf.put("metadata_asunto","Informe de Actividad");
		parametrosPdf.put("metadata_titulo","Informe de Actividad");
		parametrosPdf.put("net.sf.jasperreports.engine.export.JRPdfExporterParameter.METADATA_AUTHOR", "mincetur.gob.pe");
		parametrosPdf.put("net.sf.jasperreports.engine.export.JRPdfExporterParameter.METADATA_CREATOR", "MINCETUR Java GenDoc derechos reservados");
    	return parametrosPdf;
    }
	
	


	public ReporteInformeService getReporteInformeService() {
		return reporteInformeService;
	}

	public void setReporteInformeService(ReporteInformeService reporteInformeService) {
		this.reporteInformeService = reporteInformeService;
	}
	
}
