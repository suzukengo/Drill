<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社会ドリル</title>
</head>
<body bgcolor="#FFA07A">
	<jsp:include page="header.jsp" />
	<div align="center">
		<h1>解答削除画面</h1>
		<form action="./DeleteKaitou" method="post">
			<table style="with: 80%">
				<tr>
					<td>問題ID</td>
					<td><input required type="number" name="mid" /></td>
				</tr>
				<tr>
					<td>あなたのID</td>
					<td><input required type="text" name="id" value="ID" /></td>
				</tr>
				<tr>
					<td>あなたのパスワード</td>
					<td><input required type="password" name="pass" /></td>
				</tr>
			</table>
			<input type="submit" value="削除" />
		</form>


	</div>
</body>
</html>