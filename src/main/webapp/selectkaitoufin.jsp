<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"%>
<%@ page import="beans.Kaitou"%>
<%
Kaitou kaitou = (Kaitou) request.getAttribute("Kaitou");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>社会ドリル</title>
</head>
<body bgcolor="#FFA07A">
	<div style="text-align: center">
		<%
		if (kaitou == null) {
		%>
		<p>
			<font size="6"> 該当する解答がありません．</a></br></font>
		</p>
		<%
		} else {
		%>

	<table border="1" width="100%">
		<thead>
			<tr>
				<td width="40%"><center>ID</center></td>
				<td width="60%"><center><%=kaitou.getId()%></center></td>
			</tr>
			<tr>
				<td width="40%"><center>問題ID</center></td>
				<td width="60%"><center><%=kaitou.getMid()%></center></td>
			</tr>
			<tr>
				<td width="40%"><center>題名</center></td>
				<td width="60%"><center><%=kaitou.getTitle()%></center></td>
			</tr>
			<tr>
				<td width="40%"><center>時代</center></td>
				<td width="60%"><center><%=kaitou.getAge()%></center></td>
			</tr>
			<tr>
				<td width="40%"><center>解答</center></td>
				<td width="60%"><center><%=kaitou.getKaitou()%></center></td>
			</tr>
		</tbody>
	</table>
	<%}%>
	<p>
		<font size="4"><a href="./index.jsp">トップ画面に戻る</a></a></br></font>
	</p>
	</div>
</body>
</html>