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
		location.href="${pageContext.request.contextPath}/ncs/list";
	})
	
	$("#btnReset").click(function() {
		location.href="${pageContext.request.contextPath}/ncs/list";
	})
});		
</script>
<section>
	<div id="form_container">
		<form action="register" method="post">
			<label>프로젝트 이름</label>
			<input type="text" name="projectName"><br><br>
			<label>프로젝트 내용</label>
			<textarea type="text" cols="60" rows="20" name="projectContent"></textarea><br>
			<label>시작날짜</label>
			<input type="date" name="projectStart"><br><br>
			<label>마감날짜</label>
			<input type="date" name="projectEnd"><br><br>
			<label>상태</label>
			<select name="projectState">
				<option value="준비">준비</option>
				<option value="진행중">진행중</option>
				<option value="종료">종료</option>
				<option value="보류">보류</option>
			</select><br><br>
			<div id="btns">
				<button type="submit" id="btnAdd">저장</button>
				<button type="reset" id="btnReset">취소</button>
			</div>			
		</form>
	</div>
	</section>
<%@ include file = "../include/footer.jsp"%>