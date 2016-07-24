package pe.gob.mincetur.report.ocex.model.dao.ibatis;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.report.ocex.dto.ReporteActividadDto;
import pe.gob.mincetur.report.ocex.dto.ReporteInformeGestionDto;
import pe.gob.mincetur.report.ocex.model.dao.ReporteActividadDAO;

@SuppressWarnings("unchecked")
public class SqlMapReporteActividadDAO extends SqlMapClientDaoSupport implements ReporteActividadDAO{
	
	@Override
	public List<ReporteActividadDto> listarReporteActividad(ReporteInformeGestionDto params){
		return (List<ReporteActividadDto>)getSqlMapClientTemplate().queryForList("reporteActividad.lstReporteActividad", params);
	}
	
}
