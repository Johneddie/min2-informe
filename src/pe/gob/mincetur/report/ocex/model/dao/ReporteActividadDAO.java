package pe.gob.mincetur.report.ocex.model.dao;

import java.util.List;

import pe.gob.mincetur.report.ocex.dto.ReporteActividadDto;
import pe.gob.mincetur.report.ocex.dto.ReporteInformeGestionDto;

public interface ReporteActividadDAO {

	List<ReporteActividadDto> listarReporteActividad(ReporteInformeGestionDto params);
	
}
