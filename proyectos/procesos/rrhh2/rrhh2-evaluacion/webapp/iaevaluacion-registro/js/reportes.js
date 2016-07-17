	google.load('visualization', '1', {packages: ['corechart']});
   /**
	* Invocado por el método inicializarGrillas() que es invocado por el método settings() al cargar la página 
	* Construye la grilla gridReporteMonitoreo
	*/
	var construirGrillaMonitoreo = function(){
		var layout = 
			  [[ 
		         {name : '<center><b>ADJUNTA</b></center>',formatter:formatterLinkDetalleInstitucional, field : '_item',width : '500px',styles : 'text-align: left;'},
		         {name : '<b>Total a Evaluar</b>',field : 'totalEvaluar',width : '72px',styles : 'text-align: center;'},
		         {name : '<b>Transferidos</b>',field : 'totalTransferidos',width : '72px',styles : 'text-align: center;'},
		         {name : '<b>Evaluados sin Transf.</b>',field : 'totalSinTransferir',width : '72px',styles : 'text-align: center;'},
		         {name : '<b>No Evaluados</b>',field : 'totalNoEvaluados',width : '72px',styles : 'text-align: center;'}
			]];
		
		var dataEjemplo = [];		
		var nodata = {identifier: "codUnidadOrganizacional","items" : dataEjemplo};
		var store = new dojo.data.ItemFileReadStore({data : nodata});
		var grilla = new dojox.grid.EnhancedGrid(
				{
					id:"gridReporteMonitoreo",
					store:store,
					canSort:ordenable,
					structure:layout,
					rowSelector:'20px',
					selectable : true,
					selectionMode: 'single',
					loadingMessage : 'Cargando informaci&oacute;n...',
					noDataMessage : 'Sin informaci&oacute;n...'
				}, document.createElement('div'));
		grilla.placeAt("divMonitoreoContainer");
		grilla.startup();
	};
	
	
	/**
	 * Invocado cada vez que se actualiza la grilla gridReporteMonitoreo
	 * Da formato a la columna Adjunta de la grilla gridReporteMonitoreo que representa al reporte institucional
	 * */
	var formatterLinkDetalleInstitucional = function(item,index){
		var salida = "";
		if(item.codUnidadOrganizacional!='000000'){
			salida = '<a href="javascript:clickbtnDetalleMonitoreo(\''+item.codUnidadOrganizacional+'\')" onclick="">'+item.desUnidadOrganizacional+'</a>';	
		}else{
			salida = '<center><b>'+item.desUnidadOrganizacional+'</center></b>';	
		}
	    return salida;    
	};
	
	
	/**
	 * Invocado por el método settings() que se invoca al terminar de cargar la p�gina.
	 * Trae desde la base de datos el reporte de monitoreo institucional.
	 * */ 
	var actualizarGrillaInstitucional = function(){
		var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
		var query = "&codPeriodo="+codPeriodo;
		var URL = CONTEXTO_APP+"/Evaluacion.htm?action=reporteMonitoreo&tipoReporte=I"+query+"&ms="+(new Date()).getTime();
      	var store = new dojo.data.ItemFileReadStore({url:URL});
      	var grilla = dijit.byId("gridReporteMonitoreo");
      	grilla.setStore(store);
	};
	
	
	/**
	 * Invocado cada vez que el usuario realiza un clic sobre la columna adjunta en el reporte institucional
	 * los detalles de la invocación se muestran en formatterLinkDetalleInstitucional
	 * */
	var clickbtnDetalleMonitoreo = function(codAdjunta){
		dojo.attr("divPantallaMonitoreo", "style", {display:"none"});
		dojo.attr("divPantallaMonitoreoAdjunta", "style", {display:""});
		var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
		var query = "&codPeriodo="+codPeriodo+"&codAdjunta="+codAdjunta;
		var URL = CONTEXTO_APP+"/Evaluacion.htm?action=reporteMonitoreo&tipoReporte=A"+query+"&ms="+(new Date()).getTime();
      	var store = new dojo.data.ItemFileReadStore({url:URL});
      	var grilla = dijit.byId("gridReporteMonitoreoAdjunta");
      	grilla.setStore(store);
      	actualizarPanelAdjunta(codAdjunta);//Actualiza el nombre de la adjunta...
		dijit.byId("divMonitoreoAdjuntaBorderContainer").resize();
		dijit.byId("divMonitoreoAdjuntaContainer").resize();
	};
	
	
	
	
	
	
	
	/**
	 * Obtiene el nombre de la adjunta.
	 * */
	var actualizarPanelAdjunta = function(codUnidadOrganizacional){
		var store = dijit.byId("gridReporteMonitoreo").store;
		store.fetchItemByIdentity({
		    identity: codUnidadOrganizacional,
		    onItem: function(item, request) {
		    	dojo.byId('divNombreAdjunta').innerHTML = "<b><u>Adjunta&nbsp;:&nbsp;"+item.desUnidadOrganizacional+"</u></b>";
		    	dijit.byId("codAdjuntaHidden").set("value",item.codUnidadOrganizacional);
		    }
		});
	};
	
   /**
	* Construye la grilla de monitoreo para una determinada adjunta
	*/
	var construirGrillaMonitoreoAdjunta = function(){
		var layout = 
			  [[ 
		         {name : '<center><b>&Oacute;RGANO</b></center>',formatter:formatterLinkDetalleAdjunta, field : '_item',width : '500px',styles : 'text-align: left;'},
		         {name : '<b>Total a Evaluar</b>',field : 'totalEvaluar',width : '72px',styles : 'text-align: center;'},
		         {name : '<b>Transferidos</b>',field : 'totalTransferidos',width : '72px',styles : 'text-align: center;'},
		         {name : '<b>Evaluados sin Transf.</b>',field : 'totalSinTransferir',width : '72px',styles : 'text-align: center;'},
		         {name : '<b>No Evaluados</b>',field : 'totalNoEvaluados',width : '72px',styles : 'text-align: center;'}
			]];
		
		var dataEjemplo = [];		
		
		var nodata = {identifier: "codUnidadOrganizacional","items" : dataEjemplo};
		var store = new dojo.data.ItemFileReadStore({data : nodata});
		var grilla = new dojox.grid.EnhancedGrid(
				{
					id:"gridReporteMonitoreoAdjunta",
					store:store,
					canSort:ordenable,
					structure:layout,
					rowSelector:'20px',
					selectable : true,
					selectionMode: 'single',
					loadingMessage : 'Cargando informaci&oacute;n...',
					noDataMessage : 'Sin informaci&oacute;n...'
				}, document.createElement('div'));
		grilla.placeAt("divMonitoreoAdjuntaContainer");
		grilla.startup();
	};
	
	
	var formatterLinkDetalleAdjunta = function(item,index){
		var salida = "";
		if(item.codUnidadOrganizacional!='000000'){
			salida = '<a href="javascript:clickbtnDetalleMonitoreoAdjunta(\''+item.codUnidadOrganizacional+'\')" onclick="">'+item.desUnidadOrganizacional+'</a>';	
		}else{
			salida = '<center><b>'+item.desUnidadOrganizacional+'</center></b>';		
		}
	    return salida;    
	};
	
	
	/**
	 * Invocado cada vez que el usuario realiza un clic sobre la columna organo en el reporte de monitoreo por adjunta
	 * los detalles de la invocación se muestran en formatterLinkDetalleInstitucional
	 * */
	var clickbtnDetalleMonitoreoAdjunta = function(codOrgano){
		dojo.attr("divPantallaMonitoreoAdjunta", "style", {display:"none"});
		dojo.attr("divPantallaMonitoreoOrgano", "style", {display:""});
		var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
		var query = "&codPeriodo="+codPeriodo+"&codOrgano="+codOrgano;
		var URL = CONTEXTO_APP+"/Evaluacion.htm?action=reporteMonitoreo&tipoReporte=O"+query+"&ms="+(new Date()).getTime();
      	var store = new dojo.data.ItemFileReadStore({url:URL});
      	var grilla = dijit.byId("gridReporteMonitoreoOrgano");
      	grilla.setStore(store);
      	actualizarPanelOrgano(codOrgano);//Actualiza el nombre del organo en la pantalla de suborganos
		dijit.byId("divMonitoreoOrganoBorderContainer").resize();
		dijit.byId("divMonitoreoOrganoContainer").resize();
	};
	
	

	
	
	/**
	 * Obtiene el nombre del organo y lo muestra.
	 * */
	var actualizarPanelOrgano = function(codUnidadOrganizacional){
		var store = dijit.byId("gridReporteMonitoreoAdjunta").store;
		store.fetchItemByIdentity({
		    identity: codUnidadOrganizacional,
		    onItem: function(item, request) {
		    	dojo.byId('divNombreOrgano').innerHTML = "<b><u>&Oacute;rgano&nbsp;:&nbsp;"+item.desUnidadOrganizacional+"</u></b>";
		    	dijit.byId("codOrganoHidden").set("value",item.codUnidadOrganizacional);
		    }
		});
	};
	
	/**
	* Construye la grilla de monitoreo para un determinado organo
	*/
	var construirGrillaMonitoreoOrgano = function(){
		var layout = 
			  [[ 
		         {name : '<center><b>SUB - &Oacute;RGANO</b></center>',formatter:formatterLinkDetalleOrgano ,field : '_item',width : '500px',styles : 'text-align: left;'},
		         {name : '<b>Total a Evaluar</b>',field : 'totalEvaluar',width : '72px',styles : 'text-align: center;'},
		         {name : '<b>Transferidos</b>',field : 'totalTransferidos',width : '72px',styles : 'text-align: center;'},
		         {name : '<b>Evaluados sin Transf.</b>',field : 'totalSinTransferir',width : '72px',styles : 'text-align: center;'},
		         {name : '<b>No Evaluados</b>',field : 'totalNoEvaluados',width : '72px',styles : 'text-align: center;'}
			]];
		
		var dataEjemplo = [];		
		
		var nodata = {identifier: "codUnidadOrganizacional","items" : dataEjemplo};
		var store = new dojo.data.ItemFileReadStore({data : nodata});
		var grilla = new dojox.grid.EnhancedGrid(
				{
					id:"gridReporteMonitoreoOrgano",
					store:store,
					canSort:ordenable,
					structure:layout,
					rowSelector:'20px',
					selectable : true,
					selectionMode: 'single',
					loadingMessage : 'Cargando informaci&oacute;n...',
					noDataMessage : 'Sin informaci&oacute;n...'
				}, document.createElement('div'));
		grilla.placeAt("divMonitoreoOrganoContainer");
		grilla.startup();
	};
	
	
	var formatterLinkDetalleOrgano = function(item,index){
		var salida = "";
		if(item.codUnidadOrganizacional!='000000')
			salida = '<a href="javascript:clickbtnDetalleMonitoreoOrgano(\''+item.codUnidadOrganizacional+'\')" onclick="">'+item.desUnidadOrganizacional+'</a>';
		else
			salida = '<center><b>'+item.desUnidadOrganizacional+'</center></b>';
		
	    return salida;    
	};
	
	/**
	 * Invocado cada vez que el usuario realiza un clic sobre la columna organo en el reporte de monitoreo por organo (unidades del N3).
	 * */
	var clickbtnDetalleMonitoreoOrgano = function(codUnidad){
		dojo.attr("divPantallaMonitoreoOrgano", "style", {display:"none"});
		dojo.attr("divPantallaMonitoreoNivel3", "style", {display:""});
		var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
		var query = "&codPeriodo="+codPeriodo+"&codUnidad="+codUnidad;
		var URL = CONTEXTO_APP+"/Evaluacion.htm?action=reporteMonitoreo&tipoReporte=N3"+query+"&ms="+(new Date()).getTime();
      	var store = new dojo.data.ItemFileReadStore({url:URL});
      	var grilla = dijit.byId("gridReporteMonitoreoNivel3");
      	grilla.setStore(store);
      	actualizarPanelNivel3(codUnidad);//Actualiza el nombre del organo en la pantalla de suborganos
		dijit.byId("divMonitoreoNivel3BorderContainer").resize();
		dijit.byId("divMonitoreoNivel3Container").resize();
	};
	

/** ================================================================================ */
/** NIVEL 3 ~ Gerencia */
/** ================================================================================ */
	
	/**
	 * Obtiene el nombre de la unidad nivel 3 y lo muestra. ~Gerencia.
	 * */
	var actualizarPanelNivel3 = function(codUnidadOrganizacional){
		var store = dijit.byId("gridReporteMonitoreoOrgano").store;
		store.fetchItemByIdentity({
		    identity: codUnidadOrganizacional,
		    onItem: function(item, request) {
		    	dojo.byId('divNombreNivel3').innerHTML = "<b><u>UUOO&nbsp;:&nbsp;"+item.desUnidadOrganizacional+"</u></b>";
		    	dijit.byId("codUnidadHidden").set("value",item.codUnidadOrganizacional);
		    }
		});
	};
	
	/**
	* Construye la grilla de monitoreo para un determinado organo. ~Divisiones.
	*/
	var construirGrillaMonitoreoNivel3 = function(){
		var layout = 
			  [[ 
		         {name : '<center><b>UUOO</b></center>',formatter:formatterLinkDetalleNivel3 ,field : '_item',width : '500px',styles : 'text-align: left;'},
		         {name : '<b>Total a Evaluar</b>',field : 'totalEvaluar',width : '72px',styles : 'text-align: center;'},
		         {name : '<b>Transferidos</b>',field : 'totalTransferidos',width : '72px',styles : 'text-align: center;'},
		         {name : '<b>Evaluados sin Transf.</b>',field : 'totalSinTransferir',width : '72px',styles : 'text-align: center;'},
		         {name : '<b>No Evaluados</b>',field : 'totalNoEvaluados',width : '72px',styles : 'text-align: center;'}
			]];
		
		var dataEjemplo = [];		
		
		var nodata = {identifier: "codUnidadOrganizacional","items" : dataEjemplo};
		var store = new dojo.data.ItemFileReadStore({data : nodata});
		var grilla = new dojox.grid.EnhancedGrid(
				{
					id:"gridReporteMonitoreoNivel3",
					store:store,
					canSort:ordenable,
					structure:layout,
					rowSelector:'20px',
					selectable : true,
					selectionMode: 'single',
					loadingMessage : 'Cargando informaci&oacute;n...',
					noDataMessage : 'Sin informaci&oacute;n...'
				}, document.createElement('div'));
		grilla.placeAt("divMonitoreoNivel3Container");
		grilla.startup();
	};
	
	
	var formatterLinkDetalleNivel3 = function(item,index){
		var salida = "";
		if(item.codUnidadOrganizacional!='000000')
			salida = '<a href="javascript:clickbtnDetalleMonitoreoNivel3(\''+item.codUnidadOrganizacional+'\')" onclick="">'+item.desUnidadOrganizacional+'</a>';
		else
			salida = '<center><b>'+item.desUnidadOrganizacional+'</center></b>';
		
	    return salida;    
	};
	
	/**
	 * Invocado cada vez que el usuario realiza un clic sobre la columna organo en el reporte de monitoreo por organo (unidades del N3).
	 * */
	var clickbtnDetalleMonitoreoNivel3 = function(codUnidad){
		dojo.attr("divPantallaMonitoreoNivel3", "style", {display:"none"});
		dojo.attr("divPantallaMonitoreoNivel4", "style", {display:""});
		var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
		var query = "&codPeriodo="+codPeriodo+"&codUnidad="+codUnidad;
		var URL = CONTEXTO_APP+"/Evaluacion.htm?action=reporteMonitoreo&tipoReporte=N4"+query+"&ms="+(new Date()).getTime();
      	var store = new dojo.data.ItemFileReadStore({url:URL});
      	var grilla = dijit.byId("gridReporteMonitoreoNivel4");
      	grilla.setStore(store);
      	actualizarPanelNivel4(codUnidad);//Actualiza el nombre del organo en la pantalla de suborganos
		dijit.byId("divMonitoreoNivel4BorderContainer").resize();
		dijit.byId("divMonitoreoNivel4Container").resize();
	};
	
	
	/** ================================================================================ */
	/** NIVEL 4 ~ División */
	/** ================================================================================ */
		
		/**
		 * Obtiene el nombre de la unidad nivel 4 y lo muestra. ~División.
		 * */
		var actualizarPanelNivel4 = function(codUnidadOrganizacional){
			var store = dijit.byId("gridReporteMonitoreoNivel3").store;
			store.fetchItemByIdentity({
			    identity: codUnidadOrganizacional,
			    onItem: function(item, request) {
			    	dojo.byId('divNombreNivel4').innerHTML = "<b><u>UUOO&nbsp;:&nbsp;"+item.desUnidadOrganizacional+"</u></b>";
			    	dijit.byId("codUnidadHidden").set("value",item.codUnidadOrganizacional);
			    }
			});
		};
			
		/**
		* Construye la grilla de monitoreo para un determinada nivel 4. ~Secciones.
		*/
		var construirGrillaMonitoreoNivel4 = function(){
			var layout = 
				  [[ 
			         {name : '<center><b>UUOO</b></center>',formatter:formatterLinkDetalleNivel4 ,field : '_item',width : '500px',styles : 'text-align: left;'},
			         {name : '<b>Total a Evaluar</b>',field : 'totalEvaluar',width : '72px',styles : 'text-align: center;'},
			         {name : '<b>Transferidos</b>',field : 'totalTransferidos',width : '72px',styles : 'text-align: center;'},
			         {name : '<b>Evaluados sin Transf.</b>',field : 'totalSinTransferir',width : '72px',styles : 'text-align: center;'},
			         {name : '<b>No Evaluados</b>',field : 'totalNoEvaluados',width : '72px',styles : 'text-align: center;'}
				]];
			
			var dataEjemplo = [];		
			
			var nodata = {identifier: "codUnidadOrganizacional","items" : dataEjemplo};
			var store = new dojo.data.ItemFileReadStore({data : nodata});
			var grilla = new dojox.grid.EnhancedGrid(
					{
						id:"gridReporteMonitoreoNivel4",
						store:store,
						canSort:ordenable,
						structure:layout,
						rowSelector:'20px',
						selectable : true,
						selectionMode: 'single',
						loadingMessage : 'Cargando informaci&oacute;n...',
						noDataMessage : 'Sin informaci&oacute;n...'
					}, document.createElement('div'));
			grilla.placeAt("divMonitoreoNivel4Container");
			grilla.startup();
		};
		
		
		var formatterLinkDetalleNivel4 = function(item,index){
			var salida = "";
			if(item.codUnidadOrganizacional!='000000')
				//salida = '<a href="javascript:clickbtnDetalleMonitoreoNivel4(\''+item.codUnidadOrganizacional+'\')" onclick="">'+item.desUnidadOrganizacional+'</a>';
				salida = item.desUnidadOrganizacional;
			else
				salida = '<center><b>'+item.desUnidadOrganizacional+'</center></b>';
			
		    return salida;    
		};
		
		/**
		 * Invocado cada vez que el usuario realiza un clic sobre la columna organo en el reporte de monitoreo por organo (unidades del N3).
		 * */
		/*var clickbtnDetalleMonitoreoNivel4 = function(codUnidad){
			dojo.attr("divPantallaMonitoreoNivel4", "style", {display:"none"});
			dojo.attr("divPantallaMonitoreoNivel5", "style", {display:""});
			var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
			var query = "&codPeriodo="+codPeriodo+"&codUnidad="+codUnidad;
			var URL = CONTEXTO_APP+"/Evaluacion.htm?action=reporteMonitoreo&tipoReporte=N5"+query+"&ms="+(new Date()).getTime();
	      	var store = new dojo.data.ItemFileReadStore({url:URL});
	      	var grilla = dijit.byId("gridReporteMonitoreoNivel5");
	      	grilla.setStore(store);
	      	actualizarPanelNivel5(codUnidad);//Actualiza el nombre del organo en la pantalla de suborganos
			dijit.byId("divMonitoreoNivel5BorderContainer").resize();
			dijit.byId("divMonitoreoNivel5Container").resize();
		};*/
		
	
		/** ================================================================================ */
		/** NIVEL 5 ~ Sección */
		/** ================================================================================ */
			
			/**
			 * Obtiene el nombre de la unidad nivel 5 y lo muestra.
			 * */
			/*var actualizarPanelNivel5 = function(codUnidadOrganizacional){
				var store = dijit.byId("gridReporteMonitoreoNivel4").store;
				store.fetchItemByIdentity({
				    identity: codUnidadOrganizacional,
				    onItem: function(item, request) {
				    	dojo.byId('divNombreNivel5').innerHTML = "<b><u>Unidad Nivel 5&nbsp;:&nbsp;"+item.desUnidadOrganizacional+"</u></b>";
				    }
				});
			};*/
				
			/**
			* Construye la grilla de monitoreo para un determinada nivel 4
			*/
			/*var construirGrillaMonitoreoNivel5 = function(){
				var layout = 
					  [[ 
				         {name : '<center><b>UNIDAD NIVEL 6</b></center>',formatter:formatterLinkDetalleNivel5 ,field : '_item',width : '500px',styles : 'text-align: left;'},
				         {name : '<b>Total a Evaluar</b>',field : 'totalEvaluar',width : '72px',styles : 'text-align: center;'},
				         {name : '<b>Transferidos</b>',field : 'totalTransferidos',width : '72px',styles : 'text-align: center;'},
				         {name : '<b>Evaluados sin Transf.</b>',field : 'totalSinTransferir',width : '72px',styles : 'text-align: center;'},
				         {name : '<b>No Evaluados</b>',field : 'totalNoEvaluados',width : '72px',styles : 'text-align: center;'}
					]];
				
				var dataEjemplo = [];		
				
				var nodata = {identifier: "codUnidadOrganizacional","items" : dataEjemplo};
				var store = new dojo.data.ItemFileReadStore({data : nodata});
				var grilla = new dojox.grid.EnhancedGrid(
						{
							id:"gridReporteMonitoreoNivel5",
							store:store,
							canSort:ordenable,
							structure:layout,
							rowSelector:'20px',
							selectable : true,
							selectionMode: 'single',
							loadingMessage : 'Cargando informaci&oacute;n...',
							noDataMessage : 'Sin informaci&oacute;n...'
						}, document.createElement('div'));
				grilla.placeAt("divMonitoreoNivel5Container");
				grilla.startup();
			};
			
			
			var formatterLinkDetalleNivel5 = function(item,index){
				var salida = "";
				if(item.codUnidadOrganizacional!='000000')
					salida = item.desUnidadOrganizacional;
				else
					salida = '<center><b>'+item.desUnidadOrganizacional+'</center></b>';
				
			    return salida;    
			};*/
	
	
	
	
	
   /**
	* Construye la grilla de detalle de los datos para la curva de gauss
	*/
	var construirGrillaGauss = function(){
		
		var layout = 
			  [[ 
		         {name : '<b>Grado de Desarrollo</b>',formatter:formatterGrado, field : '_item',width : '200px',styles : 'text-align: center;'},
		         {name : '<b>% Avance</b>',formatter:formatterPorcentaje, field : '_item',width : '100px',styles : 'text-align: center;'},
		         {name : '<b>Cantidad</b>',field : 'cntTotalCompetencia',width : '100px',styles : 'text-align: center;'}
			]];
		
		var dataEjemplo = [];
		
		var nodata = {identifier: "codCompetencia","items" : dataEjemplo};
		var store = new dojo.data.ItemFileReadStore({data : nodata});
		var grilla = new dojox.grid.EnhancedGrid(
				{
					id:"gridGauss",
					store:store,
					canSort:ordenable,
					structure:layout,
					rowSelector:'20px',
					selectable : true,
					selectionMode: 'single',
					indirectSelection: true,
					loadingMessage : 'Cargando informaci&oacute;n...',
					noDataMessage : 'Sin informaci&oacute;n.'
				}, document.createElement('div'));
		grilla.placeAt("divMonitoreoGaussContainer");
		grilla.startup();
	};
	
	var formatterGrado = function(item,index){
		var salida = "";
		if(item.codCompetencia=='05'){
			salida = '<center><b>'+item.desCompetencia+'</center></b>';	
		}else{
			salida = item.desCompetencia;
		}
	    return salida;    
	};
	
	
	var formatterPorcentaje = function(item, index){
		var salida = item.pjeAvance+" %";
	    return salida;
	};

	
	/**
	 * Invocado cada vez que el usuario presiona el botón 'Curva de Gauss', tiene como parámetro
	 * el tipo de curva que hay que generar deacuerdo al tipo I:Institucional, A:Adjunta, O:Organo
	 * la condicion puede ser T:transferido, S:sin transferir, A:ambos
	 * */
	var clickbtnGraficar = function(condicion,tipo,divOcultar){
		tipoReporte=tipo;
		divOcultarReporte=divOcultar;
		if(condicion=='A'){
			dijit.byId("chkTransferidosDetalle").set("checked",true);
			dijit.byId("chkSinTransferirDetalle").set("checked",true);
		}
		
		
		//1. MOstramos ocultamos las pantallas
		dojo.attr(divOcultar, "style", {display:"none"});
		dojo.attr("divPantallaGauss", "style", {display:""});
		dijit.byId("pantallaAnteriorGauss").set("value",divOcultar);
		
		//2. Obtenemos los valores de las querys...
		var codPeriodo = dijit.byId("codPeriodoHidden").get("value");
		var codAdjunta = dijit.byId("codAdjuntaHidden").get("value");
		var codOrgano = dijit.byId("codOrganoHidden").get("value");
		var codUnidad = dijit.byId("codUnidadHidden").get("value");
		
		var query = "&tipoReporte="+tipo+"&condicion="+condicion+"&codPeriodo="+codPeriodo+"&codAdjunta="+codAdjunta+"&codOrgano="+codOrgano+"&codUnidad="+codUnidad;
		var URL = CONTEXTO_APP+"/Evaluacion.htm?action=reporteCompetencias"+query+"&ms="+(new Date()).getTime();
      	var store = new dojo.data.ItemFileReadStore({url:URL});
      	var grilla = dijit.byId("gridGauss");
      	grilla.setStore(store);
      	actualizarPanelGauss(tipo);//Actualiza el nombre de la curva de gauss
    	
      	mostrarGrafico(URL);
		dijit.byId("divMonitoreoGaussBorderContainer").resize();
		dijit.byId("divMonitoreoGaussContainer").resize();
	};
	
	
	var actualizarPanelGauss = function(tipo){
		if("I"==tipo){
			dojo.byId('divNombreGauss').innerHTML = "<b><u>Curva de Gauss&nbsp;:&nbsp;Institucional</u></b>";
			
		}else if("A"==tipo){
			//Saco el texto de la adjunta que se detalla
			var codUnidadOrganizacional = dijit.byId("codAdjuntaHidden").get("value");
			var store = dijit.byId("gridReporteMonitoreo").store;
			store.fetchItemByIdentity({
			    identity: codUnidadOrganizacional,
			    onItem: function(item, request) {
			    	dojo.byId('divNombreGauss').innerHTML = "<b><u>Curva de Gauss (Adjunta)&nbsp;:&nbsp;"+item.desUnidadOrganizacional+"</u></b>";
			    }
			});
			
		}else if("O"==tipo){
			//Saco el texto de la adjunta que se detalla
			var codUnidadOrganizacional = dijit.byId("codOrganoHidden").get("value");
			var store = dijit.byId("gridReporteMonitoreoAdjunta").store;
			store.fetchItemByIdentity({
			    identity: codUnidadOrganizacional,
			    onItem: function(item, request) {
			    	dojo.byId('divNombreGauss').innerHTML = "<b><u>Curva de Gauss (&Oacute;rgano)&nbsp;:&nbsp;"+item.desUnidadOrganizacional+"</u></b>";
			    }
			});
		}else if("N3"==tipo){
			//Saco el texto de la adjunta que se detalla
			var codUnidadOrganizacional = dijit.byId("codUnidadHidden").get("value");
			var prueba = codUnidadOrganizacional.substr(0, 3);
			codUnidadOrganizacional = codUnidadOrganizacional.substr(0, 3)+"000";
			var store = dijit.byId("gridReporteMonitoreoOrgano").store;
			store.fetchItemByIdentity({
			    identity: codUnidadOrganizacional,
			    onItem: function(item, request) {
			    	dojo.byId('divNombreGauss').innerHTML = "<b><u>Curva de Gauss (Gerencia)&nbsp;:&nbsp;"+item.desUnidadOrganizacional+"</u></b>";
			    }
			});
		}else if("N4"==tipo){
			//Saco el texto de la adjunta que se detalla
			var codUnidadOrganizacional = dijit.byId("codUnidadHidden").get("value");
			codUnidadOrganizacional = codUnidadOrganizacional.substr(0, 4)+"00";
			var store = dijit.byId("gridReporteMonitoreoNivel3").store;
			store.fetchItemByIdentity({
			    identity: codUnidadOrganizacional,
			    onItem: function(item, request) {
			    	dojo.byId('divNombreGauss').innerHTML = "<b><u>Curva de Gauss (División)&nbsp;:&nbsp;"+item.desUnidadOrganizacional+"</u></b>";
			    }
			});
		}
		
		
	};
	
	
	/**
	 * Se realiza una búsqueda por condición o condiciones de evaluado para 
	 * para una determinada unidad
	 * */
	var tipoReporte = null;
	var divOcultarReporte = null;
    var alCambiarCheckCondicion = function(checkSeleccionado){
    	var transferidos = dijit.byId("chkTransferidosDetalle").get("checked");
    	var sinTransferir = dijit.byId("chkSinTransferirDetalle").get("checked");
    	if(!transferidos && !sinTransferir){
    		alert("Debe seleccionar al menos una condici\u00F3n");
    		dijit.byId(checkSeleccionado).set("checked",true);
    	}
    	else if(transferidos && !sinTransferir)
    		clickbtnGraficar('T',tipoReporte,divOcultarReporte);
    	else if(!transferidos && sinTransferir)
    		clickbtnGraficar('S',tipoReporte,divOcultarReporte);
    	else if(transferidos && sinTransferir)
    		clickbtnGraficar('A',tipoReporte,divOcultarReporte);
    };
    
    /**
     * 
     */
    var chart;
    var mostrarGrafico = function(URL){
    	var lstLabel=[];
    	var lstPercent=[];
    	
		var kw = {
				handleAs : "json",
				load : function(response, ioArgs) {
					if(response!=null){
						var lstReporte = response.items;
						var item;
						for(var i=0; i<4; i++) {
							var item = lstReporte[i];
							lstLabel.push(item.desCompetencia);
							lstPercent.push(item.pjeAvance);
							
						};
				    	
						//chart
						var __instance__ = arguments.callee;
						
				    	var data = google.visualization.arrayToDataTable([
				              ['Grado de Desarrollo', 'Total (%)', { role: 'annotation' } ],
				              [lstLabel[0],  lstPercent[0], lstPercent[0]],
				              [lstLabel[1],  lstPercent[1], lstPercent[1]],
				              [lstLabel[2],  lstPercent[2], lstPercent[2]],
				              [lstLabel[3],  lstPercent[3], lstPercent[3]]
				            ]);

				            var options = {
				              title: 'Curva de Gauss (Total)',
				              pointSize : 5,
				              vAxis: {title: "Porcentaje (%)"},   	   
				              hAxis: {title: "Grado de Desarrollo"}, 
				              legend: { position: 'right' }
				            };
				            
				            try{
					            chart = new google.visualization.LineChart(document.getElementById('chartGauss'));
					            chart.draw(data, options); 
				        	}catch(err) {
				    		    //document.getElementById("divError").innerHTML = err.message;
				    		}
					}else{
						alert("Ha ocurrido un error al recuperar la información");
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
	
	
	/**
	 * Realiza la transición entre pantallas
	 * */
	var clickbtnRegresar = function(divPantallaOcultar,divPantallaMostrar){
		
		if(divPantallaMostrar!=null){
			dojo.attr(divPantallaMostrar, "style", {display:""});//pantalla principal
			dojo.attr(divPantallaOcultar, "style", {display:"none"});	
		}else{
			var pantallaAnteriorGauss = dijit.byId("pantallaAnteriorGauss").get("value");
			dojo.attr(pantallaAnteriorGauss, "style", {display:""});//pantalla principal
			dojo.attr(divPantallaOcultar, "style", {display:"none"});	
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
	
	
 
   /**=================================================================================
	* Inicializa las grillas, las construye y las pobla con data vacía. 
	*/	
	var inicializarGrillas = function(){
		construirGrillaMonitoreo();//institucional
		construirGrillaMonitoreoAdjunta();//para una adjunta
		construirGrillaMonitoreoOrgano();//para un organo
		construirGrillaMonitoreoNivel3();//para una unidad nivel 3
		construirGrillaMonitoreoNivel4();//para una unidad nivel 4
		//construirGrillaMonitoreoNivel5();//para una unidad nivel 5
		construirGrillaGauss();
		
		console.log("redimensionando1...");
		dijit.byId("divMonitoreoBorderContainer").resize();//contenedor de la grilla institucional
		dijit.byId("divMonitoreoContainer").resize();//contenedor de la grilla institucional
		
		console.log("redimensionando2...");
		dijit.byId("divMonitoreoGaussBorderContainer").resize();//contenedor de la grilla y gr�fico de Gauss
		dijit.byId("divMonitoreoGaussContainer").resize();//contenedor de la grilla y gr�fico de Gauss
		
		console.log("redimensionando3...");
		dijit.byId("divMonitoreoAdjuntaBorderContainer").resize();//contenedor de la grilla de los datos de la adjunta
		dijit.byId("divMonitoreoAdjuntaContainer").resize();//contenedor de la grilla de los datos de la adjunta
		
		console.log("redimensionando4...");
		dijit.byId("divMonitoreoOrganoBorderContainer").resize();//contenedor de la grilla de los datos de la adjunta
		dijit.byId("divMonitoreoOrganoContainer").resize();//contenedor de la grilla de los datos de la adjunta
		
		
		dijit.byId("divMonitoreoNivel3BorderContainer").resize();//contenedor de la grilla de los datos de unidad nivel 3
		dijit.byId("divMonitoreoNivel3Container").resize();//contenedor de la grilla de los datos de unidad nivel 3
		
		dijit.byId("divMonitoreoNivel4BorderContainer").resize();//contenedor de la grilla de los datos de unidad nivel 3
		dijit.byId("divMonitoreoNivel4Container").resize();//contenedor de la grilla de los datos de unidad nivel 3
		
		//dijit.byId("divMonitoreoNivel5BorderContainer").resize();//contenedor de la grilla de los datos de unidad nivel 3
		//dijit.byId("divMonitoreoNivel5Container").resize();//contenedor de la grilla de los datos de unidad nivel 3
	};

		
	
	var regresar = function(){
		dijit.byId("gridMotivos").setStore(new dojo.data.ItemFileReadStore({data:respuestaServer.motivos}));
		dijit.byId("divMotivosBorderContainer").resize();
		dijit.byId("divMotivosContainer").resize();
		//dijit.byId("gridMotivos2").setStore(new dojo.data.ItemFileReadStore({data:response.motivos}));
		dijit.byId("stackContainer").back();
	};	
	


	
	var getNumberValue = function(index,item){
		console.log("item->"+item);
		console.log("index->"+index);
		var valorString = this.widget.get('value');
		console.log("valor desde el widget->"+valorString);
		var valorNumber = dojo.number.parse(valorString, {pattern: "#######0.########",locale:'en-us'});
		console.log("valor desde parseado->"+valorNumber);
		return valorNumber;
	};
	
	
	var clickbtnBuscar = function(){
		dojo.attr("divPantallaPeriodoUnidad", "style", {display:"none"});
		dojo.attr("divPantallaSeleccion", "style", {display:""});
		dijit.byId("divEvaluadosBorderContainer").resize();
		dijit.byId("divEvaluadosContainer").resize();
	};
	
	
	
	/**
	 * Exportar unidades excel
	 */
	var clickMonitorearExcel = function(tipoReporte){
		document.form.tipoReporte.value = tipoReporte;
		document.form.submit();
	};
	
	
	var settings = function(){
		console.log("Inicializando grillas...");
		inicializarGrillas();
		console.log("Actualizando grilla institucional...");
		actualizarGrillaInstitucional();
	};
	

	dojo.addOnLoad(function(){
		dojo.require("dojo.data.ItemFileReadStore");
		dojo.require("dojo.data.ItemFileWriteStore");
  		dojo.require("dijit.layout.ContentPane");
  		dojo.require("dijit.layout.BorderContainer");
		dojo.require("dijit.form.TextBox");
		dojo.require("dijit.form.Textarea");
		dojo.require("dijit.form.SimpleTextarea");
		dojo.require("dijit.form.Button");
		dojo.require("dijit.form.FilteringSelect");
  		dojo.require("dojo.parser");
  		dojo.require("dijit.form.Form");
  		dojo.require("dijit.form.Select");
  		dojo.require("dijit.form.RadioButton");
  		dojo.require("dijit.form.CheckBox");
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
	
	
	
	
	