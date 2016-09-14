package pe.gob.mincetur.report.ocex.model.dao.ibatis;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.report.ocex.dto.ReportePerfilInversionistaDto;
import pe.gob.mincetur.report.ocex.model.dao.ReportePerfilInversionistaDAO;

public class SqlMapReportePerfilInversionistaDAO extends SqlMapClientDaoSupport implements ReportePerfilInversionistaDAO{

	@Override
	public ReportePerfilInversionistaDto obtenerReportePerfilInversionista(ReportePerfilInversionistaDto params){
		return (ReportePerfilInversionistaDto)getSqlMapClientTemplate().queryForObject("reportePerfilInversionista.getReportePerfilInversionista", params);
	}
	
}
