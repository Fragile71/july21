<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/css/detail.css">
<link rel="stylesheet" href="./resources/css/menu.css">

<script type="text/javascript">
	function edit() {
		if (confirm("수정하시겠습니까?")) {
			location.href = "./edit?bno=${dto.bno }"

		}

	}

	function del() {
		let chk = confirm("삭제하시겠습니까?"); //참 거짓으로 나옵니다.
		//alert(chk);
		if (chk) {
			location.href = "./delete?bno=${dto.bno }";

		}
	}
</script>

</head>
<body>
	<%@ include file="menu.jsp"%>






	<div class="content">
		<div class="title">
			제목 : ${dto.bno } / ${dto.btitle } 
			<c:if test="${sessionScope.mid ne null && sessionScope.mid eq dto.mid}">
		<img alt="" src="./img/update.png"
				onclick="edit()" width=30px height=30px>&nbsp;<img alt=""
				src="./img/delete.png" width=30px height=30px onclick="del()">
			
			</c:if>
			
		</div>
		<div class="write">
			<div class="bwrite">글쓴이 : ${dto.m_name }</div>
			<div class="blike">${dto.blike }</div>
		</div>
		<div class="date">작성일자 : ${dto.bdate }</div>
		<div class="ip">ip주소 : ${dto.bip }</div>
		<div class="bcontent">${dto.bcontent }</div>
	</div>



</body>
</html>