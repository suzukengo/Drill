<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>社会科ドリル</title>
</head>
<body bgcolor="#FFA07A" style="margin: 0px;">
	<div style=" margin-left: 200px; margin-right: 200px;">
		<header width="auto" height="300" style="border-bottom: brown; border-bottom: 1px; margin-top: 50px;
		 display: flex; justify-content: space-between; align-items: center;">
			<h1>社会科ドリル</h1>
			<div style="display: flex; flex-direction: row; justify-content: center;">
				<a href="./register.jsp" style="padding-top: 5px; padding-bottom: 5px; padding-left: 30px; padding-right: 30px; text-decoration: none;">
					<span style="font-size: 20px; color: #000;">利用者登録</span>
				</a>
				<a href="./login.jsp" style="padding-top: 5px; padding-bottom: 5px; padding-left: 30px; padding-right: 30px; text-decoration: none;">
					<span style="font-size: 20px; color: #000;">ログイン画面へ</span>
				</a>
			</div>
		</header>
		<div style=" margin-top: 50px;">
			<p>ログインすると、問題の登録、解答の登録・削除・更新が可能です。</p>
			<div style="display: flex; justify-content: space-between; margin-top: 30px;">
				<div style="width: 210px; height: 300px; background-color: antiquewhite; display: flex; align-items: center; justify-content: center;
									 padding: 15px;">
					<a href="./riyoushasearch.jsp">利用者検索</a>
				</div>
				<div style="width: 210px; height: 300px; background-color: antiquewhite; display: flex; align-items: center; justify-content: center;
									  padding: 15px;">
					<a href="./mondaiselect.jsp">問題検索</a>
				</div>
				<div style="width: 210px; height: 300px; background-color: antiquewhite; display: flex; flex-direction: column; align-items: center;
									 justify-content: center; padding: 15px;">
					<a href="./searchkaitou.jsp">特定解答検索</a>
					<p>IDを入力し単一の解答を検索可能です。</p>
				</div>
				<div style="width: 210px; height: 300px; background-color: antiquewhite; display: flex; flex-direction: column; align-items: center;
									 justify-content: center; padding: 15px;">
					<a href="./searchmanykaitou.jsp">複数解答検索</a>
					<p>1つの問題に対して複数個解答が登録されていれば全て表示します。</p>
				</div>
			</div>	
		</div>
	</div>
</body>
</html>
