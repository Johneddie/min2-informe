package pe.gob.mincetur.report.ocex.model.dao.ibatis;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.report.ocex.dto.ReportePrecioProductoDto;
import pe.gob.mincetur.report.ocex.model.dao.ReportePrecioProductoDAO;

@SuppressWarnings("unchecked")
public class SqlMapReportePrecioProductoDAO extends SqlMapClientDaoSupport implements ReportePrecioProductoDAO{
	
	@Override
	public List<ReportePrecioProductoDto> listarReportePrecioProductoByFicha(ReportePrecioProductoDto params){
		return (List<ReportePrecioProductoDto>)getSqlMapClientTemplate().queryForList("reportePrecioProducto.lstReportePrecioProductoByFicha", params);
	}
	
}
