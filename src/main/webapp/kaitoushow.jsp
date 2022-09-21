<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"%>
<%@ page import="beans.Mondai"%>
<%
Mondai mondai = (Mondai) request.getAttribute("Mondai");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
	<title>社会科ドリル</title>
	<link href="index.css" rel="stylesheet" type="text/css">
	</head>
	<body bgcolor="#FFA07A" style="margin: 0px;">
		<header width="auto" height="200">
			<div style="margin-left: 200px; margin-right: 200px; display: flex; justify-content: space-between; align-items: center;">
				<h1 style="display: flex; justify-content: space-between; align-items: center; width: 260px; filter: drop-shadow(3px 3px 3px rgba(0,0,0,0.4));">
					<p style="background-color: antiquewhite; width:40px; height:40px; display: flex; justify-content:center; align-items: center;">社</p>
					<p style="background-color: antiquewhite; width:40px; height:40px; display: flex; justify-content:center; align-items: center;">会</p>
					<p style="background-color: antiquewhite; width:40px; height:40px; display: flex; justify-content:center; align-items: center;">科</p>
					<p style="background-color: antiquewhite; width:40px; height:40px; display: flex; justify-content:center; align-items: center;">ド</p>
					<p style="background-color: antiquewhite; width:40px; height:40px; display: flex; justify-content:center; align-items: center;">リ</p>
					<p style="background-color: antiquewhite; width:40px; height:40px; display: flex; justify-content:center; align-items: center;">ル</p>
				</h1>
				<div style="display: flex; flex-direction: row; justify-content: center; filter: drop-shadow(none);">
					<jsp:include page="header.jsp" />
					<jsp:include page="okheader.jsp" />
				</div>
			</div>
		 </header>
		<div style="margin-left: 200px; margin-right: 200px;">
			<%
				if (mondai == null) {
			%>
			<h1 style="margin-top: 30px; font-size: 24px; font-weight: 200;">
				該当する問題がありません。
			</h1>
			<a href="./kaitouregist.jsp" style="font-size: 26px; color: antiquewhite; text-underline-offset:5px; display: flex; justify-content: center;">
				再検索
			</a>
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