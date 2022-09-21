<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"%>
<%@ page import="beans.Riyousha"%>
<%
Riyousha riyousha = (Riyousha) request.getAttribute("Riyousha");
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
			<h1 style="margin-top: 30px; font-size: 30px; font-weight: 200; text-decoration: underline; text-underline-offset: 8px;">
				ID・氏名一覧
			</h1>
			<%
			if (riyousha == null) {
			%>
				<p style="margin-top: 0px; font-size: 24px; font-weight: 200;">
					該当する利用者がいません。検索し直してください。
				</p><%
			} else {
			%>
				<table border="1" width="100%" style="border-color: antiquewhite;">
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
			<a href="./index.jsp" style="font-size:26px; color:antiquewhite; text-underline-offset:5px; display:flex; justify-content:center; margin-top:80px;">
				トップ画面に戻る
			</a>
		</div>
	</body>
</html>