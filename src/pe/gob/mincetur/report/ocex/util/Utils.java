package pe.gob.mincetur.report.ocex.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class Utils {

	public final static String convertDateToWords(Date dteFecha){
		String strFecha = null;
		if(dteFecha!=null){
			SimpleDateFormat formateador = new SimpleDateFormat("dd 'de' MMMM 'del' yyyy", new Locale("es"));
			strFecha = formateador.format(dteFecha);
		}
		return strFecha;
	}

	
}
