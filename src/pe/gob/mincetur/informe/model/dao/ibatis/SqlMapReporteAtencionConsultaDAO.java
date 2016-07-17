package pe.gob.mincetur.informe.model.dao.ibatis;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.informe.bean.ReporteAtencionConsulta;
import pe.gob.mincetur.informe.bean.ReporteInformeGestion;
import pe.gob.mincetur.informe.model.dao.ReporteAtencionConsultaDAO;

@SuppressWarnings("unchecked")
public class SqlMapReporteAtencionConsultaDAO extends SqlMapClientDaoSupport implements ReporteAtencionConsultaDAO{
	
	@Override
	public List<ReporteAtencionConsulta> listarReporteAtencionConsulta(ReporteInformeGestion params){
		return (List<ReporteAtencionConsulta>)getSqlMapClientTemplate().queryForList("reporteAtencionConsulta.lstReporteAtencionConsulta", params);
	}
	
}
