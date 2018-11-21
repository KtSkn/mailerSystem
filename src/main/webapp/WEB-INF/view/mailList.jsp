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
 
 <title>送受信一覧</title>
 </head>
 <body>
 
 <h1>受信一覧/送信一覧</h1>
 <!-- リンクを入れる -->
 <!-- 閲覧済みフラグ -->
 <table class="table scale">
	<tr class="text-center daimei">
		<td>宛先</td>
		<td>タイトル</td>
		<td>本文</td>
		<td>日付</td>
	</tr>	
  <c:forEach items="${rcvMailData}" var="rcvMailData">
  <tr>
    <td><c:out value="${rcvMailData.mail}"/></td>
    <td><c:out value="${rcvMailData.title}"/></td>
    <td><c:out value="${rcvMailData.maintxt}"/></td>
    <td><c:out value="${rcvMailData.rcv_date}"/></td>
  </tr>
  </c:forEach>
</table>
 
 <p>
	<c:url value="/" var="messageUrl" />
	<a href="${messageUrl}">戻る</a>
 </p>
 
 </body>
</html>