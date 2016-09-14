package pe.gob.mincetur.report.ocex.model.dao;

import java.util.List;

import pe.gob.mincetur.report.ocex.dto.ReporteAccionPromocionDto;
import pe.gob.mincetur.report.ocex.dto.ReporteInformeGestionDto;

public interface ReporteAccionPromocionDAO {

	List<ReporteAccionPromocionDto> listarReporteAccionPromocion(ReporteInformeGestionDto params);
	ReporteAccionPromocionDto obtenerReporteAccionPromocion(ReporteAccionPromocionDto params);

}
