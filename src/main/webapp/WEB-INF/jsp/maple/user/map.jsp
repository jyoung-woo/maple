<%--
  Created by IntelliJ IDEA.
  User: maple
  Date: 2024-04-08
  Time: 오후 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #212121;
            color: #FFFFFF;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .left-menu {
            flex: 0 0 auto;
            width: 200px;
            height: 100vh;
            background-color: #333333;
            padding-top: 20px;
        }

        .left-menu a {
            display: block;
            width: 180px;
            padding: 10px 20px;
            margin: 0 auto 10px;
            background-color: #212121;
            color: #FFFFFF;
            text-decoration: none;
            border-left: 5px solid transparent;
            transition: border-left 0.3s, color 0.3s;
        }

        .left-menu a:hover {
            border-left: 5px solid #FFD700;
            color: #FFD700;
        }

        .content {
            flex-grow: 1;
            padding: 20px;
        }

        .header {
            background-color: #333333;
            color: #FFFFFF;
            padding: 20px;
            text-align: center;
        }

        .header .user {
            display: flex;
            align-items: center;
            justify-content: flex-end;
        }

        .header .user button {
            background-color: #212121;
            color: #FFFFFF;
            border: none;
            padding: 10px 20px;
            margin-left: 10px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .header .user button:hover {
            background-color: #FFD700;
        }
    </style>
</head>
<body>
<div class="left-menu">
    <a href="#">회원정보</a>
    <a href="#">자유게시판</a>
    <a href="/crudPage.do">crud연습용</a>
    <a href="/chartPage.do">차트연습용</a>
    <a href="/gridPage.do">그리드연습용</a>
    <a href="/weatherPage.do">날씨연습용</a>
    <a href="/mapPage.do">지도띄우기..?</a>
</div>
<div class="content">
    <div class="header">
        <div class="user">
            <h3 class="userNickname" id="userNickname"></h3>
            <h3 style="margin-left: 5px;">환영합니다</h3>
            <button class="logoutBtn" id="logoutBtn">로그아웃</button>
        </div>
    </div>
</div>

</body>
</html>
