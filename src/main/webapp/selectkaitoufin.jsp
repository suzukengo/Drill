<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"%>
<%@ page import="beans.Kaitou"%>
<%
Kaitou kaitou = (Kaitou) request.getAttribute("Kaitou");
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
			</div>
		 </header>
		<div style="margin-left: 200px; margin-right: 200px;">
			<%
			if (kaitou == null) {
			%>
				<p style="margin-top: 0px; font-size: 24px; font-weight: 200; margin-top: 30px;">
					該当する解答がありません。
				</p><%
			} else {
			%>
			<table border="1" width="100%" style="border-color: antiquewhite;">
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
			<a href="./index.jsp" style="font-size:26px; color:antiquewhite; text-underline-offset:5px; display:flex; justify-content:center; margin-top:80px;">
				トップ画面に戻る
			</a>
		</div>
	</body>
</html>