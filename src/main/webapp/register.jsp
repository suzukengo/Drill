<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社会ドリル</title>
</head>
<body bgcolor="#FFA07A">
	<jsp:include page="beforeheader.jsp" />
	<div align="center">
		<h1>利用者登録画面</h1>
		<form action="./RegistInfok" method="post">
			<font size="6">ID:</font> <br /> <input required type="text"
				name="id" value="ID" /><br /> <font size="6">パスワード:</font><br /> <input
				required type="password" name="pass" /><br /> <font size="6">名前:</font><br />
			<input required type="text" name="name" /><br /> <input
				type="submit" value="登録" />
		</form>
		<br />
	</div>
</body>
</html>