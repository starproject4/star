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
                <h1><span></span>홈페이지 이용약관</h1>
                <h2 class="text-green">스타벅스커피 코리아는 고객님을 보호합니다.</h2>
                <p>(주)스타벅스커피 코리아의 서비스의 이용과 관련하여 필요한 사항을 규정합니다.</p>
                <div class="policy-text" id="policyNo1" >
                   <h2 class="text-green">제1장 총칙</h2>
                   <ul>
                       <li><span>1. 목적</span>
                        <ul>
                            <li>가. (주)스타벅스커피 코리아(이하 "회사"라고 칭함)에서 운영하는 사이트는 아래와 같은 약관에 동의하는 이용자들에게 제공되는 인터넷서비스로 이용자와 회사의 권리 및 의무를 규정함을 목적으로 합니다.</li>
                            <li>나. 이용자는 회사가 정한 소정의 등록절차를 걸쳐 '회원 가입' 버튼을 클릭하면 이 약관과 함께 이에 동의하는 것으로 간주합니다.</li>
                            <li>다. 회사 홈페이지의 모든 자료는 스타벅스 및 자회사, 계열사 혹은 스타벅스에 의해 자격을 취득한 기타 이해 관계자에 의한 저작권, 등록의장, 등록상표 또는 기타 지적소유권으로 보호되고 있습니다.</li>
                            <li>라. 본 사이트에 포함된 자료는 정보목적으로만 제공됩니다. 귀하는 본 사이트의 내용에 대하여 어떤 방법으로도 배포, 출판, 전송, 변경, 전시, 모방작품의 창조 혹은 개발하지 않을 것에 동의하는 것으로 간주되며, 회사의 권한을 보호하고 옹호함은 물론 본 사이트의 자료를 허가 없이 유용함으로써 발생할 수 있는 어떠한 손해도 입히지 않아야 합니다. 허가 없이 사이트의 내용을 유용하는 경우에는 회사와 Starbucks Corporation에 돌이킬 수 없는 손해를 입힐 수도 있다는 사실을 인지하시기 바랍니다. 이와 같이 인가되지 않은 유용사실에 대하여 회사와 스타벅스는 법적, 재정적으로 가능한 기타 추가적인 배상과 관련한 권한을 가지고 있습니다. 피드백 및 제출자료. 귀하가 제출하는 자료의 내용에 대한 책임은 전적으로 귀하에게 있습니다. 제출자료에 불법, 중상모략, 비난 혹은 비도덕적인 내용이 포함되어서는 안됩니다. 사이트에 저작권, 등록상표권, 사생활권 혹은 기타 사적 권리 혹은 소유권을 포함하는 제삼자의 권리를 침해하는 어떤 자료도 게시하여서는 안됩니다.</li>
                            <li>마. 이용자의 개인정보 보호 및 보안, 개인정보에 대한 수집, 이용 및 저장과 관련한 관행 및 정책에 대하여는 회사의 개인정보취급방침에 의합니다. 개인정보취급방침은 홈페이지에 별도 게시하고 있습니다.</li>
                        </ul>
                       </li>
                       <li><span>2. 약관의 수정</span>
                        <ul>
                            <li>가. 회사는 약관을 변경할 수 있으며 변경된 약관은 회원에게 화면을 통한 공지 등의 방법으로 공지함으로 효력을 발생합니다.</li>
                            <li>나. 회사는 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 홈페이지에 그 적용일의 7일전부터 공시하거나 회원이 입력한 가장 최근의 e-mail로 전송하는 방법으로 회원에게 고지합니다. 다만, 회원에게 불리한 내용으로 약관을 개정하는 경우에는 적용일로부터30일전까지 홈페이지에 공시하고 회원이 입력한 가장 최근의 e-mail로 전송하는 방법으로 회원에게 고지합니다.</li>
                            <li>변경된 약관은 공시하거나 고지한 적용일로부터 효력이 발생합니다.</li>
                        </ul>
                       </li>
                       <li><span>3. "회원"의 정의</span>
                        <ul>
                            <li>가. "회원”란 회사 홈페이지에 접속하여 본 약관에 따라 회사 인터넷 회원으로 가입하여 회사 홈페이지가 제공하는 서비스를 받는 자를 말합니다.</li>
                            <li>나. 회원이 소지한 Starbucks Card를 등록하면 “마이 스타벅스 리워드 회원”이 됩니다. 본 약관에서 별도로 정한 사항이 없다면, “마이 스타벅스 리워드 회원”으로서의 권한 및 이용과 관련한 규정은 “스타벅스 카드 이용약관”에 따릅니다. 다. 본 약관과 스타벅스 카드 이용약관의 내용상 충돌이 있을 경우 스타벅스카드 이용약관이 우선합니다.</li>
                        </ul>
                       </li>
                   </ul>
               </div>
                <div class="policy-text" id="policyNo2" >
                   <h2 class="text-green">제 2장 회원 관리 및 서비스</h2>
                   <ul>
                        <li><span>1. 회원 ID와 비밀번호</span>
                            <ul>
                                <li>회원 가입은 무료이며, 회원ID(회원번호)와 비밀번호(Password)에 관한 모든 관리 책임은 다 회원에게 있습니다.</li>
                                <li>다만, 14세 미만 자는 회원으로 가입할 수 없습니다. </li>
                                <li>회원ID(계정)는 1인당 1개의 ID만 생성 및 등록이 가능하며, ID생성을 위해 필요한 개인정보를 허위로 제공하거나, 본인이 아닌 타인의 정보를 무단으로 사용하여 회원ID를 만들 수 없습니다.</li>
                                <li>이를 위반할 경우, 회원에게 제공되는 서비스의 제한이 있을 수 있으며, 본 약관 각 조항에서 정하고 있는 불이익을 받을 수 있습니다.</li>
                                <li>가입 시, e-프리퀀시 바코드가 회원계정으로 발급되며, e-프리퀀시 이벤트 기간 일 경우 해당 바코드로 e-프리퀀시 이벤트 참여가 가능합니다.</li>
                                <li>이용자에게 부여된 회원번호(ID) 및 비밀번호의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 각각의 회원에게 있습니다.</li>
                                <li>회원 자신의 ID가 부정하게 사용된 경우 이용자는 반드시 회사에 그 사실을 지체 없이 통보하여 조치를 받아야 하며, 통보의 지연으로 인해 발생하는 부분은 회사가 책임지지 않습니다.</li>
                            </ul>
                        </li>
                        <li><span>2. 회원 탈퇴</span>
                            <ul>
                                <li><span>가. 회원은 탈퇴를 희망하는 경우, my 스타벅스 페이지에서 “회원 탈퇴” 버튼을 통해 탈퇴 신청을 합니다.</span>
                                    <ul>
                                        <li>(1) 스타벅스 기명식 선불 충전카드를 보유한 고객의 카드가 잔액이 남아 있고 정지 상태에 있는 회원의 경우, 카드의 환불 및 환급 등의 처리 절차가 모두 완료된 다음에 탈퇴할 수 있습니다.</li>
                                        <li>(2) 아직 수령전인 사이렌 오더 홀케익 예약 건이 있을 경우, 수령 처리를 완료 후 탈퇴할 수 있습니다.</li>
                                        <li>(3) 스타벅스 e-프리퀀시 이벤트 기간 중 탈퇴 시에는 적립 된 e-스티커가 모두 소멸됩니다.</li>
                                    </ul>
                                </li>
                                <li>나. 회원 탈퇴 시점이 프리퀀시 이벤트가 진행되는 시점일 경우, 회원 탈퇴 요청일 현재까지 적립된 e-스티커는 자동으로 소멸되며, 재가입 시 소멸된 e-스티커는 복원되지 않습니다.</li>
                                <li>다. 회원 가입은 회원이 가입 후 탈퇴, 재 가입 등을 반복함으로써 회사가 제공하는 쿠폰, 이벤트 혜택 등 경제상의 이익을 취하거나 기타 명의도용 등의 불법적인 행위 등을 방지하기 위하여, 회원 탈퇴를 한 날로부터 30일이 경과 해야만 재가입이 가능합니다.</li>
                                <li><span>라. 회원이 다음 각 호의 사유에 해당하는 경우, 회사는 관리자의 권한으로 회원자격을 박탈할 수 있습니다.</span>
                                    <ul>
                                        <li>(1) 다른 사람의 회사 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경우</li>
                                        <li>(2) 회원 가입시 허위 내용의 등록 및 타인의 정보 도용</li>
                                        <li>(3) 관계 법령을 위배하거나 미풍양속을 저해하고자 하는 목적으로 회원 가입신청을 할 경우</li>
                                        <li>(4) 본 약관에 위반한 경우</li>
                                        <li>(5) 회사 및 기타 제3자의 권리를 침해하거나 도용하였을 경우</li>
                                        <li>(6) 회사 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위</li>
                                        <li>(7) 기타 회원으로서의 자격을 지속시키는 것이 부적절하다고 판단되는 경우</li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><span>3. 서비스의 제공 등</span>
                            <ul>
                                <li>가. 회사는 여러 가지 정보서비스를 제공하며 필요에 따라 그 내용이 추가, 변경 및 정지될 수 있습니다. 또한 회사는 천재지변 또는 중계선 고장 등의 불가피한 사정으로 인하여 서비스를 중단할 수 있습니다</li>
                                <li>나. 회사는 긴급한 사정, 회원의 정당한 권리 침해 방지 등을 위해 필요한 경우, 별도의 사전 동의 없이 회원이 가입 시 기재한 E-mail주소로 E-mail을 발송할 수 있습니다.</li>
                            </ul>
                        </li>
                        <li><span>4. “회원”에 대한 통지</span>
                            <ul>
                                <li>가. "회사"가 "회원"에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 서비스 내 전자우편주소, 전자쪽지 등으로 할 수 있습니다.</li>
                                <li>나. "회사"는 "회원" 전체에 대한 통지의 경우 7일 이상 "회사"의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다.</li>
                            </ul>
                        </li>
                        <li><span>5. 정보의 제공 및 광고의 게재</span>
                            <ul>
                                <li>가. "회사"는 "회원"이 "서비스" 이용 중 필요하다고 인정되는 다양한 정보를 공지사항이나 전자우편 등의 방법으로 "회원"에게 제공할 수 있습니다. 다만, "회원"은 관련법에 따른 거래관련 정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편에 대해서 수신 거절을 할 수 있습니다.</li>
                                <li>나. 제1항의 정보를 전화 및 모사전송기기에 의하여 전송하려고 하는 경우에는 "회원"의 사전 동의를 받아서 전송합니다. 다만, "회원"의 거래관련 정보 및 고객문의 등에 대한 회신에 있어서는 제외됩니다.</li>
                            </ul>
                        </li>
                        <li><span>6. 업무의 제휴</span>
                            <ul>
                                <li>회사는 이용자의 편의를 도모하고 효과적인 서비스 운영을 위해 서비스의 일정 부분에 대해 다른 회사와 제휴할 수 있습니다.</li>
                                <li>제휴회사가 서비스와 관련하여 진행한 활동은 회사가 직접 시행한 활동에 준하는 효력이 있습니다.</li>
                            </ul>
                        </li>
                        <li><span>7. 이벤트 참여</span>
                            <ul>
                                <li>가. 홈페이지 회원의 경우, e-프리퀀시 바코드가 자동 발급됩니다. ”e-프리퀀시 바코드”란 회원 가입 시 회원의 계정에 자동으로 발급되는온라인 적립 수단이며, e-프리퀀시 이벤트 진행 시, 등록된 e-프리퀀시 바코드에 e-스티커를 적립하여 관련 혜택을 받을 수 있습니다.</li>
                                <li>나. 회사에서 프리퀀시 이벤트가 진행되는 기간 동안, 회원 가입 시 자동으로 발급된 e-프리퀀시 바코드에 회사에서 정한 적립 기준에 따라 “e-스티커”를 적립할 수 있습니다. e-프리퀀시 바코드의 구체적인 운영 방침이나 활용 방법 및 혜택은 회사의 마케팅 정책에 따라 변할 수 있으며,이에 대해서는 별도의 방법으로 사전에 안내해 드립니다.</li>
                            </ul>
                        </li>
                        <li><span>8. 사이렌 오더 서비스</span><br/>
                            <p>회원은 스타벅스 애플리케이션을 통해 제공하는 사이렌 오더 서비스를 이용할 수 있으며, 필요한 이용 조건, 절차 및 당사자간의 권리, 의무 등 기본적인 사항을 아래와 같이 규정하며, 본 조항에서 정하지 않은 사항에 대하여는 “홈페이지 이용약관”의 내용에 따릅니다.</p>
                            <ul>
                                <li><span>가. 용어의 정의</span><br/>
                                    <span>사이렌 오더 서비스 약관에서 사용하는 용어는 다음과 같이 정의합니다.</span>
                                    <ul>
                                        <li>1. "사이렌 오더 서비스"란 회사가 스타벅스 애플리케이션을 통해 “회원”이 주문할 매장을 선택하여 주문 가능 메뉴를 확인하고 다양한 결제수	단으로 르게 주문 및 예약할 수 있는 전자상거래 서비스를 말합니다</li>
                                        <li>2.“주문”이란 회사의 다양한 메뉴를 매장별 실시간 주문 가능 수량을 확인하여 선결제한 후, 나의 위치정보(GPS, 고주파 등 이용)를 기반으로 2km 내 매장에 주문을 전송을 하는 것을 말합니다.</li>
                                        <li>3. “홀케익 선물/예약”이란 이용자가 사이렌 오더를 통해 홀케익을 선결제 하고, 지정한 매장에서 지정한 날짜에 “모바일 교환권”으로 수령하는 주문 유형을 말합니다. “선물”이란 이용자	가 “예약”한 홀케익 “모바일 교환권”을 휴대폰 MMS 전송 방법을 통해 선물할 수 있는 서비스를 말합니다.</li>
                                        <li>4. “모바일 교환권”이라 함은 “홀케익”이 화체된 모바일용 쿠폰으로서, “모바일 교환권” 내에 명시된 교환 조건에 따라 해당 상품으로 교환할 수 있으며, 현금 및 다른 상품으로 대체 수령은 불가합니다. “모바일 교환권”의 수신자라 함은 “모바일 교환권”을 이용자로부터 전송 받은 자를 말합니다.</li>
                                    </ul>
                                </li>
                                <li><span>나. 제공되는 서비스</span><br/>
                                    <span>회사가 제공하는 서비스는 다음 각 호와 같습니다.</span>
                                    <ul>
                                        <li><span>1) 어플리케이션을 통한 결제 및 주문 서비스</span>
                                            <ul>
                                                <li>① 전용 어플리케이션을 통하여 이용자와 회사간에 재화 등의 매매가 이루어질 수 있도록 온라인 거래 장소를 제공</li>
                                                <li>② 매장별 실시간 주문 가능 수량을 확인하여 2km 반경 내 매장에 상품 등을 주문 및 결제</li>
                                            </ul>
                                        </li>
                                        <li><span>2) 이용자 맞춤형 서비스</span>
                                            <ul>
                                                <li>① 저장된 나만의 음료 및 푸드 중 가장 즐겨 찾는 메뉴는 My favorites로 등록</li>
                                                <li>② 매장을 내 위치 정보에 따라 설정하는 서비스</li>
                                            </ul>
                                        </li>
                                        <li><span>3) 예약 및 선물하기 서비스</span>
                                            <ul>
                                                <li>① 이용자가 원하는 날짜에 원하는 매장에서 주문한 상품을 수령할 수 있도록 하는 모바일 주문 예약 서비스, 단 예약 가능한 상품은 회사의 상에 따라 변동될 수 있습니다.</li>
                                                <li>② 이용자가 “예약”한 상품의 “모바일 교환권”을 휴대폰 MMS 전송으로 선물하는 기능</li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <span>기타 회사가 본 서비스의 본질에 부합하며, 이용자의 편의성을 향상시킨다고 판단하여 제공하는 일체의 서비스</span>
                                </li>
                                <li><span>다. 서비스의 이용 및 변경</span>
                                    <ul>
                                        <li>1. 사이렌 오더 서비스의 이용은 연중무휴 1 일 24시간을 원칙으로 합니다. 다만 사이렌 오더 주문 전송 가능 시간은 주문할 매장의 운영 시작 시간부터 매장 운영 종료 30분전까지 입니다. 또한 24시간 운영되는 매장을 포함한 일부 오후 11시 이후까지 운영되는 매장의 경우, 최대 오후 11시까지 사이렌 오더 이용이 가능합니다.</li>
                                        <li>2. 회사는 서비스를 일정 범위로 분할하여 각 범위 별로 이용 가능한 시간을 별도로 정할 수 있으며, 이 경우 그 내용을 서비스 내 공지사항 등에 공지합니다.</li>
                                        <li>3. 상품 등의 품절 또는 사양의 변경 등의 경우에는 상품 등이 변경될 수 있습니다.</li>
                                        <li>4. 회사는 필요한 경우 상품 등의 변경 사실 및 그 사유를 이용자에게 제 2장 [4. “회원”에 대한 통지]에 정한 방법으로 통지합니다.</li>
                                        <li>5. 전항의 경우 회사는 이로 인하여 이용자가 입은 인과관계가 입증된 실제 손해를 배상합니다. 다만, 회사가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</li>
                                    </ul>
                                </li>
                                <li><span>라. 결제 및 주문 취소 등</span>
                                    <ul>
                                        <li>1. 본 서비스 내 판매 재화 등의 주문 신청에 따른 이용자의 청약의 의사표시에 대해 회사가 주문 완료를 통해 승낙의 의사표시를 함으로써 회사와 이용자 사이에 판매 재화 등에 관한 매매계약이 성립합니다.</li>
                                        <li><span>2. 본 서비스의 결제에 따른 대금 지급 방법은 다음 각호의 방법 중 가용한 방법으로 할 수 있습니다. 단, 회사는 이용자의 지급방법에 대하여 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.</span>
                                            <ul>
                                                <li>① 스타벅스 카드</li>
                                                <li>② 신용카드 등의 각종 카드 결제</li>
                                                <li>③ SSG PAY</li>
                                            </ul>
                                        </li>
                                        <li>4. 회사는 재화 등의 결제의 취소 및 환불과 관련하여 전자상거래법 등 관계 법령을 준수합니다.</li>
                                        <li>5. 홀케익을 비롯하여 이용자의 주문에 따라 개별적으로 생산되는 재화 등 또는 이와 유사한 재화 등인 경우에는 전자상거래법 등 관계법령상 청약 철회가 제한될 수 있습니다. 이에 회사는 청약 철회가 제한되는 사실을 개별 재화 등에 대한 안내 또는 결제 화면 등에서 고지하고, 이용자가 이에 동의하여야 결제가 가능한 것으로 할 수 있습니다.</li>
                                        <li><span>6. 제4항의 규정에도 불구하고 다음 각 호의 경우에 회사는 즉시 결제 취소를 위한 조치를 취하여야 하고, 회사가 결제 취소 및 그로 인해 발생한 일체의 비용을 부담합니다.</span>
                                            <ul>
                                                <li>1) 제공된 재화 등이 이용자가 결제한 재화 등의 내용과 현저히 상이할 경우</li>
                                                <li>2) 제공된 재화 등이 변질, 손상되는 하자 발생 시</li>
                                                <li>3) 천재지변 등 특수 상황에 따른 미입고 발생 시</li>
                                            </ul>
                                        </li>
                                        <li>7. 재화 등의 수령 후, 이물질 등 명백한 제조 과정 상의 하자가 확인되는 경우, 이용자는 환불 요청을 할 수 있으며, 환불 요청 시 회사는 하자에 대한 조치를 즉시 취하여야 합니다.</li>
                                        <li>8. 사이렌 오더 주문 서비스 이용 시, 이용자의 귀책 사유로 인한 주문 결제 건에 대한 변경 또는 취소는 결제 및 주문 전송 이후 일체 불가합니다.</li>
                                        <li>
                                            <p>9. 이용자가 결제 및 주문 전송 이후 미 수령할 경우, 취소가 받아들여지지 아니할 수 있으며, 이로 인하여 이용자에게 발생하는 손해에 대하여 회사는 고의 또는 과실이 없는 한 책임을 부담하지 않습니다.</p>
                                            <p>다만 결제 및 주문 동시에 판매가 완료된 메뉴인 경우, 매장에서 주문 승인을 하지 않으며, 이용자에게 해당 사유가 푸시 알림으로 발송됩니다. 이 경우, 이용자는 [히스토리] 메뉴에서 결제 취소하기 기능으로 즉시 결제를 취소하시거나, 익일 (24시간 이내) 자동으로 취소됩니다.</p>
                                        </li>
                                        <li>
                                            <p>10. 홀케익 수령을 원하는 날짜로부터 3~15일 이전에 예약/수정/취소가 가능합니다. 단, 화요일에 수령을 원하는 경우에는 전 주 금요일까지 예약/수정/취소 가능하며, 공휴일 및 명절 연휴 등에는 예약 가능 일정이 변동될 수 있습니다.</p>
                                            <p>크리스마스 홀케익 등 일부 시즌 홀케익의 경우에는 명시된 예약 기간에만 예약/수정/취소가 가능하며, 명시된 수령 기간에만 수령이 가능합니다. 회사는 이에 대한 사실을 개별 재화 등에 대한 안내 또는 결제 화면 등에서 고지하고, 이용자가 이에 동의하여야 결제가 가능한 것으로 할 수 있습니다.</p>
                                        </li>
                                        <li>11. 사이렌 오더 홀케익 선물/예약 서비스 이용 시, 이용자의 귀책 사유로 인한 예약의 변경 또는 취소는 명시된 ‘수정/취소가능일’까지 가능하며, 이용자가 지정한 수령일에 홀케익 미수령 시, 홀케익은 당일 매장 영업 마감 시까지 매장에서 보관 후 폐기됩니다. ‘수정/취소가능일’ 이후에는 일체의 취소 및 환불이 불가합니다.</li>
                                        <li>12. 사이렌 오더 주문 또는 예약 취소 시, 매장 방문 수령 시 제공되는 방문별은 제공되지 않습니다. 이로 인하여 이용자에게 발생하는 손해에 대하여 회사는 고의 또는 과실이 없는 한 책임을 부담하지 않습니다.</li>
                                    </ul>
                                </li>
                                <li><span>마. 선물 하기</span>
                                    <ul>
                                        <li>1. 이용자가 예약 완료한 홀케익은 “모바일 교환권” 형태로 지정한 홀케익 수령일 까지 선물 받는 분(이하 수신자라고 칭함)의 휴대폰으로 선물발송이 가능합니다.</li>
                                        <li>2. “모바일 교환권”은 스타벅스커피 코리아 대표번호(02-3015-1100)로 수신자의 단말기에 MMS 형태로 전송되며, 본인에게 선물할 수 없습니다.</li>
                                        <li>3. 선물한 교환권은 회수가 불가하며 동일한 휴대폰 번호로 MMS 1회 재전송이 가능합니다.</li>
                                        <li>4. 선물 발송 이후, 수령 정보(수령 매장/날짜)는 명시된 ‘수정/취소가능일’ 까지 수정 및 취소가 가능합니다. 단, 결제수단/조건, 예약품목, 선물 “수신자”는 수정이 불가하며, 예약 취소 후 다시 홀케익 선물/예약을 진행하셔야 합니다. ‘수정/취소가능일’ 이후에는 수정 및 취소가 일체 불가합니다.</li>
                                        <li>5. 수신자는 선물 받은 모바일 교환권을 MMS 내 거절 링크를 통해 지정된 홀케익 수령일 까지 거절할 수 있으며, 거절 시, 이에 대한 별도 알림 문자가 이용자에게 발송됩니다. 이용자는 이를 확인하여, 모바일 교환권으로 직접 수령하거나, 명시된 ‘수정/취소가능일’ 전에 수정 또는 취소를 할 수 있습니다.</li>
                                        <li>6. 번호도용 문자차단/휴대폰 번호 도용방지 서비스에 가입된 휴대폰은 발송 또는 수신이 불가하며, 수신자의 단말기 설정에 따라 MMS 수신이 불가능한 경우 모바일 교환권을 받지 못할 수 있으며 이로 인해 발생된 문제에 대해서는 회사가 책임지지 않습니다.</li>
                                        <li>7. 본 서비스를 상업적으로 이용할 수 없으며, 서비스에서 제공된 선물하기 기능이 아닌 다른 방식으로 전달된 모바일 교환권 사용으로 인해 발생된 문제에 대해서는 회사가 책임지지 않습니다.</li>
                                        <li>8. 회사는 고객 개인정보 보호 차원에서 선물 수신자의 휴대폰 정보를 발송 후 3개월만 보관하며, 이용목적이 달성된 후에는 회사의 ‘개인정보취급방침’에 따라 해당 정보를 지체 없이 파기합니다.</li>
                                    </ul>
                                </li>
                                <li><span>바. 이용자의 혜택</span>
                                    <ul>
                                        <li>1. 마이 스타벅스 리워드 회원의 경우, 회원 계정으로 영수증 당 1개의 별이 적립되며, 별적립에 관한 구체적인 내용은 “스타벅스 카드 이용 약관”에 따릅니다. 단, 매장에서 음료 및 푸드 등을 수령하지 않거나, 결제 취소 시 별은 적립되지 않습니다.</li>
                                        <li>2. 제 1항에도 불구하고 이용자의 고의 또는 과실 없이 “회사의 과실” 또는 “천재지변 등”의 특수한 상황에 따라 이용자가 재화 등을 수령하지 못하였을 경우, 회사는 이용자에게 별 적립 혜택을 제공합니다.</li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><span>9. 사용자 정보</span>
                            <ul>
                                <li>회원 등록 시 기재하는 모든 이용자 정보는 이름을 포함하여 모두 실제 데이타인 것으로 간주됩니다. 실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며 회사의 서비스 제한 등의 조치를 받을 수 있습니다.</li>
                            </ul>
                        </li>
                        <li><span>10. 회원 등록정보의 이용</span>
                            <ul>
                                <li>가. 회사는 회원 등록정보를 집단적인 통계치 형태로 사용할 수는 있습니다. 아울러 각 이용자 개인 정보는 이용자가 타인에게 피해를 주거나 기타 다른 불온한 문제를 일으킬 경우를 제외하고는 이용자의 동의 없이 공개하지 않습니다.</li>
                                <li>나. 회사는 회원이 회사의 권리를 침해하거나 기타 불법행위를 하는 경우, 정당한 법 절차에 따라 회원의 정보를 이용할 수 있습니다.</li>
                                <li>다. 회사는 수사기관이 수사와 관련하여 정당한 법 절차에 따라 회원의 정보를 요구하는 경우에는 이에 응하여 회원의 등록 정보를 수사기관에 제공할 수 있습니다.</li>
                            </ul>
                        </li>
                        <li><span>11. 회사 서비스에 포함된 회원 게시물의 관리</span>
                            <ul>
                                <li>가. 회원이 서비스를 이용하여 서비스 상에 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 게시한 "게시물"의 저작권은 적법한 저작권자에게 귀속됩니다.</li>
                                <li>나. 회원 서비스를 이용하는 경우, 회사는 회원의 프로필 사진 및 게시물(예: 캘린더 상 직접 입력 정보, 리뷰, 댓글 등)을 회원 서비스 화면에 표시할 수 있습니다. 이 경우, 회사는 저작권법 규정을 준수하며, 회원은 언제든지 고객센터 또는 홈페이지 내 관리기능을 통해 해당 게시물에 대해 삭제, 비공개 등의 조치를 취할 수 있습니다.</li>
                                <li>다. 회사는 고객의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 고객의 게시물이 "정보통신망법" 및 "저작권법"등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 게시물의 게시 중단 및 삭제 등을 요청할 수 있으며, 회사는 관련법에 따라 조치를 취하여야 합니다.</li>
                                <li>라. 회사는 전항에 따른 권리자의 요청이 없는 경우라도 권리 침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 "게시물"에 대해 임시 조치 등을 취할 수 있습니다.</li>
                                <li>마. 회사는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.</li>
                                <li>바. 게시물에 관련된 제반 권리와 책임은 작성자 개인에게 있습니다. 또 게시물을 통해 자발적으로 공개된 정보는 보호받기 어려우므로 정보 공개 전에 심사숙고 하시기 바랍니다.</li>
                                <li>사. 가입 해지 시 고객께서 작성하신 게시물은 자동으로 파기됩니다. 보관을 원하시는 게시물은 미리 고객님의 컴퓨터에 저장하셔야 합니다.</li>
                                <li>아. 일부 서비스에 의해서 발생되는 정보는 가입 해지의 경우 삭제되며, 그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</li>
                            </ul>
                        </li>
                        <li><span>12. 서비스의 중단</span>
                            <ul>
                                <li>가. 회사는 컴퓨터 등 정보통신설비의 보수 점검 교체 및 고장, 통신의 두절, 기타 불가항력적 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.</li>
                                <li>나. 회사는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상하지 아니합니다. 단 회사의 고의 또는 과실이 있는 경우에는 그러하지 아니합니다.</li>
                            </ul>
                        </li>
                        <li><span>13. 휴면계정 관리</span>
                            <ul>
                                <li>가. 회사는 회원이 12개월 이상 로그인 하지 않으면, 휴면계정으로 간주하고 회사가 제공하는 서비스 이용을 아래와 같이 제한/상실시킬 수 있습니다.</li>
                                <li>나. 12개월 이상 서비스에 로그인하지 않는 경우에는 휴면계정으로 별도 관리되어 웹서비스 이용이 중단되며, 이후 다시 서비스를 이용하려면 본인확인 절차를 거쳐야 합니다. (30일 전 안내문(전자우편)을 통지)</li>
                                <li>다. 단, 마이 스타벅스 리워드 회원은 본 약관 휴면계정에도 불구하고, 등록된 Starbucks Card의 최종 충전일 또는 최종 사용일로부터 5년동안 거래내역이 없거나, 로그인 하지 않았을 경우에 휴면계정으로 구분됩니다.</li>
                            </ul>
                        </li>
                        <li><span>14. 본인 인증 서비스</span>
                            <ul>
                                <li>가. 회사는 전기통신사업법 제84조 2항에 따라, 발신번호의 변조 방지를 위해 번호인증을 통한 발신번호 사전 등록서비스를 제공 및 운영합니다.</li>
                                <li>나. 회사는 이용고객의 회원가입 시 타인의 명의를 도용한 부정가입을 방지하기 위해 본인인증 서비스 사업자가 제공하는 인증방법을 통해 본인인증서비스를 제공 및 운영합니다.</li>
                                <li>다. 회사는 고객의 발신번호 사전등록 및 본인 인증 절차를 거친 후 e-Gift 및 e-Coupon 선물하기 서비스를 제공하여야 합니다.</li>
                                <li>라. 본인 인증 서비스 동의 거부 및 불이익 본인 인증 서비스에 대한 동의를 거부 시, 회원 가입이 불가하며, e-Gift 및 e-Coupon 선물하기 서비스를 이용할 수 없습니다.</li>
                            </ul>
                        </li>
                   </ul>
				</div>
				<div class="policy-text" id="policyNo3" >
					<h2 class="text-green">제 3장 약관 및 손해배상</h2>
                    <p>약관 외 준칙 이 약관에 명시되지 않은 사항은 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 및 기타 관련법령의 규정에 의합니다.</p>
                    <p>회사는 약관의 규제 등에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률에 따릅니다.</p>
                    <p>이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 정부가 제정한 전자거래 소비자보호지침 및 관계법령 또는 전자상거래 상 관례에 따릅니다.</p>
                    <p>책임 제한 기타 회사는 천재지변 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없거나 회사의 귀책사유가 없는 경우에는 책임을 지지 않습니다. 또한 회사는 서비스 이용과 관련하여 이용자의 고의 또는 과실로 인하여 발생한 손해에 관하여도 책임을 지지 않습니다. 만일 서비스 이용으로 발생한 분쟁에 대해 소송이 제기될 경우 회사의 소재지를 관할하는 법원을 관할법원으로 합니다.</p>
                    <p>본 이용약관은 2016년 12월 1일부터 시행합니다.</p>
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