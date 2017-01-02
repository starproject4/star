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
            font-size: 18px;
            font-weight: 700;
            letter-spacing: -0.1em;
            padding-top: 15px; 
        } 
        h1{
            padding:30px 10px 20px 10px;            
            background:url("/star/resources/imgs/reserve_bg.jpg"), rgba(0,0,0,0.8);
            background-size:180%;
            color:#fff;
            position:relative;
            font-size: 20px;
        }
        #map-box{
            width: 100%;
            border: 1px solid black;
            border-left: none;
            border-right: none;
            margin-top: 20px;
        }
        #map-box p{
            width: 100%;
            margin: 0;
            border-bottom: 1px solid #eee; 
            clear: both;
        }
        #map-box a{
            padding: 10px 0;
            display: inline-block;
        }
        #map-box a.category-title{
            
            font-weight: 700;
            width: 10%;
            min-width: 120px;
            padding: 10px 20px;
            background-color: #e8e8e8;
        }
        
        #map-box a.category{
            padding-left: 20px;  
        }
        #etc{
            height: 200px;
            overflow: hidden;
        }
        #etc>a{
            height: 100%;   
            float: left;
        }
        #etc span{
            display: inline-block;
        }
    @media (max-width: @screen-xs-max) { ... }
    @media (min-width: @screen-sm-min) and (max-width: @screen-sm-max) { ... }
    @media (min-width: @screen-md-min) and (max-width: @screen-md-max) { ... }
    @media (min-width: @screen-lg-min) { ... }  
        
    /* 매우 작은 기기들 (모바일폰, 768px 보다 작은) */
    /* 부트스트랩에서 이것은 기본이므로 미디어쿼리가 없습니다. */
    /* 작은 기기들 (태블릿, 768px 이상) */
    @media (min-width: 768px) {      
  
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
                <h1><span></span>사이트 맵</h1>
                <h2>스타벅스커피 코리아 사이트 맵입니다.</h2>
                <div id="map-box">
                    <div>
                        <p>
                            <a class="category-title" href="/star/event">News</a>
                            <a class="category" href="/star/event">Event</a>
                            <a class="category" href="/star/notice">Notice</a>  
                        </p>
                        <p><a class="category-title" href="/star/order/orderpage">Siren order</a></p>
                        <p><a class="category-title" href="/star/menu/">Menu</a></p>
                        <p><a class="category-title" href="/star/product/">Product</a></p>
                        <p id="etc">
                            <a class="category-title" href="/star/resources/subs/policy01.jsp">ETC</a>
                            <span>
                                <a class="category" href="/star/resources/subs/policy01.jsp">개인정보 취급방침</a><br/>
                                <a class="category" href="/star/resources/subs/policy02.jsp">영상정보처리기기 운영관리방침</a><br/>
                                <a class="category" href="/star/resources/subs/policy03.jsp">홈페이지 이용약관</a><br/>
                                <a class="category" href="/star/resources/subs/policy04.jsp">위치정보 이용약관</a><br/>
                                <a class="category" href="/star/resources/subs/policy05.jsp">스타벅스 카드 이용약관</a><br/>
                                <a class="category" href="/star/resources/subs/map.jsp">오시는 길</a>
                            </span>
                        </p>
                    </div>
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