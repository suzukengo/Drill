<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社会ドリル</title>
</head>


<body bgcolor="#FFA07A">
	<jsp:include page="beforeheader.jsp" />
	<div align="center">
		<h1>問題検索</h1>

		<form action="./SearchMondai" method="post">
			 <font size="6">問題ID:</font> </br> <input
				required required type="number" name="mid" /> </br> <input type="submit"
				value="検索" />
		</form>
	</div>
</body>
</html>