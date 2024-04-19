<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- 시큐리티권한 -->

    <input type="hidden" id="getUserAuth" name="getUserAuth" value="${user_auth}">

<header class="sub-header">

        <h1 class="sub-logo"><a href="<c:url value='/main/main.do'/>"><img src="<c:url value='/images/sub/sub_logo.png'/>" alt="소다모니터링시스템">${codeData[0].main_title }</a></h1>


        <h1 class="sub-logo"><a href="<c:url value='/main/main.do'/>"><img src="<c:url value='/images/sub/sub_logo.png'/>" alt="소다모니터링시스템">소다모니터링시스템</a></h1></c:if>
    <div class="gnb">
        <ul class="clear-fix">
                <li id="gisPage"><a href="<c:url value='/gisPage.do'/>">GIS</a></li>
                <li id="monitroing"><a href="<c:url value='/monitoring.do'/>">모니터링</a></li>
            <li id="realtimeHeader"><a href="<c:url value='/realtimePage.do'/>">실시간 관측현황</a></li>
            <li id="informationHeader"><a href="<c:url value='/locationPage.do'/>">관측소 정보</a></li>
            <li id="dataStatusHeader"><a href="<c:url value='/dataListPage.do'/>">관측데이터</a></li>
            <li id="preDataHeader"><a href="<c:url value='/preMonthPage.do'/>">데이터 통계</a></li>
            <li id="dataAnalysisHeader"><a href="<c:url value='/dataStatisticsPage.do'/>">데이터 분석</a></li>
                <li id="predictionHeader"><a href="<c:url value='/lstmDataPage.do'/>">지하수 수위 예측</a></li>

        </ul>
    </div>
    <div class="tnb">
        <ol class="clear-fix">
            <li class="home"><a href="<c:url value='/main/main.do'/>">home</a></li>
            <li class="login"><a href="#" onclick="logout();">logout</a></li>

        </ol>
    </div>
    <div style="display: none; position: fixed; top: 50%; left: 50%;" id="loadingIcon">

    </div>
    <script type="text/javascript">
        /*
			window.onbeforeunload = function() {
				loadingIcon.style.display = 'block';
			} //현재 페이지에서 다른 페이지로 넘어갈 때 표시해주는 기능
			$(window).load(function() { //페이지가 로드 되면 로딩 화면을 없애주는 것
				loadingIcon.style.display = 'none';
			});
		*/
    </script>
</header>
