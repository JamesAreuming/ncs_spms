<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp"%>
<style>
	div#detail_container{
		width: 100%;
		margin-top: 50px;
		margin-bottom: 50px;		
	}
	table{
		border-collapse: collapse;
		width: 800px;
		margin-left: 600px;
	}
	th, td{
		border: 2px solid black;
	}
	th{
		width: 300px;
		background-color: yellow;
	}
	div#hrefs{
		width: 100%;
		text-align: center;
		margin-top: 30px;
	}	
</style>
<script>
	$(function() {
		//삭제
		$("#remove").click(function() {
			var no = $(this).attr("data-no");
			console.log(no);
			var result = confirm("정말 삭제하시겠습니까?");
			if(result){
				location.href="${pageContext.request.contextPath}/ncs/delete?projectNo="+no;
			}
		})		
	})
</script>
	<div id="detail_container">
		<table>
			<tr>
				<th>프로젝트 이름</th>
				<td>${detail.projectName}</td>
			</tr>
			<tr>
				<th>프로젝트 내용</th>
				<td>${detail.projectContent}</td>
			</tr>
			<tr>
				<th>시작날짜</th>
				<td><fmt:formatDate value="${detail.projectStart}" type="both" pattern="yyyy-MM-dd"/></td>
			</tr>
			<tr>
				<th>종료날짜</th>
				<td><fmt:formatDate value="${detail.projectEnd}" type="both" pattern="yyyy-MM-dd"/></td>
			</tr>
			<tr>
				<th>상태</th>
				<td>${detail.projectState}</td>
			</tr>				
		</table>
		<div id="hrefs">
			<a href="${pageContext.request.contextPath}/ncs/update?projectNo=${detail.projectNo}">[수정]</a>
			<a href="#" data-no="${detail.projectNo}" id="remove">[삭제]</a>
			<a href="${pageContext.request.contextPath}/ncs/list">[돌아가기]</a>
		</div>
	</div>
<%@ include file = "../include/footer.jsp"%>