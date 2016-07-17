package pe.gob.mincetur.informe.model.dao;

import java.util.List;

import pe.gob.mincetur.informe.bean.ReporteActividad;
import pe.gob.mincetur.informe.bean.ReporteInformeGestion;

public interface ReporteActividadDAO {

	List<ReporteActividad> listarReporteActividad(ReporteInformeGestion params);
	
}
