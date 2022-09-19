<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>社会科ドリル</title>
	<link href="index.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFA07A" style="margin: 0px;">
	<div>
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
		<div style="margin-left: 200px; margin-right: 200px; margin-top: 50px;">
			<p>ログインすると、問題の登録、解答の登録・削除・更新が可能です。</p>
			<div style="display: flex; justify-content: space-between; margin-top: 70px;">
				<div style="width: 210px; height: 210px; background-color: antiquewhite; display: flex; align-items: center; justify-content: center;
									 padding: 15px; filter: drop-shadow(6px 6px 6px rgba(0,0,0,0.4));">
					<a href="./riyoushasearch.jsp" style="text-decoration: none; color: black; font-size: 22px;">利用者検索</a>
				</div>
				<div style="width: 210px; height: 210px; background-color: antiquewhite; display: flex; align-items: center; justify-content: center;
									  padding: 15px; filter: drop-shadow(6px 6px 6px rgba(0,0,0,0.4));">
					<a href="./mondaiselect.jsp" style="text-decoration: none; color: black; font-size: 22px;">問題検索</a>
				</div>
				<div style="width: 210px; height: 210px; background-color: antiquewhite; display: flex; flex-direction: column; align-items: center;
									 justify-content: center; padding: 15px; filter: drop-shadow(6px 6px 6px rgba(0,0,0,0.4));">
					<a href="./searchkaitou.jsp" style="text-decoration: none; color: black; font-size: 22px;">特定解答検索</a>
					<p>IDを入力し単一の解答を検索可能です。</p>
				</div>
				<div style="width: 210px; height: 210px; background-color: antiquewhite; display: flex; flex-direction: column; align-items: center;
									 justify-content: center; padding: 15px; filter: drop-shadow(6px 6px 6px rgba(0,0,0,0.4));">
					<a href="./searchmanykaitou.jsp" style="text-decoration: none; color: black; font-size: 22px;">複数解答検索</a>
					<p>1つの問題に対して複数個解答が登録されていれば全て表示します。</p>
				</div>
			</div>	
		</div>
	</div>
</body>
</html>