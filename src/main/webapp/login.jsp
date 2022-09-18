<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
					<a href="./register.jsp" style="padding-top: 5px; padding-bottom: 5px; padding-left: 30px; padding-right: 30px; text-decoration: none;">
						<span id="menu" style="font-size: 20px; color: #000;">利用者登録</span>
					</a>
					<a href="./login.jsp" style="padding-top: 5px; padding-bottom: 5px; padding-left: 30px; padding-right: 30px; text-decoration: none;">
						<span style="font-size: 20px; color: #000;">ログイン画面へ</span>
					</a>
				</div>
			</div>
		 </header>
		<div style="margin-left: 200px; margin-right: 200px;">
			<h1 style="margin-top: 30px; font-size: 30px; font-weight: 200; text-decoration: underline; text-underline-offset: 8px;">ログイン</h1>
			<p>ログインIDとパスワードを入力して下さい。</p>
				<form action="./LoginRiyousha" method="post" style="margin-left: 100px; margin-right: 100px; margin-top: 30px; margin-bottom: 50px;
				 background-color: antiquewhite; padding: 50px; filter: drop-shadow(3px 3px 3px rgba(0,0,0,0.4));
				 display: flex; flex-direction: column; justify-content: space-between; align-items: center;">
					<div style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
						<font size="5">　　　　ID：</font><br />
						<input required type="text" name="id" value="ID" style="width: 300px; height: 28px; padding-left: 10px; margin-left: 50px;" />
					</div>
					<div style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; margin-top: 20px;">
						<font size="5">パスワード：</font><br />
						<input required type="password" name="pass"  style="width: 300px; height: 28px; padding-left: 10px; margin-left: 50px;" />
					</div>
					<input class="common_button" type="submit" name="submit" value="ログイン" style="padding: 5px; margin-top: 30px; width: 100px;"/>
				</form>
			<jsp:include page="beforeheader.jsp" />
		</div>
	</body>
</html>