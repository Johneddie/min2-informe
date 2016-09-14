package pe.gob.mincetur.report.ocex.model.dao.ibatis;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.report.ocex.dto.ReporteAlertaModificacionDto;
import pe.gob.mincetur.report.ocex.dto.ReporteInformeGestionDto;
import pe.gob.mincetur.report.ocex.model.dao.ReporteAlertaModificacionDAO;

@SuppressWarnings("unchecked")
public class SqlMapReporteAlertaModificacionDAO extends SqlMapClientDaoSupport implements ReporteAlertaModificacionDAO{
	
	@Override
	public List<ReporteAlertaModificacionDto> listarReporteAlertaModificacion(ReporteInformeGestionDto params){
		return (List<ReporteAlertaModificacionDto>)getSqlMapClientTemplate().queryForList("reporteAlertaModificacion.lstReporteAlertaModificacion", params);
	}
	
	@Override
	public ReporteAlertaModificacionDto obtenerReporteAlertaModificacion(ReporteAlertaModificacionDto params){
		return (ReporteAlertaModificacionDto)getSqlMapClientTemplate().queryForObject("reporteAlertaModificacion.getReporteAlertaModificacion", params);
	}
	
}
