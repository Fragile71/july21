<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/css/board.css">


</head>
<body>
	<%@ include file="menu.jsp"%>
	<h1>보드</h1>
	길이 검사: ${fn:length(list) }

	<c:choose>
		<c:when test="${fn:length(list) gt 0}">
			<table>
				<tr>
					<th id="td1">번호</th>
					<th id="td2">제목</th>
					<th class="title">글쓴이</th>
					<th>날짜</th>
					<th id="td5">좋아요</th>
				</tr>




				<c:forEach items="${list }" var="row">
					<!-- onclick 자바스크립트 페이지이동, URL?파라미터=값 -->
					<tr onclick="location.href='./detail?bno=${row.bno }'">
						<td class="td1">${row.bno }</td>
						<td class="title">${row.btitle }</td>
						<td class="td1">${row.m_name }</td>
						<td class="td2">${row.bdate }</td>
						<td class="td1">${row.blike }</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:otherwise>출력할 데이터가 없습니다.   </c:otherwise>

	</c:choose>




	<div>

		로그인한 이름: ${sessionScope.mname } /  ${sessionScope.mid }

		<c:if test="${sessionScope.mname ne null }">
			<button onclick="location.href='./write'">글쓰기</button>

		</c:if>




		
	</div>
</body>
</html>