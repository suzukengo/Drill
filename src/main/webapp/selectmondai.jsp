<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"%>
<%@ page import="beans.Mondai"%>
<%
Mondai mondai = (Mondai) request.getAttribute("Mondai");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>社会ドリル</title>
</head>
<body bgcolor="#FFA07A">
	<div align="center">
	<%
	if (mondai == null) {
	%>
	<font size="6">該当する問題がありません．</font>
	<br />
	<%
	} else {
	%>
	<table border="1" width="100%">
		<thead>
			<tr>
				<td width="40%"><center>ID</center></td>
				<td width="60%"><center><%=mondai.getId()%></center></td>
			</tr>
			<tr>
				<td width="40%"><center>問題ID</center></td>
				<td width="60%"><center><%=mondai.getMid()%></center></td>
			</tr>
			<tr>
				<td width="40%"><center>問題名</center></td>
				<td width="60%"><center><%=mondai.getTitle()%></center></td>
			</tr>
			<tr>
				<td width="40%"><center>年代</center></td>
				<td width="60%"><center><%=mondai.getAge()%></center></td>
			</tr>
			<tr>
				<td width="40%"><center>問題</center></td>
				<td width="60%"><center><%=mondai.getMondai()%></center></td>
			</tr>
		</tbody>
	</table>
	<%}%>
	<font size="4"><a href="./index.jsp">トップ画面に戻る</a></font>
	</div>
</body>
</html>