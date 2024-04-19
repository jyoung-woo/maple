<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="lnb-box1">
    <ul>
        <li id="realtime">
            <a href="/sgms/realtimePage.do">실시간 관측현황</a>
        </li>
        <li id="information">
            <a href="#" id="informationMenu" class="has-sub-off">관측소 정보</a>
            <div class="sub-menu-box">
                <ul>
                    <li id="location">
                        <a href="/sgms/locationPage.do">관측소 위치</a>
                    </li>
                    <li id="site">
                        <a href="/sgms/siteListPage.do">관측소 제원</a>
                    </li>
                    <li id="device">
                        <a href="/sgms/deviceListPage.do">관측장비 제원</a>
                    </li>
                </ul>
            </div>
        </li>
        <li id="dataStatus">
            <a href="#" id="dataStatusMenu" class="has-sub-off">관측데이터</a>
            <div class="sub-menu-box">
                <ul>
                    <li id="dataList">
                        <a href="/sgms/dataListPage.do">관측소별 데이터조회</a>
                    </li>
                    <li id="multiChart">
                        <a href="/sgms/multiChartPage.do">관측소별 데이터 비교조회</a>
                    </li>
                </ul>
            </div>
        </li>
        <li id="preData">
            <a href="#" id="preDataMenu" class="has-sub-off">데이터 통계</a>
            <div class="sub-menu-box">
                <ul>
                    <li id="preMonth">
                        <a href="/sgms/preMonthPage.do">월간 데이터 통계</a>
                    </li>
                    <li id="preYear">
                        <a href="/sgms/preYearPage.do">년간 데이터 통계</a>
                    </li>
                </ul>
            </div>
        </li>
        <li id="dataAnalysis">
            <a href="#" id="dataAnalysisMenu" class="has-sub-off">데이터 분석</a>
            <div class="sub-menu-box">
                <ul>
                    <li id="dataStatistics">
                        <a href="/sgms/dataStatisticsPage.do">관측소별 데이터 통계</a>
                    </li>
                </ul>
            </div>
        </li>
        <!--
        <li id="prediction">
            <a href="#" id="predictionMenu" class="has-sub-off">지하수 수위 예측</a>
            <div class="sub-menu-box">
               <ul>
                    <li id="lstmData">
                        <a href="/sgms/lstmDataPage.do">향후 예측 데이터</a>
                    </li>
                    <li id="lstmMultiData">
                        <a href="/sgms/lstmMultiDataPage.do">예측 결과 데이터 비교</a>
                    </li>
                </ul>
            </div>
        </li>
         -->
    </ul>
</div>