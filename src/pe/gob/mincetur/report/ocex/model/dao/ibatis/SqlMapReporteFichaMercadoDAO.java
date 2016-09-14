package pe.gob.mincetur.report.ocex.model.dao.ibatis;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.report.ocex.dto.ReporteFichaMercadoDto;
import pe.gob.mincetur.report.ocex.model.dao.ReporteFichaMercadoDAO;

public class SqlMapReporteFichaMercadoDAO extends SqlMapClientDaoSupport implements ReporteFichaMercadoDAO{

	@Override
	public ReporteFichaMercadoDto obtenerReporteFichaMercado(ReporteFichaMercadoDto params){
		return (ReporteFichaMercadoDto)getSqlMapClientTemplate().queryForObject("reporteFichaMercado.getReporteFichaMercado", params);
	}
	
}
