<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"%>
<%@ page import="beans.Riyousha"%>
<%
Riyousha riyousha = (Riyousha) request.getAttribute("Riyousha");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>社会ドリル</title>
</head>


<body bgcolor="#FFA07A">
	<div align="center">
		<h1>ID・氏名の一覧は↓です。</h1>
		<br />
		<%
		if (riyousha == null) {
		%>
		該当する利用者がいません．<br /> 検索し直してください． <br />
		<%
		} else {
		%>
		<table border="1" width="100%">
			<thead>
				<tr>
					<td width="40%"><center>ID</center></td>
					<td width="60%"><center><%=riyousha.getId()%></center></td>
				</tr>
				<tr>
					<td width="40%"><center>名前</center></td>
					<td width="60%"><center><%=riyousha.getName()%></center></td>
				</tr>
			</tbody>
		</table>
		<%}%>
		<font size="4"><a href="./index.jsp">トップ画面に戻る</a></font>
	</div>
</body>
</html>