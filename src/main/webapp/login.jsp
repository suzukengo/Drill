<%@ page language="java" contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<title>中学社会ドリル</title>
</head>
<body bgcolor="#FFA07A">
	<div align="center">
		<h1>社会ドリルログイン画面</h1>
		<h2>ログインIDとパスワードを入力して下さい</h2>
		<form action="./LoginRiyousha" method="post">
			<table class="table_form">
				<tbody>
					<tr>
						<%-- ログイン済みの場合はIDを表示 --%>
						<th>ID</th>
						<td><input required type="text" name="id" value="ID" /></td>
					</tr>
					<tr>
						<th>パスワード</th>
						<td><input required type="password" name="pass" /></td>
					</tr>
				</tbody>
			</table>
			<input class="common_button" type="submit" name="submit" value="ログイン" />
		</form>
	</div>
</body>
</html>