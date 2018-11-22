<!DOCTYPE html>
 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<html>
 <head>
 <meta charset="utf-8">
 <!-- bootstrapの設定 -->
<!-- <link type="text/css" rel="stylesheet" href="<c:url value="src/main/webapp/WEB-INF/view/styles.css" />">  -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!--  -->
 
 <title>本文</title>
 </head>
 <body>
 
 <h2>本文</h2>
 <table class="table scale">
	<tr class="text-center daimei">
		<td>ID</td>
		<td>本文</td>
		<td>日付</td>
	</tr>	
  <tr>
    <td><c:out value="${rcvMailData.id}"/></td>
    <td><c:out value="${rcvMailData.maintxt}"/></td>

  </tr>
</table>

 <p>
	<c:url value="/" var="messageUrl" />
	<a href="${messageUrl}">戻る</a>
 </p>
 
 </body>
</html>