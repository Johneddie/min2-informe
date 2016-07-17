package pe.gob.mincetur.informe.model.dao.ibatis;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.informe.bean.ReporteAccionPromocion;
import pe.gob.mincetur.informe.bean.ReporteInformeGestion;
import pe.gob.mincetur.informe.model.dao.ReporteAccionPromocionDAO;

@SuppressWarnings("unchecked")
public class SqlMapReporteAccionPromocionDAO extends SqlMapClientDaoSupport implements ReporteAccionPromocionDAO{
	
	@Override
	public List<ReporteAccionPromocion> listarReporteAccionPromocion(ReporteInformeGestion params){
		return (List<ReporteAccionPromocion>)getSqlMapClientTemplate().queryForList("reporteAccionPromocion.lstReporteAccionPromocion", params);
	}
	
}
