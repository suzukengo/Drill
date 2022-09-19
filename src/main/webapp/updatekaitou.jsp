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
			<div style="display: flex; flex-direction: row; justify-content: center; filter: drop-shadow(none);">
				<jsp:include page="header.jsp" />
				<jsp:include page="okheader.jsp" />
			</div>
		</div>
	 </header>
	<div style="margin-left: 200px; margin-right: 200px;">
		<h1 style="margin-top: 30px; font-size: 30px; font-weight: 200; text-decoration: underline; text-underline-offset: 8px;">解答更新</h1>
		<%
		if (kaitou == null) {
		%>
		該当する利用者がいません。<br />
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
		<p>注意:問題文は500文字以内です。</p>
		<form action="./SearchKaitouUpdate" method="post" style="margin-left: 100px; margin-right: 100px; margin-top: 50px; margin-bottom: 50px;
			background-color: antiquewhite; padding: 50px; filter: drop-shadow(3px 3px 3px rgba(0,0,0,0.4));
			display: flex; flex-direction: column; justify-content: space-between; align-items: center;">
			<div style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; margin-top: 10px;">
				<font size="5">　　　　あなたのID：</font><br />
				<input required type="text" name="id" value="ID" style="width: 300px; height: 28px; padding-left: 10px; margin-left: 50px;" />
			</div>
			<div style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; margin-top: 10px;">
				<font size="5">あなたのパスワード：</font><br />
				<input required type="password" name="pass" style="width: 300px; height: 28px; padding-left: 10px; margin-left: 50px;" />
			</div>
			<div style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; margin-top: 10px;">
				<font size="5">　変更したい解答文：</font><br />
				<textarea required name="kaitou" style="width: 300px; height: 100px; padding-left: 10px; margin-left: 50px;" ></textarea>
			</div>
			<input type="submit" value="更新" style="padding: 5px; margin-top: 30px; width: 100px;"/>
		</form>
		<%}%>
	</div>
</body>
</html>