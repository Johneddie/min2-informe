package pe.gob.mincetur.report.ocex.service;

import java.util.Map;

public interface ReporteInformeService {

	Map<String,Object> obtenerReporteInformeGestion(Integer idInformeGestion);
	Map<String,Object> obtenerReporteInformeActividad(Integer idInformeActividad);
	
}
