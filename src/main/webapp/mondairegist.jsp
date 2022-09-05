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
		<h1>問題登録画面</h1>
		<form action="RegistMondai" method="post">
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
					<td>問題名</td>
					<td><input required type="text" name="title" /></td>
				</tr>
				<tr>
					<td>年代</td>
					<td><input required type="text" name="age" /></td>
				</tr>
				<tr>
					<td>問題文</td>
					<td><textarea required type="text" name="mondai" /></textarea></td>

				</tr>


			</table>
			注意:問題文は500文字以内です。 </br> <input type="submit" value="登録" />
		</form>

	</div>
</body>
</html>