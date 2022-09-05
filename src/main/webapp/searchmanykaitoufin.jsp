<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*,control.*,java.util.*"%>
<%
List<Kaitou> list = (List<Kaitou>) request.getAttribute("list");
%>
<%@ page import="beans.Kaitou"%>

<!DOCTYPE html>
<html>
<head>
<title>社会科ドリル</title>
</head>
<body bgcolor="#FFA07A">
	<div align="center">
		<%
		if (list.size() == 0) {
		%>
		<p>
			<font size="6"> 該当する解答がありません．</a></br></font>
		</p>
		<%
		} else {
		%>

		<table class="table">
			<thead>
			<tbody>
				<tr>
					<th><font size="6">問題名 | </font></th>
					<th><font size="6">年代 | </font></th>
					<th><font size="6">問題 | </font></th>
					<th><font size="6">解答 | </font></th>
				</tr>
			</thead>
			<meta charset="UTF-8">
			<title>結果セット</title>
			</head>
			<body>
				<%
				if (list != null && list.size() > 0) {
				%>
				<table border="1">
					<%
					for (Kaitou kaitou : list) {
					%>
					<tr>
						<td><%=kaitou.getTitle()%></td>
						<td><%=kaitou.getAge()%></td>
						<td><%=kaitou.getMondai()%></td>
						<td><%=kaitou.getKaitou()%></td>
					</tr>
					<%
					}
					%>
				</table>
				<%
				}
				%>
				<%}%>
				<p>
					<font size="4"><a href="./index.jsp">トップ画面へ</a></br></font>
				</p>
				</div>
			</body>
			</html>