	/**
	* Construye tabla de evaluados según data.
	*/
	var construirGrillaEvaluados = function(data){
		var oTable = $('#tblEvaluados').dataTable();
		oTable.fnDestroy();	
		var tableEvaluados = $('#tblEvaluados').DataTable( {
			"language": {
				"url"		:	"../a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.7/plug-ins/1.10.7/i18n/Spanish.json"
			},
			oLanguage : {				
				sEmptyTable	:	'No existe informaci&oacute;n'
			},
	        "data": data,
	        "ordering"		    : true,	     
			"bScrollAutoCss"	: true,
			"bStateSave"		: false,
			"bAutoWidth"		: false,
			"bScrollCollapse"	: false,
			"searching"         : false,
			"paging"            : false,
			"info"              : false,
	        "columns": [
	    	            {"data": "codPersonal", 				"defaultContent":"", "class":"center"},
	    	            {"data": "desNombreCompleto", 			"defaultContent":"", "class":"left"},
	    	            {"data": "desGrupo", 					"defaultContent":"", "class":"center border-left"},
	    	            {"data": "desCategoria", 				"defaultContent":"", "class":"left"},
	    	            {"data": "estLista", 					"defaultContent":"", "class":"center border-left"},
	    	            {"data": "estBandeja", 					"defaultContent":"", "class":"center"},
	    	            {"data": "estProceso", 					"defaultContent":"", "class":"centert"}          
	        ]
	    } );  
		
		$('#tblEvaluados tbody').on( 'click', 'tr', function () {
	        if ( $(this).hasClass('selected') ) {
	            $(this).removeClass('selected');
	        }
	        else {
	        	tableEvaluados.$('tr.selected').removeClass('selected');
	            $(this).addClass('selected');
	        }
	    } );
		
	};


	/**
	 * Actualiza tabla de evaluados
	 */
	var actualizarGrillaEvaluados = function(codUnidadOrganizacional){
		var dataEvaluados = null;
		var codPeriodo = $("#codPeriodoHidden").val();
		var query = "&codPeriodo="+codPeriodo+"&codUnidadOrganizacional="+codUnidadOrganizacional;
		
		$.ajax({
			url : CONTEXTO_APP+"/Evaluacion.htm?action=recargarMonitoreoUnidad"+query,
			type : 'POST',
			async : false,
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(response) {				
				construirGrillaEvaluados(response.items);
				$("#mdlEvaluados").modal('show');
			},
			error : function(err) {
				document.write(err.responseText);
			}
		});
		
	};

	
	/**
	 * Configuraciones
	 */
	var settings = function(){
		$.ajaxSetup({ scriptCharset: "UTF-8" , contentType: "application/json; charset=utf-8"});
		jQuery.support.cors = true;
		$(document).ajaxStart($.blockUI).ajaxStop($.unblockUI);
		
	};
	
	
	/**
	 * Inicio
	 */
	$(document).ready(function() {
		settings();
		actualizarGrillaMonitoreoUnidades();
	});
	
	
	/**
	 * Monitorear unidades
	 */
	var clickMonitorearUnidades = function(){
		actualizarGrillaMonitoreoUnidades();
	};
	
	/**
	 * Exportar unidades excel
	 */
	var clickMonitorearUnidadesExcel = function(){
		document.form.submit();
	};
	
	/**
	 * Monitorear unidades
	 */
	var clickbtnMonitorearUnidad = function(unidadCodigo, unidadNombre){
		if(unidadCodigo!=""){
			$("#mdlTitleEvaluados").html(unidadCodigo + ' - ' + unidadNombre);
			actualizarGrillaEvaluados(unidadCodigo);
		}
	};
	
	
	/**
	 * Construye la tabla de unidades desde data
	 */
	var construirGrillaMonitorearUnidades = function(data){
		var oTable = $('#tblMoniteroUnidades').dataTable();
		oTable.fnDestroy();	
		var tableUnidades = $('#tblMoniteroUnidades').DataTable( {
			"language": {
				"url"		:	"../a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.7/plug-ins/1.10.7/i18n/Spanish.json"
			},
			oLanguage : {				
				sEmptyTable	:	'No existe informaci&oacute;n',
				sSearch: "B\u00fasqueda:  ",
			},
	        "data": data,
	        "ordering"		    : true,	     
			"bScrollAutoCss"	: true,
			"bStateSave"		: false,
			"bAutoWidth"		: false,
			"bScrollCollapse"	: false,
			"searching"         : true,
			"paging"            : false,
			"info"              : false,
	        "columns": [
	    	            {"data": "unidadCodigo", 						"defaultContent":""},
	    	            {"data": "unidadNombre", 						render : formatterLinkDetalleMonitearUnidad},
	    	            {"data": "totalEvaluar", 						"class":"center border-left"},
	    	            {"data": "totalNoEnviadosValidarLista", 		"class":"center border-left"},//listas
	    	            {"data": "totalEnviadosValidarLista", 			"class":"center"},
	    	            {"data": "totalValidadosLista", 				"class":"center"},
	    	            {"data": "totalBandejaEvaluador", 				"class":"center border-left"},//bandejas 
	    	            {"data": "totalBandejaRevisor", 				"class":"center"},
	    	            {"data": "totalPendientesEvaluar", 				"class":"center border-left"},//evaluación
	    	            {"data": "totalPendientesEnviarARevisor", 		"class":"center"},
	    	            {"data": "totalPendientesRevisar", 				"class":"center"},
	    	            {"data": "totalPendientesDevolverAEvaluador", 	"class":"center"},
	    	            {"data": "totalPendientesTransferir", 			"class":"center"},
	    	            {"data": "totalBandejaTransferidos", 			"class":"center"},
	    	            {"data": "evaluadorRegistro", 					"defaultContent":"", "class":"border-left"},//evaluador
	    	            {"data": "evaluadorNombre", 					"defaultContent":""},
	    	            {"data": "evaluadorCorreo", 					"defaultContent":""},
	    	            {"data": "revisorRegistro", 					"defaultContent":"", "class":"border-left"},//revisor
	    	            {"data": "revisorNombre", 						"defaultContent":""},
	    	            {"data": "revisorCorreo", 						"defaultContent":""}	            
	        ]
	    } ); 
		
		$('#tblMoniteroUnidades tbody').on( 'click', 'tr', function () {
	        if ( $(this).hasClass('selected') ) {
	            $(this).removeClass('selected');
	        }
	        else {
	        	tableUnidades.$('tr.selected').removeClass('selected');
	            $(this).addClass('selected');
	        }
	    } );

	};
	
	/**
	 * Enlace para ver evaluados
	 * */
	var formatterLinkDetalleMonitearUnidad = function(data,type, row){
		var salida = "";
		if(row.unidadCodigo!='TOTAL')
			salida = '<a href="javascript:clickbtnMonitorearUnidad(\''+row.unidadCodigo+'\',\''+row.unidadNombre+'\')" onclick="">'+row.unidadNombre+'</a>';
		else
			salida = '';
	    return salida;    
	};
	
	
	/**
	 * Actualiza tabla de evaluados
	 * */ 
	var actualizarGrillaMonitoreoUnidades = function(){
		var codPeriodo = $("#codPeriodoHidden").val();
		var query = "&codPeriodo="+codPeriodo;

		$.ajax({
			url : CONTEXTO_APP+"/Evaluacion.htm?action=reporteMonitoreoUnidades"+query,
			type : 'POST',
			async : false,
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(response) {				
				construirGrillaMonitorearUnidades(response.items);
			},
			error : function(err) {
				document.write(err.responseText);
			}
		});
	};
	
