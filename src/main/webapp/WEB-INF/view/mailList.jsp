<!DOCTYPE html>
 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<html>
 <head>
 <meta charset="utf-8">
 <title>送受信一覧</title>
 </head>
 <body>
 送受信一覧
 
 <p>
	<c:url value="/" var="messageUrl" />
	<a href="${messageUrl}">戻る</a>
 </p>
 
 </body>
</html>