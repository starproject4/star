<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>starbucks</title>
    <!-- 부트스트랩 -->
    <link href="/star/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/star/resources/css/star.css" rel="stylesheet">
	<!-- jquery mobile -->
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
	
    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
	<style type="text/css">      
        .content{
            font-size:13px;
            line-height: 1.5em;            
        }
        h2{
            font-size: 14px;
            font-weight: 700;
            letter-spacing: -0.1em;
            padding-top: 15px; 
        } 
        #map-box{
            width: 95%;
            margin: 0 auto;
        }
        #map-wrap h1{
            padding:30px 10px 20px 10px;            
            background:url("/star/resources/imgs/reserve_bg.jpg"), rgba(0,0,0,0.8);
            background-size:180%;
            color:#fff;
            position:relative;
            font-size: 20px;
        }
        #map-wrap h2:first-child{
            color: #000;
            background-color: red;
            font-size: 20px;
        }
        #map-box{
            width:100%;
        }
        #map{
            width: 100%;
            height: 30%;
            min-height: 600px;
            border: 1px solid #eee;
        }
        #map iframe{
            width: 100%;
            min-height: 400px;
            height: 25%;
            border: 0;
        }
        #map>div{
            height: auto;
            margin-top: 10px;
        }
        
        #map div p{
            width: 100%;
            margin: 5px 0;
            padding-left: 3%;
            float: left;
        }
        #map div p span{
            display: inline-block;  
        }
        #map div p span.map-title{            
            width: 80px;
            padding-left: 20px;
            margin-right: 10px;
            border-right: 1px solid #eee;
            font-weight: 700;
        }
        #map div p span:nth-child(2n){
        }
        #map div>p:nth-child(1)>span:nth-child(1),#map div>p:nth-child(2)>span:nth-child(1){
            background-image: url('/star/resources/imgs/hotline_icon1.jpg');
            background-repeat: no-repeat;
            background-position: left 4px;
        }
        #map div>p:nth-child(3)>span:nth-child(1),#map div>p:nth-child(4)>span:nth-child(1){
            background-image: url('/star/resources/imgs/hotline_icon2.jpg');
            background-repeat: no-repeat;
            background-position: left 4px;
        }
       #map div>p:nth-child(5)>span:nth-child(1),#map div>p:nth-child(6)>span:nth-child(1){
            background-image: url('/star/resources/imgs/fax_icon.jpg');
            background-repeat: no-repeat;
            background-position: left 4px;
        }
        h2{
            clear: both;
        }
    @media (max-width: @screen-xs-max) { ... }
    @media (min-width: @screen-sm-min) and (max-width: @screen-sm-max) { ... }
    @media (min-width: @screen-md-min) and (max-width: @screen-md-max) { ... }
    @media (min-width: @screen-lg-min) { ... }  
        
    /* 매우 작은 기기들 (모바일폰, 768px 보다 작은) */
    /* 부트스트랩에서 이것은 기본이므로 미디어쿼리가 없습니다. */
    /* 작은 기기들 (태블릿, 768px 이상) */
    @media (min-width: 768px) {      
        #map{
            min-height: 520px;
        }
        #map div p{
            width: 50%;
            margin: 5px 0;
            padding-left: 3%;
            float: left;
        }
        }
    /* 중간 기기들 (데스크탑, 992px 이상) */
    @media (min-width: @screen-md-min) { 
        
        }
    /* 큰 기기들 (큰 데스크탑, 1200px 이상) */
        
    @media (min-width: @screen-lg-min) { 
        
        }
    </style>
</head>
<body>
<!-- header link -->
    <%@ include file="/resources/templates/header.jsp" %>
   
   <!-- 여기부터 본문 -->
    <div class="container content">

		<div class="row">
		<!-- 여기부터 입력합니다 -->
		
			<div id="map-wrap" class="col-sm-12">
                <h1><span></span>찾아오시는 길</h1>
                <h2>㈜스타벅스커피 코리아 오시는 길 안내입니다.</h2>
                <p>㈜스타벅스커피 코리아에 방문해 주셔서 진심으로 감사드립니다.</p>
                <div id="map-box">
                    <div id="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d790.6504011500589!2d126.97860248811413!3d37.564449061782184!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzfCsDMzJzUyLjAiTiAxMjbCsDU4JzQ0LjkiRQ!5e0!3m2!1sko!2skr!4v1483322395871" allowfullscreen></iframe>
                        
                        <div>
                            <p><span class="map-title">주소</span><span>서울특별시 중구 소공로 112 (소공동)</span></p>
                            <p><span class="map-title">Address</span><span>112, Sogong-ro, Jung-gu, Seoul</span></p>
                            <p><span class="map-title">전화번호</span><span>02) 3015 - 1100</span></p>
                            <p><span class="map-title">Tel</span><span>+82-2-3015-1100</span></p>
                            <p><span class="map-title">팩스</span><span>02) 3015 - 1106</span></p>
                            <p><span class="map-title">Fax</span><span>+82-2-3015-1106</span></p>
                        </div>
                    </div>
                   <h2 class="text-green">시청역에서 오시는 길</h2>
                    <p>지하철 1호선 또는 2호선 시청역 6번 출구로 나오셔서 서울 프라자 호텔을 지나 지하도를 건너시면, 조선호텔 옆 스타벅스커피 코리아를 만나실 수 있습니다.</p>
                    <h2 class="text-green">을지로 입구역에서 오시는길</h2>
                    <p>지하철 2호선 을지로 입구역 8번 출구 방향 지하보도로 나오셔서 프레지던트 호텔 사잇길로 걸어 오시면, 스타벅스커피 코리아를 만나실 수 있습니다.</p>
                    
                </div>
                
			</div>
			
		<!-- 여기까지 입력합니다. -->
		</div><!-- /.row -->      
    </div><!-- /.container -->
    <!-- 여기까지 본문 -->


    
   
   <!-- footer link -->
   <jsp:include page="/resources/templates/footer.jsp"></jsp:include>
   
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="/star/resources/js/bootstrap.min.js"></script>
    <script src="/star/resources/js/star.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){
			// 여기에 해당 페이지 js를 입력
		});
	</script> 
</body>
</html>