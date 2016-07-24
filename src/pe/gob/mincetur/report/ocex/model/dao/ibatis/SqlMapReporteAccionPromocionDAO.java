package pe.gob.mincetur.report.ocex.model.dao.ibatis;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.report.ocex.dto.ReporteAccionPromocionDto;
import pe.gob.mincetur.report.ocex.dto.ReporteInformeGestionDto;
import pe.gob.mincetur.report.ocex.model.dao.ReporteAccionPromocionDAO;

@SuppressWarnings("unchecked")
public class SqlMapReporteAccionPromocionDAO extends SqlMapClientDaoSupport implements ReporteAccionPromocionDAO{
	
	@Override
	public List<ReporteAccionPromocionDto> listarReporteAccionPromocion(ReporteInformeGestionDto params){
		return (List<ReporteAccionPromocionDto>)getSqlMapClientTemplate().queryForList("reporteAccionPromocion.lstReporteAccionPromocion", params);
	}
	
}
