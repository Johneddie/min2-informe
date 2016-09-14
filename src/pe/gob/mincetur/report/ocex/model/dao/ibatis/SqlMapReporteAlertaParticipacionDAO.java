package pe.gob.mincetur.report.ocex.model.dao.ibatis;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.report.ocex.dto.ReporteAlertaParticipacionDto;
import pe.gob.mincetur.report.ocex.model.dao.ReporteAlertaParticipacionDAO;

public class SqlMapReporteAlertaParticipacionDAO extends SqlMapClientDaoSupport implements ReporteAlertaParticipacionDAO{
	
	@Override
	public ReporteAlertaParticipacionDto obtenerReporteAlertaParticipacion(ReporteAlertaParticipacionDto params){
		return (ReporteAlertaParticipacionDto)getSqlMapClientTemplate().queryForObject("reporteAlertaParticipacion.getReporteAlertaParticipacion", params);
	}
	
}
