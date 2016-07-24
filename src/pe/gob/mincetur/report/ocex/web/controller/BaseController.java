package pe.gob.mincetur.report.ocex.web.controller;

import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class BaseController extends MultiActionController {
	
	protected String jsonView;
	protected String paginaError;
	
	public String getJsonView() {
		return jsonView;
	}

	public void setJsonView(String jsonView) {
		this.jsonView = jsonView;
	}


	public String getPaginaError() {
		return paginaError;
	}

	public void setPaginaError(String paginaError) {
		this.paginaError = paginaError;
	}
	

}
