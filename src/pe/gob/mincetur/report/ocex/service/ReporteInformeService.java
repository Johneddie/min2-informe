package pe.gob.mincetur.report.ocex.service;

import java.util.Map;

public interface ReporteInformeService {

	Map<String,Object> obtenerReporteInformeGestion(Integer idInformeGestion);
	Map<String,Object> obtenerReporteInformeActividad(Integer idInformeActividad);
	Map<String,Object> obtenerReporteAlertaModificacion(Integer idAlertaModificacion, Integer idOcex);
	Map<String,Object> obtenerReporteAccionPromocion(Integer idAccionPromocion, Integer idOcex);
	Map<String,Object> obtenerReporteAlertaParticipacion(Integer idAlertaParticipacion, Integer idOcex);
	Map<String,Object> obtenerReporteFichaMercado(Integer idFichaMercado, Integer idOcex);
	Map<String,Object> obtenerReporteAtencionConsulta(Integer idAtencionConsulta, Integer idOcex);
	Map<String,Object> obtenerReportePerfilInversionista(Integer idPerfilInversionista, Integer idOcex);
	
}
