<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"%>
<%@ page import="beans.Mondai"%>
<%
Mondai mondai = (Mondai) request.getAttribute("Mondai");
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
		<%
		if (mondai == null) {
		%>
		<font size="6">該当する問題がありません</font><br />
		<font size="6"><a href="./kaitouregist.jsp">検索し直してください</a></font><br />
		<%
		} else {
		%>
		<h1>解答登録画面</h1>
		
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
		
		<form action="./RegistKaitou" method="post">
			<table style="with: 80%">
				<tr>
					<td>問題ID</td>
					<td><input required type="number" name="mid" /></td>
				</tr>
				<tr>
					<td>あなたのID</td>
					<td><input required type="text" name="id" value="ID" /></td>
				</tr>
				<tr>
					<td>問題名</td>
					<td><input required type="text" name="title" /></td>
				</tr>
				<tr>
					<td>年代</td>
					<td><input required type="text" name="age" /></td>
				</tr>
				<tr>
					<td>問題文</td>
					<td><textarea required name="mondai" /></textarea></td>
				</tr>

				<tr>
					<td>解答文</td>
					<td><textarea required name="kaitou" /></textarea></td>
				</tr>
				<tr>
					<td>パスワード</td>
					<td><input required type="password" name="pass" /></td>
				</tr>
			</table>
			注意:問題文・解答文は500文字以内です。</br>解答登録は一人一回のみです。 </br> <input type="submit" value="登録" />
		</form>

		<%}%>
	</div>
</body>
</html>