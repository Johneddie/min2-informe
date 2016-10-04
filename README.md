# min2-informe
min2-informe


04/10/2016 17:02:59||DEBUG|GeneradorService.java:106|genera 1 pdf 0
04/10/2016 17:02:59||DEBUG|GeneradorFacade.java:222|cabecera..{fecPresentacion=10/10/2016 10:10:00, razonSocial=Libreria NOE, numRuc=20100066603}
04/10/2016 17:02:59||DEBUG|GeneradorFacade.java:223|detalle..[{descripcion=Descrpcion 1, numForm=001, numOrden=000001, periodo=201601, tributo=Retenciones, montPago=1500.00}, {descripcion=Descrpcion 2, numForm=002, numOrden=000002, periodo=201602, tributo=Renta, montPago=2000.00}]
04/10/2016 17:02:59||DEBUG|Propiedades.java:65|ubicacion_plantillas_jasper='/data0/generador/jasper/plantillas/'
04/10/2016 17:02:59||DEBUG|Propiedades.java:41|init
04/10/2016 17:02:59||DEBUG|ParamDAO.java:732|obtener cache recaudaprm765
04/10/2016 17:02:59||DEBUG|Propiedades.java:65|AlgoritmoCache='0'
04/10/2016 17:02:59||DEBUG|ParamDAO.java:734|obtener cachekeys recaudaprm765
04/10/2016 17:02:59||DEBUG|Propiedades.java:65|AlgoritmoCache='0'
04/10/2016 17:02:59||DEBUG|ParamDAO.java:736|caches cargados recaudaprm765
04/10/2016 17:02:59||DEBUG|ParamDAO.java:745|buscando en recaudaprm765
04/10/2016 17:02:59||DEBUG|ParamDAO.java:747|cachekeys
04/10/2016 17:02:59||DEBUG|ParamDAO.java:756|cache
04/10/2016 17:02:59||DEBUG|ParamDAO.java:758|valor del parametro obtenido recaudaprm765
04/10/2016 17:02:59||DEBUG|Propiedades.java:65|directorio_salida='/data0/generador/jasper/pdf/'
04/10/2016 17:02:59||DEBUG|Propiedades.java:65|ubicacion_plantillas_jasper='/data0/generador/jasper/plantillas/'
04/10/2016 17:02:59||DEBUG|PDFGen.java:47|file://D:/data0/generador/jasper/plantillas/PLANTILLA000001.jasper
04/10/2016 17:02:59||DEBUG|PDFGen.java:48|D:/data0/generador/jasper/plantillas/PLANTILLA000001.jasper
04/10/2016 17:02:59||DEBUG|PDFGen.java:50|{listadata=[{descripcion=Descrpcion 1, numForm=001, numOrden=000001, periodo=201601, tributo=Retenciones, montPago=1500.00}, {descripcion=Descrpcion 2, numForm=002, numOrden=000002, periodo=201602, tributo=Renta, montPago=2000.00}], params={SUBREPORT_DIR=/data0/generador/jasper/plantillas/, iddoc=1, fecPresentacion=10/10/2016 10:10:00, razonSocial=Libreria NOE, numRuc=20100066603}}
04/10/2016 17:02:59||DEBUG|SequenceDAO.java:53|getSequence(weblogic.jdbc.common.internal.RmiDataSource@1200a7a,SEBLOBDATA0)
04/10/2016 17:02:59||DEBUG|DAOAbstract.java:221|executeQueryUniqueResult sin parametros
04/10/2016 17:02:59||DEBUG|DAOAbstract.java:241|executeQueryUniqueResult con parametros
04/10/2016 17:02:59||DEBUG|DAOAbstract.java:402|executeQuery con parametros
04/10/2016 17:02:59||DEBUG|DAOAbstract.java:443|executeQuery con parametros y mapper
04/10/2016 17:02:59||DEBUG|DAOAbstract.java:140|getConnection
04/10/2016 17:02:59||DEBUG|DAOAbstract.java:459|sql=select SEBLOBDATA0.nextval secuencia from dual
04/10/2016 17:02:59||DEBUG|DAOAbstract.java:465|Aplicacion de bloqueo para Informix
04/10/2016 17:02:59||DEBUG|DAOAbstract.java:169|prepareStatement
04/10/2016 17:02:59||DEBUG|Propiedades.java:65|ubicacion='/data0/tempo'
04/10/2016 17:02:59||DEBUG|DAOAbstract.java:599|secuencia  int8
04/10/2016 17:02:59||DEBUG|DAOAbstract.java:557|close weblogic.jdbc.wrapper.PoolConnection_com_informix_jdbc_IfxSqliConnect@cb
04/10/2016 17:02:59||DEBUG|DAOAbstract.java:1049|close connection weblogic.jdbc.wrapper.PoolConnection_com_informix_jdbc_IfxSqliConnect@cb
04/10/2016 17:02:59||DEBUG|SequenceDAO.java:145|java.lang.Long
04/10/2016 17:02:59||DEBUG|SequenceDAO.java:153|getSequence->4848
04/10/2016 17:02:59||ERROR|GeneradorFacade.java:400|Ha ocurrido un error grave al generar el archivo pdf: 1{"cabecera":{"numRuc":"20100066603","razonSocial":"Libreria NOE","fecPresentacion":"10/10/2016 10:10:00"},"detalle":[{"numForm":"001","descripcion":"Descrpcion 1","numOrden":"000001","periodo":"201601","tributo":"Retenciones","montPago":"1500.00"},{"numForm":"002","descripcion":"Descrpcion 2","numOrden":"000002","periodo":"201602","tributo":"Renta","montPago":"2000.00"}]}
pe.gob.sunat.framework.core.pattern.ServiceLocatorException: javax.naming.NameNotFoundException: While trying to look up comp/env/jdbc/dxpdtinternet in /app/ejb/iagenerador/ejbtecno-generadorfacade.jar#GeneradorFacade.; remaining name 'comp/env/jdbc/dxpdtinternet'
	at pe.gob.sunat.framework.core.pattern.ServiceLocator.getDataSource(ServiceLocator.java:238)
	at pe.gob.sunat.framework.util.io.bean.ArchivoTemporalBean.cargar(ArchivoTemporalBean.java:112)
	at pe.gob.sunat.tecnologia.generadoc.ejb.GeneradorFacade.genera(GeneradorFacade.java:375)
	at pe.gob.sunat.tecnologia.generadoc.ejb.GeneradorFacade_axzluo_EOImpl.genera(GeneradorFacade_axzluo_EOImpl.java:63)
	at pe.gob.sunat.tecnologia.generadoc.ejb.delegate.GeneradorDelegate.genera(GeneradorDelegate.java:87)
	at pe.gob.sunat.tecnologia.generadoc.bean.GeneradorService.genera(GeneradorService.java:118)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at weblogic.webservice.component.javaclass.JavaClassInvocationHandler.invoke(JavaClassInvocationHandler.java:134)
	at weblogic.webservice.core.handler.InvokeHandler.handleRequest(InvokeHandler.java:105)
	at weblogic.webservice.core.HandlerChainImpl.handleRequest(HandlerChainImpl.java:144)
	at weblogic.webservice.core.DefaultOperation.process(DefaultOperation.java:551)
	at weblogic.webservice.server.Dispatcher.process(Dispatcher.java:204)
	at weblogic.webservice.server.Dispatcher.doDispatch(Dispatcher.java:175)
	at weblogic.webservice.server.Dispatcher.dispatch(Dispatcher.java:97)
	at weblogic.webservice.server.WebServiceManager.dispatch(WebServiceManager.java:101)
	at weblogic.webservice.server.servlet.WebServiceServlet.serverSideInvoke(WebServiceServlet.java:321)
	at weblogic.webservice.server.servlet.ServletBase.doPost(ServletBase.java:454)
	at weblogic.webservice.server.servlet.WebServiceServlet.doPost(WebServiceServlet.java:292)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:727)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:820)
	at weblogic.servlet.internal.StubSecurityHelper$ServletServiceAction.run(StubSecurityHelper.java:227)
	at weblogic.servlet.internal.StubSecurityHelper.invokeServlet(StubSecurityHelper.java:125)
	at weblogic.servlet.internal.ServletStubImpl.execute(ServletStubImpl.java:300)
	at weblogic.servlet.internal.ServletStubImpl.execute(ServletStubImpl.java:183)
	at weblogic.servlet.internal.WebAppServletContext$ServletInvocationAction.doIt(WebAppServletContext.java:3686)
	at weblogic.servlet.internal.WebAppServletContext$ServletInvocationAction.run(WebAppServletContext.java:3650)
	at weblogic.security.acl.internal.AuthenticatedSubject.doAs(AuthenticatedSubject.java:321)
	at weblogic.security.service.SecurityManager.runAs(SecurityManager.java:121)
	at weblogic.servlet.internal.WebAppServletContext.securedExecute(WebAppServletContext.java:2268)
	at weblogic.servlet.internal.WebAppServletContext.execute(WebAppServletContext.java:2174)
	at weblogic.servlet.internal.ServletRequestImpl.run(ServletRequestImpl.java:1446)
	at weblogic.work.ExecuteThread.execute(ExecuteThread.java:201)
	at weblogic.work.ExecuteThread.run(ExecuteThread.java:173)
