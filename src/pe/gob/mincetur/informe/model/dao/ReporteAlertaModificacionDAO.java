package pe.gob.mincetur.informe.model.dao;

import java.util.List;

import pe.gob.mincetur.informe.bean.ReporteAlertaModificacion;
import pe.gob.mincetur.informe.bean.ReporteInformeGestion;


public interface ReporteAlertaModificacionDAO {

	List<ReporteAlertaModificacion> listarReporteAlertaModificacion(ReporteInformeGestion params);

}
