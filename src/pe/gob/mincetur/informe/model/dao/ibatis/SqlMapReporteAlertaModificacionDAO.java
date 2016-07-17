package pe.gob.mincetur.informe.model.dao.ibatis;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import pe.gob.mincetur.informe.bean.ReporteAlertaModificacion;
import pe.gob.mincetur.informe.bean.ReporteInformeGestion;
import pe.gob.mincetur.informe.model.dao.ReporteAlertaModificacionDAO;

@SuppressWarnings("unchecked")
public class SqlMapReporteAlertaModificacionDAO extends SqlMapClientDaoSupport implements ReporteAlertaModificacionDAO{
	
	@Override
	public List<ReporteAlertaModificacion> listarReporteAlertaModificacion(ReporteInformeGestion params){
		return (List<ReporteAlertaModificacion>)getSqlMapClientTemplate().queryForList("reporteAlertaModificacion.lstReporteAlertaModificacion", params);
	}
	
}
