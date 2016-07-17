
	/**=================================================================================
	* Construye la grilla de solicitudes de autorizaciones de exportaci�n de IQBF
	*/
	var construirGrillaEvaluados = function(){
		var layout = 
			  [[ 
		                 {name : '<b>Registro</b>',formatter:formatterLinkEvaluar, field : '_item',width : '8.5%',styles : 'text-align: center;'},
		                 {name : '<b>Apellidos y Nombres</b>',field : 'desNombreCompleto',width : '30.5%',styles : 'text-align: left;'},
		                 {name : '<b>Grupo</b>',field : 'desGrupo',width : '10%',styles : 'text-align: center;'},
		                 {name : '<b>Cargo</b>',field : 'desCategoria',width : '27%',styles : 'text-align: center;'},
		                 {name : '<b>Estado</b>',field : 'desCondicion',width : '14.5%',styles : 'text-align: center;'},
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
					noDataMessage : 'La unidad organizacional no contiene evaluaciones a revisar.',
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
		grilla.layout.setColumnVisibility(5, false);
	};
	
	
	/**
	 * Muestra y oculta los botones de acci�n de acuerdo a la a
	 * mostrarOcultarBotones(dataEvaluados);//Muestra/oculta los botones de acci�n...
	 * */
	var mostrarOcultarBotones = function(dataEvaluados){
		//Ocultamos todos los botones por default
		dojo.style(dijit.byId("botonDevolverEvaluacion").domNode, 'display', 'none');
		
		var evaluados = dataEvaluados.items;
		if(evaluados.length>0){
			var cantidadConforme = 0;
			var cantidadObservados = 0;
			for(var i=0; i<evaluados.length;i++){
				var evaluado = evaluados[i];
				if("O"==evaluado.indCondicion)cantidadObservados++;	
				else if("C"==evaluado.indCondicion)cantidadConforme++;
			}
			
			if(evaluados.length==(cantidadConforme+cantidadObservados)){
				dojo.style(dijit.byId("botonDevolverEvaluacion").domNode, 'display', '');
			}
		}
	};
	
	
	
	/**
	 * Env�a la evaluaci�n para su revisi�n.
	 * */
	var clickBtnDevolverEvaluacion = function(){
		
		var texto = "\u00BFEst\u00E1 seguro de devolver las evaluaciones\u003F";
		if(window.confirm(texto)){
			var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
			var codUnidadOrganizacional = dojo.string.trim(dijit.byId("codUnidadOrganizacional").get("value"));
			var query = "&codPeriodo="+codPeriodo+"&codUnidadOrganizacional="+codUnidadOrganizacional;
			var URL = CONTEXTO_APP+"/Evaluacion.htm?action=devolverEvaluacion"+query+"&ms="+(new Date()).getTime();
			var kw = {
				handleAs : "json",
				load : function(response, ioArgs) {
					if(response.devuelto=='S'){
						actualizarGrillaEvaluados();
						alert("Se devolvieron correctamente las evaluaciones.");	
					}else{
						alert("Ocurri\u00F3 un error al devolver las evaluaciones.");
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
	
	
	var alCambiarUnidadOrganizacional = function(){
		var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
		var codUnidadOrganizacional = dojo.string.trim(dijit.byId("codUnidadOrganizacional").get("value"));
		var query = "&codPeriodo="+codPeriodo+"&codUnidadOrganizacional="+codUnidadOrganizacional;
		var URL = CONTEXTO_APP+"/Evaluacion.htm?action=recargarEvaluadores"+query+"&ms="+(new Date()).getTime();
		console.log("recargando evaluadores con url:"+URL);
		var store = new dojo.data.ItemFileReadStore({url: URL});
		var codEvaluador = dijit.byId("codEvaluador");
		codEvaluador.set("store",store);
		codEvaluador.store.fetch({onComplete:function(items){
			if(items.length>0){
				codEvaluador.setDisplayedValue(codEvaluador.store.getValue(items[0],"desNombreCompleto"));
			}else{
				codEvaluador.setDisplayedValue("");	
			}
		}});
	};
	
	
	
	var clickBtnTransferirEvaluacion = function(){
		
	};
	
	var clickBtnImprimirActas = function(){
		
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
		if(salida=='Conforme')salida = '<a href="javascript:descargar()" onclick="" onmouseover="">'+item.desCondicion+'</a>';
	    return salida;    
	};
	
	
	var formatterEntrevista = function(item,index){
		var salida = 'No';
		if("S"==item.indEvaluacionComunicada)salida = "S&iacute;";
	    return salida;    
	};
	
	
	var descargar = function(){
		alert("descargando pdf...");
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
	 * Ejecutado cada vez que se hace clic sobre el bot�n calcular en el cuadro de incentivo por desempe�o
	 * */
	var clickbtnCalcularBono = function(){
		
		var totalAcumulado = 0;
		for(var i=0;i<competenciasArray.length;i++){
			//para cada competencia
			var competenciaItem = competenciasArray[i];
			var codCompetencia = competenciaItem.codCompetencia;
			console.log("C�digo de la competencia a obtener sus comportamientos:"+codCompetencia);
			
			//Obtengo desde la base de datos el bono
			var controles = $("input[type='radio'][name^='cto"+codCompetencia+"']");
			
			var acumulado = 0.0;
			var cantidadSeleccionada = 0;
			for(var j=0;j<controles.length;j++){
				if(controles[j].checked){
					cantidadSeleccionada++;
					if(controles[j].value=='A')acumulado = acumulado + 100;//TODO: Este dato deber�a ser un par�metro
					else if(controles[j].value=='B')acumulado = acumulado + 75;//TODO: Este dato deber�a ser un par�metro
					else if(controles[j].value=='C')acumulado = acumulado + 50;//TODO: Este dato deber�a ser un par�metro
					else if(controles[j].value=='D')acumulado = acumulado + 25;//TODO: Este dato deber�a ser un par�metro
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
			console.log("competenciaItem.cntPuntaje:"+competenciaItem.cntPuntaje+", puntaje Asignado:"+puntajeAsignado);
			totalAcumulado = totalAcumulado + competenciaItem.cntPuntaje*puntajeAsignado;
		}
		console.log("Total acumulado:"+totalAcumulado);
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
				if(controles[i].value=='A')acumulado = acumulado + 100;//TODO: Este dato deber�a ser un par�metro
				else if(controles[i].value=='B')acumulado = acumulado + 75;//TODO: Este dato deber�a ser un par�metro
				else if(controles[i].value=='C')acumulado = acumulado + 50;//TODO: Este dato deber�a ser un par�metro
				else if(controles[i].value=='D')acumulado = acumulado + 25;//TODO: Este dato deber�a ser un par�metro
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
    
    
    
    /**
     * Ejecutado cada vez que se hace clic en el link del c�digo de personal de la lista de evaluados.
     * 
     * */
    //La evaluaci�n es modificada cada vez que se cambia un dato, el texto o las preguntas...
    var evaluacionModificada = false;
	var evaluar = function(codPersonal,codGrupo){
		
		var codComportamientosList = new Array();
		
		dojo.byId('evaluacionComunicadaSi').checked = false;	
    	dojo.byId('evaluacionComunicadaNo').checked = false;
		//dijit.byId("comentarios").set("value","");
		
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
			    celda.innerHTML = '<input type="radio" name="cto'+cto.codComportamiento+'" disabled onchange="javascript:alCambiarEvaluacion();" onclick="javascript:alCambiarComportamiento(this);" title="" '+comportamientoChecked[0]+' id="cto'+cto.codComportamiento+'A" value="A"/><label for="cto'+cto.codComportamiento+'A">A</label>';
			    
			    //opcion B
			    celda = fila.insertCell(-1);
				celda.align = "center";
			    celda.innerHTML = '<input type="radio" name="cto'+cto.codComportamiento+'" disabled onchange="javascript:alCambiarEvaluacion();" onclick="javascript:alCambiarComportamiento(this);" title="" '+comportamientoChecked[1]+' id="cto'+cto.codComportamiento+'B" value="B"/><label for="cto'+cto.codComportamiento+'B">B</label>';
			    
			    //opcion C
			    celda = fila.insertCell(-1);
				celda.align = "center";
			    celda.innerHTML = '<input type="radio" name="cto'+cto.codComportamiento+'" disabled onchange="javascript:alCambiarEvaluacion();" onclick="javascript:alCambiarComportamiento(this);" title="" '+comportamientoChecked[2]+' id="cto'+cto.codComportamiento+'C" value="C"/><label for="cto'+cto.codComportamiento+'C">C</label>';
			    
			    //opcion D
			    celda = fila.insertCell(-1);
				celda.align = "center";
			    celda.innerHTML = '<input type="radio" name="cto'+cto.codComportamiento+'" disabled onchange="javascript:alCambiarEvaluacion();" onclick="javascript:alCambiarComportamiento(this);" title="" '+comportamientoChecked[3]+' id="cto'+cto.codComportamiento+'D" value="D"/><label for="cto'+cto.codComportamiento+'D">D</label>';			    
		    }
		    
		    //4. Por ultimo agregamos la calificaci�n y su grado de desarrollo 
		    fila = tableComportamientos.insertRow(-1);
			celda = fila.insertCell(-1);
		    celda.width = "100%";celda.colSpan = 5;
		    celda.innerHTML = '<hr/>';
		    
		    fila = tableComportamientos.insertRow(-1);
			celda = fila.insertCell(-1);
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
		
		evaluacionModificada = false;
		
		//6.1. Limpiamos c�lculo de bono
		dojo.byId('divNivelCalculo').innerHTML = '<b>Sin Calcular</b>';
		dojo.byId('divAsignacionCalculo').innerHTML = '<b>Sin Calcular</b>';
		document.getElementById("divMostrarOcultarBono").style.display = 'none';
		document.getElementById("divCalculoBono").innerHTML = "&nbsp;+&nbsp;RS N&#176; 341-2014/SUNAT";
	};
	
	
	var clickbtnRegresar01 = function(item,index){
		dojo.attr("divPantallaSeleccion", "style", {display:"none"});
		dojo.attr("divPantallaPeriodoUnidad", "style", {display:""});
	};
	
	
	var clickbtnRegresar02 = function(item,index){
		dojo.attr("divPantallaSeleccion", "style", {display:""});
		dojo.attr("divPantallaRegistro", "style", {display:"none"});
	};
	
	
	
	/**=================================================================================
	 * Indicador de ordenamiento para las columnas de las grillas por default a true
	 * */
	var ordenable = function(){
		return false;
	};


	
   /**=================================================================================
	* Redondea un n�mero a 2 decimales
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
		alCambiarUnidadOrganizacional();
	};
	
	
	
	var inicializarGrillas = function(){
		construirGrillaEvaluados();
		dijit.byId("divEvaluadosBorderContainer").resize();
		dijit.byId("divEvaluadosContainer").resize();
	};
	
	
	//Actualiza la grilla de evaluados dado el c�digo de periodo y el c�digo de la unidad organizacional, retorna la cantidad de personas a evaluar en la grilla 
	var actualizarGrillaEvaluados = function(){
		var dataEvaluados = getDataEvaluados();
      	var store = new dojo.data.ItemFileReadStore({data:dataEvaluados});
	    var grilla = dijit.byId("gridEvaluados");
	    grilla.setStore(store);
	    mostrarOcultarBotones(dataEvaluados);//Muestra/oculta los botones de acci�n...
	    return dataEvaluados.items.length;
	};

	
	var getDataEvaluados = function(){
		var dataEvaluados = null;
		var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
		var codUnidadOrganizacional = dojo.string.trim(dijit.byId("codUnidadOrganizacional").get("value"));
		var query = "&codPeriodo="+codPeriodo+"&codUnidadOrganizacional="+codUnidadOrganizacional;
		var URL = CONTEXTO_APP+"/Evaluacion.htm?action=recargarEvaluados&indControl=EE"+query+"&ms="+(new Date()).getTime();
		
		var kw = {
			handleAs : "json",
			load : function(response, ioArgs) {
				dataEvaluados = response.dataEvaluados;
			},
			preventCache : true,
			sync:true,
			timeout : 2500000,
			error : function(error, ioArgs) {
			},
			url : URL
		};
		dojo.xhrPost(kw);
		return dataEvaluados;
	};
	
	
	/**
	 * Lista las competencias dado el c�digo del grupo al que pertenece...
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
	 * Lista los comportamientos dado el c�digo del grupo y competencia
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
		    	dijit.byId("codPersonalEvaluado").set("value",item.codPersonal);
		    	dojo.byId('divEvaluado').innerHTML = item.codPersonal;
		    	dojo.byId('divApellidosNombres').innerHTML = item.desNombreCompleto;
		    	dojo.byId('divGrupoOcupacional').innerHTML = item.desGrupo;
		    	dojo.byId('divCargo').innerHTML = item.desCategoria;
		    	
		    	if("S"==item.indEvaluacionComunicada)dojo.byId('evaluacionComunicadaSi').checked = true;	
		    	else if("N"==item.indEvaluacionComunicada)dojo.byId('evaluacionComunicadaNo').checked = true;
		    	
		    	dijit.byId("codUnidadOrganizacionalPersonal").set("value",item.codUnidadOrganizacionalPersonal);
		    	dijit.byId("codUnidadOrganizacionalEvalua").set("value",item.codUnidadOrganizacional);
		    	
		    	//Si la condici�n de la evaluaci�n es en revisi�n o conforme deshabilitamos el bot�n de grabaci�n.
		    	/*if("V"==item.indCondicion || "C"==item.indCondicion){
		    		dijit.byId("botonGrabarEval").set("disabled",true);	
		    	}else{
		    		dijit.byId("botonGrabarEval").set("disabled",false);
		    	}*/
		    	
		    	//Habilita o deshabilita la pregunta de comunicaci�n de resultados solo si est� conforme
		    	/*if("C"==item.indCondicion && "EE"==dojo.string.trim(item.indControl.toString())){
		    		dojo.attr("divPreguntaComunicacion", "style", {display:""});
		    	}else{
		    		dojo.attr("divPreguntaComunicacion", "style", {display:"none"});
		    	}*/
		    	dojo.attr("divPreguntaComunicacion", "style", {display:"none"});
		    	
		    	//Habilitamos o deshabilitamos los botones de confirmación y observación, si ya lo están.
		    	if("C"==item.indCondicion){
		    		dijit.byId("botonConfirmarEvaluacion").setDisabled(true);
		    		dojo.attr("botonConfirmarEvaluacion", "title", 'La evaluaci\u00F3n ya est\u00E1 confirmada.');
		    	}else {
		    		dijit.byId("botonConfirmarEvaluacion").setDisabled(false);
		    		dojo.attr("botonConfirmarEvaluacion", "title", '');
		    	}
		    	
		    	if("O"==item.indCondicion){
		    		dijit.byId("botonObservarEvaluacion").setDisabled(true);
		    		dojo.attr("botonObservarEvaluacion", "title", 'La evaluaci\u00F3n ya est\u00E1 observada.');
		    	}else {
		    		dijit.byId("botonObservarEvaluacion").setDisabled(false);
		    		dojo.attr("botonObservarEvaluacion", "title", '');
		    	}
		    	
		    }
		});
	};
	

	
	var clickbtnConfirmarEvaluacion = function(){
		dijit.byId("botonConfirmarEvaluacion").set("disabled",true);//deshabilito el bot�n
		dijit.byId("formRegistro").attr("action",(CONTEXTO_APP + '/Evaluacion.htm?action=actualizarEvaluacion&indCondicion=C&ms='+(new Date()).getTime()));
		var kw = {
			handleAs : "json",
			load : function(response, ioArgs) {
				alert("Evaluaci\u00F3n confirmada.");
				dijit.byId("botonConfirmarEvaluacion").set("disabled",false);
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
				dijit.byId("botonConfirmarEvaluacion").set("disabled",false);//habilito el bot�n
			},
			form : "formRegistro" 
		};
		dojo.xhrPost(kw);
		return true;
	};
	
	
	//Al Hacer clic en la observaci�n de la evaluaci�n
	var clickbtnObservarEvaluacion = function(){
		dijit.byId("botonObservarEvaluacion").set("disabled",true);//deshabilito el bot�n
		dijit.byId("formRegistro").attr("action",(CONTEXTO_APP + '/Evaluacion.htm?action=actualizarEvaluacion&indCondicion=O&ms='+(new Date()).getTime()));
		var kw = {
			handleAs : "json",
			load : function(response, ioArgs) {
				alert("Evaluaci\u00F3n observada.");
				dijit.byId("botonObservarEvaluacion").set("disabled",false);
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
				dijit.byId("botonObservarEvaluacion").set("disabled",false);//habilito el bot�n
			},
			form : "formRegistro" 
		};
		dojo.xhrPost(kw);
		return true;
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
			alert("No tiene registros de evaluaciones a revisar.");
			uuoo.validate();
		}
	};
	
	
	var clickbtnIniciarEval = function(){
		dojo.attr("divPantallaSeleccion", "style", {display:"none"});
		dojo.attr("divPantallaRegistro", "style", {display:""});
	};
	
	
	
	/**
	 * Ejecutado cada vez que el usuario graba una evaluaci�n
	 * */
	var clickbtnGrabarEval = function(esLink){
		/*var texto = dojo.string.trim(dijit.byId("comentarios").get("value"));
		if(texto.length>400){
			alert("El n\u00FAmero m\u00E1ximo de caracteres en el comentario del evaluador es igual a 400.");
			return false;
		}*/
		
		calcularPuntajesCompetencias();
		dijit.byId("botonGrabarEval").set("disabled",true);//deshabilito el bot�n
		dijit.byId("formRegistro").attr("action",(CONTEXTO_APP + '/Evaluacion.htm?action=registrarEvaluacion&ms='+(new Date()).getTime()));
		var kw = {
			handleAs : "json",
			load : function(response, ioArgs) {
				dijit.byId("botonGrabarEval").set("disabled",false);
				
				if("S"==response.evaluacionCompleta){
					alert("Evaluaci\u00F3n Registrada.");
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
				dijit.byId("botonGrabarEval").set("disabled",false);//habilito el bot�n
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
					if(controles[j].value=='A')acumulado = acumulado + 100;//TODO: Este dato deber�a ser un par�metro
					else if(controles[j].value=='B')acumulado = acumulado + 75;//TODO: Este dato deber�a ser un par�metro
					else if(controles[j].value=='C')acumulado = acumulado + 50;//TODO: Este dato deber�a ser un par�metro
					else if(controles[j].value=='D')acumulado = acumulado + 25;//TODO: Este dato deber�a ser un par�metro
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
			console.log("Competencia codigo:"+ci.codCompetencia+", Competencia puntaje"+ci.codCompetencia+", Competencia puntaje evaluacion:"+ci.cntPuntajeEvaluacion);
			cadenaCompetencias = cadenaCompetencias + ci.codCompetencia+','+ci.cntPuntajeEvaluacion+'|';
		}
		if(competenciasArray.length>0)cadenaCompetencias = cadenaCompetencias.substring(0,cadenaCompetencias.length-1);
		dijit.byId("codCompetenciasList").set("value",cadenaCompetencias);
		
	};
	

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
