<!DOCTYPE html>
 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<html>
 <head>
 <meta charset="utf-8">
 <title>トップ</title>
 </head>
 <body>
 ようこそ<c:out value="${loginName}" />さん
 
 <p>
	<c:url value="/makeAccount" var="messageUrl" />
	<a href="${messageUrl}">アカウント作成</a>
 </p>


 <p>
	<c:url value="/mailList" var="messageUrl" />
	<a href="${messageUrl}">送受信一覧</a>
 </p>
 
 </body>
</html>