package pe.gob.mincetur.report.ocex.model.dao;

import java.util.List;

import pe.gob.mincetur.report.ocex.dto.ReportePrecioProductoDto;

public interface ReportePrecioProductoDAO {

	List<ReportePrecioProductoDto> listarReportePrecioProductoByFicha(ReportePrecioProductoDto params);

}
