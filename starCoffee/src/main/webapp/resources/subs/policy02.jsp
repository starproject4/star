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
    	#policy-wrap h1{
            padding:30px 10px 20px 10px;            
            background:url("/star/resources/imgs/reserve_bg.jpg"), rgba(0,0,0,0.8);
            background-size:180%;
            color:#fff;
            position:relative;
            font-size: 20px;
        }
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
        .policy-text>ul{
            padding-left: 0px;
        }
        .policy-text ul li{
            margin-bottom: 5px;
        }
        .policy-text ul ul li{
            list-style: circle;
        }
        .policy-text>p span, .policy-text>ul>li>span:first-child{
            display:inline-block;
            font-weight: 700;
            padding: 10px 0 15px;         
        }
        .policy-text button{
            margin-top: 5px; 
        }
        .policy-text table{
            width:100%; 
            
        }
        .policy-text table th{
            text-align: center;
            font-weight: 700;
            font-size: 14px;
            padding: 12px 0;
            background-color: #F4F4F2;
            border: 1px solid #ddd;
            border-top: 1px solid #333;
        }
        .policy-text table td{
            font-size: 13px;
            padding: 12px 0 12px 10px;
            color: #555;
            border: 1px solid #ddd;
        }
        .container table th:first-child, .container table tr td:first-child{
            border-left: 0;
        }
        .container table th:last-child, .container table tr td:last-child{
            border-right: 0;
        }
        .policy-text>p span{
            font-weight: 700;
        }
        .policy-text>h3{
            font-size: 13px;
            color: #007042;
            font-weight: 700;
        }
        .small{
            font-size: 11px;
        }
            
    @media (max-width: @screen-xs-max) { ... }
    @media (min-width: @screen-sm-min) and (max-width: @screen-sm-max) { ... }
    @media (min-width: @screen-md-min) and (max-width: @screen-md-max) { ... }
    @media (min-width: @screen-lg-min) { ... }  
        
    /* 매우 작은 기기들 (모바일폰, 768px 보다 작은) */
    /* 부트스트랩에서 이것은 기본이므로 미디어쿼리가 없습니다. */
    /* 작은 기기들 (태블릿, 768px 이상) */
    @media (min-width: @screen-sm-min) {      
        
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
		
			<div id="policy-wrap" class="col-sm-12">
                <h1><span></span>영상정보처리기기 운영 및 관리 지침</h1>
                <h2 class="text-green">스타벅스커피 코리아는 고객님을 보호합니다.</h2>
                <p>본 스타벅스커피 코리아(이하 ‘회사’)는 영상정보처리기기 운영관리 방침을 통해 본 회사에서 처리하는 영상정보가 어떠한 용도와 방식으로 이용 관리되고 있는지 알려드립니다.</p>
                <div class="policy-text" id="policyNo1" >
                   <h2 class="text-green">1. 영상정보처리기기의 설치 근거 및 설치 목적</h2>
                   <p>본 회사는「개인정보 보호법」제25조 제1항에 따라 다음과 같은 목적으로 영상정보처리기기를 설치•운영 합니다.</p>
                   <ul>
                       <li>- 시설안전 및 화재 예방</li>
                       <li>- 도난 방지</li>
                   </ul>
               </div>
                <div class="policy-text" id="policyNo2" >
                   <h2 class="text-green">2. 설치 대수, 설치 위치 및 촬영범위</h2>
                   <table>
                       <tr>
                           <th scope="col">설치대수</th>
                           <th scope="col">설치 위치 및 촬영 범위</th>                       
                       </tr>
                       <tr>
                           <td>매장 출입구 또는 매장 내부에 설치 대수 별도 안내</td>
                           <td>매장 내 외부</td>
                       </tr>
                   </table>
				</div>
				<div class="policy-text" id="policyNo3" >
					<h2 class="text-green">3. 관리책임자 및 접근권한자</h2>
					<p>
						귀하의 영상정보를 보호하고 개인 영상정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인영상정보 보호 책임자를 두고 있습니다.
					</p>
					<table>
                       <tr>
                           <th scope="col">구분</th>
                           <th scope="col">이름</th>
                           <th scope="col">직위</th>
                           <th scope="col">소속</th>                        
                           <th scope="col">연락처</th>                        
                       </tr>
                       <tr>
                           <td>관리책임자</td>
                           <td>강기원</td>
                           <td>팀장</td>
                           <td>P&amp;AP팀</td>
                           <td>02-3015-1100</td>
                       </tr>
                       <tr>
                           <td>접근권한자</td>
                           <td colspan="4">각 매장의 점장 및 지역매니저, 보안부서팀원</td>
                       </tr>
                   </table>
				</div>
				<div class="policy-text" id="policyNo4">
					<h2  class="text-green">4. 영상정보의 촬영시간, 보관기간, 보관장소 및 처리방법</h2>
                    <table>
                       <tr>
                           <th scope="col">쵤영시간</th>
                           <th scope="col">보관기간</th>
                           <th scope="col">보관장소</th>                      
                       </tr>
                       <tr>
                           <td>24시간</td>
                           <td>촬영일로부터 30일 내외</td>
                           <td>각 매장 사무실</td>
                       </tr>
                   </table>
					<p><span>- 처리방법</span> : 개인영상정보의 목적 외 이용, 제3자 제공, 파기, 열람 등 요구에 관한 사항을 기록•관리하고, 보관기간 만료 시 복원이 불가능한 방법으로 영구 삭제(출력물의 경우 파쇄 또는 소각)합니다.</p>
					
				</div>
				<div class="policy-text" id="policyNo5" >
					<h2 class="text-green">5. 영상정보처리기기 설치 및 관리 등의 위탁에 관한 사항</h2>
					<p>본 회사는 아래와 같이 영상정보처리기기 설치 및 관리 등을 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다.<br/>
					<table>
                       <tr>
                           <th scope="col">수탁업체</th>
                           <th scope="col">담당자</th>
                           <th scope="col">연락처</th>
                           <th scope="col">비고</th>                        
                       </tr>
                       <tr>
                           <td>엔토스정보통신</td>
                           <td>기술 담당</td>
                           <td>02-6340-5600</td>
                           <td>설치 및 AS</td>
                       </tr>
                   </table>
				</div>
				<div class="policy-text" id="policyNo6" >
					<h2 class="text-green">6. 개인영상정보의 확인 방법 및 장소에 관한 사항</h2> 
					<ul>
						<li>- 확인 방법 : 영상정보가 보관 된 매장에 미리 연락하고 해당 매장을 방문하시면 확인 가능합니다.</li>
						<li>- 확인 장소 : 영상정보가 보관 된 각 매장</li>
					</ul>
				</div>
				<div class="policy-text" id="policyNo7" >
					<h2 class="text-green">7. 정보주체의 영상정보 열람 등 요구에 대한 조치</h2>
					<p>
					귀하는 개인영상정보에 관하여 열람 또는 존재확인•삭제를 원하는 경우 언제든지 영상정보처리기기 운영자에게 요구하실 수 있습니다. 단, 귀하가 촬영된 개인영상정보 및 명백히 정보주체의 급박한 생명, 신체, 재산의 이익을 위하여 필요한 개인영상정보에 한정됩니다. 
					</p>
                    <p>본 회사는 개인영상정보에 관하여 열람 또는 존재확인•삭제를 요구한 경우 지체 없이 필요한 조치를 하겠습니다.</p>
				</div>
				<div class="policy-text" id="policyNo8" >
					<h2 class="text-green">8. 영상정보의 안전성 확보조치</h2>
					<p>본 회사에서 처리하는 영상정보는 비밀번호 등을 통하여 안전하게 관리되고 있습니다. 또한 본 회사는 개인영상정보보호를 위한 관리적 대책으로서 개인정보에 대한 접근 권한을 차등부여하고 있으며, 개인영상정보의 위•변조 방지를 위하여 개인영상정보의 생성 일시, 열람 시 열람 목적,열람자,열람 일시 등을 기록하여 관리하고 있습니다.
					</p>
				</div>
				<div class="policy-text" id="policyNo9" >
					<h2 class="text-green">9. 개인정보 처리방침 변경에 관한 사항</h2>
					<p>이 영상정보처리기기 운영관리방침은 법령ㆍ정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 시행하기 최소 7일전에 본 회사 홈페이지를 통해 변경사유 및 내용 등을 공지하도록 하겠습니다.</p>
                    <p class="small">- 공고일자 : 2016년 8월 8일 / 시행일자 : 2016년 8월 16일</p>
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