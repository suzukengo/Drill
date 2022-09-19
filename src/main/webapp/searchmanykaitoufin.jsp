<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*,control.*,java.util.*"%>
<%
List<Kaitou> list = (List<Kaitou>) request.getAttribute("list");
%>
<%@ page import="beans.Kaitou"%>
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
				if (list.size() == 0) {
			%>
				<p style="margin-top: 0px; font-size: 24px; font-weight: 200;">
					該当する解答がありません。
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
						</tbody>
					</thead>
					<head>
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
					</body>
				</table>
			<%}%>
			<a href="./index.jsp" style="font-size:26px; color:antiquewhite; text-underline-offset:5px; display:flex; justify-content:center; margin-top:80px;">
				トップ画面に戻る
			</a>
		</div>
	</body>
</html>