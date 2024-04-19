<%--
  Created by IntelliJ IDEA.
  User: maple
  Date: 2024-02-22
  Time: 오후 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script type="module" src="./resources/js/login/login.js"></script>

    <title>로그인페이지</title>

    <style>
        @import url(https://fonts.googleapis.com/css?family=Audiowide);

        .title {
            text-align: center;
        }

        ::-moz-selection {
            background: #cc0000;
            text-shadow: none;
        }

        ::selection {
            background: #cc0000;
            text-shadow: none;
        }

        html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video {
            border: 0;
            font: inherit;
            font-size: 100%;
            margin: 0;
            padding: 0;
            vertical-align: baseline;
            text-rendering: optimizeLegibility;
        }

        article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section {
            display: block;
        }

        html,body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        body {
            background: #1b1b1b;
            color: #FFF;
            font-family: "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
            font-size: 12px;
            line-height: 1;
        }

        .background-wrap {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            z-index: -1;
            overflow: hidden;
        }

        .background {
            background: url('https://myrror.co/etc/419062774_1385132057.jpg');
            background-position: center;
            background-size: cover;
            filter: blur(10px);
            height: 105%;
            position: relative;
            width: 105%;
            right: -2.5%;
            left: -2.5%;
            top: -2.5%;
            bottom: -2.5%;
        }

        * {
            box-sizing: border-box;
            cursor: default;
            outline: none;
        }

        .main {
            background: #111;
            border: 1px solid #191919;
            border-radius: .4em;
            bottom: 0;
            box-shadow: 0 5px 10px 5px rgba(0,0,0,0.2);
            height: 400px;
            left: 0;
            margin: auto;
            overflow: hidden;
            position: absolute;
            right: 0;
            top: 0;
            width: 500px;
        }

        .main:after {
            background: linear-gradient(to right, #111111, #444444, #b6b6b8, #444444, #2F2F2F, #272727);
            content: "";
            display: block;
            height: 1px;
            left: 50px;
            position: absolute;
            top: 0;
            width: 150px;
        }

        .main:before {
            border-radius: 50%;
            box-shadow: 0 0 6px 4px #fff;
            content: "";
            display: block;
            height: 5px;
            left: 34%;
            position: absolute;
            top: -7px;
            width: 8px;
        }

        .inset {
            border-top: 1px solid #19191a;
            padding: 20px;
        }

        .main h1 {
            font-family: 'Audiowide';
            border-bottom: 1px solid #000;
            font-size: 18px;
            padding: 15px 0;
            position: relative;
            text-align: center;
            text-shadow: 0 1px 0 #000;
        }

        .main h1 {
            color: #FF007F;
            font-family: Audiowide;
            font-weight: normal;
        }

        .main h1.poweron {
            color: #ffffff;
            transition: all 0.5s;
            animation: flicker 1s ease-in-out 1 alternate, neon 1.5s ease-in-out infinite alternate;
            animation-delay: 0s, 1s;
        }

        .main h1:after {
            position: absolute;
            width: 250px;
            height: 180px;
            content: "";
            display: block;
            pointer-events: none;
            top: 0;
            margin-left: 138px;
            transform-style: flat;
            transform: skew(20deg);
        }

        input[type=text], input[type=password] {
            background: linear-gradient(#1f2124,#27292c);
            border: 1px solid #222;
            border-radius: .3em;
            box-shadow: 0 1px 0 rgba(255,255,255,0.1);
            color: #FFF;
            font-size: 13px;
            margin-bottom: 20px;
            padding: 8px 5px;
            width: 100%;
        }

        input[type=text]:disabled, input[type=password]:disabled {
            color: #999;
        }

        label[for=remember] {
            color: #bbb;
            display: inline-block;
            height: 20px;
            line-height: 20px;
            vertical-align: top;
            padding: 0 0 0 5px;
        }

        .p-container {
            padding: 0 20px 20px;
        }

        .p-container:after {
            clear: both;
            content: "";
            display: table;
        }

        .p-container span {
            color: #0d93ff;
            display: block;
            float: left;
            padding-top: 8px;
        }

        input[type=submit] {
            background: #FF007F;
            border: 1px solid rgba(0,0,0,0.4);
            border-radius: .3em;
            box-shadow: inset 0 1px 0 rgba(255,255,255,0.3), inset 0 10px 10px rgba(255,255,255,0.1);
            color: #873C00;
            cursor: pointer;
            font-size: 13px;
            font-weight: bold;
            height: 40px;
            padding: 5px 20px;
            width: 100%;
        }

        .denied {
            color: white !important;
            text-shadow: 0 0 1px black;
            background: #EE0000 !important;
        }

        input[type=submit]:hover, input[type=submit]:focus {
            box-shadow: inset 0 1px 0 rgba(255,255,255,0.3), inset 0 -10px 10px rgba(255,255,255,0.1);
        }

        input[type=text]:hover:not([disabled]),
        input[type=text]:focus,
        input[type=password]:hover:not([disabled]),
        input[type=password]:focus,
        label:hover ~ input[type=text],
        label:hover ~ input[type=password] {
            background: #27292c;
        }

        input[type="checkbox"] {
            opacity: 0;
            background: red;
            position: absolute;
            cursor: pointer;
            z-index: 1;
            height: 100%;
            width: 100%;
            left: 0;
            top: 0;
        }

        .checkboxouter {
            height: 20px;
            width: 20px;
            border-radius: 3px;
            background-color: #000;
            position: relative;
            display: inline-block;
            border: 2px solid #555;
        }

        .checkbox {
            position: absolute;
            border-bottom: 2px solid #333;
            border-right: 2px solid #333;
            background-color: transparent;
            height: 10px;
            width: 5px;
            margin: auto;
            left: 50%;
            transform: rotate(45deg);
            transform-origin: -35% 30%;
            transition: all 0.2s;
        }

        input[type="checkbox"]:checked ~ .checkbox {
            transition: all 0.3s;
            border-bottom: 2px solid #ffcc00;
            border-right: 2px solid #ffcc00;
        }

        @keyframes neon {
            from {
                text-shadow:
                        0 0 2.5px #fff,
                        0 0 5px #fff,
                        0 0 7.5px #fff,
                        0 0 10px #B6FF00,
                        0 0 17.5px #B6FF00,
                        0 0 20px #B6FF00,
                        0 0 25px #B6FF00,
                        0 0 37.5px #B6FF00;
            }

            to {
                text-shadow:
                        0 0 3px #fff,
                        0 0 7px  #fff,
                        0 0 13px  #fff,
                        0 0 17px  #B6FF00,
                        0 0 33px  #B6FF00,
                        0 0 38px  #B6FF00,
                        0 0 48px #B6FF00,
                        0 0 63px #B6FF00;
            }
        }

        @keyframes flicker {
            0% {
                text-shadow:
                        0 0 2.5px #fff,
                        0 0 5px #fff,
                        0 0 7.5px #fff,
                        0 0 10px #B6FF00,
                        0 0 17.5px #B6FF00,
                        0 0 20px #B6FF00,
                        0 0 25px #B6FF00,
                        0 0 37.5px #B6FF00;
            }

            2% {
                text-shadow: none;
            }

            8% {
                text-shadow:
                        0 0 2.5px #fff,
                        0 0 5px #fff,
                        0 0 7.5px #fff,
                        0 0 10px #B6FF00,
                        0 0 17.5px #B6FF00,
                        0 0 20px #B6FF00,
                        0 0 25px #B6FF00,
                        0 0 37.5px #B6FF00;
            }

            10% {
                text-shadow: none;
            }

            20% {
                text-shadow:
                        0 0 2.5px #fff,
                        0 0 5px #fff,
                        0 0 7.5px #fff,
                        0 0 10px #B6FF00,
                        0 0 17.5px #B6FF00,
                        0 0 20px #B6FF00,
                        0 0 25px #B6FF00,
                        0 0 37.5px #B6FF00;
            }

            22% {
                text-shadow: none;
            }

            24% {
                text-shadow:
                        0 0 2.5px #fff,
                        0 0 5px #fff,
                        0 0 7.5px #fff,
                        0 0 10px #B6FF00,
                        0 0 17.5px #B6FF00,
                        0 0 20px #B6FF00,
                        0 0 25px #B6FF00,
                        0 0 37.5px #B6FF00;
            }

            28% {
                text-shadow: none;
            }

            32% {
                text-shadow:
                        0 0 2.5px #fff,
                        0 0 5px #fff,
                        0 0 7.5px #fff,
                        0 0 10px #B6FF00,
                        0 0 17.5px #B6FF00,
                        0 0 20px #B6FF00,
                        0 0 25px #B6FF00,
                        0 0 37.5px #B6FF00;
            }

            34% {
                text-shadow: none;
            }

            36% {
                text-shadow: none;
            }

            42% {
                text-shadow: none;
            }

            100% {
                text-shadow:
                        0 0 2.5px #fff,
                        0 0 5px #fff,
                        0 0 7.5px #fff,
                        0 0 10px #B6FF00,
                        0 0 17.5px #B6FF00,
                        0 0 20px #B6FF00,
                        0 0 25px #B6FF00,
                        0 0 37.5px #B6FF00;
            }
        }

        #go{
            color: black;
            font-weight: bold;
            font-size: 15px;
        }
<!-- -->
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: black; /* 배경색을 검은색으로 변경 */
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 500px; /* 팝업 창의 최대 너비 */
        }

        /* 닫기 버튼 스타일 */
        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 18px;
            cursor: pointer;
            color: #fff; /* 닫기 버튼 텍스트 색상을 흰색으로 변경 */
        }

        /* 회원가입 폼 스타일 */
        .signup-form input {
            margin-bottom: 20px;
            width: calc(100% - 20px); /* 좌우 padding 고려한 너비 */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            outline: none;
            color: grey; /* input 값의 텍스트 색상을 회색으로 변경 */
        }


        .signup-form button {
            width: 100%;
            padding: 15px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .signup-form button:hover {
            background-color: #0056b3;
        }

        .signup-form input[type="text"]::placeholder { /* 텍스트 입력 필드의 Placeholder 색상을 변경 */
            color: grey;
        }
        .signup-form .signUpBtn {
            width: 50%; /* 버튼의 크기를 절반으로 설정 */
            margin: 0 auto; /* 수평 가운데 정렬 */
            display: block; /* 가운데 정렬을 위해 블록 요소로 변경 */
            padding: 15px;
            background-color: #EDD200;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
            color: grey;

        }.input-wrapper .check-btn:hover {
             background-color: #0056b3;
         }
        .input-wrapper {
            display: flex;
            align-items: center;
            margin-bottom: 20px; /* 이메일과 닉네임 사이의 간격을 조정 */
        }

        .input-wrapper input {
            width: calc(76% + 10px); /* 이메일과 닉네임 입력 필드의 너비를 50%로 설정하고 간격 추가 */
            margin-right: 5px;
            margin-bottom: -10px;
            /* 이메일과 닉네임 사이의 간격을 조정 */
        }

        .input-wrapper .check-btn {
            width: 60px;
            height: 38px;
            margin-bottom: -8px;
            display: flex;
            justify-content: center; /* 수직 정렬을 위한 가로 방향 정렬 */
            align-items: center; /* 수직 정렬을 위한 세로 방향 정렬 */
            white-space: nowrap;
            background-color: #EDD200;
            color: grey;
        }




    </style>
</head>
<body>


             <div class="background-wrap">
                 <div class="background"></div>
             </div>

           <form action="login.do" class="main" id="accesspanel"  method="post">
                 <h1 id="litheader">로그인</h1>
                 <div class="inset">
                     <p>
                         <input type="text" class="userName" name="userName" id="userName" placeholder="아이디">
                     </p>
                     <p>
                         <input type="password" class="userPwd" name="userPwd" id="userPwd" placeholder="비밀번호">
                     </p>
                     <div style="text-align: center;">
                         <div class="checkboxouter">
                             <input type="checkbox" name="rememberme" id="remember" value="Remember">
                             <label class="checkbox"></label>
                         </div>
                         <label for="remember">자동로그인</label>
                     </div>

                     <input class="loginLoginValue" type="hidden" name="service" value="login" />
                 </div>
                 <p class="p-container">
                     <input type="submit" class="go" name="go" id="go" value="완료">
                 </p>
               <p class="p-container">
               <button type="button" class="signUpButton" style="all: unset; text-decoration: underline;"> 회원가입하시겠습니까?</button>
               </p>
           </form>


             <!-- 회원가입 팝업 내용 -->
             <div class="popup" id="signupPopup">
                 <span class="close-btn closePopUp" onclick="closePopup()">X</span>
                 <h2>회원가입</h2>
                 <div class="signup-form">
                     <div class="input-wrapper">
                         <input type="text"  class="username1" name="username1"  placeholder="아이디">
                         <button class="check-btn" type="button">중복 확인</button>
                     </div>
                     <input type="text"  class="nickname1" name="nickname1" placeholder="닉네임">
                     <input type="password" class="userPwd1" name="userPwd1"  placeholder="비밀번호">
                     <button class="signUpBtn" >가입</button>

                 </div>
             </div>

</body>

</html>
