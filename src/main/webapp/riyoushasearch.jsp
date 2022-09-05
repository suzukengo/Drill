<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>社会科ドリル</title>
</head>
<body bgcolor="#FFA07A">
	<jsp:include page="beforeheader.jsp" />
	<div align="center">
		<h1>利用者検索画面</h1>
		<font size="6">IDによる検索</font><br />
		<form action="./SearchInfok" method="post">
			<input required type="text" name="id" value="ID" /> <input
				type="submit" value="検索" />
		</form>
	</div>
</body>
</html>
