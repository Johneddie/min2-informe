package pe.gob.mincetur.informe.model.dao.ibatis;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.informe.bean.ReporteActividad;
import pe.gob.mincetur.informe.bean.ReporteInformeGestion;
import pe.gob.mincetur.informe.model.dao.ReporteActividadDAO;

@SuppressWarnings("unchecked")
public class SqlMapReporteActividadDAO extends SqlMapClientDaoSupport implements ReporteActividadDAO{
	
	@Override
	public List<ReporteActividad> listarReporteActividad(ReporteInformeGestion params){
		return (List<ReporteActividad>)getSqlMapClientTemplate().queryForList("reporteActividad.lstReporteActividad", params);
	}
	
}
