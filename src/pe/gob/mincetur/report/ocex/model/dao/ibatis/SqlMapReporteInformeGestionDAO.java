package pe.gob.mincetur.report.ocex.model.dao.ibatis;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.report.ocex.dto.ReporteInformeGestionDto;
import pe.gob.mincetur.report.ocex.model.dao.ReporteInformeGestionDAO;

public class SqlMapReporteInformeGestionDAO extends SqlMapClientDaoSupport implements ReporteInformeGestionDAO{

	@Override
	public ReporteInformeGestionDto obtenerReporteInformeGestion(ReporteInformeGestionDto params){
		return (ReporteInformeGestionDto)getSqlMapClientTemplate().queryForObject("reporteInformeGestion.getReporteInformeGestion", params);
	}
	
}
