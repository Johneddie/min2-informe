package pe.gob.mincetur.report.ocex.model.dao.ibatis;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.report.ocex.dto.ReporteAtencionConsultaDto;
import pe.gob.mincetur.report.ocex.dto.ReporteInformeGestionDto;
import pe.gob.mincetur.report.ocex.model.dao.ReporteAtencionConsultaDAO;

@SuppressWarnings("unchecked")
public class SqlMapReporteAtencionConsultaDAO extends SqlMapClientDaoSupport implements ReporteAtencionConsultaDAO{
	
	@Override
	public List<ReporteAtencionConsultaDto> listarReporteAtencionConsulta(ReporteInformeGestionDto params){
		return (List<ReporteAtencionConsultaDto>)getSqlMapClientTemplate().queryForList("reporteAtencionConsulta.lstReporteAtencionConsulta", params);
	}
	
}
