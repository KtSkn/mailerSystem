<!DOCTYPE html>
 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<html>
 <head>
 <meta charset="utf-8">
 <title>アカウント作成</title>
 </head>
 <body>
 	アカウント作成
 
 <p>
	<c:url value="/" var="messageUrl" />
	<a href="${messageUrl}">ログイン画面</a>
 </p>

 <p>
	<c:url value="/accountSetting" var="messageUrl" />
	<a href="${messageUrl}">アカウント設定</a>
 </p>

 
 </body>
</html>