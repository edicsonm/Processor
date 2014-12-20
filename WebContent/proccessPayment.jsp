<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	String orderNumber = (String)session.getAttribute("orderNumber");
	if(orderNumber != null){
		String approbationNumber = "10238304958";
		session.setAttribute("approbationNumber", approbationNumber);
		response.sendRedirect("successfulPayment.jsp");
	}else{
		response.sendRedirect("errorPayment.jsp");
	}
%>