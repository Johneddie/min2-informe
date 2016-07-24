package pe.gob.mincetur.report.ocex.model.dao;

import java.util.List;

import pe.gob.mincetur.report.ocex.dto.ReporteAlertaModificacionDto;
import pe.gob.mincetur.report.ocex.dto.ReporteInformeGestionDto;


public interface ReporteAlertaModificacionDAO {

	List<ReporteAlertaModificacionDto> listarReporteAlertaModificacion(ReporteInformeGestionDto params);

}
