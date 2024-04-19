<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="shortcut icon" href="#">
    <script type="module" src="./resources/js/login/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/hammerjs@2.0.8"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-zoom"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>



    <meta charset="UTF-8">
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

        .searchDiv {
            display: flex;
            align-items: center;


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
    <div class="searchDiv" style="width:100%; height:100px;">
        <select style="width:100px; height: 35px"  id="searchType1" class="select1">
            <option></option>
        </select>
        <select style="width:100px; height: 35px; margin-left: 20px" id="searchType2" class="select2">
        </select>
        <button id="bcBtn" style="width: 50px"> 바차트 </button>
        <button id="lineBtn" style="width: 50px"> 라인차트 </button>
        <button id="mixBtn" style="width: 50px"> 혼합차트 </button>

    </div>
    <div id="mychart1"  style="width: 100%; height: 400px; border: 3px solid black; margin-top:30px; display: none" >
        <a id="xButton1" style="float: right; margin-right:15px; font-size: 30px" >x</a>
        <canvas id="mychart" width="1000" height="400"></canvas>
    </div>
    <div id="lineChart1" style="width: 100%; height: 400px; border:3px solid black; margin-top: 30px; display: none">
        <a id="xButton2" style="float: right; margin-right:15px; font-size: 30px" >x</a>
        <canvas id="lineChart" width="1000" height="400"></canvas>
    </div>
    <div id="mixChart1" style="width: 100%; height: 400px; border:3px solid black; margin-top: 30px; display: block">
        <a id="xButton3" style="float: right; margin-right:15px; font-size: 30px" >x</a>
        <canvas id="mixChart" width="1000" height="400"></canvas>
    </div>
    <div>
        앞으로해볼거: 년별데이터, 월별데이터, 일별데이터, 시간별 데이터, 데이터줌까지 로 동적으로표현하기, ㅅㅇㅇㅅㄱㅎㄱ
    </div>
</div>
</body>
</html>
