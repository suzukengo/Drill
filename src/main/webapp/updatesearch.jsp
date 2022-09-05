<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社会ドリル</title>
</head>


<body bgcolor="#FFA07A">
	<jsp:include page="header.jsp" />
	<div align="center">
		<h1>解答を更新したい問題IDを入力してください</h1>

		<form action="./SearchKaitouUpdate" method="post">
			 <font size="6">ID:</font> </br> 
			 <input	required required type="text" name="id" value="ID"/> </br>
			 
			 <font size="6">問題ID:</font> </br> 
			 <input	required required type="number" name="mid" /> </br>
			
				 <input type="submit" value="検索" />
		</form>
	</div>
</body>
</html>