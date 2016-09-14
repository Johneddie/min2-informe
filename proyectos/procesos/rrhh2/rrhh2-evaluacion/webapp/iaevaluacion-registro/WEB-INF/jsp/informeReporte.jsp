<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Reportes Test</title>	
	<script language="JavaScript" type="text/javascript">
		var CONTEXTO_APP = "${pageContext.request.contextPath}";
	</script> 
	<script src="../a/js/libs/jquery/1.11.2/jquery.min.js"></script> 
	
	<script src="../a/js/libs/bootstrap/3.3.2/js/bootstrap.min.js"></script>		
	<script src="../a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.7/media/js/jquery.dataTables.min.js" type="text/javascript" language="javascript" ></script>    
	<script src="../a/js/bootstrap/3.2.0/js/jquery.blockUI.js" type="text/javascript"></script>

	<link href="../a/js/libs/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
	<link href="../a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.7/media/css/jquery.dataTables.css" type="text/css" rel="stylesheet" >
	<link href="../a/js/libs/bootstrap/3.3.2/plugins/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" >
	
	<!--[if lt IE 9]>
	      <script src="/a/js/libs/bootstrap/3.3.2/plugins/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="/a/js/libs/bootstrap/3.3.2/plugins/respond/1.4.2/respond.min.js"></script>
	 <![endif]-->
	
 
	<style>
		/*bordes de paneles*/
		.border-line {
			padding: 6px 6px !important;
			border: 1px solid #337ab7;
			border-radius: 4px;
			min-height: 200px;
		}
		
		.panel-scroll-2 {
			max-height: 250px;
			min-height: 0px;
			overflow-y: auto;
		}
		
		/*columnas fijas*/
		#tblEvaluados {
		    table-layout: fixed;
		    word-wrap: break-word;
		}
		
		/*table*/
		table.dataTable thead th {
			padding-bottom:3px !important;
			padding-top:3px !important;
			padding-left:3px !important;
			padding-right:3px !important;
		
			border-collapse: collapse;
		}
		
		table.dataTable tbody tr:hover {
			background: CornflowerBlue !important;
		}
		
		table.dataTable tbody tr {
			cursor: pointer;
		}
		
		table.dataTable tbody td {
			padding-bottom:3px !important;
			padding-top:3px !important;
		

		}
		
		
		/*legend*/
		legend.legend-border {
	        font-size: 1em !important;
	        text-align: left !important;
	        width:auto;
	        padding:0 10px;
	        border-bottom:none;
	        color: #131F42;
	    }
	    fieldset.legend-border {
		    border: 1px solid #337AB7 !important;
		    padding: 0 1.4em 1.4em 1.4em !important;
		    margin: 0 0 1.5em 0 !important;
		    -webkit-border-radius: 8px;
			-moz-border-radius: 8px;
			border-radius: 8px;
		}
		/*end legend*/
		
		/*IE8*/
		.input-group-addon {
			padding-bottom:0px !important;
			padding-top:0px !important;
			padding-left: 6px !important;
			padding-right: 6px !important;
		}
		
		.form-control {
			font-size:12px !important;
			height:24px !important;
			padding-top:3px !important;
			padding-bottom:3px !important;
			padding-left:5px !important;
			padding-right:5px !important;
		}
		
		.btn{
			padding-top:3px !important;
			padding-bottom:3px !important;
			font-size:12px !important;
		}
		
		body {
				font-size: 12px;
		}

		/*IE8 - end*/
		
		/*button*/
		
		.btn-padding{
			padding: 10px 10px !important;
		}
		/*button end*/
		
		
		#inpCodUnidad{ 
			text-transform: uppercase; 
		}
		
		
		/*file*/
		.btn-file {
		    position: relative;
		    overflow: hidden;
		}
		.btn-file input[type=file] {
		    position: absolute;
		    top: 0;
		    right: 0;
		    min-width: 100%;
		    min-height: 100%;
		    font-size: 100px;
		    text-align: right;
		    filter: alpha(opacity=0);
		    opacity: 0;
		    outline: none;
		    background: white;
		    cursor: inherit;
		    display: block;
		}
		
		/*labels*/
		.lbl-title {
			font-size: 1.2em;
		}
		
		.lbl-name {
			padding-top:3px !important;
		}
		
		
	</style>
</head>
<body>
	<div id="contenderoPrincipal" class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="panel panel-primary">
					<div class="panel-heading text-center lbl-title">
						<b>Informes</b>
					</div>	  	
				</div>
			</div>	
		</div>
		
		<div class="row">
			<div class="col-md-12">
		        <div class="panel panel-default">
		            <div class="panel-body">
		            
		            	<div class="row">
			            	<div class="col-md-12">
								<div class="col-md-11">
									<fieldset class="legend-border">
										<legend class="legend-border">Exportar Registros</legend>
										<div class="row content-box">
											<div class="form-group col-md-12">
												<div class="col-md-8 lbl-name">Informe de gestión: </div>
												<div class="col-md-3"><button type="button" class="btn btn-primary btn-padding" id="btnExportarInfGes"><i class="fa fa-file-pdf-o"></i> Exportar</button></div>
											</div>
											<div class="form-group col-md-12">
												<div class="col-md-8 lbl-name">Informe de actividad: </div>
												<div class="col-md-3"><button type="button" class="btn btn-primary btn-padding" id="btnExportarInfAct"><i class="fa fa-file-pdf-o"></i> Exportar</button></div>
											</div>
											<div class="form-group col-md-12">
												<div class="col-md-8 lbl-name">Alerta de Modificación: </div>
												<div class="col-md-3"><button type="button" class="btn btn-primary btn-padding" id="btnExportarAlertaModificacion"><i class="fa fa-file-pdf-o"></i> Exportar</button></div>
											</div>
											<div class="form-group col-md-12">
												<div class="col-md-8 lbl-name">Acción de Promoción: </div>
												<div class="col-md-3"><button type="button" class="btn btn-primary btn-padding" id="btnExportarAccionPromocion"><i class="fa fa-file-pdf-o"></i> Exportar</button></div>
											</div>
											<div class="form-group col-md-12">
												<div class="col-md-8 lbl-name">Alerta de Participación: </div>
												<div class="col-md-3"><button type="button" class="btn btn-primary btn-padding" id="btnExportarAlertaParticipacion"><i class="fa fa-file-pdf-o"></i> Exportar</button></div>
											</div>
											<div class="form-group col-md-12">
												<div class="col-md-8 lbl-name">Ficha de Mercado: </div>
												<div class="col-md-3"><button type="button" class="btn btn-primary btn-padding" id="btnExportarFichaMercado"><i class="fa fa-file-pdf-o"></i> Exportar</button></div>
											</div>
											<div class="form-group col-md-12">
												<div class="col-md-8 lbl-name">Atención de Consulta: </div>
												<div class="col-md-3"><button type="button" class="btn btn-primary btn-padding" id="btnExportarAtencionConsulta"><i class="fa fa-file-pdf-o"></i> Exportar</button></div>
											</div>
											<div class="form-group col-md-12">
												<div class="col-md-8 lbl-name">Perfil de Inversionista: </div>
												<div class="col-md-3"><button type="button" class="btn btn-primary btn-padding" id="btnExportarPerfilInversionista"><i class="fa fa-file-pdf-o"></i> Exportar</button></div>
											</div>

										</div>
									</fieldset>
								</div>
							</div>
						</div>
						
					</div>
		        </div><!-- end panel -->
			</div>
		</div><!-- end row -->
		
	</div><!-- end container -->
	
	
		    
	<form action="${pageContext.request.contextPath}/InformeReporte.htm"  method="post" name="frmExportar" target="_self">
		<input type="hidden" name="idOcex" value="">
		<input type="hidden" name="idInformeGestion" value="">
		<input type="hidden" name="idInformeActividad" value="">
		<input type="hidden" name="numPeriodoTrim" value="">
		<input type="hidden" name="action" value=""/>
		
		<input type="hidden" name="idAlertaModificacion" value="">
		<input type="hidden" name="idAccionPromocion" value="">
		<input type="hidden" name="idAlertaParticipacion" value="">
		<input type="hidden" name="idFichaMercado" value="">
		<input type="hidden" name="idAtencionConsulta" value="">
		<input type="hidden" name="idPerfilInversionista" value="">
	</form>
	
	<script src="../a/js/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="../a/js/libs/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="../a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.7/media/js/jquery.dataTables.min.js" type="text/javascript" ></script>    
	<script src="../a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.7/extensions/Responsive/js/dataTables.responsive.js" type="text/javascript" ></script>
	<script src="../a/js/libs/bootbox/4.4.0/bootbox.js"></script>
    <script>
    
    
    $(function() {
    	settings();
    	$(document).on("click", "#btnExportarInfGes", function(){ exportarInfGes(this); });
    	$(document).on("click", "#btnExportarInfAct", function(){ exportarInfAct(this); });
    	$(document).on("click", "#btnExportarAlertaModificacion", function(){ exportarAlertaModificacion(this); });
    	$(document).on("click", "#btnExportarAccionPromocion", function(){ exportarAccionPromocion(this); });
    	$(document).on("click", "#btnExportarAlertaParticipacion", function(){ exportarAlertaParticipacion(this); });
    	$(document).on("click", "#btnExportarAtencionConsulta", function(){ exportarAtencionConsulta(this); });
    	$(document).on("click", "#btnExportarPerfilInversionista", function(){ exportarPerfilInversionista(this); });
    	$(document).on("click", "#btnExportarFichaMercado", function(){ exportarFichaMercado(this); });
    	
    });
    
	var settings = function(){
		$.ajaxSetup({ scriptCharset: "UTF-8" , contentType: "application/json; charset=utf-8"});
		jQuery.support.cors = true;
		$(document).ajaxStart($.blockUI).ajaxStop($.unblockUI);
				
	};
    
	function exportarInfGes(element){
		document.frmExportar.idInformeGestion.value = "1";
		//document.frmExportar.idOcex.value = "01";
		//document.frmExportar.numPeriodoTrim.value = "201603";
		document.frmExportar.action.value = "descargarInformeGestionPdf";
		document.frmExportar.submit();
	}
	
	function exportarInfAct(element){
		document.frmExportar.idInformeActividad.value = "1";
		//document.frmExportar.idOcex.value = "01";
		//document.frmExportar.numPeriodoTrim.value = "201603";
		document.frmExportar.action.value = "descargarInformeActividadPdf";
		document.frmExportar.submit();
	}
	function exportarAlertaModificacion(element){
		document.frmExportar.idAlertaModificacion.value = "1";
		document.frmExportar.idOcex.value = "1";
		document.frmExportar.action.value = "descargarAlertaModificacionPdf";
		document.frmExportar.submit();
	}
	function exportarAccionPromocion(element){
		document.frmExportar.idAccionPromocion.value = "1";
		document.frmExportar.idOcex.value = "1";
		document.frmExportar.action.value = "descargarAccionPromocionPdf";
		document.frmExportar.submit();
	}
	function exportarAlertaParticipacion(element){
		document.frmExportar.idAlertaParticipacion.value = "1";
		document.frmExportar.idOcex.value = "1";
		document.frmExportar.action.value = "descargarAlertaParticipacionPdf";
		document.frmExportar.submit();
	}
	function exportarFichaMercado(element){
		document.frmExportar.idFichaMercado.value = "1";
		document.frmExportar.idOcex.value = "1";
		document.frmExportar.action.value = "descargarFichaMercadoPdf";
		document.frmExportar.submit();
	}
	function exportarAtencionConsulta(element){
		document.frmExportar.idAtencionConsulta.value = "1";
		document.frmExportar.idOcex.value = "1";
		document.frmExportar.action.value = "descargarAtencionConsultaPdf";
		document.frmExportar.submit();
	}
	function exportarPerfilInversionista(element){
		document.frmExportar.idPerfilInversionista.value = "1";
		document.frmExportar.idOcex.value = "1";
		document.frmExportar.action.value = "descargarPerfilInversionistaPdf";
		document.frmExportar.submit();
	}

    </script>
	
	
	
</body>
</html>