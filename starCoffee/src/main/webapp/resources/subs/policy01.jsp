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
        #policy-link{
            width: 98%;
            margin: 20px auto 40px; 
            border: 1px solid #ccc;
            padding: 20px 10px;
        }
        
        #policy-link a{
            display: inline-block;
            width: 100%;
            margin: 3px 0;
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
        .policy-text button{
            margin-top: 5px; 
            
        }
        
        .modal{
            width: 100%;
            max-width: 820px;
            background-color:rgba(0,0,0,0.5);
            overflow: hidden;
            padding-bottom: 10px;
        }
        .modal button{
            vertical-align: middle;
        }
        .modal-header{
            background-color: #A5916C;
            border-bottom: 0;
            border-radius: 5px 5px 0 0;
        }
        .modal h3{
            /*height: 50px;
            line-height: 50px;*/
            color: #fff;
            font-size: 16px;
            text-align: center;
            
        }
        .modal table{
            width: 100%;
            font-size: 12px;
        }
        .modal table th{
            text-align: center;
            border: 1px solid #ccc;
            background-color: #DEDAD1;
            font-weight: 700;
            padding: 10px 0;
            border-top: 2px solid #A5916C;
        }
        .policy-text>p span, .policy-text>ul>li>span:first-child{
            display:inline-block;
            font-weight: 700;
            padding: 10px 0 15px;         
        }
        .modal table th:first-child, .modal table tr td:first-child{
            border-left: 0;
        }
        .modal table th:last-child, .modal table tr td:last-child{
            border-right: 0;
        }
        .modal table td{
            border: 1px solid #ccc;
            color: #666;
            padding: 5px 3px;
        }
        .modal{
            top: 100px;
        }
        .policy-text>h3{
            font-size: 13px;
            color: #007042;
            font-weight: 700;
        }
        #policyNo3>ul>li{
            list-style: circle;
            list-style-position: inside;
            padding-left: 0px;
        }
        #policyNo3 ul li ul, #policyNo4 ul li ul, #policyNo7 ul li ul, #policyNo8 ul li ul, #policyNo9 ul li ul{
           padding-left: 10px;
        }
        #policyNo3 ul li ul li, #policyNo4 ul li ul li, #policyNo7 ul li ul li, #policyNo8 ul li ul li, #policyNo9 ul li ul li{
            list-style: none;
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
                <h1><span></span>개인정보 처리방침</h1>
                <h2 class="text-green">스타벅스커피 코리아는 이용자 개인정보보호를 위해 최선을 다 하고 있습니다.</h2>
                <p>(주)스타벅스커피 코리아는 (이하 ‘회사’는) 이용자의 개인정보를 중요시하며, 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 ‘정보통신망법’), 개인정보보호법 등 국내의 개인정보 보호에 관한 법률을 준수하고 있습니다.</p>
                <div class="row text-green" id="policy-link">
                    <div class="col-sm-6">
                        <div class="row">
                            <a class="policy-link col-sm-12" href="#policyNo1" title="">1. 개인정보의 수집 및 이용목적(필수 안내사항)</a>
                            <a class="policy-link col-sm-12" href="#policyNo2" title="">2. 수집하는 개인정보의 항목 및 수집 방법(필수 안내사항)</a>
                            <a class="policy-link col-sm-12" href="#policyNo3" title="">3. 개인정보의 보유 및 이용기간(필수 안내사항)</a>
                            <a class="policy-link col-sm-12" href="#policyNo4" title="">4. 개인정보의 파기절차 및 파기방법(필수 안내사항)</a>
                            <a class="policy-link col-sm-12" href="#policyNo5" title="">5. 개인정보 처리위탁을 하는 업무의 내용 및 수탁자(필수 안내사항)</a>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row">
                            <a class="policy-link col-sm-12" href="#policyNo6" title="">6. 이용자 및 법정대리인의 권리와 그 행사방법</a>
                            <a class="policy-link col-sm-12" href="#policyNo7" title="">7. 개인정보 자동수집 장치의 설치·운영 및 그 거부에 관한 사항(필수 안내사항)</a>
                            <a class="policy-link col-sm-12" href="#policyNo8" title="">8. 개인정보에 관한 민원 서비스(필수 안내사항)</a>
                            <a class="policy-link col-sm-12" href="#policyNo9" title="">9. 개인 정보의 기술적, 관리적 보호대책</a>
                            <a class="policy-link col-sm-12" href="#policyNo10" title="">10. 개정 전 고지 의무</a>
                        </div>
                    </div>
                </div>
                <div class="policy-text" id="policyNo1" >
                   <h2 class="text-green">1. 개인정보의 수집 및 이용 목적</h2>
                   <p>회사는 이용자의 개인정보를 최소한으로 수집하며, 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br/>수집한 개인정보의 수집 및 이용 목적은 아래와 같습니다.</p>
                   <p>
                       - 회원 가입 의사의 확인, 연령 확인, 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.<br/>
                       - 콘텐츠 등 기존 서비스 제공(마케팅 및 광고 포함)에 더하여, 서비스 방문, 이용기록의 분석, 신규 서비스(제품)개발 및 특화, 이벤트 등
                       광고성 정보 전달, 인구통계학적 특성에 따른 서비스 제공, 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.<br/>
                       - 이벤트 기간 내 변동사항 고지 또는 기간 임박에 대한 안내를 위해 개인정보를 이용합니다.<br/>
                       - 법령 및 회사 이용약관을 위반하는 이용자에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한
                       방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스
                       운영을 위하여 개인정보를 이용합니다.<br/>
                       - 서비스 제공에 따르는 본인인증, 결제·환불, 상품(제품) 및 서비스의 배송을 위하여 개인정보를 이용합니다.<br/>
                       - 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를
                       이용합니다.<br/>
                       - 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.<br/>
                       - 마이스타벅스 리워드 등 각종 개인별 맞춤 서비스 제공, 공지 및 이벤트 홍보 안내를 위한 문자메시지, 이메일 발송을 위해 개인정보를
                       이용합니다.<br/>
                       - 이벤트 기간 내, 변동사항 고지 또는 기간 임박에 대한 안내를 위해 개인정보를 이용합니다.</p>
               </div>
                <div class="policy-text" id="policyNo2" >
                   <h2 class="text-green">2. 수집하는 개인정보의 항목 및 수집 방법</h2>
                   <p>이용자는 회원가입을 하지 않아도 회사소개, 메뉴 및 매장 정보 등 다양한 서비스를 이용 할 수 있습니다. 이용자가 마이스타벅스리워드, 고객의 소리 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 회사는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.</p>
                   <ul>
                       <li>
                           <span>가. 회원가입 시점에서 회사가 이용자로부터 수집하는 정보는 아래와 같습니다.</span>
                        <ul>
                            <li>
                            회원 가입 시에 ‘성명, 생년월일, 성별, 아이디, 비밀번호, 휴대전화번호, 이메일’을 필수 항목으로 수집합니다. 그리고 선택항목으로 주소, 닉네임을 수집합니다. 필수 항목인 아이디, 비밀번호는 로그 인을 위하여 필요한 정보이며, 이름, 생년월일, 성별을 회원제 서비스 운영에 따르는 이용자 구분, 휴대전화번호는 이용자 본인 확인, 이메일은 휴면계정 안내 등 법적 고지사항 대한 안내를 위하여 사용됩니다. 선택항목은 입력을 하지 않아도 회원 가입이나 서비스 이용에 제한이 없으며 필요한 경우 개인정보 수정 화면에서 사후에 언제든지 직접 입력 하실 수 있습니다.
                            </li>
                        </ul>
                    </li>
                       <li>
                        <span>나. 서비스 이용과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.</span>
                        <ul>
                            <li>
                                회사 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가적인 수집이 발생 할 수 있습니다. 추가로
                                개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의
                                보관기간’에 대해 안내 드리고 동의를 받습니다.<br/>
                                <button type="button" class="btn green-btn" data-toggle="modal" data-target="#collect-info-1-detail">수집하는 개인정보의 항목</button>
                                <!-- Modal -->
                                <div class="modal fade" id="collect-info-1-detail" role="dialog">
                                    <div class="modal-dialog">
                                        <!-- Modal content-->
                                          <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h3 class="modal-title">수집하는 개인정보의 항목</h3>
                                            </div>
                                            <div class="modal-body">
                                                <table>
                                                    <tr>
                                                        <th scope="row">서비스명</th>
                                                        <th scope="row">필수항목</th>
                                                        <th scope="row">선택항목</th>
                                                    </tr>
                                                    <tr>
                                                        <td>로그인 &gt; 회원가입</td>
                                                        <td>성명, 생년월일, 성별, 아이디, 비밀번호, 휴대전화번호, E-Mail</td>
                                                        <td>주소, 닉네임</td>
                                                    </tr>
                                                    <tr>
                                                        <td>My Starbucks &gt; My 스타벅스 카드 &gt; 카드등록</td>
                                                        <td>스타벅스 카드 번호, PIN 번호</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Corporate Sales &gt; 스타벅스 상품</td>
                                                        <td>성명, 아이디, E-Mail, 전화번호</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Corporate Sales &gt; 스타벅스 상품권</td>
                                                        <td>성명, 아이디, E-Mail, 전화번호</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>My Starbucks &gt; My 스타벅스 카드 e-Gift &gt; 선물하기</td>
                                                        <td>전화번호</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>My Starbucks &gt; My 쿠폰 &gt; e-쿠폰 선물하기</td>
                                                        <td>전화번호</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>My Starbucks &gt; My 리워드 &gt; My 리워드 및 혜택 &gt; 골드카드 신청</td>
                                                        <td>전화번호, E-Mail</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>로그인 &gt; 회원가입 &gt; 휴대폰 본인 확인(문자)</td>
                                                        <td>성명, 내국인정보, 생년월일, 성별, 전화번호</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>ETC &gt; 윤리경영 핫라인</td>
                                                        <td>성명, 전화번호(유선/휴대폰), E-Mail</td>
                                                        <td>제안자 구분</td>
                                                    </tr>
                                                    <tr>
                                                        <td>My Starbucks &gt; My 쿠폰 &gt; 등록하기</td>
                                                        <td>쿠폰번호, 전화번호</td>
                                                        <td></td>
                                                    </tr>
                                                </table>
                                            </div>
                                          </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                서비스 이용 과정에서 IP 주소, 쿠키, 방문 일시·불량 이용 기록 등의 서비스 이용 기록, 기기정보가 생성되어 수집될 수 있습니다.<br/>
                                ※ 허위 정보 입력 시 회사의 조치<br/>
                                이용자는 자신의 정보에 대해 정확성 및 적법성을 보장해야 합니다. 만약 이를 위반하여 타인의 정보를 도용하는 등 각종 방법으로 허위 정보를
                                입력할 경우 회사는 해당 이용자를 관계법령에 따라 신고 할 수 있으며 강제 탈퇴를 시킬 수도 있습니다.
                            </li>
                        </ul>
                       </li>
                    <li>
                        <span>다. 회사는 아래의 방법을 통해 개인정보를 수집합니다.</span>
                        <ul>
                            <li>
                            회원가입 및 서비스 이용 과정에서 이용자가 개인정보 수집에 대해 동의를 하고 직접 정보를 입력 하는 경우 해당 개인정보를 수집합니다.
                            </li>
                            <li>
                            서비스 이용 과정에서 이용자의 동의를 받지는 않았지만 이용자와의 계약의 체결 및 이행을 위하여 불가피하게 필요한 경우 등 개인정보보호법 및
                            정보통신망법의 개인정보의 수집·이용에 해당하는 경우 개인정보를 수집합니다.
                            </li>
                            <li>
                            고객센터 및 웹 페이지 서비스를 통한 상담·제안·문의 등의 과정에서 웹 페이지, 메일, 팩스, 전화 등을 통해 이용자의 개인정보가 수집될 수
                            있습니다.
                            </li>
                            <li>
                            매장을 통해 문의, 예약과 같은 서비스 제공 과정에서 서면, 메일, 전화, 팩스 등을 통해 이용자의 개인정보가 수집될 수 있습니다.
                            </li>
                            <li>
                            오프라인에서 진행 되는 이벤트, 세미나, 상품(제품) 예약 업무를 위해 서면을 통해 개인정보가 수집될 수 있습니다.
                            </li>
                            <li>
                            회사와 제휴한 외부 기업이나 단체로부터 개인정보를 제공받을 수 있으며, 이러한 경우에는 정보통신망법에 따라 제휴사에서 이용자에게 개인정보 제공
                            동의를 받은 후에 회사에 제공합니다.
                            </li>
                            <li>
                            스타벅스 카드 e-Gift 선물하기를 통해 개인 및 외부 기업이나 단체로부터 개인정보를 제공받을 수 있습니다.
                            </li>
                            <li>
                            기기정보와 같은 생성정보는 PC(웹), 모바일(웹/앱) 이용과정에서 자동으로 생성되어 수집될 수 있습니다.
                            </li>
                        </ul>
                    </li>
                </ul>
				</div>
				<div class="policy-text" id="policyNo3" >
					<h2 class="text-green">3. 개인정보의 보유 및 이용기간</h2>
					<p>
						회사는 이용자의 개인정보 제공일로부터 서비스를 제공하는 기간 동안에 한하여 이용자의 개인정보를 보유 및 이용하게 됩니다.
					</p>
					<p>
						회사는 회원이 탈퇴를 요청하거나 개인정보의 수집 및 이용에 대한 동의를 철회하는 경우, 수집 및 이용목적이 달성되거나 보유 및 이용기간이 종료한
						경우 해당 개인정보를 지체 없이 파기합니다.
					</p>
					<p>
						단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안
						개인정보를 안전하게 보관 합니다.
					</p>
					<p>
						이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우는 아래와 같습니다.
					</p>
					<ul>
						<li>
							중복가입 방지에 의한 일시적 정보보유 사유
							<ul>
                                <li>-키 고유번호(이름, DI, 성별, 생년)에 관한 기록: 30일 보관</li>
                            </ul> 
						</li>
					</ul>
					<p>
					전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. 회사는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.
					</p>
					<ul>
						<li>
							<span>전자상거래 등에서 소비자 보호에 관한 법률</span>
							<ul>
								<li>- 계약 또는 청약철회 등에 관한 기록: 5년 보관</li>
								<li>- 대금결제 및 재화 등의 공급에 관한 기록: 5년 보관</li>
								<li>- 소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관</li>
								<li>- 표시/광고에 관한 기록: 6 개월 보관</li>
							</ul>
						</li>
						<li>
							<span>전자금융거래법</span>
							<ul>							
								<li>- 전자금융에 관한 기록: 5년 보관</li>
							</ul>
						</li>
						<li>
							<span>통신비밀보호법</span>
							<ul>
								<li>- 접속로그, 접속IP정보, 서비스이용기록: 3개월</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="policy-text" id="policyNo4">
					<h2  class="text-green">4. 개인정보의 파기절차 및 파기방법</h2>
					<p>회사는 원칙적으로 이용자의 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.</p>
					<ul>
						<li>
							<span>가. 파기절차</span>
							<ul>
								<li>
								회사는 회원탈퇴, 서비스 종료, 이용자에게 동의 받은 개인정보 보유기간의 도래와 같이 개인정보의 수집 및 이용목적이 달성된 개인정보는 재생이 불가능한 방법으로 파기하고 있습니다. 법령에서 보존의무를 부과한 정보에 대해서도 해당 기간 경과 후 지체 없이 재생이 불가능한 방법으로 파기합니다.
								</li>
							</ul>
						</li>
						<li>
							<span>나. 파기방법</span>
							<ul>
								<li>
								전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 완전하게 삭제하고, 출력물 등은 분쇄기로 분쇄하거나 소각하는 방식 등으로 파기합니다. 
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="policy-text" id="policyNo5" >
					<h2 class="text-green">5. 개인정보 처리위탁을 하는 업무의 내용 및 수탁자</h2>
					<p>회사는 원칙적으로 이용자 동의 없이 개인정보를 제3자에 제공하지 않습니다. 다만, 회사는 편리하고 더 나은 서비스 제공을 위해 아래와 같이 개인정보 취급 업무를 외부 전문업체에 위탁하여 운영하고 있습니다.<br/>
					<button type="button" class="btn green-btn" data-toggle="modal" data-target="#collect-info-2-detail">위탁 상세 정보</button><br/>
                   * 이용자 동의가 필요한 위탁업무와 공개/통지로 동의를 갈음할 수 있는 위탁업무
                    </p>	
					<!-- Modal -->
                    <div class="modal fade" id="collect-info-2-detail" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                              <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h3 class="modal-title">위탁 상세 정보</h3>
                                </div>
                                <div class="modal-body">
                                    <table>
                                        <tr>
                                            <th scope="row">수탁업체</th>
                                            <th scope="row">위탁업무 내용</th>
                                            <th scope="row">개인정보의 보유 및 이용기간</th>
                                        </tr>
                                        <tr>
                                            <td>신세계I&amp;C</td>
                                            <td>서비스 제공을 위한 시스템 개발 및 운영, 휴대폰 문자 발송</td>
                                            <td rowspan="5">회원 탈퇴 시 혹은 위탁 계약 종료 시까지</td>
                                        </tr>
                                        <tr>
                                            <td>㈜와이비엘</td>
                                            <td>스타벅스 골드카드 카드 인쇄</td>
                                        </tr>
                                        <tr>
                                            <td>㈜미플즈</td>
                                            <td>웹사이트(PC/모바일), 애플리케이션 관리, 이메일 발송, 이벤트 업무 처리</td>
                                        </tr>
                                        <tr>
                                            <td>이니시스</td>
                                            <td>결제 서비스</td>
                                        </tr>
                                        <tr>
                                            <td>인포뱅크</td>
                                            <td>휴대폰 문자 발송</td>
                                        </tr>
                                        <tr>
                                            <td>서울신용평가정보</td>
                                            <td>본인확인</td>
                                            <td rowspan="2">해당 업체에서 이미 보유하고 있는 개인정보이기 때문에 별도로 저장하지 않음</td>
                                        </tr>
                                        <tr>
                                            <td>씽크에이티</td>
                                            <td>SMS 부정거래 방지를 위한 발신번호 ARS 인증 서비스</td>
                                        </tr>							
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
					<p>
					서비스 제공에 관한 계약을 이행하고 이용자 편의 증진 등을 위해 필요한 개인정보 처리위탁은 메일 등을 통해 이용자에게 통지하거나 개인정보처리방침에 공개하는 것으로 동의를 갈음할 수 있습니다. 그 외에 개인정보 처리위탁에 대해서는 ‘수탁 업체, 위탁업무 내용’을 이용자에게 고지하고 사전에 동의를 받아야만 합니다. 회사는 인프라 운영, 서비스 개발 및 테스트, 서비스 운영, 이용자 상담, 결제처리, 본인인증 등을 위한 개인정보 처리위탁을 개인정보처리방침에 공개하는 것으로 동의를 갈음합니다. 단, 서비스 프로모션 등을 위해 외부에 개인정보를 위탁하는 경우에는 사전에 이용자 동의를 받습니다. 
					</p>
					<p>
					위탁계약 시 개인정보보호의 안전을 기하기 위하여 개인정보보호 관련 지시 엄수, 개인정보에 관한 금지 및 사고 시의 책임부담 등을 명확히 규정하고 해당 계약 내용을 서면 및 전자적으로 보관하고 있습니다. 업체가 변경될 경우, 회사는 변경된 업체 명을 개인정보처리방침 화면에 공지합니다.
					</p>
				</div>
				<div class="policy-text" id="policyNo6" >
					<h2 class="text-green">6. 이용자 및 법정대리인의 권리와 그 행사방법</h2> 
					<h3>이용자의 권리</h3> 
					<p>이용자는 언제든지 회사에 제공한 개인정보에 관하여 아래의 권리를 행사할 수 있습니다.</p>
					<ul>
						<li>가. 열람(조회) 또는 그 열람의 요구</li>
						<li>나. 오류 등이 있을 경우 정정 또는 그 정정의 요구</li>
                        <li>다. 삭제 또는 그 삭제의 요구</li>
                        <li>라. 처리정지 요구</li>
					</ul>
					<h3>이용자의 권리 행사 방법</h3>
					<ul>
						<li>
							<span>가. ‘조회’, ‘정정’, ‘삭제’의 경우</span>
							<ul>
								<li>직접 조회, 정정, 삭제<br/>
								개인정보 조회·수정을 위해서는 회사 홈페이지의 ‘My Starbucks &gt; 개인정보확인 및 수정’화면에서 조회·수정이 가능하며, 개인정보 삭제를 위해서는 ‘My Starbucks &gt; 개인정보관리 &gt; 회원탈퇴’ 화면 삭제(탈퇴)가 가능합니다. 다만, 필수 항목으로 수집 된 개인정보 삭제의 경우, 회사는 이용자에 대하여 필요한 최소한의 정보만을 수집하기 때문에 개인정보 삭제 절차와 회원탈퇴 절차가 함께 진행된다는 점 유의하시기 바랍니다.
								</li>
								<li>회사에 조회, 정정, 삭제 요청<br/>
								본 개인정보처리방침 ‘9. 개인정보에 관한 민원서비스’에 기재된 회사의 개인정보보호책임자에게 서면, 전화 또는 이메일로 연락하시면 본인 확인 후 지체 없이 조치하겠습니다. 아울러 이용자서비스에 관련된 내용의 경우 고객서비스 담당부서나 책임자에게 같은 방법으로 연락하시면 본인 확인 후 지체 없이 조치하겠습니다. 
								</li>
							</ul>
						</li>
						<li>
							<span>나. ‘처리정지’의 경우</span>
							<ul>
								<li>
								본 개인정보처리방침 ‘9. 개인정보에 관한 민원서비스’에 기재된 회사의 개인정보보호책임자에게 서면, 전화 또는 이메일로 연락하시면 본인 확인 후 지체 없이 조치하겠습니다. 다만, 요청에 따라 개인정보의 처리를 정지하게 되면, 약정한 서비스를 제공하지 못하게 될 수 있으므로, 처리정지 요청 시 이 점을 고려하시기 바랍니다.</li>
                                <li>
								이용자가 개인정보의 오류에 대한 정정, 삭제 또는 처리정지를 요청하신 경우에는 정정, 삭제 또는 처리정지를 완료하기 전까지 해당 개인정보를 이용 또는 제공하지 않습니다.<br/>
								이용자의 권리 행사는 이용자의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 만 14세 미만 아동의 법정대리인이 아닌 대리인은 (개인정보보호법 시행규칙 별지 제11호 서식에 따른) 위임장을 제출하셔야 합니다.</li>
                                <li>
								회사는 이용자의 요청에 의해 해지 또는 삭제된 개인정보를 ‘3. 개인정보의 보유 및 이용기간’ 및 ‘4. 개인정보의 파기절차 및 방법’에 명시된 바에 따라 파기 및 처리하고, 그 외의 용도로 열람 또는 이용할 수 없도록 처리합니다. 
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="policy-text" id="policyNo7" >
					<h2 class="text-green">7. 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</h2>
					<p>
					회사는 귀하의 정보를 수시로 저장하고 찾아내는 ´쿠키 (cookie)´ 등을 운용합니다. 쿠키란 회사의 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 회사는 다음과 같은 목적을 위해 쿠키를 사용합니다. 
					</p>
					<ul>
						<li>
							<span>가. 쿠키 등 사용 목적</span>
							<ul>
								<li>회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 마케팅 및 개인 맞춤 서비스 제공
								</li>
							</ul>
						</li>
						<li>
							<span>나. 쿠키정보의 구체적인 운영 내역</span>
							<ul>
								<li>
								팝업 하루 동안 보지 않기 기능<br/>
								홈페이지 로그인 시 편의를 위한 아이디 저장기능 제공
								</li>
							</ul>
						</li>
						<li>
							<span> 다. 쿠키 설정 거부 방법</span>
							<ul>
								<li>회원은 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 회원은 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. 다만 쿠키 설치를 거부할 경우 일부 서비스 이용에 불편이나 어려움이 있을 수 있습니다. 
								</li>
							</ul>
						</li>
						<li>
							<span>라. 설정방법의 예</span>
							<ul>
								<li>Internet Explorer의 경우<br/>
								웹 브라우저 상단의 도구 메뉴 &gt; 인터넷 옵션 &gt; 개인정보 &gt; 설정
								</li>
								<li>Chrome의 경우<br/>
								웹 브라우저 우측의 설정 메뉴 &gt; 화면 하단의 고급 설정 표시 &gt; 개인정보의 콘텐츠 설정 버튼 &gt; 쿠키<br/>
								각 브라우저 별 쿠키 설정 메뉴는 각 브라우저의 도움말을 참조할 수 있습니다. 
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="policy-text" id="policyNo8" >
					<h2 class="text-green">8. 개인정보에 관한 민원 서비스</h2>
					<p>회사는 이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인정보보호책임자를 지정하고 있습니다. 아울러 고객서비스담당부서(고객센터)를 운영하여 개인정보에 관한 민원 서비스를 제공하고 있습니다.
					</p>
					<ul>
						<li>
							<span>&lt;개인정보관리책임자&gt;</span>
							<ul>
								<li>부서 : P&amp;AP 팀</li>
								<li>개인정보관리책임자 : 강기원 팀장</li>
								<li>전화번호 : 02-3015-1100</li>
								<li>이메일 : kwkang@istarbucks.co.kr</li>
							</ul> 
						</li>
						<li>
							<span>&lt;고객서비스 담당부서&gt;</span>
							<ul>
								<li>관리 책임자 : 유지은 팀장</li>
								<li>전화번호 : 02-3015-1100</li>
								<li>이메일 : CS@istarbucks.co.kr</li>
							</ul>
						</li>
					</ul>
					<p>
					회원은 회사의 서비스를 이용하며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 또는 고객서비스담당부서로 신고하실 수 있습니다.<br/>
					회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다. 
					</p>
					<p>
					기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.
					</p>
					<ul>
						<li>개인정보침해신고센터 (http://privacy.kisa.or.kr / 국번 없이 118)</li>
						<li>대검찰청 사이버수사과 (www.spo.go.kr / 국번 없이 1301)</li>
						<li>경찰청 사이버안전국(www.ctrc.go.kr / 국번 없이 182)
					</ul>
				</div>
				<div class="policy-text" id="policyNo9" >
					<h2 class="text-green">9. 개인정보의 기술적, 관리적 보호대책</h2>
					<ul>
						<li>
							<span>가. 기술적 대책</span>
							<ul>
								<li>이용자의 개인정보는 암호화된 통신구간을 이용하여 전송하고, 비밀번호 등 중용정보는 암호화 하여 보관하고 있습니다.
								</li>
								<li>해킹이나 컴퓨터 바이러스 등에 의해 회원의 개인정보가 유출되거나 훼손되는 것을 막기 위해 외부로부터 접근이 통제된 구역에 시스템을 설치하고 있습니다. 개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고, 최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가 유출되거나 손상되지 않도록 방지하고 있습니다. 암호화 통신 등을 통하여 네트워크상에서 개인정보를 안전하게 송수신하고 있습니다. 
								</li>
							</ul>
						</li>
						<li>
							<span>나. 관리적 대책</span>
							<ul>
								<li>개인정보취급자를 최소한으로 유지하고 개인정보취급자에 대한 정기적인 교육 및 캠페인을 통하여 이용자의 개인정보 보호가 회사의 가장 중요한 가치임을 끊임없이 강조하고 있습니다.
								</li>
								<li>개인정보보호 전담 조직을 운영하여 이용자 개인정보 보호 의무를 올바르게 준수할 수 있도록 기술적/관리적 보호조치를 상시 수행하고 있습니다.
								</li>
								<li>입사시 개인정보 관련 취급자의 보안서약서를 통하여 사람에 의한 정보유출을 사전에 방지하고, 개인정보보호 정책에 대한 이행사항 및 직원의 준수여부를 감시하기 위한 내부절차를 마련하고 있습니다.
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="policy-text" id="policyNo10" >
					<h2 class="text-green">10. 개정 전 고지 의무</h2>
					<p>현 개인정보처리방침은 2016년 9월 28일부터 적용되며, 법령, 정책 또는 보안기술의 변경에 따라 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지의 '공지사항'을 통해 고지할 것입니다.<br/>
					다만, 이용자 권리의 중대한 변경을 개정하는 경우에는 적용일로부터30일전까지 홈페이지에 공시하고 회원이 입력한 가장 최근의 이메일로 전송하는 방법으로 회원에게 고지합니다. 변경된 개인정보처리방침은 고지한 적용일로부터 효력이 발생합니다.
					</p>
					<p>변경일자 : 2016년 9월 21일 </p>
					<p>시행일자 : 2016년 9월 28일 </p>
		
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
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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