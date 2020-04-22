<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp"%>
<style>
	div#form_container{
		width: 100%;
		margin-top: 50px;
		margin-bottom: 50px;
	}
	form{
		width: 800px;
		margin-left: 750px;		
	}
	label {
		width: 120px;
		float: left;
		text-align: right;
		padding-right: 10px;
		font-weight: bold;
	}
	div#btns{
		width: 500px;
		text-align: center;
	}
</style>
<script>
$(function () {	
//등록
	//리스트
	$("#btnAdd").click(function() {
		location.href="${pageContext.request.contextPath}/ncs/detail?projectNo=${spms.projectNo}";
	})
	
	$("#btnReset").click(function() {
		location.href="${pageContext.request.contextPath}/ncs/detail?projectNo=${spms.projectNo}";
	})
	
	var state = $("input[name=state]").val();
	console.log(state);
	$("#state").val(state).prop("selected", true);
});		
</script>
<section>
	<div id="form_container">
		<form action="update" method="post">
			<label>프로젝트 이름</label>
			<input type="text" name="projectName" value="${spms.projectName}"><br><br>
			<input type="hidden" name="projectNo" value="${spms.projectNo}">
			<label>프로젝트 내용</label>
			<textarea type="text" cols="60" rows="20" name="projectContent">${spms.projectContent}</textarea><br>
			<label>시작날짜</label>
			<input type="date" name="projectStart" value='<fmt:formatDate  value="${spms.projectStart}" pattern="yyyy-MM-dd"/>'><br><br>
			<label>마감날짜</label>
			<input type="date" name="projectEnd" value='<fmt:formatDate  value="${spms.projectEnd}" pattern="yyyy-MM-dd"/>'><br><br>
			<label>상태</label>
			<input type="hidden" name="state" value="${spms.projectState }">
			<select name="projectState" id="state">
				<option value="준비">준비</option>
				<option value="진행중">진행중</option>
				<option value="종료">종료</option>
				<option value="보류">보류</option>
			</select><br><br>
			<div id="btns">
				<button type="submit" id="btnAdd">수정</button></a>
				<button type="reset" id="btnReset">취소</button></a>
			</div>			
		</form>
	</div>
	</section>
<%@ include file = "../include/footer.jsp"%>