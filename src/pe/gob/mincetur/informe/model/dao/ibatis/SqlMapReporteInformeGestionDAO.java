package pe.gob.mincetur.informe.model.dao.ibatis;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.informe.bean.ReporteInformeGestion;
import pe.gob.mincetur.informe.model.dao.ReporteInformeGestionDAO;

public class SqlMapReporteInformeGestionDAO extends SqlMapClientDaoSupport implements ReporteInformeGestionDAO{

	@Override
	public ReporteInformeGestion obtenerReporteInformeGestion(ReporteInformeGestion params){
		return (ReporteInformeGestion)getSqlMapClientTemplate().queryForObject("reporteInformeGestion.getReporteInformeGestion", params);
	}
	
}
