<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Site Processor</title>
</head>
<script type="text/javascript">
	
	var opener = window.opener;
	
	function updateParent(value){
		opener.$("#msgid").html(value);
	}
	
	function redirectAnswer(){
		opener.$("#formID").attr("target","_self");
		opener.$("#formID").attr("action","respuesta.jsp");
		opener.$("#formID").submit();
	}
	
</script>
<% 
	String orderNumber = (String)request.getParameter("orderNumber");
	session.setAttribute("orderNumber", orderNumber);
%>
<body>
	<!-- <form id="procesor" target="_parent" action="http://localhost:8081/MerchantApp/respuesta.jsp"> -->
	<form id="procesor" action="proccessPayment.jsp" target="_parent" >
	<table>
		<tr>
			<td>Order Number</td>
			<td><%= orderNumber != null ? orderNumber : "N/D"%></td>
		</tr>
		<tr>
			<td colspan="1">
				<input type="submit" value="Proccess payment...">
				<!-- <input type="submit" value="Send Answer with form">
				<input type="button" value="Send Answer" onclick="javascript:updateParent('je je je')">
				<input type="button" value="Send Answer" onclick="javascript:redirectAnswer()"> -->
			</td>
		</tr>
	</table>
	</form>
</body>
<script type="text/javascript">
	/* opener.$("#formID").attr("target","_self");
	opener.$("#formID").attr("action","respuesta.jsp");
	opener.$("#formID").submit(); */
</script>
</html>