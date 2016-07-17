
	/**=================================================================================
	* Construye la grilla de evaluados
	*/
	var construirGrillaEvaluados = function(){
		var layout = 
			  [[ 
		                 {name : '<b>Registro</b>',formatter:formatterLinkEvaluar, field : '_item',width : '8.5%',styles : 'text-align: center;'},
		                 {name : '<b>Apellidos y Nombres</b>',field : 'desNombreCompleto',width : '30.5%',styles : 'text-align: left;'},
		                 {name : '<b>Grupo</b>',field : 'desGrupo',width : '10%',styles : 'text-align: center;'},
		                 {name : '<b>Cargo</b>',field : 'desCategoria',width : '27%',styles : 'text-align: center;'},
		                 {name : '<b>Comentario</b>',field : 'desObservacionEvaluador',width : '0px',hidden: true},		//jquispecoi
		                 {name : '<b>Estado</b>',formatter:formatterLinkDescargar, field : '_item',width : '14.5%',styles : 'text-align: center;'},
		                 {name : '<b>Entrevista</b>',formatter:formatterEntrevista, field : '_item',width : '10%',styles : 'text-align: center;'}
			]];
		
		var dataEjemplo = [];
		var nodata = {identifier: "codPersonal","items" : dataEjemplo};
		var store = new dojo.data.ItemFileReadStore({data : nodata});
		var grilla = new dojox.grid.EnhancedGrid(
				{
					id:"gridEvaluados",
					store:store,
					canSort:ordenable,
					structure:layout,
					//onStyleRow:alSetearEstilo,
					rowSelector:'20px',
					selectable : true,
					selectionMode: 'single',
					loadingMessage : 'Cargando informaci&oacute;n...',
					noDataMessage : 'La unidad organizacional no contiene informaci&oacute;n sobre los evaluados.',
					plugins: { 
						pagination: {
				              pageSizes: ["50","100", "200"],
				              description: true,
				              sizeSwitch: true,
				              pageStepper: true,
				              gotoButton: true,
				              maxPageStep: 4,
				              position: "bottom",
				              defaultPageSize: 50
				          }
	                } 
				}, document.createElement('div'));
		grilla.placeAt("divEvaluadosContainer");
		grilla.startup();
		//Hay que ocultar la columna entrevista y verificar si todos los trabajadores tienen el control REVISOR, reci�n all� se muestra dicha columna
		grilla.layout.setColumnVisibility(6, false);
	};
	
	
	
	
	/*
	 * public final static String CONDICION_NO_EVALUADO = "0";
	public final static String CONDICION_EVALUADO = "E";
	public final static String CONDICION_INCOMPLETO = "I";
	public final static String CONDICION_CONFORME = "C";
	public final static String CONDICION_OBSERVADO = "O";
	public final static String CONDICION_TRANSFERIDO = "T";
	public final static String CONDICION_APELADO = "A";
	 * */
	
	
	/**
	 * Muestra y oculta los botones de acción de acuerdo a la a
	 * mostrarOcultarBotones(dataEvaluados);//Muestra/oculta los botones de acción...
	 * */
	var todosEntrevistados = false;
	var cntEvaluados=0;
	var mostrarOcultarBotones = function(dataEvaluados){
		todosEntrevistados = false;
		dojo.style(dijit.byId("botonEnviarEvaluacion").domNode, 'display', 'none');
		dojo.style(dijit.byId("botonTransferirEvaluacion").domNode, 'display', 'none');
		//dojo.style(dijit.byId("botonImprimirActas").domNode, 'display', 'none');
		
		var existeRevisor = dojo.byId("existeRevisor").value;
		var evaluados = dataEvaluados.items;
		cntEvaluados = evaluados.length;
		if(evaluados.length>0){
			var cantidadConforme = 0;
			var cantidadTransferidos = 0;
			var cantidadEvaluados = 0;
			var cantidadPorValidar = 0;
			var cantidadEntrevistados = 0;
			for(var i=0; i<evaluados.length;i++){
				var evaluado = evaluados[i];
				if("E"==evaluado.indCondicion)cantidadEvaluados++;	
				else if("C"==evaluado.indCondicion)cantidadConforme++;
				else if("V"==evaluado.indCondicion)cantidadPorValidar++;
				else if("T"==evaluado.indCondicion)cantidadTransferidos++;
				
				//contabilizamos las entrevistas...
				if("S"==evaluado.indEvaluacionComunicada)cantidadEntrevistados++;
			}
			if(existeRevisor=='N'){
				if(evaluados.length==cantidadEvaluados || 
						(cantidadTransferidos>0 && (evaluados.length-cantidadTransferidos)==cantidadEvaluados)){
					if(cantidadEntrevistados==evaluados.length){
						todosEntrevistados = true;
					}
					
					if(evaluados.length>cantidadTransferidos){
						dojo.style(dijit.byId("botonTransferirEvaluacion").domNode, 'display', '');	
					}
					
					dijit.byId("gridEvaluados").layout.setColumnVisibility(6, true);
				}
				
			}else{
				if(evaluados.length==(cantidadTransferidos+cantidadConforme)){
					if(cantidadEntrevistados==evaluados.length){
						todosEntrevistados = true;
					}
					
					if(evaluados.length>cantidadTransferidos){
						dojo.style(dijit.byId("botonTransferirEvaluacion").domNode, 'display', '');	
					}
					
					dijit.byId("gridEvaluados").layout.setColumnVisibility(6, true);
				}
				
				if(evaluados.length==(cantidadTransferidos+cantidadConforme+cantidadEvaluados) && (cantidadTransferidos+cantidadConforme)!=evaluados.length){
					dojo.style(dijit.byId("botonEnviarEvaluacion").domNode, 'display', '');
				}
			}
			
		}
	};
	
	
	
	
	/**
	 * Envía la evaluación para su revisión.
	 * */
	var clickBtnEnviarEvaluacion = function(){
		
		var texto = "\u00BFEst\u00E1 seguro de enviar a revisi\u00F3n las evaluaciones\u003F";
		if(window.confirm(texto)){
			var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
			var codUnidadOrganizacional = dojo.string.trim(dijit.byId("codUnidadOrganizacional").get("value"));
			var query = "&codPeriodo="+codPeriodo+"&codUnidadOrganizacional="+codUnidadOrganizacional;
			var URL = CONTEXTO_APP+"/Evaluacion.htm?action=enviarEvaluacion"+query+"&ms="+(new Date()).getTime();
			var kw = {
				handleAs : "json",
				load : function(response, ioArgs) {
					if(response.enviado=='S'){
						actualizarGrillaEvaluados();
						
						var existeRevisor = dojo.byId("existeRevisor").value;
						if(existeRevisor=='S')
							alert("Se envi\u00F3 correctamente a revisi\u00F3n las evaluaciones.");
						else
							alert("Se registraron correctamente las evaluaciones.");
					}else{
						alert("Ocurri\u00F3 un error al enviar las evaluaciones.");
					}
				},
				preventCache : true,
				sync:true,
				timeout : 2500000,
				error : function(error, ioArgs) {
				},
				url : URL
			};
			dojo.xhrPost(kw);	
		}
	};
	
	
	
	var clickBtnTransferirEvaluacion = function(){
		
		if(todosEntrevistados){
			
			var texto = "\u00BFEst\u00E1 seguro de transferir las evaluaciones\u003F";
			if(window.confirm(texto)){
				var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
				var codUnidadOrganizacional = dojo.string.trim(dijit.byId("codUnidadOrganizacional").get("value"));
				var query = "&codPeriodo="+codPeriodo+"&codUnidadOrganizacional="+codUnidadOrganizacional;
				var URL = CONTEXTO_APP+"/Evaluacion.htm?action=transferirEvaluacion"+query+"&ms="+(new Date()).getTime();
				var kw = {
					handleAs : "json",
					load : function(response, ioArgs) {
						if(response.transferido=='S'){
							actualizarGrillaEvaluados();
							alert("Se transfirieron correctamente las evaluaciones.");	
						}else{
							alert("Ocurri\u00F3 un error al transferir las evaluaciones.");
						}
					},
					preventCache : true,
					sync:true,
					timeout : 2500000,
					error : function(error, ioArgs) {
					},
					url : URL
				};
				dojo.xhrPost(kw);	
			}
			
		}else{
			alert("Existen evaluaciones que no se confirmaron ENTREVISTA.");
		}
	};
	
	
	//Imprime todas las actas de la bandeja...
	var clickBtnImprimirActas = function(){
		//Se imprimen todas las actas...
		if(cntEvaluados>0){
			var codUnidadOrganizacional = dijit.byId("codUnidadOrganizacional").get("value");
			codUnidadOrganizacional = dojo.string.trim(codUnidadOrganizacional);
			var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
			var query = "&codUnidadOrganizacional="+codUnidadOrganizacional+"&codPeriodo="+codPeriodo;
			var URL = CONTEXTO_APP + '/Evaluacion.htm?action=descargarActaPdf'+query+'&ms='+(new Date()).getTime();
	        location.href = URL;
		}else{
			alert("No se encontraron registros para la impresi\u00F3n.");
		}
	};
	
	
	//No implementado
	var alSetearEstilo = function(fila){
		var grilla = dijit.byId("gridEvaluados");
		var item = grilla.getItem(fila.index);
		if(item!=null){
			if(fila.over){
				fila.customClasses = "dojoxGridRowOver";
			}else{
				if("S"==item.indEvaluacionComunicada && !fila.over){
					fila.customClasses = "highlightRow";
				}
			}
		}
		grilla.focus.styleRow(fila);
		grilla.edit.styleRow(fila);
	};
	
	
	var formatterLinkDescargar = function(item,index){
		var salida = item.desCondicion;
		var existeRevisor = dojo.byId("existeRevisor").value;
		if(salida=='Conforme' || salida=='Transferido' || (salida=='Evaluado'&&existeRevisor=='N'))salida = "<a href='javascript:descargar(\""+item.codPersonal+"\",\""+item.codUnidadOrganizacional+"\");' onclick='' onmouseover='' title='Acta de comunicaci&oacute;n con el evaluado.'>"+item.desCondicion+"</a>";
	    return salida;    
	};
	
	
	var formatterEntrevista = function(item,index){
		var salida = 'No';
		if("S"==item.indEvaluacionComunicada)salida = "S&iacute;";
	    return salida;    
	};
	
	
	var descargar = function(codPersonal,codUnidadOrganizacional){
		var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
		codUnidadOrganizacional = dojo.string.trim(codUnidadOrganizacional);
		var query = "&codPersonal="+codPersonal+"&codUnidadOrganizacional="+codUnidadOrganizacional+"&codPeriodo="+codPeriodo;
		var URL = CONTEXTO_APP + '/Evaluacion.htm?action=descargarActaPdf'+query+'&ms='+(new Date()).getTime();
        location.href = URL;
	};
	

	var formatterLinkEvaluar = function(item,index){
		var salida = "";
		salida = '<a href="javascript:evaluar(\''+item.codPersonal+'\',\''+item.codGrupo+'\')" onclick="" onmouseover="">'+item.codPersonal+'</a>';
	    return salida;    
	};
	
	
	/**
	 * Retorna un arreglo con el dato que ha sido marcado
	 * */
	var getComportamientoChecked = function(cntNotaComportamiento){
		var salida = ['','','',''];//salida para cada una de las opciones
		if(cntNotaComportamiento!=null){
			if(cntNotaComportamiento==100){
		    	salida[0] = "checked='true'";
		    }else if(cntNotaComportamiento==75){
		    	salida[1] = "checked='true'";
		    }else if(cntNotaComportamiento==50){
		    	salida[2] = "checked='true'";
		    }else if(cntNotaComportamiento==25){
		    	salida[3] = "checked='true'";
		    }	
		}
		return salida;
	};
	
	
	/**
	 * Ejecutado cada vez que se hace clic sobre el botón calcular en el cuadro de incentivo por desempeño
	 * */
	var clickbtnCalcularBono = function(){
		
		var totalAcumulado = 0;
		for(var i=0;i<competenciasArray.length;i++){
			//para cada competencia
			var competenciaItem = competenciasArray[i];
			var codCompetencia = competenciaItem.codCompetencia;
			
			
			//Obtengo desde la base de datos el bono
			var controles = $("input[type='radio'][name^='cto"+codCompetencia+"']");
			
			var acumulado = 0.0;
			var cantidadSeleccionada = 0;
			for(var j=0;j<controles.length;j++){
				if(controles[j].checked){
					cantidadSeleccionada++;
					if(controles[j].value=='A')acumulado = acumulado + 100;//TODO: Este dato debería ser un parámetro
					else if(controles[j].value=='B')acumulado = acumulado + 75;//TODO: Este dato debería ser un parámetro
					else if(controles[j].value=='C')acumulado = acumulado + 50;//TODO: Este dato debería ser un parámetro
					else if(controles[j].value=='D')acumulado = acumulado + 25;//TODO: Este dato debería ser un parámetro
				}
			}
			
			var puntajeAsignado = 0;
			if(cantidadSeleccionada==4){
				var resultado = acumulado/cantidadSeleccionada;
				resultado = redondear(resultado);
				if(resultado>=100)puntajeAsignado = 10;
				else if(resultado<100 && resultado>=75)puntajeAsignado = 8;
				else if(resultado<75 && resultado>=50)puntajeAsignado = 5;
				else if(resultado<50)puntajeAsignado = 3;
			}else{
				alert("Debe completar la evaluaci\u00F3n para calcular el bono.");
				return;
			}
			totalAcumulado = totalAcumulado + competenciaItem.cntPuntaje*puntajeAsignado;
		}

		var nivelDesempenio = '';
		var incentivo = 0;
		if(totalAcumulado>=10){
			nivelDesempenio = 'Sobresaliente';
			incentivo = 0.6;
		}else if(totalAcumulado<10 && totalAcumulado>=8){
			nivelDesempenio = 'Esperado';
			incentivo = 0.4;
		}else if(totalAcumulado<8 && totalAcumulado>=5){
			nivelDesempenio = 'En Desarrollo';
			incentivo = 0.0;
		}else if(totalAcumulado<5){
			nivelDesempenio = 'Bajo';
			incentivo = 0.0;
		}
		
		dojo.byId('divNivelCalculo').innerHTML = '<b>'+nivelDesempenio+'</b>';
		dojo.byId('divAsignacionCalculo').innerHTML = '<b>'+redondear(incentivo)+'</b>';
		
	};
	
	
	
	
	
	/**
	 * Ejecutado cada vez que se hace clic sobre una opci�n de comportamiento(A,B,C,D)
	 * */
	var alCambiarComportamiento = function(control){
		var codCompetencia = control.id.substring(3,7);
		var controles = $("input[type='radio'][name^='cto"+codCompetencia+"']");
		
		var acumulado = 0.0;
		var cantidadSeleccionada = 0;
		for(var i=0;i<controles.length;i++){
			if(controles[i].checked){
				cantidadSeleccionada++;
				if(controles[i].value=='A')acumulado = acumulado + 100;//TODO: Este dato debería ser un parámetro
				else if(controles[i].value=='B')acumulado = acumulado + 75;//TODO: Este dato debería ser un parámetro
				else if(controles[i].value=='C')acumulado = acumulado + 50;//TODO: Este dato debería ser un parámetro
				else if(controles[i].value=='D')acumulado = acumulado + 25;//TODO: Este dato debería ser un parámetro
			}
		}
		
		var divCalifica = '&nbsp;';
		var divGrado = '&nbsp;';
			
		if(cantidadSeleccionada>0){
			var resultado = acumulado/cantidadSeleccionada;
			resultado = redondear(resultado);
			if(resultado>=100){
				divCalifica = '<b>Alta Competencia</b>';
				divGrado = '<b>'+resultado+'%</b>';		
			}else if(resultado<100 && resultado>=75){
				divCalifica = '<b>Competente</b>';
				divGrado = '<b>'+resultado+'%</b>';
			}else if(resultado<75 && resultado>=50){
				divCalifica = '<b>Competencia en Desarrollo</b>';
				divGrado = '<b>'+resultado+'%</b>';
			}else if(resultado<50){
				divCalifica = '<b>Baja Competencia</b>';
				divGrado = '<b>'+resultado+'%</b>';
			}			
		}
		dojo.byId('divCalificaCompetencia'+codCompetencia).innerHTML = divCalifica;
		dojo.byId('divGradoCompetencia'+codCompetencia).innerHTML = divGrado;
		
	};
	
	
	//var competenciasPuntaje = new
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
    
    
    
    var alCambiarEvaluacion = function(){
    	evaluacionModificada = true;
    };
    
    var alCambiarEntrevista = function(){
    	entrevistaModificada = true;
    };
    
    var alCambiarComentario = function(){
    	if (dojo.byId('comentarios').value != comentarios)
    		alCambiarEvaluacion();
    };
    
    
    /**
     * Ejecutado cada vez que se hace clic en el link del código de personal de la lista de evaluados.
     * 
     * */
    //La evaluación es modificada cada vez que se cambia un dato, el texto o las preguntas...
    var evaluacionModificada = false;
    var entrevistaModificada = false;
    var comentarios = '';
	var evaluar = function(codPersonal,codGrupo){
		
		var codComportamientosList = new Array();
		
		dojo.byId('evaluacionComunicadaSi').checked = false;	
    	dojo.byId('evaluacionComunicadaNo').checked = false;
		dijit.byId("comentarios").set("value","");
		
		//Actualiza la data del personal...
		actualizarDatosEvaluados(codPersonal);
		
		//1. Ocultamos la pantalla de selecci�n de personal y mostramos el formulario de registro
		dojo.attr("divPantallaSeleccion", "style", {display:"none"});
		dojo.attr("divPantallaRegistro", "style", {display:""});
		
		//2. Borramos el contenido del div principal del registro
		dojo.empty("divAllCompetencias");
		
		//3. Inicializamos el arreglo de competencias
		competenciasArray = new Array();
		
		//Creamos dinamicamente el formulario de registro
		var divAllCompetencias = dojo.byId("divAllCompetencias");
		var competencias = getCompetencias(codGrupo);
		
		var tableComportamientos = null;
		var fila = null;
		var celda = null;
		var formularioDeshabilitado = dijit.byId("botonGrabarEval").get("disabled");
		var isDisabled = formularioDeshabilitado?'disabled':'';
		
		//Desabilitamos comentarios
		dijit.byId("comentarios").set("disabled",formularioDeshabilitado);	
		
		for(var i=0;i<competencias.length;i++){
			
			//1. por cada competencia obtenemos los comportamientos
			var competencia = competencias[i];
			
			var competenciaItem = new Competencia(competencia.codComportamiento.substring(0,4),competencia.cntPuntaje);
			competenciasArray.push(competenciaItem);
			
			var divCompetenciaTitulo = document.createElement('div');
			divCompetenciaTitulo.className = 'subtitulo-100';
			divCompetenciaTitulo.innerHTML = competencia.desComportamiento;
		    
			var divCompetenciaContenido = document.createElement('div');
			divCompetenciaContenido.className = 'subcontent';
			
			//2. Creamos dinamicamente el contenido de cada competencia
			tableComportamientos = document.createElement("table");
			tableComportamientos.className = 'table-100';
			fila = tableComportamientos.insertRow(-1);
			celda = fila.insertCell(-1);
		    celda.width = "100%";celda.align = "left";celda.colSpan = 5;
		    celda.innerHTML = '<i>'+competencia.desDetalle+'</i>';
			
		    fila = tableComportamientos.insertRow(-1);
			celda = fila.insertCell(-1);
			celda.style.height = "15px";celda.colSpan = 5;
		    celda.innerHTML = '&nbsp;';
		    
		    fila = tableComportamientos.insertRow(-1);
			celda = fila.insertCell(-1);
			celda.width = "60%";celda.align = "center";
		    celda.innerHTML = '<b>Comportamientos</b>';
		    
		    celda = fila.insertCell(-1);
			celda.width = "40%";celda.colSpan = 4;celda.align = "center";
		    celda.innerHTML = '<b>Grado de Desarrollo del Comportamiento</b>';
		    
		    fila = tableComportamientos.insertRow(-1);
			celda = fila.insertCell(-1);
			celda.width = "100%";celda.colSpan = 5;
		    celda.innerHTML = '<hr/>';
		    
		    //3. Ahora las preguntas, para esto debo obtener los comportamientos por competencia...
		    var codCompetencia = competencia.codComportamiento.substring(0,4);
		    var comportamientos = getComportamientos(codPersonal,codCompetencia);//Obtengo los comportamientos desde la BD
		    for(var j=0;j<comportamientos.length;j++){
		    	var cto = comportamientos[j];
		    	codComportamientosList.push(cto.codComportamiento);
		    	fila = tableComportamientos.insertRow(-1);
				celda = fila.insertCell(-1);
				celda.align = "left";
			    celda.innerHTML = (j+1)+'. '+cto.desDetalle;	
			    
			    var comportamientoChecked = getComportamientoChecked(cto.cntNotaComportamiento);
			    
			    //opcion A
			    celda = fila.insertCell(-1); 
				celda.align = "center";
			    celda.innerHTML = '<input type="radio" name="cto'+cto.codComportamiento+'" '+isDisabled+' onchange="javascript:alCambiarEvaluacion();" onclick="javascript:alCambiarComportamiento(this);" title="" '+comportamientoChecked[0]+' id="cto'+cto.codComportamiento+'A" value="A"/><label for="cto'+cto.codComportamiento+'A">A</label>';
			    
			    //opcion B
			    celda = fila.insertCell(-1);
				celda.align = "center";
			    celda.innerHTML = '<input type="radio" name="cto'+cto.codComportamiento+'" '+isDisabled+' onchange="javascript:alCambiarEvaluacion();" onclick="javascript:alCambiarComportamiento(this);" title="" '+comportamientoChecked[1]+' id="cto'+cto.codComportamiento+'B" value="B"/><label for="cto'+cto.codComportamiento+'B">B</label>';
			    
			    //opcion C
			    celda = fila.insertCell(-1);
				celda.align = "center";
			    celda.innerHTML = '<input type="radio" name="cto'+cto.codComportamiento+'" '+isDisabled+' onchange="javascript:alCambiarEvaluacion();" onclick="javascript:alCambiarComportamiento(this);" title="" '+comportamientoChecked[2]+' id="cto'+cto.codComportamiento+'C" value="C"/><label for="cto'+cto.codComportamiento+'C">C</label>';
			    
			    //opcion D
			    celda = fila.insertCell(-1);
				celda.align = "center";
			    celda.innerHTML = '<input type="radio" name="cto'+cto.codComportamiento+'" '+isDisabled+' onchange="javascript:alCambiarEvaluacion();" onclick="javascript:alCambiarComportamiento(this);" title="" '+comportamientoChecked[3]+' id="cto'+cto.codComportamiento+'D" value="D"/><label for="cto'+cto.codComportamiento+'D">D</label>';			    
		    }
		    
		    //4. Por ultimo agregamos la calificaci�n y su grado de desarrollo 
		    fila = tableComportamientos.insertRow(-1);
			celda = fila.insertCell(-1);
		    celda.width = "100%";celda.colSpan = 5;
		    celda.innerHTML = '<hr/>';
		    
		    fila = tableComportamientos.insertRow(-1);
			celda = fila.insertCell(-1);divAllCompetencias
		    celda.align = "center";
		    celda.innerHTML = '<b>Calificaci&oacute;n</b>';
		    celda = fila.insertCell(-1);
		    celda.align = "center";celda.colSpan=4;
		    celda.innerHTML = '<div id="divCalificaCompetencia'+codCompetencia+'"><b>&nbsp;</b></div>';
		    
		    fila = tableComportamientos.insertRow(-1);
			celda = fila.insertCell(-1);
		    celda.align = "center";
		    celda.innerHTML = '<b>Grado de Desarrollo</b>';
		    celda = fila.insertCell(-1);
		    celda.align = "center";celda.colSpan=4;
		    celda.innerHTML = '<div id="divGradoCompetencia'+codCompetencia+'"><b>&nbsp;</b></div>';
			
			//5. Adjuntamos el contenido creado dinamicamente hacia el div
			divCompetenciaContenido.appendChild(tableComportamientos);
		    divAllCompetencias.appendChild(divCompetenciaTitulo);
		    divAllCompetencias.appendChild(divCompetenciaContenido);
		    //divAllCompetencias.appendChild(document.createElement('br'));
		}
		
		dijit.byId("codComportamientosList").set("value",codComportamientosList.toString());//listado total de los c�digos de comportamientos separado por comas...
		
		for(var i=0;i<competencias.length;i++){
	    	var competencia = competencias[i];
	    	var codCompetencia = competencia.codComportamiento.substring(0,4);
	    	alCambiarComportamiento(dojo.byId("cto"+codCompetencia+"01A"));
	    }
		
		//6. Reseteamos flags
		evaluacionModificada = false;
		entrevistaModificada = false;
		
		//6.1. Limpiamos cálculo de bono
		dojo.byId('divNivelCalculo').innerHTML = '<b>Sin Calcular</b>';
		dojo.byId('divAsignacionCalculo').innerHTML = '<b>Sin Calcular</b>';
		document.getElementById("divMostrarOcultarBono").style.display = 'none';
		document.getElementById("divCalculoBono").innerHTML = "&nbsp;+&nbsp;RS N&#176; 341-2014/SUNAT";
	};
	
	
	var clickbtnRegresar01 = function(item,index){
		dojo.attr("divPantallaSeleccion", "style", {display:"none"});
		dojo.attr("divPantallaPeriodoUnidad", "style", {display:""});
	};
	
	
	var clickbtnRegresar02 = function(){
		
		var formularioDeshabilitado = dijit.byId("botonGrabarEval").get("disabled");
		
		//Si el formulario no está deshabilitado
		if(!formularioDeshabilitado){
			
			//Si se han realizado cambios
			if(evaluacionModificada){
				var texto = "\u00BFDesea guardar los cambios efectuados en la evaluaci\u00F3n\u003F";
				
				//Si se confirma la grabación de los cambios.
				if(window.confirm(texto)){
					clickbtnGrabarEval();
				}else{
					dojo.attr("divPantallaSeleccion", "style", {display:""});
					dojo.attr("divPantallaRegistro", "style", {display:"none"});
				}
				
			}else if (entrevistaModificada){
				var texto = "\u00BFDesea guardar el estado de la entrevista\u003F";
				
				//Si se confirma la grabación de los cambios.
				if(window.confirm(texto)){
					registrarCambioEntrevista();
					if(dojo.byId('evaluacionComunicadaSi').checked)
						descargar(dijit.byId("codPersonalEvaluado").get("value"),dijit.byId("codUnidadOrganizacional").get("value"));
				}else{
					dojo.attr("divPantallaSeleccion", "style", {display:""});
					dojo.attr("divPantallaRegistro", "style", {display:"none"});
				}
			}else{
				//Si la evaluación no está modificada retornamos no más a la pantalla anterior...
				dojo.attr("divPantallaSeleccion", "style", {display:""});
				dojo.attr("divPantallaRegistro", "style", {display:"none"});
			}	
			
		}else{
			dojo.attr("divPantallaSeleccion", "style", {display:""});
			dojo.attr("divPantallaRegistro", "style", {display:"none"});
		}
	};
	
	
	
	/**=================================================================================
	 * Indicador de ordenamiento para las columnas de las grillas por default a true
	 * */
	var ordenable = function(){
		return false;
	};


	
   /**=================================================================================
	* Redondea un número a 2 decimales
	*/
	var redondear = function(numero){
		return parseFloat(Math.round(numero * 100) / 100).toFixed(2);
	};
	
	
	
   /**=================================================================================
	* Indica si una grilla es ordenable o no
	*/
	var noOrdenable = function(index) {
		return false;
	};
	

	var settings = function(){
		inicializarGrillas();
		standby = new dijit.Dialog({	//busquedas
		 	title: "Cargando...",
		   	content: "<p class=\"centeredImage\"><center><img src=\"/a/js/dojo1.6.0/dojox/image/resources/images/loading.gif\" /></center></p> ",
		   	style: "width:100px"
		});
		standby.closeButtonNode.style.display = "none";
		standby._onKey = function(evt){
		    key = evt.keyCode;
		    if (key == dojo.keys.ESCAPE) {
		        dojo.stopEvent(evt);
		    }
		};
	};
	
	
	
	var inicializarGrillas = function(){
		construirGrillaEvaluados();
		dijit.byId("divEvaluadosBorderContainer").resize();
		dijit.byId("divEvaluadosContainer").resize();
	};
	
	
	//Actualiza la grilla de evaluados dado el c�digo de periodo y el código de la unidad organizacional, retorna la cantidad de personas a evaluar en la grilla 
	/*var actualizarGrillaEvaluados = function(){
		var dataEvaluados = getDataEvaluados();
      	var store = new dojo.data.ItemFileReadStore({data:dataEvaluados});
	    var grilla = dijit.byId("gridEvaluados");
	    grilla.setStore(store);
	    mostrarOcultarBotones(dataEvaluados);//Muestra/oculta los botones de acci�n...
	    return dataEvaluados.items.length;
	};*/

	
	var actualizarGrillaEvaluados = function(){

		var dataEvaluados = null;
		var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
		var codUnidadOrganizacional = dojo.string.trim(dijit.byId("codUnidadOrganizacional").get("value"));
		var query = "&indControl=E&codPeriodo="+codPeriodo+"&codUnidadOrganizacional="+codUnidadOrganizacional;
		var URL = CONTEXTO_APP+"/Evaluacion.htm?action=recargarEvaluados"+query+"&ms="+(new Date()).getTime();
		
		var kw = {
			handleAs : "json",
			load : function(response, ioArgs) {
				dataEvaluados = response.dataEvaluados;
				dijit.byId("existeRevisor").set("value",dataEvaluados.existeRevisor);
				
				var store = new dojo.data.ItemFileReadStore({data:dataEvaluados});
			    var grilla = dijit.byId("gridEvaluados");
			    grilla.setStore(store);
			    mostrarOcultarBotones(dataEvaluados);//Muestra/oculta los botones de acci�n...
			    
			},
			preventCache : true,
			sync:true,
			timeout : 2500000,
			error : function(error, ioArgs) {
			},

			url : URL
		};
		dojo.xhrPost(kw);
		
		
		return dataEvaluados.items.length;
	};
	
	
	/**
	 * Lista las competencias dado el código del grupo al que pertenece...
	 * */
	var getCompetencias = function(codGrupo){
		var competencias = [];
		var url = CONTEXTO_APP+"/Evaluacion.htm?action=listarCompetenciasPorGrupo&codGrupo="+codGrupo+"&ms="+(new Date()).getTime();
		var kw = {
			handleAs : "json",
			load : function(response, ioArgs) {
				competencias = response.competencias;
			},
			preventCache : true,
			sync:true,
			timeout : 2500000,
			error : function(error, ioArgs) {
			},
			url : url
		};
		dojo.xhrPost(kw);
		return competencias;
	};
	
	
	
	
	/**
	 * Lista los comportamientos dado el código del grupo y competencia
	 * */
	var getComportamientos = function(codPersonal,codCompetencia){
		var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
		var comportamientos = [];
		var url = CONTEXTO_APP+"/Evaluacion.htm?action=listarComportamientosPorCompetencia&codPersonal="+codPersonal+"&codCompetencia="+codCompetencia+"&codPeriodo="+codPeriodo+"&ms="+(new Date()).getTime();
		var kw = {
			handleAs : "json",
			load : function(response, ioArgs) {
				comportamientos = response.comportamientos;
			},
			preventCache : true,
			sync:true,
			timeout : 2500000,
			error : function(error, ioArgs) {
			},
			url : url
		};
		dojo.xhrPost(kw);
		return comportamientos;
	};

	
	
	var actualizarDatosEvaluados = function(codPersonal){
		var store = dijit.byId("gridEvaluados").store;
		store.fetchItemByIdentity({
		    identity: codPersonal,
		    onItem: function(item, request) {
		    	dijit.byId("indCondicionActual").set("value",item.indCondicion);
		    	dijit.byId("codPersonalEvaluado").set("value",item.codPersonal);
		    	dojo.byId('divEvaluado').innerHTML = item.codPersonal;
		    	dojo.byId('divApellidosNombres').innerHTML = item.desNombreCompleto;
		    	dojo.byId('divGrupoOcupacional').innerHTML = item.desGrupo;
		    	dojo.byId('divCargo').innerHTML = item.desCategoria;
		    	dojo.byId('comentarios').value = item.desObservacionEvaluador;							//jquispecoi
		    	comentarios = dojo.byId('comentarios').value;
		    	
		    	if("S"==item.indEvaluacionComunicada)dojo.byId('evaluacionComunicadaSi').checked = true;	
		    	else if("N"==item.indEvaluacionComunicada)dojo.byId('evaluacionComunicadaNo').checked = true;
		    	
		    	dijit.byId("codUnidadOrganizacionalPersonal").set("value",item.codUnidadOrganizacionalPersonal);
		    	dijit.byId("codUnidadOrganizacionalEvalua").set("value",item.codUnidadOrganizacional);
		    	
		    	//Si la condición de la evaluación es en revisi�n o conforme deshabilitamos el botón de grabación.
		    	if("V"==item.indCondicion || "T"==item.indCondicion || "EE"==dojo.string.trim(item.indControl.toString())){
		    		dijit.byId("botonGrabarEval").set("disabled",true);	
		    		if("EE"==dojo.string.trim(item.indControl.toString())){
		    			dojo.attr("botonGrabarEval", "title", 'La evaluaci\u00F3n a\u00FAn est\u00E1 en revisi\u00F3n.');
		    		}
		    	}else{
		    		dijit.byId("botonGrabarEval").set("disabled",false);
		    	}
		    	
		    	//Habilita o deshabilita la pregunta de comunicación de resultados solo si está conforme
		    	if("C"==item.indCondicion && "E"==dojo.string.trim(item.indControl.toString())){
		    		dojo.attr("divPreguntaComunicacion", "style", {display:""});
		    	}else{
		    		dojo.attr("divPreguntaComunicacion", "style", {display:"none"});
		    	}
		    	
		    	var existeRevisor = dojo.byId("existeRevisor").value;
		    	if("E"==item.indCondicion && existeRevisor=='N')//revisar!!!
		    		dojo.attr("divPreguntaComunicacion", "style", {display:""});
		    }
		});
	};
	
	
	
	var clickbtnBuscar = function(){
		var uuoo = dijit.byId("codUnidadOrganizacional");
		if(uuoo.isValid()){
			var uuooValor = uuoo.get("displayedValue");
			dojo.byId('divUnidadOrganizacional').innerHTML = uuooValor;
			dojo.byId('divUnidadOrganica').innerHTML = uuooValor;
			dojo.attr("divPantallaPeriodoUnidad", "style", {display:"none"});
			dojo.attr("divPantallaSeleccion", "style", {display:""});
			dijit.byId("divEvaluadosBorderContainer").resize();
			dijit.byId("divEvaluadosContainer").resize();
			var totalPersonas = actualizarGrillaEvaluados();
			dojo.byId('divTotalPersona').innerHTML = totalPersonas;
			
		}else{
			uuoo.validate();
		}
	};
	
	
	var clickbtnIniciarEval = function(){
		dojo.attr("divPantallaSeleccion", "style", {display:"none"});
		dojo.attr("divPantallaRegistro", "style", {display:""});
	};
	
	
	
	/**
	 * Ejecutado cada vez que el usuario graba una evaluación
	 * */
	var clickbtnGrabarEval = function(esLink){
		if (entrevistaModificada && !evaluacionModificada){
			var texto = "\u00BFDesea guardar el estado de la entrevista\u003F";
			
			//Si se confirma la grabación de los cambios.
			if(window.confirm(texto)){
				dijit.byId("botonGrabarEval").set("disabled",true);//deshabilito el bot�n
				registrarCambioEntrevista();
				if(dojo.byId('evaluacionComunicadaSi').checked)
					descargar(dijit.byId("codPersonalEvaluado").get("value"),dijit.byId("codUnidadOrganizacional").get("value"));
			}else{
				dojo.attr("divPantallaSeleccion", "style", {display:""});
				dojo.attr("divPantallaRegistro", "style", {display:"none"});
			}
			return true;
		}
		
		if (!evaluacionModificada){
			var texto = "No se realiz\u00F3 ning\u00FAn cambio. \u00BFDesea Salir\u003F";
			if(window.confirm(texto)){
				dojo.attr("divPantallaSeleccion", "style", {display:""});
				dojo.attr("divPantallaRegistro", "style", {display:"none"});
				
				dijit.byId("divEvaluadosBorderContainer").resize();
				dijit.byId("divEvaluadosContainer").resize();
				//var totalPersonas = actualizarGrillaEvaluados();
				dojo.byId('divTotalPersona').innerHTML = totalPersonas;
				return true;
			}else{
				return true;
			}
		}
			
		
		var texto = dojo.string.trim(dijit.byId("comentarios").get("value"));
		if(texto.length>400){
			alert("El n\u00FAmero m\u00E1ximo de caracteres en el comentario del evaluador es igual a 400.");
			return false;
		}
		
		standby.show();
		calcularPuntajesCompetencias();
		dijit.byId("botonGrabarEval").set("disabled",true);//deshabilito el botón
		dijit.byId("formRegistro").attr("action",(CONTEXTO_APP + '/Evaluacion.htm?action=registrarEvaluacion&ms='+(new Date()).getTime()));
		var kw = {
			handleAs : "json",
			load : function(response, ioArgs) {
				dijit.byId("botonGrabarEval").set("disabled",false);
				
				if("S"==response.evaluacionCompleta){
					alert("Evaluaci\u00F3n Registrada.");
					//descargar(dijit.byId("codPersonalEvaluado").get("value"),dijit.byId("codUnidadOrganizacional").get("value"));
				}else{
					alert("Evaluaci\u00F3n Incompleta.");
				}
				
				dojo.attr("divPantallaSeleccion", "style", {display:""});
				dojo.attr("divPantallaRegistro", "style", {display:"none"});
				
				dijit.byId("divEvaluadosBorderContainer").resize();
				dijit.byId("divEvaluadosContainer").resize();
				var totalPersonas = actualizarGrillaEvaluados();
				dojo.byId('divTotalPersona').innerHTML = totalPersonas;
				
			},
			preventCache : true,
			sync:true,
			timeout : 2500000,
			error : function(error, ioArgs) {
				dijit.byId("botonGrabarEval").set("disabled",false);//habilito el botón
			},
			handle: function(error, ioargs){
				standby.hide();
			},
			form : "formRegistro" 
		};
		dojo.xhrPost(kw);
		return true;
	};
	
	
	var calcularPuntajesCompetencias = function(){
		
		for(var i=0;i<competenciasArray.length;i++){
			var competenciaItem = competenciasArray[i];
			var codCompetencia = competenciaItem.codCompetencia;
			var controles = $("input[type='radio'][name^='cto"+codCompetencia+"']");
			
			var acumulado = 0.0;
			var cantidadSeleccionada = 0;
			for(var j=0;j<controles.length;j++){
				if(controles[j].checked){
					cantidadSeleccionada++;
					if(controles[j].value=='A')acumulado = acumulado + 100;//TODO: Este dato debería ser un parámetro
					else if(controles[j].value=='B')acumulado = acumulado + 75;//TODO: Este dato debería ser un parámetro
					else if(controles[j].value=='C')acumulado = acumulado + 50;//TODO: Este dato debería ser un parámetro
					else if(controles[j].value=='D')acumulado = acumulado + 25;//TODO: Este dato debería ser un parámetro
				}
			}
			
			var resultado = 0.0;
			if(cantidadSeleccionada>0){
				resultado = acumulado/cantidadSeleccionada;
				resultado = redondear(resultado);	
			}
			competenciaItem.cntPuntajeEvaluacion = resultado;
		}
		
		//pintamos los valores obtenidos en las competencias...
		var cadenaCompetencias = '';
		for(var i=0;i<competenciasArray.length;i++){
			var ci = competenciasArray[i];
			cadenaCompetencias = cadenaCompetencias + ci.codCompetencia+','+ci.cntPuntajeEvaluacion+'|';
		}
		if(competenciasArray.length>0)cadenaCompetencias = cadenaCompetencias.substring(0,cadenaCompetencias.length-1);
		dijit.byId("codCompetenciasList").set("value",cadenaCompetencias);
		
	};
	
	
    /**
     * Ejecutado cada vez que se hace click en radio de entrevista.
     * 
     * */
    var registrarCambioEntrevista = function(){
    	var indAceptacion = '';
    	if(dojo.byId('evaluacionComunicadaSi').checked) indAceptacion = 'S';	
    	else if(dojo.byId('evaluacionComunicadaNo').checked) indAceptacion = 'N';
    	
    	
    	var codPersonal = dojo.byId('divEvaluado').innerHTML;
		var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
		var codUnidadOrganizacional = dojo.string.trim(dijit.byId("codUnidadOrganizacional").get("value"));
		var query = "&codPersonal="+codPersonal+"&codUnidadOrganizacional="+codUnidadOrganizacional+"&codPeriodo="+codPeriodo;
    	
		standby.show();
    	var respuesta = false;
		var url = CONTEXTO_APP+"/Evaluacion.htm?action=actualizarEstadoEntrevista&indAceptacion="+indAceptacion+query+"&ms="+(new Date()).getTime();
		var kw = {
			handleAs : "json",
			load : function(response, ioArgs) {
				if(response.resultado){
					dojo.attr("divPantallaSeleccion", "style", {display:""});
					dojo.attr("divPantallaRegistro", "style", {display:"none"});
					
					dijit.byId("divEvaluadosBorderContainer").resize();
					dijit.byId("divEvaluadosContainer").resize();
					var totalPersonas = actualizarGrillaEvaluados();
					dojo.byId('divTotalPersona').innerHTML = totalPersonas;
				}else{
					alert("Ha ocurrido un error al grabar el cambio.");
				}
			},
			preventCache : true,
			sync:true,
			timeout : 2500000,
			error : function(error, ioArgs) {
			},
			handle: function(error, ioargs){
				standby.hide();
			},
			url : url
		};
		dojo.xhrPost(kw);
		
		return respuesta;
    };
    
    var standby;
	dojo.addOnLoad(function(){
		dojo.require("dojo.data.ItemFileReadStore");
  		dojo.require("dijit.layout.ContentPane");
  		dojo.require("dijit.layout.BorderContainer");
		dojo.require("dijit.form.TextBox");
		dojo.require("dijit.form.Textarea");
		dojo.require("dijit.form.SimpleTextarea");
		dojo.require("dijit.form.Button");
		dojo.require("dijit.Dialog");
		dojo.require("dijit.form.FilteringSelect");
  		dojo.require("dojo.parser");
  		dojo.require("dijit.form.Form");
  		dojo.require("dijit.form.Select");
  		dojo.require("dijit.form.RadioButton");
  		dojo.require("dojox.grid.EnhancedGrid");
  		dojo.require("dojox.grid.enhanced.plugins.Pagination");
  		dojo.require('dojo.string');
  		dojo.require('dojo.number');
  		dojo.require('dojox.validate');
  		dojo.require('dojox.grid.cells.dijit');
  		
  		dojo.parser.parse();
		settings();
		hideLoader();
		
	});	
	
