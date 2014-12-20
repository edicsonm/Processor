<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Successful Payment</title>
</head>
<script src="js/jquery-2.1.1.js"></script>
<script type="text/javascript">
	var opener = window.opener;
</script>
<% 
	String approbationNumber = (String)session.getAttribute("approbationNumber");
%>
<body>
	<table>
		<tr>
			<td>Successful Payment !!!</td>
			<td><%=approbationNumber %></td>
		</tr>
	</table>
</body>
<script type="text/javascript">
$.ajax({
    type : 'POST',
    url  : 'http://localhost:8081/MerchantApp/answerProcessor.jsp',
    data: { approbationNumber: <%=approbationNumber%>},
    /* beforeSend: function( xhr ) {
    	opener.$("#formID").attr("target","_self");
    	opener.$("#formID").attr("action","answerProcessor.jsp");
    	opener.$("#formID").submit();
    }, */
    success : function(data){
        alert('The merchant have received the answer to your transaction.');
    }
});
	/* opener.$("#formID").attr("target","_self");
	opener.$("#formID").attr("action","respuesta.jsp");
	opener.$("#formID").submit(); */
</script>
</html>