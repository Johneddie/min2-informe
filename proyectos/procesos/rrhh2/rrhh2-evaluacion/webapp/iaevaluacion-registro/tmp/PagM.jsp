<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="beanM" scope="request" class="pe.gob.sunat.framework.spring.util.bean.MensajeBean" />
<HTML>
<HEAD>

<TITLE>.:: Pagina de Mensajes ::.</TITLE></HEAD>
<style>
BODY {font-style:normal;font-size:10pt;font-family:Verdana,Arial,Helvetica,sans-serif;}
H1 {font-size:16pt;color:Navy;}
A {color:Navy;}
.msg {
	font-weight : bold;
	font-size:12pt;
	color:Black;
	background-image : url(/a/imagenes/msg/info.gif);
	background-repeat : no-repeat;
	background-position : left;
	padding-left : 50px;
	height : 50px;
	padding-top : 10px; 
}
.msg2 {
	font-weight : bold;
	font-size:12pt;
	color:Black;
}
.error {font-style:bold;font-size:12pt;color:Blue;
  text-indent: 50px;
	text-align : justify;
}
.soluc {font-size:12pt;}
.cuerpo {
  border : 1px solid Blue;
  padding : 10px 10px 10px 10px;
}
.form-button {border-color:#69C;border-style:solid;border-width:1px;cursor:hand}
</style>
<script language="JavaScript1.2">
function retornar(){
   if (history.length>0){
      document.write("<div align='LEFT'><input class='form-button' type='button' value='Anterior' onclick='parent.history.back()'></div>");
   }
}

</script>
<BODY  bgcolor="#ffffff">

<div class="cuerpo">

<div align="left" class="msg">La aplicaci&oacute;n ha retornado el siguiente mensaje :</div>
<p class="error"><jsp:getProperty name="beanM" property="mensajeerror" /></p>
<HR size="1px">
<div align="left"  class="msg2">Acci&oacute;n a realizar :</div>
<div align="left" class="soluc"><jsp:getProperty name="beanM" property="mensajesol" /></div>
<br>
<HR size="3px" color="#0000ff">
</div>
</BODY>
</HTML>