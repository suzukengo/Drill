<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"%>

<%-- 解答検索 --%>
<!DOCTYPE html>
<html>
<head>
<title>社会ドリル</title>
</head>
<body bgcolor="#FFA07A">
	<jsp:include page="beforeheader.jsp" />
	<div align="center">
		<h1>解答検索</h1>

		<form action="./SearchKaitou" method="post">
			<font size="6">利用者ID:</font> </br> <input required type="text" name="id"
				value="ID" /> </br> <font size="6">問題ID:</font> </br> <input required
				type="number" name="mid" /> </br> <input type="submit" value="検索" />
		</form>
	</div>
</body>
</html>