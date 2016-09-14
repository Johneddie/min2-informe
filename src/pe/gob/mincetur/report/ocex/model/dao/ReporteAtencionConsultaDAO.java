package pe.gob.mincetur.report.ocex.model.dao;

import java.util.List;

import pe.gob.mincetur.report.ocex.dto.ReporteAtencionConsultaDto;
import pe.gob.mincetur.report.ocex.dto.ReporteInformeGestionDto;

public interface ReporteAtencionConsultaDAO {

	List<ReporteAtencionConsultaDto> listarReporteAtencionConsulta(ReporteInformeGestionDto params);
	
	ReporteAtencionConsultaDto obtenerReporteAtencionConsulta(ReporteAtencionConsultaDto params);

}
