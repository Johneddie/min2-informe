package pe.gob.mincetur.report.ocex.util;

import java.util.HashMap;
import java.util.Map;

public class Constantes {

	public final static String PERIODO_INICIADO = "I";
	public final static String PERIODO_NUEVO = "N";
	public final static String PERIODO_GENERADO = "G";
	public final static String PERIODO_CERRADO = "C";
	
	public final static String URI_REPORT = "/WEB-INF/reportes/";
	public final static Map<String, String> mapPeriodoTrim;
    static
    {
        mapPeriodoTrim = new HashMap<String, String>();
        mapPeriodoTrim.put("1", "I");
        mapPeriodoTrim.put("2", "II");
        mapPeriodoTrim.put("3", "III");
        mapPeriodoTrim.put("4", "IV");
    }
	
}
