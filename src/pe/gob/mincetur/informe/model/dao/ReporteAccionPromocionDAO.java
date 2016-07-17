package pe.gob.mincetur.informe.model.dao;

import java.util.List;

import pe.gob.mincetur.informe.bean.ReporteAccionPromocion;
import pe.gob.mincetur.informe.bean.ReporteInformeGestion;

public interface ReporteAccionPromocionDAO {

	List<ReporteAccionPromocion> listarReporteAccionPromocion(ReporteInformeGestion params);

}
