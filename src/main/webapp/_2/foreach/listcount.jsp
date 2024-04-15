<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입사일 검색</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.7.1.js"></script>
<style>
.red{color:red}
</style>
</head>
<body>
<div class="container">
	<c:if test="${!empty list}">
		<table class="table table-striped">
			<tr>
				<td>조건문</td>
				<td colspan="6">
					<c:if test="${!empty listcount}">
						<div class='red'>
							선택 부서번호 :
								<c:forEach items="${listcount}" var="item">
									<span>${item.DEPTNO}[${item.CNT}명]</span>
								</c:forEach>
						</div>
					</c:if>
				</td>
			</tr>
			<tr>
				<td>부서번호</td>
				<td>이름</td>
				<td>사원번호</td>
				<td>직책</td>
				<td>입사일</td>
				<td>커미션</td>
			</tr>
			<c:forEach items="${list}" var="emp">
				<tr>
					<td>${emp.deptno}</td>
					<td>${emp.ename}</td>
					<td>${emp.empno}</td>
					<td>${emp.job}</td>
					<td>${emp.hiredate}</td>
					<td>${emp.comm}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<c:if test="${empty list}">
		조건을 만족하는 데이터가 없습니다.
	</c:if>
</div>
</body>
</html>