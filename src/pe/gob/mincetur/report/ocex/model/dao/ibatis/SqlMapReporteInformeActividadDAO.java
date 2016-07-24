package pe.gob.mincetur.report.ocex.model.dao.ibatis;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.report.ocex.dto.ReporteInformeActividadDto;
import pe.gob.mincetur.report.ocex.model.dao.ReporteInformeActividadDAO;

public class SqlMapReporteInformeActividadDAO extends SqlMapClientDaoSupport implements ReporteInformeActividadDAO{

	@Override
	public ReporteInformeActividadDto obtenerReporteInformeActividad(ReporteInformeActividadDto params){
		return (ReporteInformeActividadDto)getSqlMapClientTemplate().queryForObject("reporteInformeActividad.getReporteInformeActividad", params);
	}
	
}
