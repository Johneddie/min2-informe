	//===========================================================
	//MÉTODO ENCARGADO DE LA SERIALIZACIÓN DE UN FORM
	//===========================================================
	var formToObject = function(formArray) {
		var returnArray = {};
		for (var i = 0; i < formArray.length; i++){
			var cadena = formArray[i]['value'];
			if(cadena!=null)returnArray[formArray[i]['name']] = cadena.toUpperCase();
			else  returnArray[formArray[i]['name']] = formArray[i]['value'];
		}
		return returnArray;
	};

	var competenciasArray = null;
	var Competencia = function(codCompetencia,cntPuntaje){
    	this.codCompetencia = codCompetencia;
    	this.cntPuntaje = cntPuntaje;
    	this.cntPuntajeEvaluacion = 0.0;
    };
        
    var getCompetenciaItem = function(codCompetencia){
    	for(var i=0;i<competenciasArray.length;i++){
    		var competenciaItem = competenciasArray[i] ;
    		if(competenciaItem.codCompetencia==codCompetencia)
    			return competenciaItem;
    	}
    	return null;
    };
    
   
   /**=================================================================================
	* Redondea un número a 2 decimales
	*/
	var redondear = function(numero){
		return parseFloat(Math.round(numero * 100) / 100).toFixed(2);
	};
	

	/**
	 * Lista las competencias dado el código del grupo al que pertenece...
	 * */
	var getCompetencias = function(codGrupo){
		var competencias = [];
		var url = CONTEXTO_APP+"/evaluacionCompetencia/getCompetencias?codGrupo="+codGrupo+"&ms="+(new Date()).getTime();		
		$.get(url, function( data ) {
			competencias=data;			
		});				
		return competencias;
	};
	/**
	 * Lista los criterios dado el código del grupo y competencia
	 * */
	var getCriterios = function(codPersonal,codCompetencia){
		var codPeriodo = $("#codPeriodoHidden").val();
		var criterios = [];
		var url = CONTEXTO_APP+"/evaluacionCompetencia/getCriterios?codPersonal="+codPersonal+"&codCompetencia="+codCompetencia+"&codPeriodo="+codPeriodo+"&ms="+(new Date()).getTime();
		$.get( url, function( data ) {
			criterios=data;
			});				
		return criterios;
	};
	/**
	 * Lista los niveles dado el periodo
	 * */
	var getNiveles = function(periodo){		
		var niveles = [];
		var url = CONTEXTO_APP+"/evaluacionCompetencia/getNivelesPorPeriodo?codPeriodo="+periodo+"&ms="+(new Date()).getTime();
		$.ajax({
			url: url,
            type: "GET",	        		           
            async : false,
			cache : false,
            dataType: "json",
		}).done(function(data){	        					
			niveles=data;	        					
		});	 
		return niveles;
	};
	//===========================================================
	//EVENTO CLICK DEL EVALUAR
	//===========================================================
	
	//tabla
	var renderizarTablaEvaluados = function(data){
    	var table=$('#tabEvaluados').DataTable({
    		destroy: true,
    		data: data,
    	    columns: [
    	        { data: 'codPersonal',"class":'text-center'},
    	        { data: 'desNombreCompleto'},
    	        { data: 'desCategoria'},
    	        { data: 'desCondicion'},     
    	        { data: 'fecConsultaEvaluacion'},
    	        { data: null, "class":'text-center',
    	        	render : function(d, t, r, m){
    	        		var boton='';
    	        		if(d.indCondicion=="0")
    	        			boton='<a href="javascript:onClickSeleccionarEvaluado(\''+m.row+'\');" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>';
    	        		else boton='<a href="javascript:onClickSeleccionarEvaluado(\''+m.row+'\');" ><i class="fa fa-eye" aria-hidden="true"></i></a>';
		             	return boton;} }                       
    	    ],
    	    
    	    language: {
        	    lengthMenu: '',
        	    loadingRecords: "Por favor espere, cargando lista de convocatorias <img heigh='11' width='50' src='resources/images/loading-dots.gif'/>",
        	    url: '/a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.7/plug-ins/1.10.7/i18n/Spanish.json'
    	    },
    	    searching: false,
	        //scrollX: true,
	        //fixedColumns: true,
    	    select: true 
	        
    	});
    	return table;
	};
	
	
	//componentes
	//accion CodPers
	//var inicializarComponentes = function(){
		/*
		$('#tabEvaluados tbody').on( 'click', 'a.verFichaEvaluado', function () {
			nivelDetalle=2;
			$("#divListaEvaluados").css("display", "none");
			$("#divPanelEvaluado").css("display", "block");
			
			var table = $('#tabEvaluados').DataTable();
		    var d = table.row( $(this).parents("tr") ).data();
		    $("#lblCodEvaluado").text(d.codPersonal);
			$("#lblNombresEvaluado").text(d.desNombreCompleto);
			$("#lblUuooEvaluado").text(""+d.codUnidadOrganizacionalPersonal+" - "+d.desUnidadOrganizacionalPersonal);		
			$("#lblCategoriaEvaluado").text(d.desCategoria);
		} );
		*/
		
		//Accion Evaluar
		var onClickSeleccionarEvaluado = function(indice){
		
		//$('#tabEvaluados tbody').on( 'click', 'a.evaluar', function () {
			var tbl = $('#tabEvaluados').DataTable();
			var d = tbl.row(indice).data();
			
			$("#divDetalleEvaluar").html("");  
			competenciasArray = new Array();
			var codComportamientosList = new Array();
			
			//var table = $('#tabEvaluados').DataTable();
		    //var d = table.row( $(this).parents("tr") ).data();
		    
		    //datos de comunicación
		    $("#lblDatosComunicaEvaluado").text(d.codPersonal + ' - ' + d.desNombreCompleto);
		    
		    //asignar condicion al campo oculto
		    $("#indCondicionActual").val(d.indCondicion);
		    $("#codPersonalEvaluado").val(d.codPersonal);
		    $("#codUnidadOrganizacionalPersonal").val(d.codUnidadOrganizacionalPersonal);
		    $("#comentarios").val(d.desObservacionEvaluador);
		    
		    var isEvaluado = d.indCondicion != '0';
		    
		    if(isEvaluado){
		    	$("#comentarios").prop("disabled", true);
		    	$("#botones").css("display", "none");
		    }else{
		    	$("#comentarios").prop("disabled", false);
		    	$("#botones").css("display", "block");
		    }
		    
		    var codEvaluado=d.codPersonal;
		    var codGrupo=d.codGrupo;
		    var codNivel="";
		    if(d.esDirectivo=="1")
		    	codNivel="4";
		    else
		    	codNivel="3";
		    var codPeriodo = $("#codPeriodoHidden").val();
		    var url = CONTEXTO_APP+"/nivelEsperado/getCompetencias?codGrupo="+codGrupo+"&codPers="+codEvaluado+"&codPeriodo="+codPeriodo+"&ms="+(new Date()).getTime();	
			$.get(url, function( data ) {
				var html="";	        			
				for(var i=0;i<data.length;i++){
					
					var competenciaItem = new Competencia(data[i].codComportamiento.substring(0,4),data[i].cntPuntaje);
					competenciasArray.push(competenciaItem);
					var codCompetencia = data[i].codComportamiento.substring(0,4);
					
					var url1 = CONTEXTO_APP+"/nivelEsperado/getCriterios?codPersonal="+codEvaluado+"&codCompetencia="+codCompetencia+"&codPeriodo="+codPeriodo+"&codNivel="+codNivel+"&ms="+(new Date()).getTime();
					
					$.ajax({
						url: url1,
			            type: "GET",	        		           
			            async : false,
						cache : false,
			            dataType: "json",
					}).done(function(data1){	        					
						for(var j=0;j<data1.length;j++){
							codComportamientosList.push(data1[j].codComportamiento);
							if(j==0){
								if(isEvaluado){
	    							if(data1[j].codNivel != null){
	    								var codNivel_ = data1[j].codNivel.substr(0,1);
	    								html="<h4><b>"+data[i].desComportamiento.toUpperCase()+"</b><h4><hr><p style='font-size:14px!important; '>"+data[i].desDetalle+"</p><div class='row' style='font-size:13px!important; '><div class='col-md-3 text-right' style='padding: 10px 10px 15px 0;'><label>Nivel:</label></div><div class='col-sm-3'  style='padding: 10px 0 15px 10px;' >" +
	    										"<input type='hidden' class='form-control' id='cmbNivel"+codCompetencia+"' name='cmbNivel"+codCompetencia+"'  value='" + codNivel_ + "'>"+
	    										"<input type='text' class='form-control' id='cmbNivelText"+codCompetencia+"' name='cmbNivelText"+codCompetencia+"' disabled  value='Nivel " + codNivel_ + "'>"+
	    												"</div></div><table class='table' style='font-size:13px!important;border:1px solid #BDBDBD;'><thead style='border:1px solid #337AB7;'><th style='background:#337AB7!important; color:white;'>Criterios</th><th style='background:#337AB7!important; color:white;'>Indicadores conductuales</th><thead><tbody>";
	    							}
								}else
									html="<h4><b>"+data[i].desComportamiento.toUpperCase()+"</b><h4><hr><p style='font-size:14px!important; '>"+data[i].desDetalle+"</p><div class='row' style='font-size:13px!important; '><div class='col-md-3 text-right'  style='padding: 10px 10px 15px 0;'><label>Nivel:</label></div><div class='col-sm-3'  style='padding: 10px 0 15px 10px;'>" +
											"<input type='hidden' class='form-control' id='cmbNivel"+codCompetencia+"' name='cmbNivel"+codCompetencia+"'  value='" + codNivel + "'>"+
											"<input type='text' class='form-control' id='cmbNivelText"+codCompetencia+"' name='cmbNivelText"+codCompetencia+"' disabled  value='Nivel " + codNivel + "'>"+
													"</div></div><table class='table' style='font-size:13px!important;border:1px solid #BDBDBD;'><thead style='border:1px solid #337AB7;'><th style='background:#337AB7!important; color:white;'>Criterios</th><th style='background:#337AB7!important; color:white;'>Indicadores conductuales</th><thead><tbody>";
							}
							
	        				html=html+"<tr><td>"+data1[j].desDetalle+"</td><td>"+data1[j].desNivelAlc+"</td></tr>";	    	        				
						}
						$("#codComportamientosList").val(codComportamientosList.toString());
						html=html+"</tbody></table><div class='row' style='font-size:13px!important; '><div class='col-md-3 text-right'><label>Observación:</label></div><div class='col-sm-6' ><textarea class='form-control' rows='3' maxlength='250' name='obsEspecifica"+codCompetencia+"' " + (isEvaluado?"disabled":"") + ">"+data[i].desObserv+"</textarea></div></div> <hr>";	        					
					});	        				
					$("#divDetalleEvaluar").append(html);
				}
				//mostrar
	    		nivelDetalle=3;
	    		$("#divPantallaSeleccion").css("display", "none");
	    		$("#divPanelEvaluado").css("display", "none");
	    		$("#divListaEvaluados").css("display", "none");
	    		$("#divEvaluar").css("display", "block");
	    		$("#divPanelDatosComunicacion").css("display", "block");
			});	
			
		//} );
		
		}
	
	//}
	
	
	
	var clickbtnBuscar = function(){		
		var uuoo =$("#codUnidadOrganizacional").val();
		
		if(uuoo == ""){
			mostrarMensajeError("Seleccione una unidad organizaciónal.");
			return false;
		}
		
		var codPeriodo = $("#codPeriodoHidden").val();
		var codUnidadOrganizacional = uuoo;
		var query = "indControl=E&codPeriodo="+codPeriodo+"&codUnidadOrganizacional="+codUnidadOrganizacional;
		var URL = CONTEXTO_APP+"/nivelEsperado/cargarEvaluados?"+query+"&ms="+(new Date()).getTime();
		$("#divUnidadOrganizacional").text($("#codUnidadOrganizacional option:selected").text());		
		$.ajax({
            url: URL,
            type: "GET",
            async : false,
			cache : false,
            dataType: "json",
            data : {
            }
        }).done(function(paramJson) {
        	var tamano=paramJson.length;
        	nivelDetalle=1;
        	$("#divPantallaPeriodoUnidad").css("display", "none");			
        	$("#evaluadosContainer").css("display","block");
        	$("#divTotalPersona").text(""+tamano);
        	$("#divListaEvaluados").css("display","block");
        	$("#divPantallaSeleccion").css("display","block");
        	try {
        		$('#divListaEvaluados').html(tabEvaluados1);
        		$('#tabEvaluados').DataTable().destroy();
        	}catch(err) {
        	}
        	
        	renderizarTablaEvaluados(paramJson);
        	
		}).fail(function( jqXHR, textStatus, errorThrown ) {
			console.log('entro error, '+errorThrown);
		});	
	};
	
	
	
	//===========================================================
	//EVENTO CLICK DEL BOTON GRABAR FORMATO DE EVALUACIÓN
	//===========================================================
	$("#botonGrabar").on("click",function(){	
		
		confirmarAccion(function(){
			var evCompleta=true;
			for(var i=0;i<competenciasArray.length;i++){
				var competenciaItem = competenciasArray[i];
				var codCompetencia = competenciaItem.codCompetencia;
				var nivel = $("#cmbNivel"+codCompetencia).val();			
				
				if(nivel=="-1"){
					evCompleta=false;
				}
			}		
			if(evCompleta){
				var uuoo =$("#codUnidadOrganizacional").val();
				$("#codUuoo").val(uuoo);		
				calcularPuntajesCompetencias();		
					var URL = CONTEXTO_APP+"/evaluacionCompetencia/registrarEvaluacion?ms="+(new Date()).getTime();
					
					/*var texto = $("#obsGeneral").val();*/
					/*var txt = $("#formRegistro").serialize();*/
					
					var formulario = $("#formRegistro");
					var formArray = formToObject(formulario.serializeArray())
					
				    $.ajax({
				           type: "POST",
				           url: URL,
				           async : false,
						   cache : false,
				           data: formArray, // serializes the form's elements.
				           success: function(data)
				           {			        	   
				        	   clickbtnBuscar();
				        	   $("#divEvaluar").css("display","none");
				        	   $("#divPanelDatosComunicacion").css("display", "none");
				        	   
				        	   mostrarMensajeExito("Se ha registro el formato de evaluación correctamente.");
				           }
				         });			
			}else{
				mostrarMensajeError("Evaluación incompleta.");
			}

		}, 'N');
	});
	
	var calcularPuntajesCompetencias = function(){		
		for(var i=0;i<competenciasArray.length;i++){
			var competenciaItem = competenciasArray[i];
			var codCompetencia = competenciaItem.codCompetencia;
			var nivel = $("#cmbNivel"+codCompetencia).val();			
			var acumulado = 0.0;						
			acumulado=acumulado + parseFloat(nivel);
			competenciaItem.cntPuntajeEvaluacion = acumulado;
		}		
		//pintamos los valores obtenidos en las competencias...
		var cadenaCompetencias = '';
		for(var i=0;i<competenciasArray.length;i++){
			var ci = competenciasArray[i];
			cadenaCompetencias = cadenaCompetencias + ci.codCompetencia+','+ci.cntPuntajeEvaluacion+'|';
		}
		if(competenciasArray.length>0)cadenaCompetencias = cadenaCompetencias.substring(0,cadenaCompetencias.length-1);
		$("#codCompetenciasList").val(cadenaCompetencias);
		
	};	
	
	// =================================
	// EVALUADO
	// =================================
	
	var clickbtnBuscarTrabajador = function(){	
		
		/*var dataEvaluados = null;*/
		var codPeriodo = $("#codPeriodo").val();
		
		if(codPeriodo == ""){
			mostrarMensajeError("Seleccione un a&ntilde;o.");
			return false;
		}
			
		var query = "indControl=E&codPeriodo="+codPeriodo;
		var URL = CONTEXTO_APP+"/evaluacionCompetencia/cargarEvaluacionesTrabajador?"+query+"&ms="+(new Date()).getTime();
		
		$.ajax({
            url: URL,
            type: "GET",          
            async : false,
			cache : false,
            dataType: "json",
            data : {
            }
        }).done(function(paramJson) {
        	/*var tamano=paramJson.length; */       	
        	nivelDetalle=0;        	
        	$("#divListaEvaluados").css("display","block");        	
        	try {
        		$('#divListaEvaluados').html(tabEvaluados1);
        		$('#tabEvaluados').DataTable().destroy();
        	}catch(err) {
        	}
        	
        	var table=$('#tabEvaluados').DataTable({
            		destroy: true,
            		data: paramJson,
            	    columns: [
            	        { data: 'codPersonal'},
            	        { data: 'desNombreCompleto'},
            	        { data: 'desCategoria'},
            	        { data: 'codPersonalEvaluador'},
            	        { data: 'desNombreCompletoEvaluador'},
            	        { data: 'desCondicion'},       
            	        { data: null, "class":'text-center',
            	        	render : function(data, type, row){
            	        		var boton='';
            	        		if(data.indCondicion=="0")
            	        			boton='';
            	        		else boton='<a href="#" class="evaluar"><i class="fa fa-eye" aria-hidden="true"></i></a>';
    			             	return boton;} }                       
            	    ],
            	    
            	    language: {
	            	    lengthMenu: '',
	            	    loadingRecords: "Por favor espere, cargando lista de convocatorias <img heigh='11' width='50' src='resources/images/loading-dots.gif'/>",
	            	    url: '/a/js/libs/bootstrap/3.3.2/plugins/datatables-1.10.7/plug-ins/1.10.7/i18n/Spanish.json'
            	    },
            	    searching: false,			       
			        fixedColumns: true
            	    
            	    
            	});
	        	$('#tabEvaluados tbody').on( 'click', 'tr', function () {
			        if ( $(this).hasClass('selected') ) {
			            $(this).removeClass('selected');
			        }else {
			        	table.$('tr.selected').removeClass('selected');
			            $(this).addClass('selected');
			        }
	        	});
	        	
	        	//Accion Evaluar
	        	$('#tabEvaluados tbody').on( 'click', 'a.evaluar', function () {
	        		$("#divDetalleEvaluar").html("");
	        		competenciasArray = new Array();
	        		var codComportamientosList = new Array();
	        		
	        	    var d = table.row( $(this).parents("tr") ).data();
	        	    
	        	    //datos de comunicación
	        	    $("#lblDatosComunicaEvaluado").text(d.codPersonal + ' - ' + d.desNombreCompleto);
	        	    $("#lblDatosComunicaEvaluador").text(d.codPersonalEvaluador + ' - ' + d.desNombreCompletoEvaluador);
	        	    
	        	    //asignar condicion al campo oculto
	        	    $("#indCondicionActual").val(d.indCondicion);
	        	    $("#codPersonalEvaluado").val(d.codPersonal);	        	    
	        	    $("#codUnidadOrganizacionalPersonal").val(d.codUnidadOrganizacionalPersonal);
	        	    $("#comentarios").val(d.desObservacionEvaluador);
	        	    
	        	    var isEvaluado = d.indCondicion != '0';
	        	    
	        	    if(isEvaluado)
	        	    	$("#comentarios").prop("disabled", true);
	        	    
	        	    var indConsulta = '0';
	        	    if(d.fecConsultaEvaluacion == '')
	        	    	indConsulta = '1'
	        	    
	        	    var codEvaluado=d.codPersonal;
	        	    var codGrupo=d.codGrupo;
	        	    var codNivel="";
	        	    if(d.esDirectivo=="1")
	        	    	codNivel="4";
	        	    else
	        	    	codNivel="3";
	        	    var codPeriodo = $("#codPeriodoHidden").val();
	        	    var url = CONTEXTO_APP+"/evaluacionCompetencia/getCompetencias?codGrupo="+codGrupo+"&codPers="+codEvaluado+"&codPeriodo="+codPeriodo+"&codUnidadOrganizacionalPersonal="+d.codUnidadOrganizacionalPersonal+"&indConsulta="+ indConsulta +"&ms="+(new Date()).getTime();	
	        	   
	        		$.get(url, function( data ) {
	        			var html="";	        			
	        			for(var i=0;i<data.length;i++){
	        				
	        				var competenciaItem = new Competencia(data[i].codComportamiento.substring(0,4),data[i].cntPuntaje);
	        				competenciasArray.push(competenciaItem);
	        				var codCompetencia = data[i].codComportamiento.substring(0,4);
	        				
	        				
	        				var url1 = CONTEXTO_APP+"/evaluacionCompetencia/getCriterios?codPersonal="+codEvaluado+"&codCompetencia="+codCompetencia+"&codPeriodo="+codPeriodo+"&codNivel="+codNivel+"&ms="+(new Date()).getTime();
	        				
	        				$.ajax({
	        					url: url1,
	        		            type: "GET",	        		           
	        		            async : false,
	        					cache : false,
	        		            dataType: "json",
	        				}).done(function(data1){	        					
	        					for(var j=0;j<data1.length;j++){
	        						codComportamientosList.push(data1[j].codComportamiento);
	        						if(j==0){
	        							if(isEvaluado){
		        							if(data1[j].codNivel != null){
		        								var codNivel_ = data1[j].codNivel.substr(0,1);
		        								
		        								html="<h4><b>"+data[i].desComportamiento.toUpperCase()+"</b><h4><hr><p style='font-size:14px!important; '>"+data[i].desDetalle+"</p><div class='row' style='font-size:13px!important; '><div class='col-md-3 text-right'  style='padding: 10px 10px 15px 0;'><label>Nivel:</label></div><div class='col-sm-3'  style='padding: 10px 0 15px 10px;'>" +
		        										//"<select class='form-control' id='cmbNivel"+codCompetencia+"' name='cmbNivel"+codCompetencia+"' readonly><option value='-1'>- Seleccione -</option><option value='01' " + (codNivel_==1?"selected":"") +">Nivel 1</option><option value='02' " + (codNivel_==2?"selected":"") +">Nivel 2</option><option value='03' " + (codNivel_==3?"selected":"") +">Nivel 3</option><option value='04' " + (codNivel_==4?"selected":"") +">Nivel 4</option><option value='05' " + (codNivel_==5?"selected":"") +">Nivel 5</option></select>" +
		        										"<input type='hidden' class='form-control' id='cmbNivel"+codCompetencia+"' name='cmbNivel"+codCompetencia+"' value='" + codNivel_ + "'>"+
		        										"<input type='text' class='form-control' id='cmbNivelText"+codCompetencia+"' name='cmbNivelText"+codCompetencia+"' disabled value='Nivel " + codNivel_ + "'>"+
		        												"</div></div><table class='table' style='font-size:13px!important;border:1px solid #BDBDBD;'><thead style='border:1px solid #337AB7;'><th style='background:#337AB7!important;color:white;'>Criterios</th><th style='background:#337AB7!important; color:white;'>Indicadores conductuales</th><thead><tbody>";
		        							}
	        							}
	        						}
	        						
	    	        				html=html+"<tr><td>"+data1[j].desDetalle+"</td><td>"+data1[j].desNivelAlc+"</td></tr>";	    	        				
	        					}
	        					$("#codComportamientosList").val(codComportamientosList.toString());
	        					html=html+"</tbody></table><div class='row' style='font-size:13px!important; '><div class='col-md-3 text-right'><label>Observación:</label></div><div class='col-sm-6' ><textarea class='form-control' rows='3' maxlength='250' name='obsEspecifica"+codCompetencia+"' " + (isEvaluado?"disabled":"") + ">"+data[i].desObserv+"</textarea></div></div><hr>";	        					
	        				});	        				
	        				$("#divDetalleEvaluar").append(html);
	        			}	
	        			nivelDetalle=1;
		        		$("#divPantallaSeleccion").css("display", "none");
		        		$("#divPantallaPeriodoUnidad").css("display", "none");
		        		$("#divListaEvaluados").css("display", "none");
		        		$("#evaluadosContainer").css("display", "block");
	        		});		        		
	        		
	        	} );
        	
			}).fail(function( jqXHR, textStatus, errorThrown ) {
				console.log('entro error, '+errorThrown);
				/*alert( "error"+errorThrown +", "+jqXHR+","+textStatus)*/;
			});	
	};

	
	// =================================================================
	// MENSAJES
	// =================================================================

	function mostrarMensajeError(mensaje){
		bootbox.dialog({
			message: "<div class=\"text-danger\"><strong><i class=\"fa fa-exclamation-circle\"></i></strong> " + mensaje + "</div>",
			buttons: {danger: {label: "Aceptar",className: "btn-danger"}}});
	}

	function mostrarMensajeExito(mensaje){
		bootbox.dialog({
			message: "<div class=\"text-success\"><strong><i class=\"fa fa-check-circle\"></i></strong> " + mensaje + "</div>",
			buttons: {danger: {label: "Aceptar",className: "btn-success"}}});
	}
	

	
	// =================================================================
	// UTILITARIOS
	// =================================================================
	
	var confirmarAccion = function(callbackFunction, accion){
		var	desAccion = '';
	    if (accion == 'N')
	    	desAccion = 'registrar';
	    else if(accion == 'A')
	    	desAccion = 'actualizar'; 
	    else if(accion == 'E')
	    	desAccion = 'eliminar';
		
		bootbox.confirm({
		    title: "Confirmaci&oacute;n",
		    message: "\u00BFEst&aacute; seguro de "+desAccion+" el formato de evaluación\u003F",
		    buttons: {
		        cancel: {label: '<i class="fa fa-times"></i> No'},
		        confirm: {label: '<i class="fa fa-check"></i> S&iacute;'}
		    },
		    callback: function (result) {
		        if(result){
		        	callbackFunction();
		        }
		    }
		});
	};
	
	