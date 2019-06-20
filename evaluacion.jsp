<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page language="java" import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta charset="utf-8" />
<title>Dependencia</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="Pragma" CONTENT="no-cache">

<link href="/a/js/libs/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/a/js/libs/bootstrap/3.3.2/plugins/font-awesome/4.4.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="/a/js/libs/bootstrap/3.3.2/plugins/bootstrap-datetimepicker-4.14.30/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">

<link href="/a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.19/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
<link href="/a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.19/extensions/Select/css/select.bootstrap.min.css" rel="stylesheet" />
<link href="/a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.19/extensions/Responsive/css/responsive.dataTables.css" rel="stylesheet" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lte IE 9]>
	      <script src="../a/js/libs/bootstrap/3.3.2/plugins/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="../a/js/libs/bootstrap/3.3.2/plugins/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

<style type="text/css">
.blockUI h1 {
	font-size: 14px !important;
	font-weight: bold !important;
}

.divCabecera{
	display: flex;
	justify-content: space-between;
	padding-bottom: 5px;
}
.mayusculas {
	text-transform: uppercase
}



.font-weight-normal {
	font-weight: normal;
	padding-top: 7px;
    margin-bottom: 0;
}
</style>

</head>
<body>

	
	<div class="container">
		
			<div id="divPantallaPeriodoUnidad">
			
				<div class="row" ><div class="col-md-12 divCabecera"><h3>Registro de Evaluación de Desempeño </h3></div></div>
				
				<!-- Búsqueda -->
				<form id="frmBuscarUnidad" name="frmBuscarUnidad" class="form-horizontal" role="form">
				<div id="" class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title"><i class="fa fa-briefcase" aria-hidden="true"></i> Búsqueda de Unidades a Evaluar</h4>
					</div>
					<div class="panel-body">
						<div class="row form-group">
							<div class="col-md-3 control-label">
								<label>Evaluador:</label>
							</div>
							<div class="col-sm-6" id="divNombreEvaluador">
								<label class="font-weight-normal">${evaluador}</label>
							</div>
						</div>
						<hr>
						<div class="row form-group">
							<div class="col-md-3 control-label">
								<label>A&ntilde;o:</label>
							</div>
							<div class="col-sm-2">
								<select class="form-control" id="codPeriodo" name="codPeriodo"
									disabled>
									<option value="${periodoProcesar.codPeriodo}">${periodoProcesar.codPeriodo}</option>
								</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-3 control-label">
								<label>Unidad Organizacional:</label>
							</div>
							<div class="col-md-8">
								<select class="form-control" id="codUnidadOrganizacional"
									name="codUnidadOrganizacional">
									<option value="">[--Seleccione--]</option>
									<c:forEach items="${listaUnidadesOrganizacionales}" var="uuoo">
										<option value="${uuoo.codUnidadOrganizacional}">${uuoo.codUnidadOrganizacional}
											- ${uuoo.desUnidadOrganizacional}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="row">&nbsp;</div>
						<div class="row">
							<div class="col-md-12">
								<div class="text-center">
									<button type="button" class="btn btn-primary" id="botonBuscar"
										name="botonBuscar" onclick="javascript:clickbtnBuscar();">
										<i class="fa fa-search" aria-hidden="true"></i> Buscar
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
			

			<div id="evaluadosContainer" style="display: none;">
			
				<div class="row" ><div class="col-md-12 divCabecera"><h3>Registro de Evaluación de Desempeño</h3><a href="javascript:volver()" class="btn btn-default"><i class="fa fa-arrow-left" aria-hidden="true"></i> Regresar</a></div></div>
				
				<!-- Evaluador -->
				<form id="frmEvaluador" name="frmEvaluador" class="form-horizontal" role="form">
				<div id="divPantallaSeleccion" class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title"><i class="fa fa-briefcase" aria-hidden="true"></i> Datos del Evaluador</h4>
					</div>
					<div class="panel-body">
						<div class="row ">
							<div class="col-md-3 control-label">
								<label>A&ntilde;o:</label>
							</div>
							<div class="col-sm-9">
								<label class="font-weight-normal">${periodoProcesar.codPeriodo}</label>
							</div>
						</div>
						<div class="row ">
							<div class="col-md-3 control-label">
								<label>Evaluador:</label>
							</div>
							<div class="col-sm-9" id="divNombreEvaluador">
								<label class="font-weight-normal" id="divEvaluador">${evaluador}</label>
							</div>
						</div>
						<div class="row ">
							<div class="col-md-3 control-label">
								<label>Unidad Orgánica/Órgano:</label>
							</div>
							<div class="col-sm-9" id="divNombreEvaluador">
								<label class="font-weight-normal" id="divUnidadOrganizacional"></label>
							</div>
						</div>
						<div class="row ">
							<div class="col-md-3 control-label">
								<label>Rol:</label>
							</div>
							<div class="col-sm-9" id="divNombreEvaluador">
								<label class="font-weight-normal" id="divTipoEvaluador">Evaluador</label>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 control-label">
								<label>Nro. total de personas a evaluar:</label>
							</div>
							<div class="col-sm-9" id="divNombreEvaluador">
								<label class="font-weight-normal" id="divTotalPersona"></label>
							</div>
						</div>
					</div>
				</div>
				</form>
				
				
				<!-- Evaluado -->
				<div id="divPanelEvaluado" class="panel panel-primary" style="display: none;">
					<div class="panel-heading">
						<h4 class="panel-title">Datos del Evaluado</h4>
					</div>
					<div class="panel-body">
						<div class="row ">
							<div class="col-md-3 text-right">
								<label>Registro:</label>
							</div>
							<div class="col-sm-9" id="divNombreEvaluador">
								<label class="font-weight-normal" id="lblCodEvaluado"></label>
							</div>
						</div>
						<div class="row ">
							<div class="col-md-3 text-right">
								<label>Nombres y Apellidos:</label>
							</div>
							<div class="col-sm-9" id="divNombreEvaluador">
								<label class="font-weight-normal" id="lblNombresEvaluado"></label>
							</div>
						</div>
						<div class="row ">
							<div class="col-md-3 text-right">
								<label>Unidad Orgánica/Órgano:</label>
							</div>
							<div class="col-sm-9" id="divNombreEvaluador">
								<label class="font-weight-normal" id="lblUuooEvaluado"></label>
							</div>
						</div>
						<div class="row ">
							<div class="col-md-3 text-right">
								<label>Categoría/Cargo:</label>
							</div>
							<div class="col-sm-9" id="divNombreEvaluador">
								<label class="font-weight-normal" id="lblCategoriaEvaluado"></label>
							</div>
						</div>

					</div>
				</div>
				
				<!-- Evaluados -->
				<div class="panel panel-primary" id="divListaEvaluados">
					<div class="panel-heading">
						<h4 class="panel-title"><i class="fa fa-list-alt" aria-hidden="true"></i> Relación de trabajadores a cargo</h4>
					</div>
					<div class="panel-body">
						<table id="tabEvaluados" class="table table-striped table-bordered table-condensed" cellspacing="0" width="100%">
							<thead>
								<tr>
									<th>Reg.</th>
									<th>Apellidos y Nombres</th>
									<th>Categoría/Cargo</th>
									<th>Estado</th>
									<th>Fecha de Consulta</th>
									<th>Formato</th>
								</tr>								
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>				
				</div>
				
				<!-- Datos de la comunicación -->
				<div id="divPanelDatosComunicacion" class="panel panel-primary" style="display: none;">
					<div class="panel-heading">
						<h4 class="panel-title">Datos de la Comunicación</h4>
					</div>
					<div class="panel-body">
						<div class="row ">
							<div class="col-md-3 text-right">
								<label>A&ntilde;o:</label>
							</div>
							<div class="col-sm-9">
								<label class="font-weight-normal">${fn:substring(periodoProcesar.codPeriodo, 0, 4)}</label>
							</div>
						</div>
						<div class="row ">
							<div class="col-md-3 text-right">
								<label>Evaluador:</label>
							</div>
							<div class="col-sm-9">
								<label class="font-weight-normal" id="lblDatosComunicaEvaluador">${evaluador}</label>
							</div>
						</div>
						<div class="row ">
							<div class="col-md-3 text-right">
								<label>Evaluado:</label>
							</div>
							<div class="col-sm-9">
								<label class="font-weight-normal" id="lblDatosComunicaEvaluado"></label>
							</div>
						</div>
					</div>
				</div>
				
				<!-- formulario de evaluación -->
				<div class="panel panel-primary" id="divEvaluar" style="display: none;">
					<div class="panel-heading">
						<h4 class="panel-title">Competencias</h4>
					</div>
					<div class="panel-body">
						<form id="formRegistro" method="get">
							<div class="row" >
								<input type="hidden" id="codPeriodoHidden" name="codPeriodoHidden" value="${periodoProcesar.codPeriodo}" />
								<input type="hidden" id="indCondicionActual" name="indCondicionActual" value="" />
								<input type="hidden" id="codPersonalEvaluado" name="codPersonalEvaluado" value="" />
								<input type="hidden" id="codUnidadOrganizacionalPersonal" name="codUnidadOrganizacionalPersonal" value="" />
								<input type="hidden" id="codUnidadOrganizacionalEvalua" name="codUnidadOrganizacionalEvalua" value="" />
								<input type="hidden" id="codComportamientosList" name="codComportamientosList" value="" />
								<input type="hidden" id="codCompetenciasList" name="codCompetenciasList" value="" />	
								<input type="hidden" id="existeRevisor" name="existeRevisor" value="" />
								<input type="hidden" id="codUuoo" name="codUuoo" value="" />
								<div class="col-md-12" id="divDetalleEvaluar"></div>
							</div>
							<div class='row'></div>	
							<div class="row" id="botones">
								<div class="col-md-12">
									<div class="text-center">
										<button type="button" class="btn btn-primary" id="botonGrabar"
											name="botonBuscar" onclick="">
											<i class="fa fa-save" aria-hidden="true"></i> Grabar
										</button>
										<button type="button" class="btn btn-danger" id="botonBuscar"
											name="botonBuscar" onclick="javascript:volver();">
											<i class="fa fa-times" aria-hidden="true"></i> Cancelar
										</button>
									</div>
								</div>
							</div>
						</form>
					</div>			
				</div>
			
			</div><!-- evaluadosContainer -->
	</div><!-- container -->

	<jsp:include page="footer.jsp" />

	<script src="/a/js/libs/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="/a/js/libs/bootbox/4.4.0/bootbox.js" language="JavaScript"></script>
	<script src="/a/js/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="/a/js/bootstrap/3.2.0/js/ie10-viewport-bug-workaround.js"></script>

	<script src="/a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.19/media/js/jquery.dataTables.min.js"></script>
	<script src="/a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.19/media/js/dataTables.bootstrap.min.js"></script>
	<script src="/a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.19/extensions/Select/js/dataTables.select.min.js"></script>
	<script src="/a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.19/extensions/Responsive/js/dataTables.responsive.js"></script>

	<script src="/a/js/libs/jquery/plugins/validation/1.13.1/jquery.validate.js"></script>
	<script src="/a/js/libs/jquery/plugins/validation/1.13.1/additional-methods.js"></script>
	<script src="/a/js/bootstrap/3.2.0/js/jquery.blockUI.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.json.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/evaluacion-registro.js"></script>
	<script>
		var CONTEXTO_APP = "${pageContext.request.contextPath}";
		var tabEvaluados1="";
		var nivelDetalle=0;
		
		//variables 
		var competenciasArray = null;
	</script>
	<script>
	
		$(document).ready(function() {
			tabEvaluados1=$("#divListaEvaluados").html();
			
			$.ajaxSetup({ cache: false });
                    $(document).ajaxStart(function() {
                        $.blockUI({
                           boxed: !0,
                            baseZ: 2000
                        })
                    }).ajaxStop($.unblockUI);
                    bootbox.setLocale("es");
                    
                    
        	//inicializarComponentes();
			
		});
		var volver = function() {			
			if(nivelDetalle==3)
			{
				$("#divPantallaSeleccion").css("display", "block");
	        	$("#divPanelEvaluado").css("display", "none");
	        	$("#divListaEvaluados").css("display", "block");
	        	$("#divEvaluar").css("display", "none");
	        	$("#divPanelDatosComunicacion").css("display", "none");
	    		nivelDetalle=1;	    		
			}else if(nivelDetalle==2){
				$("#divListaEvaluados").css("display", "block");
	    		$("#divPanelEvaluado").css("display", "none");
	    		nivelDetalle=1;		    					
			}else if(nivelDetalle==1){
				$("#divPantallaPeriodoUnidad").css("display", "block");
				$("#evaluadosContainer").css("display", "none");
				nivelDetalle=0;
			}		
		}
		
	</script>


</body>
</html>
