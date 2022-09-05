<%@ page language="java" contentType="text/html; charset=UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<title>社会ドリル</title>
</head>
<body bgcolor="#FFA07A">
	<jsp:include page="beforeheader.jsp" />
	<div align="center">
		<h1>全解答検索画面</h1>
		<form action="./SearchKaitou2" method="post">
			<tr>
				<td>問題ID</td>
				<td><input required type="number" name="mid" /></td>
			</tr>


			<input type="submit" value="検索" />
		</form>
	</div>
</body>
</html>