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
					<jsp:include page="okheader.jsp" />
				</div>
			</div>
		</header>
		<div style="margin-left: 200px; margin-right: 200px; margin-top: 50px;">
			<h1 style="margin-top: 30px; font-size: 30px; font-weight: 200; text-decoration: underline; text-underline-offset: 8px;">問題・解答編集</h1>
			<div style="display: flex; justify-content: space-between; margin-top: 70px;">
				<div style="width: 210px; height: 210px; background-color: antiquewhite; display: flex; align-items: center; justify-content: center;
									 padding: 15px; filter: drop-shadow(6px 6px 6px rgba(0,0,0,0.4));">
					<a href="./mondairegist.jsp" style="text-decoration: none; color: black; font-size: 22px;">問題登録</a>
				</div>
				<div style="width: 210px; height: 210px; background-color: antiquewhite; display: flex; align-items: center; justify-content: center;
									  padding: 15px; filter: drop-shadow(6px 6px 6px rgba(0,0,0,0.4));">
					<a href="./kaitouregist.jsp" style="text-decoration: none; color: black; font-size: 22px;">解答登録</a>
				</div>
				<div style="width: 210px; height: 210px; background-color: antiquewhite; display: flex; align-items: center; justify-content: center;
									 padding: 15px; filter: drop-shadow(6px 6px 6px rgba(0,0,0,0.4));">
					<a href="./deletekaitou.jsp" style="text-decoration: none; color: black; font-size: 22px;">解答削除</a>
				</div>
				<div style="width: 210px; height: 210px; background-color: antiquewhite; display: flex; align-items: center; justify-content: center;
									  padding: 15px; filter: drop-shadow(6px 6px 6px rgba(0,0,0,0.4));">
					<a href="./updatesearch.jsp" style="text-decoration: none; color: black; font-size: 22px;">解答更新</a>
				</div>
			</div>	
		</div>
	</div>
</body>
</html>