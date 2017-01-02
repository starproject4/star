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
            padding-left: 10px;
        }
        .policy-text ul li ul{
            padding-left: 10px;
        }
        .policy-text ul li{
            margin-bottom: 5px;
        }
        .policy-text button{
            margin-top: 5px; 
        }
        #policyNo1 ul li span{
            display: inline-block;
            font-weight: 700;
            padding: 10px 0;
        }
        #policyNo1>ul>li{
            margin-bottom: 20px;
        }
        #policyNo1 ul li ul{
            padding-left: 0px;
        }
        
        .policy-text>p span, .policy-text>ul>li>span:first-child{
            display:inline-block;
            font-weight: 700;
            padding: 10px 0 15px;         
        }
        .policy-text>h3{
            font-size: 13px;
            color: #007042;
            font-weight: 700;
        }
        .small{
            font-size: 11px;
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
            text-align: center;
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
				<h1><span></span>위치정보 이용약관</h1>
                <div class="policy-text" id="policyNo1" >
                   <h2 class="text-green">제 1 조 (목적)</h2>
                   <p>이 약관은 스타벅스커피코리아 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
               </div>
                <div class="policy-text" id="policyNo2" >
                   <h2 class="text-green">제 2 조 (약관 외 준칙)</h2>
                   <p>이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보취급방침, 회사가 별도로 정한 지침 등에 의합니다.</p>
				</div>
				<div class="policy-text" id="policyNo3" >
					<h2 class="text-green">제 3 조 (서비스 내용 및 요금)</h2>
                    <p>회사가 제공하는 위치기반 서비스는 아래와 같습니다.</p>
                    <table>
                       <tr>
                           <th scope="col">서비스 명칭 및 내용</th>
                           <th scope="col">요금</th>                       
                       </tr>
                       <tr>
                           <td>
                               * 주변 매장 찾기 <br/>
                               - 현재의 위치를 기반으로 하여 주변 매장의 위치 등의 정보를 제공하는 서비스</td>
                           <td rowspan="3">
                                - 서비스의 이용 : 무료<br/>
                                - 서비스의 이용을 위한 데이터 통신 비용 : 이동통신사 및 회원이 가입 요금제에 따름</td>
                       </tr>
                       <tr>
                           <td>* 사이렌 오더<br/>
                               - 매장의 위치를 인식하여, 인식 또는 지정된 매장으로 선결제된 구매 내역을 매장 정보와 함께 원격으로 전송하여 제공받는 서비스</td>
                       </tr>
                       <tr>
                           <td>* 매장 방문시 이벤트/혜택 알림<br/>
                               - 매장에 비치된 비콘을 활용, 매장 위치를 인식하여 매장에 방문한 고객에게 이벤트/혜택 등 스타벅스 관련 정보를 메시지 형태로 본인 소유의 모바일 기기를 통해 제공하는 서비스 (단, 스타벅스 애플리케이션에서 광고성 이벤트/혜택 알림 메시지 수신에 동의한 고객에 한해 제공됨)</td>
                       </tr>
                   </table>
				</div>
                <div class="policy-text" id="policyNo4" >
                    <h2 class="text-green">회사는 위치정보의 보호 및 이용 등에 관한 법률 제16조 제2항에 근거하여 개인위치정보주체에 대한 위치정보 수집ㆍ이용ㆍ제공사실 확인자료(위치정보를 제공받는 자, 취득경로, 이용, 제공일시 및 방법에 관한 자료)를 위치정보시스템에 자동으로 기록하며, 1년 이상 보관합니다.</h2>
                    <ul>
                        <li>1. 개인위치정보주체는 개인위치정보 수집 범위 및 이용약관의 내용 중 일부 또는 개인위치정보의 이용ㆍ제공 목적, 제공받는 자의 범위 및 위치기반서비스의 일부에 대하여 동의를 유보할 수 있습니다.</li>
                        <li>2. 개인위치정보주체는 회사에 대하여 언제든지 개인위치정보의 수집에 대한 동의 또는 개인위치정보를 이용한 위치기반서비스 제공 및 개인위치정보의 제3자 제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다. 이 경우 회사는 수집한 개인위치정보 및 위치정보 수집,이용, 제공사실 확인자료(동의의 일부를 철회한 경우에는 철회한 부분의 개인위치정보 및 위치정보 이용,제공사실 확인자료에 한함)를 파기합니다.</li>
                        <li><span>3. 개인위치정보주체는 회사에 대하여 언제든지 개인위치정보의 수집, 이용 또는 제공의 일시적인 중지를 요구할 수 있으며, 회사는 이를 거절할 수 없고 이를 위한 기술적 수단을 갖추고 있습니다.</span>
                            <ul>
                                <li>가. 개인위치정보주체에 대한 위치정보 수집ㆍ이용ㆍ제공사실 확인자료</li>
                                <li>나. 개인위치정보주체의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법령의 규정에 의하여 제3자에게 제공된 이유 및 내용</li>
                            </ul>
                        </li>
                        <li>4. 개인위치정보주체는 회사에 대하여 아래 자료의 열람 또는 고지를 요구할 수 있고, 당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 회사는 정당한 이유 없이 요구를 거절하지 아니합니다.</li>
                        <li>5. 개인위치정보주체는 제1항 내지 제4항의 권리행사를 고객센터(전화 02-3015-1100 또는 “웹사이트 > 고객 서비스 > 고객의 소리 > 문의하기”)를 통해 회사에 요구할 수 있습니다.</li>
                    </ul>
                </div>
                <div class="policy-text" id="policyNo5" >
                    <h2 class="text-green">제 5 조 (위치정보의 보유기간)</h2>
                    <p>회사는 위치정보의 보호 및 이용 등에 관한 법률 제16조 제2항에 근거하여 개인위치정보주체에 대한 위치정보 수집ㆍ이용ㆍ제공사실 확인자료(위치정보를 제공받는 자, 취득경로, 이용, 제공일시 및 방법에 관한 자료)를 위치정보시스템에 자동으로 기록하며, 1년 이상 보관합니다.</p>
                </div>
                <div class="policy-text" id="policyNo6" >
                    <h2 class="text-green">제6조 (적용제외)</h2>
                    <p>만 14세 미만인자는 회원 가입대상이 아니므로, 회사는 회원가입이 불가능한 만14세 미만 자의 위치정보를 수집하지 않습니다. 따라서 만14세 미만의 이용자에 대해서는 위치기반서비스와 관련한 민원 발생 등에 대해서는 책임을 지지 않습니다.</p>
                </div>
                <div class="policy-text" id="policyNo7" >
                    <h2 class="text-green">제 7 조 (서비스의 변경 및 중지)</h2>
                    <ul>
                        <li>1. 회사는 위치정보사업자의 정책변경 등과 같이 회사의 제반 사정 또는 법률상의 장애 등으로 서비스를 유지할 수 없는 경우, 서비스의 전부 또는 일부를 제한, 변경하거나 중지할 수 있습니다.</li>
                        <li>2. 제1항에 의한 서비스 중단의 경우에는 회사는 사전에 인터넷 등에 공지하거나 개인위치정보주체에게 통지합니다.</li>
                    </ul>
                </div>
                <div class="policy-text" id="policyNo8" >
                    <h2 class="text-green">제 8 조 (개인위치정보 제3자 제공 및 제한)</h2>
                    <ul>
                        <li>1. 회사는 회원의 동의 없이 회원의 개인위치정보를 제3자에게 제공하지 아니하며, 제3자 제공 서비스를 제공하는 경우에는 제공 받는 자 및 제공목적을 사전에 회원에게 고지합니다.</li>
                        <li><span>2. 회사는 개인위치정보를 회원이 지정하는 제3자에게 제공하는 경우에는 개인위치정보를 수집한 당해 통신단말장치로 매회 회원에게 제공받는 자, 제공일시 및 제공목적을 즉시 통보합니다. 단, 아래 각 호에 해당하는 경우에는 회원이 미리 특정하여 지정한 통신단말장치 또는 전자우편주소로 통보합니다.</span>
                            <ul>
                                <li>가. 개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우</li>
                                <li>나. 회원이 개인위치정보를 수집한 당해 통신단말장치 외의 통신단말장치 또는 전자우편주소로 통보할 것을 미리 요청한 경우</li>
                            </ul>
                        </li>
                        <li><span>3. 개인위치정보 등의 이용제공의 제한 회사는 회원의 동의가 있거나 아래 각 호에 해당하는 경우를 제외하고는 개인위치정보 또는 위치정보 수집,이용, 제공사실 확인자료를 본 약관에 명시하거나 별도 고지한 범위를 넘어 이용하거나 제3자에게 제공하지 않습니다.</span>
                            <ul>
                                <li>가. 위치기반서비스 제공에 따른 요금정산 위하여 위치정보 수집, 이용, 제공사실 확인자료가 필요한 경우</li>
                                <li>나. 통계작성, 학술연구 또는 시장조사를 위하여 특정 개인을 알아볼 수 없는 형태로 가공하여 제공하는 경우</li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="policy-text" id="policyNo9" >
                    <h2 class="text-green">제 9 조 (손해배상)</h2>
                    <p>개인위치정보주체는 회사의 위치정보의 보호 및 이용 등에 관한 법률 제15조 내지 26조의 규정을 위반한 행위로 손해를 입은 경우에 회사에 대하여 손해배상을 청구할 수 있습니다. 이 경우 회사는 고의 또는 과실이 없음을 입증하지 아니하면 책임을 면할 수 없습니다.</p>
                </div>
                <div class="policy-text" id="policyNo10" >
                    <h2 class="text-green">제 10 조 (분쟁의 조정)</h2>
                    <ul>
                        <li>1. 회사는 위치정보와 관련된 분쟁에 대하여 개인위치정보주체와 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 방송통신위원회에 재정을 신청할 수 있습니다.</li>
                        <li>2. 회사 또는 개인위치정보주체는 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 개인정보보호법에 따라 개인정보분쟁조정위원회에 조정을 신청할 수 있습니다.</li>
                    </ul>
                </div>
                <div class="policy-text" id="policyNo11" >
                    <h2 class="text-green">제 11 조 (사업자 정보)</h2>
                    <p>
                    회사의 상호, 주소, 전화번호 그 밖의 연락처는 다음과 같습니다.<br/>
                    상호: ㈜스타벅스커피코리아<br/>
                    주소: 서울특별시 중구 소공로112 (04533)<br/>
                    전화번호: (02)3015-1100<br/>
                    이메일 주소 : CS@istarbucks.co.kr<br/>
                    </p>
                </div>
                <div class="policy-text" id="policyNo12" >
                    <h2 class="text-green">부칙</h2>
                    <ul>
                        <li><span>제 1 조 시행일</span>
                            <p>본 약관은 2016년 12월 01일부터 적용됩니다.</p>
                        </li>
                        <li><span>제 2 조 위치정보관리 책임자 정보</span>
                            <p>회사는 다음과 같이 위치정보 관리책임자를 지정하여 이용자들이 서비스 이용과정에서 발생한 민원사항 처리를 비롯하여 개인위치정보주체의 권리 보호를 위해 힘쓰고 있습니다.</p>
                            <p>위치정보 관리책임자 (개인정보 관리책임자 겸직)<br/>
                            직위 : 팀장<br/>
                            성명 : 강기원<br/>
                            이메일 주소 : positive@istarbucks.co.kr</p>
                        </li>
                    </ul>
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