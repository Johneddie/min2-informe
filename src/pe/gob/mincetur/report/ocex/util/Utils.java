package pe.gob.mincetur.report.ocex.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;

public class Utils {

	public final static String convertDateToWords(Date dteFecha){
		String strFecha = null;
		if(dteFecha!=null){
			SimpleDateFormat formateador = new SimpleDateFormat("dd 'de' MMMM 'del' yyyy", new Locale("es"));
			strFecha = formateador.format(dteFecha);
		}
		return strFecha;
	}
	
	public final static String convertDateToText(Date dteFecha){
		String strFecha = null;
		if(dteFecha!=null){
			SimpleDateFormat formateador = new SimpleDateFormat("dd/MM/yyyy");
			strFecha = formateador.format(dteFecha);
		}
		return strFecha;
	}
	
	public final static Map<String, Object> obtenerNombreAnio(Properties propiedades){
		Map<String, Object> hmNombreAnio = new HashMap<String, Object>();
		hmNombreAnio.put("nomDecenio", propiedades.getProperty("reporte.nomDecenio"));
		hmNombreAnio.put("nomAnio", propiedades.getProperty("reporte.nomAnio"));
		return hmNombreAnio;
	}
	
	public final static String obtenerDesPeriodoTrim(Integer numPeriodoTrim){
		String strPeriodoTrim = null;
		if(numPeriodoTrim != null){
			strPeriodoTrim = String.valueOf(numPeriodoTrim);
			strPeriodoTrim = strPeriodoTrim.substring(0, 1);
			strPeriodoTrim = Constantes.mapPeriodoTrim.get(strPeriodoTrim) + " Trimestre";
		}
		return strPeriodoTrim;
	}
	
}
