<!DOCTYPE html>
 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title>dbtest</title>
</head>
<body>
<h1>
    Hello world!  
</h1>
 
<P>  DB's data is ${data}. </P>

<p>
	<c:url value="/" var="messageUrl" />
	<a href="${messageUrl}">戻る</a>
</p>

</body>
</html>