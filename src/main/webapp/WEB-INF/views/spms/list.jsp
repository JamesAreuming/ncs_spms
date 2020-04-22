<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp"%>
<style>
	div#reg_container{
		width: 100%;
		height: 50px;
		text-align: right;
		line-height: 50px;
	}
	div#tbl_wrap{
		width: 100%;
	}
	div#tbl_wrap table{
		width: 50%;
		margin-left: 450px;
		border-collapse: collapse;
		text-align: center;
	}
	th,td{
		border: 2px solid black;
	}
	th{
		background-color: yellow;
	}
</style>
	<div id="reg_container">
		<a href="${pageContext.request.contextPath}/ncs/register">새 프로젝트 등록</a>
	</div>
	<div id="tbl_wrap">
		<table>
			<tr>
				<th>프로젝트 이름</th>
				<th>시작날짜</th>
				<th>종료날짜</th>
				<th>상태</th>	
			</tr>
			<c:forEach var="spms" items="${list }">
				<tr>
					<td><a href="${pageContext.request.contextPath}/ncs/detail?projectNo=${spms.projectNo}">${spms.projectName }</a></td>
					<td><fmt:formatDate value="${spms.projectStart }" type="both" pattern="yyyy-MM-dd"/></td>
					<td><fmt:formatDate value="${spms.projectEnd }" type="both" pattern="yyyy-MM-dd"/></td>
					<td>${spms.projectState }</td>	
				</tr>
			</c:forEach>
		</table>
	</div>
<%@ include file = "../include/footer.jsp"%>