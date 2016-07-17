package pe.gob.mincetur.informe.model.dao;

import java.util.List;

import pe.gob.mincetur.informe.bean.ReporteAtencionConsulta;
import pe.gob.mincetur.informe.bean.ReporteInformeGestion;

public interface ReporteAtencionConsultaDAO {

	List<ReporteAtencionConsulta> listarReporteAtencionConsulta(ReporteInformeGestion params);

}
