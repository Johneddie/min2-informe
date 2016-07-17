package pe.gob.mincetur.informe.model.dao.ibatis;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.informe.bean.ReporteInformeActividad;
import pe.gob.mincetur.informe.model.dao.ReporteInformeActividadDAO;

public class SqlMapReporteInformeActividadDAO extends SqlMapClientDaoSupport implements ReporteInformeActividadDAO{

	@Override
	public ReporteInformeActividad obtenerReporteInformeActividad(ReporteInformeActividad params){
		return (ReporteInformeActividad)getSqlMapClientTemplate().queryForObject("reporteInformeActividad.getReporteInformeActividad", params);
	}
	
}
