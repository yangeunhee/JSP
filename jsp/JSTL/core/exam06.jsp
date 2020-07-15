<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String[] names = {"홍길동", "박길동", "윤길동", "고길동"};
	pageContext.setAttribute("names", names);
	pageContext.setAttribute("namesLength", names.length-1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${ names }" var="name">	<!-- items : 반복시킬 대상 -->
		${ name },
	</c:forEach>

	<br>

	<c:forEach begin="0" end="${ namesLength }" var="i">
			${ names[i] }<br>
	</c:forEach>
	1~10 사이의 정수 출력<br>
	<c:forEach begin="1" end="10" var="i">
	${ i }
	</c:forEach>
	<br>
	년도선택 : <select>
				<c:forEach begin="1980" end="2020" var="year" step="10"> <!-- step : 몇 씩 증가해서 출력 -->
					<option>${ year }</option>
				</c:forEach>
				<!-- <option>2020</option>
				<option>2019</option>
				<option>2018</option>
				<option>2017</option>
				<option>2016</option> -->
			</select>
</body>
</html>