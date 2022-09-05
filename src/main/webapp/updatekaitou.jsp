<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"%>
<%@ page import="beans.Kaitou"%>
<%
Kaitou kaitou = (Kaitou) request.getAttribute("Kaitou");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社会ドリル</title>
</head>
<body bgcolor="#FFA07A">
	<jsp:include page="header.jsp" />
	<div align="center">
		<h1>解答更新画面</h1>

		<%
		if (kaitou == null) {
		%>
		該当する利用者がいません．<br />
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
					<td width="40%"><center>問題名</center></td>
					<td width="60%"><center><%=kaitou.getTitle()%></center></td>
				</tr>
				<tr>
					<td width="40%"><center>年代</center></td>
					<td width="60%"><center><%=kaitou.getAge()%></center></td>
				</tr>
				<tr>
					<td width="40%"><center>問題</center></td>
					<td width="60%"><center><%=kaitou.getMondai()%></center></td>
				</tr>
				<tr>
					<td width="40%"><center>解答</center></td>
					<td width="60%"><center><%=kaitou.getKaitou()%></center></td>
				</tr>
			</tbody>
		</table>

		<form action="./UpdateKaitou" method="post">
			<table style="with: 80%">
				<tr>
					<td>あなたのID</td>
					<td><input required type="text" name="id" value="ID" /></td>
				</tr>
				<tr>
					<td>変更したい解答文</td>
					<td><textarea required name="kaitou" /></textarea></td>
				</tr>
				<tr>
					<td>あなたのパスワード</td>
					<td><input required type="password" name="pass" /></td>
				</tr>
			</table>
			注意:問題文は500文字以内です。 </br> <input type="submit" value="更新" />
		</form>


	</div>
	<%}%>
</body>
</html>