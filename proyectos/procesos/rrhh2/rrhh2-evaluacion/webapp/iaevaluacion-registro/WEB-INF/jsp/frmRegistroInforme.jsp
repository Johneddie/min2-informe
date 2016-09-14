<%@include file="/WEB-INF/jsp/include/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<script type="text/javascript">
	$.getScript("${resource}/admin/informe/registro/frmRegistroInforme.js");	
</script>
<body>

	<form id="frmRegistroInforme" class="parent">
		<div id="divRegistro_frmRegistroInforme" style="padding-top: 10px;">
		
		<div id="tabs">
		  <ul>
		    <li><a href="#tabs-1">Datos Generales</a></li>
		    <li><a href="#tabs-2">Información y Resultados</a></li>
		    <li><a href="#tabs-3">Datos de Empresas</a></li>	    
		    <li><a href="#tabs-4">Conclusiones y Recomendaciones</a></li>	
		  </ul>
		  <div id="tabs-1">
			<fieldset>
			<table cellpadding="1" cellspacing="1" style="width: 100%" class="campos">
			<tr>
			<td style="width:20%"></td>
			<td style="width:60%"></td>
			<td style="width:20%"><li><b>Estado: En proceso</b></li></td>
			</tr>
			<tr>
			<td></td>
			<td align="center"><div id="divTitulo">${desTitulo}/${desOcex}</div></td>
			<td></td>
			</tr>
			<tr>
			<td><li><b>A</b></li></td>
			<td colspan="2"><div id="divDirector">${nomDirector}</div>DIRECCIÓN DE GESTIÓN Y MONITOREO DE LAS OFICINAS COMERCIALES DEL PERU EN EL EXTERIOR</td>
			</tr>
			<tr>
			<td><li><b>Asunto</b></li></td>
			<td colspan="2">${nomActividad}</td>
			</tr>
			<tr>
			<td><li><b>Referencia</b></li></td>
			<td colspan="2"><input id="tbDesReferencia_frmRegistroInforme" type="text"
			 										   maxlength="100" name="tbDesReferencia" data-model="desReferencia" 
			 										   class="text_box_completo" value="${objInforme.desReferencia}"/></td>
			</tr>
			<tr>
			<td><li><b>Fecha</b></li></td>
			<td colspan="2"><input id="taFecEmisionInforme_frmRegistroInforme" type="text" name="taFecEmisionInforme" 
			                        	   class="text_box_p" maxlength="10" data-model="fecEmisionInforme"
			                        	   placeholder="dd/mm/yyyy" style="text-align: center;" value="${objInforme.fecEmisionInforme}"  /></td>
			</tr>
			</table>
			</fieldset>
			<br/>
			<fieldset>
			<legend>I. Antecedentes</legend>
			<table cellpadding="1" cellspacing="1" style="width: 100%"	class="campos">
				<tr>
					<td><li><b>Agregue información sobre participación y actividades, resoluciones, cartas, etc.</b></li></td>							
				</tr>
				<tr>
					<td colspan="2">
						<textarea data-model="desAntecedentes" id="taDesAntecedentes_frmRegistroInforme" name="taDesAntecedentes"
						  rows="4" maxlength="1200" style="width:99%">${objInforme.desAntecedentes}</textarea>
						<span>Máximo 1200 carácteres</span>
					</td>
				</tr>
				<tr><td></td></tr>
			</table>
			</fieldset>
		    <br/>
			<fieldset>
			<legend>II. Objetivo e importancia de la actividad</legend>
			<table cellpadding="1" cellspacing="1" style="width: 100%"	class="campos">
				<tr>
					<td><li><b>Agregue información sobre el objetivo e importancia de la actividad.</b></li></td>							
				</tr>
				<tr>
					<td colspan="2">
						<textarea data-model="desObjetivoImport" id="taDesObjetivoImport_frmRegistroInforme" name="taDesObjetivoImport"
						  rows="4" maxlength="1200" style="width:99%">${objInforme.desObjetivoImport}</textarea>
						<span>Máximo 1200 carácteres</span>
					</td>
				</tr>
				<tr><td></td></tr>
			</table>
			</fieldset>
		    <br/>
			<fieldset>
				<legend>III. Ficha técnica de la actividad</legend>
				<table cellpadding="1" cellspacing="1" style="width: 100%"	class="campos">
					<tr>
						<td style="width:50%"><li><b>Nombre de la actividad</b></li></td>
						<td><li><b>Tipo de actividad</b></li></td>
					</tr>
					<tr>
						<td> <b>&nbsp;&nbsp;&nbsp;${nomActividad}</b></td>
						<td>
							<select id="ddlIdTipoActividad_frmRegistroInforme" name="ddlIdTipoActividad" data-model="idTipoActividad" class="ddl" style="width:280px">
								<option selected="selected" value="">- Seleccione -</option>	
								<c:forEach items="${lstTipoActividad}" var="tipoActividad">
									<c:set var="selected" value=""/>
									<c:if test="${tipoActividad.idTipoActividad == objInforme.idTipoActividad}">
										<c:set var="selected" value="selected"/>
									</c:if>
								<option ${selected} value="${tipoActividad.idTipoActividad}">${tipoActividad.desTipoActividad}</option>
								</c:forEach>
<!-- 									<option value="1">Apoyo en implantación de empresa peruana</option>									 -->
<!-- 									<option value="2">Door to door</option> -->
<!-- 									<option value="3">Evento gastronómico</option> -->
<!-- 									<option value="4">Evento RICE traido al Peru</option> -->
<!-- 									<option value="5">Inversion extranjera en exportaciones</option> -->
<!-- 									<option value="6">Otras actividades</option> -->
<!-- 									<option value="7">Feria</option> -->
								</select>
						</td>
					</tr>
					<tr>
						<td style="width:50%"><li><b>Fecha de inicio</b></li></td>
						<td><li><b>Fecha de fin</b></li></td>
					</tr>
					<tr>				
                    <td>
                        <input id="taFecIniActividad_frmConsultaInforme" type="text" name="taFecIniActividad" 
                        	   class="text_box_p" maxlength="10" data-model="fecIniActividad"
                        	   placeholder="dd/mm/yyyy" style="text-align: center;" value="${objInforme.fecIniActividad}" />
                    </td>
                    <td>
                        <input id="taFecFinActividad_frmConsultaInforme" type="text" name="taFecFinActividad" 
                        	   class="text_box_p" maxlength="10" data-model="fecFinActividad"
                        	   placeholder="dd/mm/yyyy" style="text-align: center;" value="${objInforme.fecFinActividad}" />
                    </td>
					</tr>					
					<tr>
						<td style="width:50%"><li><b>Lugar de realización</b></li></td>
						<td></td>
					</tr>
		               <tr>
		                    <td style="width:50%">
		                    	<li><b>Pais</b></li>
		                    </td>		                    
		                    <td>
		                    	<li><b>Ciudad</b></li>
		                    </td>
		               </tr>
		            	<tr>
		                    <td style="width:50%">
		                    <div >
                    			<select id="ddlIdPais_frmRegistroInforme" data-model="idPais" name="ddlIdPais" class="ddl">
                    				<option selected="selected" value="">- Seleccione-</option>
									<c:set var="selected" value=""/>
									<c:if test="${ocexDto.idPais == objInforme.idPais}">
										<c:set var="selected" value="selected"/>
									</c:if>
		                    		<option ${selected} value="${ocexDto.idPais}">${ocexDto.desPais}</option>
<!-- 		                    		<option value="176" data-codAlfa2="PE">PERU</option> -->
                    			</select>
								</div>
		                    </td>
		                    
		                    <td >
		                    	<select id="ddlIdCiudad_frmRegistroInforme" data-model="idCiudad" name="ddlIdCiudad" class="ddl">
	                    			<option selected="selected" value="">- Seleccione-</option>
									<c:forEach items="${objTag1Ciudad}" var="tag1Ciudad">																		
									<c:set var="selected" value=""/>
									<c:if test="${tag1Ciudad.idCiudad == objInforme.idCiudad}">
										<c:set var="selected" value="selected"/>
									</c:if>
										<option ${selected} value="${tag1Ciudad.idCiudad}">${tag1Ciudad.desCiudad}</option>
									</c:forEach>
								</select>
		                    </td>
		               </tr>

					<tr>
						<td style="width:50%"><li><b>Productos</b></li></td>
						<td><li><b>Sector</b></li></td>
					</tr>
					<tr>
						<td><input id="tbDesProducto_frmRegistroInforme"
							type="text" maxlength="50" name="tbDesProducto" value="${objInforme.desProducto}"
							data-model="desProducto" class="text_box_completo"></td>

						<td>
							<select id="ddlIdSectorNegocio_frmRegistroInforme" name="ddlIdSectorNegocio" data-model="idSectorNegocio" class="ddl" style="width:280px">
								<option selected="selected" value="">- Seleccione -</option>
<!-- 								<option value="1">Agroindustria</option> -->
<!-- 								<option value="2">Productos pesqueros</option>  -->
<%-- 								<c:forEach items="${lstDrc8SectorNegocio}" var="drc8SectorNegocio"> --%>
								<c:forEach items="${lstDrc8SectorNegocio}" var="drc8SectorNegocio">
									<c:set var="selected" value=""/>
									<c:if test="${drc8SectorNegocio.idSectorNegocio == objInforme.idSectorNegocio}"> 
										<c:set var="selected" value="selected"/>
									</c:if>
								<option ${selected} value="${drc8SectorNegocio.idSectorNegocio}">${drc8SectorNegocio.desSectorNegocio} - ${drc8SectorNegocio.abrSectorNegocio}</option>
								</c:forEach>																		
								</select>
						</td>
					</tr>
				</table>
				<div id="tblFichaActividadFeria_frmConsultaInforme">
				<table cellpadding="1" cellspacing="1" style="width: 100%"	class="campos">
		               <tr>
		                    <td style="width:50%">
		                    	<li><b>Frecuencia</b></li>
		                    </td>		                    
		                    <td>
		                    	<li><b>Año de fundación</b></li>
		                    </td>
		               </tr>
					<tr>
						<td><input id="tbDesFrecuencia_frmRegistroInforme"
							type="text" maxlength="50" name="tbDesFrecuencia" value="${objInforme.desFrecuencia}"
							data-model="desFrecuencia" class="text_box_completo"></td>

						<td><input id="tbDesFundacion_frmRegistroInforme"
							type="text" maxlength="50" name="tbDesFundacion" value="${objInforme.desFundacion}"
							data-model="desFundacion" class="text_box_completo"></td>
					</tr>							
					<tr>
						<td style="width:50%"><li><b>Organizador</b></li></td>
						<td><li><b>Número de expositores</b></li></td>
					</tr>
					<tr>
						<td><input id="tbDesOrganizador_frmRegistroInforme"
							type="text" maxlength="20" name="tbDesOrganizador" value="${objInforme.desOrganizador}"
							data-model="desOrganizador" class="text_box_completo"></td>

						<td><input id="tbNumExpositores_frmRegistroInforme"
							type="text" maxlength="20" name="tbNumExpositores" value="${objInforme.numExpositores}"
							data-model="numExpositores" class="text_box_completo"></td>
					</tr>
					<tr>
						<td style="width:50%"><li><b>Número de asistentes</b></li></td>
						<td><li><b>Superficie (m2)</b></li></td>
					</tr>
					<tr>
						<td><input id="tbNumAsistentes_frmRegistroInforme"
							type="text" maxlength="20" name="tbNumAsistentes" value="${objInforme.numAsistentes}"
							data-model="numAsistentes" class="text_box_completo"></td>

						<td><input id="tbDesSuperficie_frmRegistroInforme"
							type="text" maxlength="20" name="tbDesSuperficie" value="${objInforme.desSuperficie}"
							data-model="desSuperficie" class="text_box_completo"></td>
					</tr>
					<tr>
						<td style="width:50%"><li><b>Horario de la actividad</b></li></td>
						<td><li><b>Costo de la entrada</b></li></td>
					</tr>
					<tr>
						<td><input id="tbDesHorActividad_frmRegistroInforme"
							type="text" maxlength="20" name="tbDesHorActividad" value="${objInforme.desHorActividad}"
							data-model="desHorActividad" class="text_box_completo"></td>

						<td><input id="tbDeslEntrada_frmRegistroInforme"
							type="text" maxlength="20" name="tbDesEntrada" value="${objInforme.desEntrada}"
							data-model="desEntrada" class="text_box_completo"></td>
					</tr>
					<tr>
						<td style="width:50%"><li><b>Fecha de proxima edición</b></li></td>
						<td><li><b>Web</b></li></td>
					</tr>
					<tr>
						<td><input id="tbDesProxEdicion_frmRegistroInforme"
							type="text" maxlength="20" name="tbDesProxEdicion" value="${objInforme.desProxEdicion}"
							data-model="desProxEdicion" class="text_box_completo"></td>

						<td><input id="tbDesWeb_frmRegistroInforme"
							type="text" maxlength="20" name="tbDesWeb" value="${objInforme.desWeb}"
							data-model="desWeb" class="text_box_completo"></td>
					</tr>					
				</table>
				</div>
			</fieldset>
		    </div>
		    <div id="tabs-2">
			<fieldset>
			<legend>IV. Descripción de la actividad</legend>
			<table cellpadding="1" cellspacing="1" style="width: 100%"	class="campos">
				<tr>
					<td><li><b>Agregue descripción detallada de la actividad, presencia y formato de promoción de paises competidores de ser el caso.</b></li></td>							
				</tr>
				<tr>
					<td colspan="2">
						<textarea data-model="desActividad" id="taDesActividad_frmRegistroInforme" name="taDesActividad"
						  rows="4" maxlength="1200" style="width:99%">${objInforme.desActividad}</textarea>
						<span>Máximo 1200 carácteres</span>
					</td>
				</tr>
				<tr><td></td></tr>
			</table>
			</fieldset>
			<br/>		        
			<fieldset>
			<legend>V. Información del mercado obtenida en la actividad</legend>
			<table cellpadding="1" cellspacing="1" style="width: 100%"	class="campos">
				<tr>
					<td><li><b>Agregue tendencias y oportunidades identificadas, productos novedosos y destacados, competencia de la oferta peruana.</b></li></td>							
				</tr>
				<tr>
					<td colspan="2">
						<textarea data-model="desInfoMercado" id="taDesInfoMercado_frmRegistroInforme" name="taDesInfoMercado"
						  rows="4" maxlength="1200" style="width:99%">${objInforme.desInfoMercado}</textarea>
						<span>Máximo 1200 carácteres</span>
					</td>
				</tr>
				<tr><td></td></tr>
			</table>
			</fieldset>
		    <br/>		
			<fieldset>
				<legend>VI. Resultados y valoración de la actividad</legend>
				<table cellpadding="1" cellspacing="1" style="width: 100%"	class="campos">
					<tr>
						<td><li><b>Agregue valoración cualitativa, comentarios de los expositores, compradores y visitantes.</b></li></td>							
					</tr>
					<tr>
						<td colspan="2">
							<textarea data-model="desValoraCuali" id="taDesValoraCuali_frmRegistroInforme" name="taDesValoraCuali"
							  rows="4" maxlength="1200" style="width:99%">${objInforme.desValoraCuali}</textarea>
							<span>Máximo 1200 carácteres</span>
						</td>
					</tr>
				</table>
			</fieldset>
			<br/>
			<fieldset>
				<table style="width: 100%" class="campos">
					<tr>
						<td colspan="4"><li><b>Agregue valoración cuantitativa. (Las cantidades de empresas se completan en la pestaña "Datos de Empresas")</b>&nbsp;<input type="image" id="irTabs3_frmRegistroInforme" style="width:14px; height:14px; text-align:center;" title="" src="${img}/ir.png" onClick="goTabs3(); return false;" /> </li></td>							
					</tr>				
					<tr>
						<td style="width: 40%"><b></b></td>							
						<td style="width: 20%; align:center" ><input type="text" id="taNumPeriodoAnual_frmRegistroInforme" value="${actualYear}" data-model="objValoraCuanti1.numPeriodoAnual" maxlength="4" style="display:none"/>&nbsp;<b>(Año actual)</b></td>
						<td style="width: 20%; align:center" ><input type="text" id="taNumPeriodoAnual_frmRegistroInforme" value="${actualYear-1}" data-model="objValoraCuanti2.numPeriodoAnual" maxlength="4" style="display:none"/>&nbsp;<b>(Hace 1 año)</b></td>
						<td style="width: 20%; align:center" ><input type="text" id="taNumPeriodoAnual_frmRegistroInforme" value="${actualYear-2}" data-model="objValoraCuanti3.numPeriodoAnual" maxlength="4" style="display:none"/>&nbsp;<b>(Hace 2 años)</b></td>
						
					</tr>
					<tr>
						<td>Monto proyectado US$</td>
						<td ><input type="text" class="text_box" id="taNumMontoProy_frmRegistroInforme" name="taNumMontoProy" data-model="objValoraCuanti1.numMontoProy" maxlength="9" style="text-align: center;" value="${objInforme.objValoraCuanti1.numMontoProy}" /> </td>
						<td ><input type="text" class="text_box" id="taNumMontoProy_frmRegistroInforme" name="taNumMontoProy" data-model="objValoraCuanti2.numMontoProy" maxlength="9" style="text-align: center;" value="${objInforme.objValoraCuanti2.numMontoProy}" /> </td>
						<td ><input type="text" class="text_box" id="taNumMontoProy_frmRegistroInforme" name="taNumMontoProy" data-model="objValoraCuanti3.numMontoProy" maxlength="9" style="text-align: center;" value="${objInforme.objValoraCuanti3.numMontoProy}" /> </td>
					</tr>
					<tr >
						<td>Descripción de productos</td>
						<td ><input type="text" class="text_box" id="taDesProductos_frmRegistroInforme" name="taDesProductos" data-model="objValoraCuanti1.desProductos" maxlength="50" style="text-align: center;" value="${objInforme.objValoraCuanti1.desProductos}" /> </td>
						<td ><input type="text" class="text_box" id="taDesProductos_frmRegistroInforme" name="taDesProductos" data-model="objValoraCuanti2.desProductos" maxlength="50" style="text-align: center;" value="${objInforme.objValoraCuanti2.desProductos}" /> </td>
						<td ><input type="text" class="text_box" id="taDesProductos_frmRegistroInforme" name="taDesProductos" data-model="objValoraCuanti3.desProductos" maxlength="50" style="text-align: center;" value="${objInforme.objValoraCuanti3.desProductos}" /> </td>
					</tr>
					<tr>
						<td>Cantidad de empresas peruanas&nbsp;<input type="image" id="ibVerp_frmRegistroInforme" style="width:14px; height:14px; text-align:center;" title="Exportadores/Operadores turisticos/Inversionistas/Personas" src="${img}/ir.png" onClick="goTabs3(); return false;"/></td>
						<td ><input data-model="objValoraCuanti1.numExportadores" id="taNumExportadores_frmRegistroInforme1" type="text" class="text_box_p text_box_disabled" maxlength="10" style="text-align: center;" name="numExportadores1" readonly="readonly" value="${objInforme.objValoraCuanti1.numExportadores}" /></td>
						<td ><input data-model="objValoraCuanti2.numExportadores" id="taNumExportadores_frmRegistroInforme2" type="text" class="text_box_p text_box_disabled" maxlength="10" style="text-align: center;" name="numExportadores2" readonly="readonly" value="${objInforme.objValoraCuanti2.numExportadores}" /></td>
						<td ><input data-model="objValoraCuanti3.numExportadores" id="taNumExportadores_frmRegistroInforme3" type="text" class="text_box_p text_box_disabled" maxlength="10" style="text-align: center;" name="numExportadores3" readonly="readonly" value="${objInforme.objValoraCuanti3.numExportadores}" /></td>
					</tr>
					<tr>
						<td>Cantidad de empresas extranjeras&nbsp;<input type="image" id="ibVere_frmRegistroInforme" style="width:14px; height:14px; text-align:center;" title="Importadores/Distribuidores/Supermercado/Tienda/Operadores turisticos/Agencias/Aerolineas/Restaurantes/Prensa/Inversionistas/Personas" src="${img}/ir.png" onClick="goTabs3(); return false;"/></td>
						<td ><input data-model="objValoraCuanti1.numCompradores" id="taNumCompradores_frmRegistroInforme1" type="text" class="text_box_p text_box_disabled" maxlength="10" style="text-align: center;" name="numCompradores1" readonly="readonly" value="${objInforme.objValoraCuanti1.numCompradores}" /></td>
						<td ><input data-model="objValoraCuanti2.numCompradores" id="taNumCompradores_frmRegistroInforme2" type="text" class="text_box_p text_box_disabled" maxlength="10" style="text-align: center;" name="numCompradores2" readonly="readonly" value="${objInforme.objValoraCuanti2.numCompradores}" /></td>
						<td ><input data-model="objValoraCuanti3.numCompradores" id="taNumCompradores_frmRegistroInforme3" type="text" class="text_box_p text_box_disabled" maxlength="10" style="text-align: center;" name="numCompradores3" readonly="readonly" value="${objInforme.objValoraCuanti3.numCompradores}" /></td>
					</tr>
					<tr><td colspan="4">&nbsp;</td></tr>
				</table>
			</fieldset>			
		    <br/>     	
			</div>
			<div id="tabs-3">
			<fieldset>
			<table cellpadding="1" cellspacing="1" style="width: 100%"	class="campos">
					<tr><td colspan="4" align="right"><input type="image" id="ibAgrega_frmRegistroInforme" title="Directorio de Empresas" src="${img}/btn_agregar.jpg" alt="Agregar"></td></tr>
			</table>
			</fieldset>
			<br/>			
			<fieldset>
				<legend>Lista de Empresas</legend>
				<table cellpadding="1" cellspacing="1" style="width: 100%"	class="campos">
					<tr>
						<td><b>Tipo de empresa</b></td>							
						<td><b>Código/RUC</b></td>
						<td><b>Razón Social</b></td>
						<td><b>Contacto</b></td>
					</tr>
					<tr>
						<td>Importador</td>
						<td>001</td>
						<td>Empresa 1</td>
						<td>Giacomo Guilizzoni</td>
					</tr>
					<tr><td colspan="4">&nbsp;</td></tr>
					<tr><td colspan="4">Cantidad de empresas: 1</td></tr>
					
				</table>
			</fieldset>			
			</div>
			
			<div id="tabs-4">			
			<fieldset>
				<legend>VII. Conclusiones</legend>
				<table cellpadding="1" cellspacing="1" style="width: 100%"	class="campos">
					<tr>
						<td><li><b>Agregue conclusiones del informe</b></li></td>							
					</tr>
					<tr>
						<td colspan="2">
							<textarea data-model="desConclusiones" id="taDesConclusiones_frmRegistroInforme" name="taDesConclusiones"
							  rows="4" maxlength="1200" style="width:99%">${objInforme.desConclusiones}</textarea>
							<span>Máximo 1200 carácteres</span>
						</td>
					</tr>
					<tr><td></td></tr>
					
				</table>
			</fieldset>
		    <br/>
			<fieldset>
				<legend>VIII. Recomendaciones</legend>
				<table cellpadding="1" cellspacing="1" style="width: 100%"	class="campos">
					<tr>
						<td><li><b>Agregue recomendaciones del informe</b></li></td>							
					</tr>
					<tr>
						<td colspan="2">
							<textarea data-model="desRecomendaciones" id="taDesRecomendaciones_frmRegistroInforme" name="taDesRecomendaciones"
							  rows="4" maxlength="1200" style="width:99%">${objInforme.desRecomendaciones}</textarea>
							<span>Máximo 1200 carácteres</span>
						</td>
					</tr>
				</table>
			</fieldset>
				<br/>
			<fieldset>
				<table cellpadding="1" cellspacing="1" style="width: 100%" border="0"	class="campos">
					<tr>
						<td colspan="4"><li><b>Agregue o adjunte documentos (programas, agendas de reuniones, encuestas, etc.)</b></li></td>							
					</tr>				
					<tr>
						<td colspan="4">&nbsp;</td>							
					</tr>				
					<tr>
						<td width="20%"><b>Tipo de documento</b></td>							
						<td width="60%">
							<div class="lista" data-model="lstDocumento" data-multiple=true >
							<select id="ddlDocumento_frmRegistroInforme" name="ddlDocumento" class="ddl" style="width:120px">
								<option selected="selected" value="">- Seleccione -</option>
								
								<c:forEach items="${lstDocumento}" var="tipoDocumento">
									<c:set var="selected" value=""/>
									<c:if test="${tipoDocumento.idTipoDocumento == objInforme.lstDocumento[0].idTipoDocumento}">
										<c:set var="selected" value="selected"/>
									</c:if>
								<option ${selected} value="${tipoDocumento.idTipoDocumento}">${tipoDocumento.desTipoDocumento}</option>
								</c:forEach>
<!-- 								<option value="1">Programa</option> -->
<!-- 								<option value="2">Agenda</option>  -->
<!-- 								<option value="3">Encuesta</option> -->
<!-- 								<option value="4">Formato</option> -->
<!-- 								<option value="5">Imagen</option> -->
							</select>&nbsp;
								<input type="text" class="text_box_p text_box_disabled" id="taDesDocumento_frmRegistroInforme" name="taDesDocumento" value="${objInforme.lstDocumento[0].desDocumento}" data-model="desDocumento" style="width:250px"  />
							</div>							
						</td>
						<td width="10%">&nbsp;
							<div class="lista" data-model="lstDocumento" data-multiple=true style="display:none">
								<input type="text" id="taIdTipoDocumento_frmRegistroInforme" name="taIdTipoDocumento" data-model="idTipoDocumento"/>
							</div>
							<div class="lista" data-model="lstDocumento" data-multiple=true style="display:none">
								<input type="text" id="taCodDocumento_frmRegistroInforme" name="taCodDocumento" data-model="codDocumento"/>
							</div>
						</td>
						<td width="10%">&nbsp;					
							<div class="lista" data-model="lstDocumento" data-multiple=true style="display:none">
								<input type="text" id="taRutaDocumento_frmRegistroInforme" name="taRutaDocumento" data-model="rutaDocumento"/>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="4"><iframe name="ifUploader" id="ifUploader_frmRegistroInforme" width="100%"  frameborder="0" src="${resource}/uploader/examples/basic_example/index.html"></iframe>
					</td>
					</tr>
				</table>
			</fieldset>								
			<br/>
			</div>
			
			</div>
			<br/>
			<fieldset>			
			<table class="campos" cellpadding="0" cellspacing="0" width="100%">
               <tbody>
                   <tr>                       
                       <td style="width: 20%">
							<%--C&oacute;digo de seguridad<span class="aste">(*)</span>--%>							
					   </td>
					   <td style="width:11%">
					   		<%--<input id="tbDesCaptcha_frmRegistroInforme" type="text" data-model="desCaptcha" data-model-msg="desCaptcha"
								   maxlength="4" name="tbDesCaptcha" class="text_box_p">--%>
					   </td>
					   <td style="width:14%">								  
					   		<%--<img alt="" id="imgCaptcha_frmRegistroInforme" width="120" height="40" src="" />--%>                            
					   </td>
					   <td>					   		
                            <%--<input type="image" id="ibRecargar_frmRegistroInforme" title="Recargar Captcha" style="height: 29px; width: 29px;" src="${img}/recargar.png" alt="Recargar">--%>
					   </td>
                       <td align="right">                       	   
                       	   &nbsp;&nbsp;
						   <input type="image" id="ibImprimir_frmConsultaInforme" title="Vista previa" src="${img}/btn_exp_pdf.jpg">
						   &nbsp;&nbsp;                       	   
                       	   <input type="image" id="ibGuardar_frmRegistroInforme" title="Guardar" src="${img}/btn_grabar.jpg" alt="Guardar">                       	   
                           &nbsp;&nbsp;
                           <input type="image" id="ibEnviar_frmRegistroInforme" title="Enviar" src="${img}/btn_enviar.jpg" alt="Enviar">
                       </td>
                   </tr>
                   <tr>
                       <td colspan="5" style="color: Red; font-weight: normal;">
                           <%--&nbsp; (*) Indica que campos son obligatorios.<br/>--%>
                       </td>
                   </tr>
                   <tr>
                       <td colspan="5" style=" color: Red; font-weight: normal;">
                           &nbsp; <div id="divMensajeRegistroInforme"></div>
                       </td>
                   </tr>
               </tbody>
            </table>
		</fieldset>
		
		</div>		
		<input type="hidden" id="hfIdInforme_frmRegistroInforme" value="${idInforme}" data-model="idInformeActividad"/>
		<input type="hidden" id="hfIdActividad_frmRegistroInforme" value="${idActividad}" data-model="idActividad"/>
		<input type="hidden" id="hfIdOcex_frmRegistroInforme" value="${idOcex}" data-model="idOcex"/>
		<input type="hidden" id="hfDesAsunto_frmRegistroInforme" value="${nomActividad}" data-model="desAsunto"/>
		<input type="hidden" id="hfDesTitulo_frmRegistroInforme" value="${desTitulo}" data-model="desTitulo"/>
		<input type="hidden" id="hfIdDirector_frmRegistroInforme" value="${idDirector}" data-model="idReceptorPersona"/>
	</form>
	<form action="${pageContext.request.contextPath}/descargarInformeActividadPdf"  method="post" name="frmExportar2" target="_self">
		<input type="hidden" name="idOcex" value="">
		<input type="hidden" name="idInformeGestion" value="">
		<input type="hidden" name="idInformeActividad" value="">
		<input type="hidden" name="numPeriodoTrim" value="">
		<input type="hidden" name="action" value=""/>
	</form>	
<div id="divMensajeNuevoRegistro"></div>
<div id="divBusquedaImportador"></div>
</body>
</html>
