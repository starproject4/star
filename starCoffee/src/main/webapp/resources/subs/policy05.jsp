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
        #policyNo3>ul{
            padding-left: 0;
        }
        .policy-text button{
            margin-top: 5px; 
        }
        #policyNo1>ul>li{
            margin-bottom: 20px;
        }
        #policyNo1 ul li ul{
            padding-left: 0px;
        }
        #policyNo1 ul li ul li ul{
            padding-left: 15px;
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
    @media (min-width: 768px) {      
        #policy-link div.col-sm-6:nth-child(2){
            border-left: 1px solid #ccc;
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
		
			<div id="policy-wrap" class="col-sm-12">
                <h1><span></span>스타벅스 카드 이용약관</h1>
                <h2 class="text-green">스타벅스커피 코리아는 고객님을 보호합니다.</h2>
                <p>(주)스타벅스커피 코리아의 스타벅스 카드 이용과 관련하여 필요한 사항을 규정합니다.</p>
                <div class="policy-text" id="policyNo1" >
                   <h2 class="text-green">제1장 총칙</h2>
                   <ul>
                       <li><span>제 1 조 (목적)</span>
                        <p>이 약관은 주식회사 스타벅스커피 코리아(이하 "회사"라 합니다)가 발행한 Starbucks Card를 구입 또는 정당한 방법으로 소지한 고객이 회사가 제공하는 Starbucks Card 서비스를 이용함에 있어 필요한 이용 조건, 절차 및 당사자간의 권리, 의무 등 기본적인 사항을 규정하는 것을 목적으로 합니다.</p>
                       </li>
                       <li><span>제 2 조 (용어의 정의)</span>
                           <p>이 약관에서 사용하는 용어는 다음과 같이 정의합니다.</p>
                        <ul>
                            <li>1. "Starbucks Card"란 회사가 정의한 기술사양에 따라 회사가 인증한 Chip 또는 Application을 내장하고 Starbucks Card 브랜드를 부착한 선불전자지급수단임과 동시에 고객이 “별”을 적립하여 서비스를 정상적으로 이용할 수 있도록 회사가 승인한 카드로서 회사가 발급합니다.</li>
                            <li>2. "고객"이란 이 약관에 동의하고 매장에서 Starbucks Card충전한 자를 말합니다.</li>
                            <li>3. “회원”이란 고객 중 회사의 홈페이지 등을 통해 이용 약관과, 개인정보의 수집, 제공 및 활용에 관한 동의서에 동의하고, 소지한 Starbucks Card를 등록한 자를 말합니다.</li>
                            <li>4. "매장"이란 회사가 직영으로 운영하는 모든 매장을 말합니다.</li>
                            <li>5. "최초 충전 (Activation)" : Starbucks Card를 처음 구입하여 충전 하는 행위를 말합니다.</li>
                            <li>6. "결제 (Redemption)" : Starbucks Card로 이용금액의 전체 또는 일부 금액을 결제 하는 행위를 말합니다.</li>
                            <li>7. "잔액 조회 (Balance inquiry)" : Starbucks Card에 대한 잔액에 대해 문의하는 행위를 말합니다.</li>
                            <li>8. "재충전 (Reload)" : 소지한 Starbucks Card에 금액을 재충전 하는 행위를 말합니다.</li>
                            <li>9. "환급" 이란 Starbucks Card에 기록된 잔액을 고객과 회사간에 약정된 방법과 절차에 따라 고객에게 돌려주는 것을 말하며, 동일한 의미로서 "환불"이 용어로 사용하기도 합니다.</li>
                            <li><span>10. "고장카드"란 정상적으로 사용이 불가능한 Starbucks Card를 말하며, 불량카드와 파손카드로 구분합니다.</span>
                                <ul>
                                    <li>가. 고장카드 중 "불량카드"란 Starbucks Card의 외형상 이상은 없으나, 기능상의 문제로 단말기 등에서 사용이 불가능한 상태의 Starbucks Card를 말합니다.</li>
                                    <li>나. 고장카드 중 "파손카드"란 고객의 고의 혹은 과실로 구멍 뚫림, 구김, 휘어짐, 찍힘, 태움, 조각남, 깨짐, 갈라짐, 카드 번호 지워짐 등으로 인하여 훼손된 Starbucks Card를 말합니다.</li>
                                </ul>
                            </li>
                            <li>11. "Free Extra 제공"이란 Starbucks Card로 음료 구매 시 매장에서 제조한 음료에 Extra(샷, 시럽, 드리즐, 휘핑, 자바칩 등)를 제공하는 혜택을 말합니다.</li>
                            <li>12. "별"이란 고객이 회사의 상품을 구입할 경우 회사가 고지한 방침에 따라 부여되는 혜택을 말합니다.</li>
                            <li>13. "별 부정 적립 및 사용"이란 고객이 제품 및 상품을 구매 또는 사용하지 않았음에도 불구하고 해당 고객에게 “별”이 적립 또는 사용된 경우를 말합니다.</li>
                            <li>14. “마이 스타벅스 리워드(My Starbucks Rewards)’란 고객이 구입한 Starbucks Card를 회사의 홈페이지에 등록한 후 매장 내에서 결제 등에 이용할 경우, 혜택을 제공하는 프로그램입니다.</li>
                            <li>15. ”잔액보호”란 Starbucks Card를 홈페이지에 등록한 회원이 분실 신고를 할 경우, 분실신고 당시의 카드 잔액을 보호해 주는 것을 말합니다.</li>
                            <li>16. “자동 재충전” 이란 회원의 선택에 따라 특정 일자에 특정 금액이 자동으로 결제되어 스타벅스 카드에 충전 되거나, 또는 회원의 카드 잔액이 일정금액 이하로 하락하는 경우 지정한대로 특정 금액이 결제되는 절차를 말합니다.</li>
                            <li>17. ”e-프리퀀시 카드”란 마이 스타벅스 리워드 가입을 하면 회원의 계정에 자동으로 발급되는 온라인 적립 수단이며, 회사에서 프로모션을 진행하면 등록된 Starbucks Card 결제를 통해 e-스티커를 적립하여 관련 혜택을 받을 수 있습니다.</li>
                        </ul>
                       </li>
                       <li><span>제 3 조 (약관의 효력 및 변경 등)</span>
                        <ul>
                            <li>1. 본 약관은 그 내용을 회사가 홈페이지에 게시하고, 고객이 Starbucks Card를 충전 후 소지 또는 기타 정당한 방법으로 소지하여 사용함으로써 그 효력이 발생됩니다.</li>
                            <li>2. 본 약관은 수시로 변경될 수 있으며 회사가 약관을 변경하고자 할 경우에는 개정된 약관을 적용하고자 하는 날(이하 "효력 발생일")로부터 1개월 전에 약관이 개정된다는 사실과 개정된 내용 등을 홈페이지 내 게시하는 방법 등으로 관련 법령에 의거하여 고객에게 고지합니다. 다만, 법령의 개정이나 제도의 개선, 감독기관의 권고 등으로 인하여 긴급히 이 약관을 변경할 경우에는 즉시 이를 게시합니다.</li>
                            <li>3. 본 조의 규정에 의하여 개정된 약관은 원칙적으로 그 변경되는 약관의 효력 발생일로부터 장래를 향하여 유효합니다.</li>
                            <li>4. 고객이 변경된 약관 사항에 동의하지 않을 경우, 약관의 효력 발생 전일까지 서비스 이용을 중단하거나 회원탈퇴 및 등록된 스타벅스 카드를 고객이 홈페이지에서 등록 해지함으로써 이용 계약을 해지할 수 있으며, 약관의 개정과 관련하여 효력 발생일 전일까지 이의를 제기하지 않는 경우에는 개정된 약관에 동의한 것으로 간주합니다.</li>
                        </ul>
                       </li>
                       <li><span>제 4 조 (약관 외 준칙)</span>
                            <p>이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 관계 법령 또는 상 관례에 따릅니다.</p>
                       </li>
                   </ul>
               </div>
                <div class="policy-text" id="policyNo2" >
                   <h2 class="text-green">제 2 장 Starbucks Card 서비스</h2>
                   <ul>
                        <li><span>제 5 조 (목적별 이용)</span>
                            <ul>
                                <li><span>1. 선불전자지급수단으로의 Starbucks Card</span>
                                    <ul>
                                        <li>가. 고객은 국내 스타벅스 매장 어디에서나 Starbucks Card로 서비스를 제공받거나 제품 및 상품을 구매할 수 있습니다.<br/>
                                        단, Starbucks Card의 발행 목적, 매장의 임대차 계약상 임대인이 요구한 조건, 또는 기술적 사유(시스템 점검, 단말기 고장, 통신회선 불량, 신규 카드 또는 단말기의 안정화 작업 등)로 일부 Starbucks Card는 매장 내 이용이나 충전, 환급 신청이 제한될 수 있으며, 이 경우 회사는 매장에 배포된 안내장 또는 홈페이지 등을 이용하여 고객에게 고지합니다.</li>
                                        <li>나. Starbucks Card로 매장에서 제조한 음료를 구입하는 경우 EXTRA 추가 등과 같은 사전 공지된 별도의 혜택을 받으실 수 있습니다.<br/>
                                        다만, 이 혜택은 음료 1잔 구매 시 1회에 한하여 제공되며, 구체적인 혜택 사항은 회사의 마케팅 정책에 따라 변경될 수 있습니다.</li>
                                        <li>다. 본 Starbucks Card 는 기술적 결함이나 네트워크의 오류 및 장애 발생으로 일시적으로 서비스 이용에 제한이 발생할 수 있습니다.</li>
                                        <li>라. Starbucks Card 잔액에 대한 고객의 권리는 최종 충전일 또는 최종 사용일로부터 5년이 지나면 자동 소멸합니다.</li>
                                    </ul>
                                </li>
                                <li><span>2. 마이 스타벅스 리워드(My Starbucks Rewards)로의 Starbucks Card</span>
                                    <ul>
                                        <li>가. 회원은 회사의 홈페이지에 Starbucks Card를 등록함으로써, Starbucks Card의 마이 스타벅스 리워드 혜택을 받을 수 있습니다.</li>
                                        <li>나. “별” 적립 : 회원은 회사에서 제품 및 상품 구입을 통하여 ‘별”을 적립 받을 수 있습니다. 구체적인 적립 방법과 적립 기준은 본 약관 제 11조의 “별” 적립 기준에 따라 제공됩니다.</li>
                                        <li>다. 기타 서비스 : 회사는 추가적인 서비스를 개발하여 회원에게 제공할 수 있습니다. 서비스 제공 기준은 각각의 서비스 제공 시점에 회사 홈페이지에 고시한 기준으로 적용됩니다.</li>
                                        <li>라. 회원이 본 약관 또는 회사 개인정보취급방침에 따라 등록해야 하는 고객에 대한 정보를 등록하지 않거나 허위로 등록하는 경우 본 조에 따른 혜택의 이용이 제한될 수 있습니다.</li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><span>제 5 조의 2 (발행 등)</span>
                            <p>“Starbucks Card”의 발행 관련 구체적인 내용은 다음과 같으며, 자세한 내용은 “Starbucks Card” 최초 충전시 제공드리는 “스타벅스카드 브로슈어”를 통해 확인할 수 있습니다.</p>
                            <ul>
                                <li>1. 발행자 : 스타벅스커피코리아</li>
                                <li>2. 구매가격 : Starbucks Card는 별도의 카드 구매가격이 없는 충전식 상품권입니다.</li>
                                <li><span>3. 유효기간</span>
                                    <ul>
                                        <li>Starbucks Card에 충전 잔액이 남아있는 동안은 기한의 정함 없이 사용이 가능하며, 더 이상 잔액이 없는 경우 최종 충전일 또는 최종사용일로부터 5년 경과 시 소멸됩니다</li>
                                    </ul>
                                </li>
                                <li><span>4. 사용조건 (사용가능금액, 제공 가능 물품 등)</span>
                                    <ul>
                                        <li>Starbucks Card는 충전식 상품권으로, 고객이 사용할 수 있는 금액은 충전한 금액과 같으며, 현금과 동일하게 스타벅스 매장에서 제품 및 상품을 구매할 수 있습니다.</li>
                                    </ul>
                                </li>
                                <li>5. 사용가능가맹점 : Starbucks Card는 국내 스타벅스 매장 어디에서나 사용이 가능합니다.</li>
                                <li><span>6. 환불 조건 및 방법</span>
                                    <ul>
                                        <li>고객이 충전된 금액의 잔액 요청 시, 회사는 최종 충전 시점의 잔액을 기준으로 60%이상을 사용한 후 40% 이하에 해당하는 잔액의 반환을 요구하는 경우 홈페이지 또는 매장을 통해 환급을 신청할 수 있습니다. </li>
                                        <li>보다 자세한 방법은 약관 제10조를 참조바랍니다.</li>
                                    </ul>
                                </li>
                                <li>7. Starbucks Card의 충전금액에 대하여 피해보상보험계약 또는 보증보험 등 별도의 지급보증이 되어있지 않습니다, 분실 시 홈페이지를 통해 신고하시기 바랍니다.</li>
                                <li><span>8. Starbucks Card의 이용과 관련하여 고객 피해 발생시, 회사의 고객지원부서 및 공정거래위원회 소비자상담센터에 연락을 하실 수 있으며, 전화번호는 아래와 같습니다.</span>
                                    <ul>
                                        <li>회사 고객지원센터 : 02 - 3015 - 1100(유료)</li>
                                        <li>공정거래위원회 소비자상담센터 : (국번없이) 1372</li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><span>제 6 조 (마이 스타벅스 리워드 회원가입)</span>
                            <ul>
                                <li>1. Starbucks Card는 회사의 전국 매장(일부 매장 제외)에서 최초충전 하실 경우 발급 받으실 수 있습니다.</li>
                                <li>2. 마이 스타벅스 리워드 회원이 되고자 하는 고객은 본 약관에 동의하고 회사가 발급한 Starbucks Card를 최초충전 하거나 스타벅스 카드 e-Gift로 양도 받은 후 홈페이지에 등록함으로써 마이 스타벅스 리워드 프로그램에 참여할 수 있습니다.</li>
                                <li>단, 14세 미만인 자는 회원 가입이 불가합니다.</li>
                                <li>3. 마이 스타벅스 리워드 회원이 되시면, e-프리퀀시 카드가 계정을 통해 자동으로 발급됩니다.</li>
                                <li>4. 고객으로부터 회원 가입신청이 있는 경우 회사는 자체 기준에 따른 심사를 거친 뒤 동 기준을 만족시키는 고객에게 회원 자격 및 마이 스타벅스 리워드 혜택 이용을 승인하여 드립니다.</li>
                                <li>5. 회원은 회원 자격을 타인에게 양도하거나 대여하거나 담보의 목적물로 이용할 수 없습니다.</li>
                            </ul>
                        </li>
                        <li><span>제 7 조 (회원 탈퇴 및 자격 상실)</span>
                            <ul>
                                <li>1. 회원은 언제든지 홈페이지를 통해 회원 탈퇴를 요청할 수 있으며, 당사는 회원의 요청에 따라 조속히 회원 탈퇴에 필요한 제반 절차를 수행합니다.<br/>(단, 회원이 탈퇴를 요청할 때에는 회사의 홈페이지에 등록된 회원의 모든 카드가 등록 해지되는 것을 전제로 합니다.)</li>
                                <li><span>2. 회원이 다음 각 호의 사유에 해당하는 경우, 당사는 당해 회원에 대한 통보로써 회원의 자격을 상실시킬 수 있습니다. 단, '다'의 경우에는 별도의 통보 없이 당연히 자격이 상실됩니다.</span>
                                    <ul>
                                        <li>가. 카드 등록 시에 허위의 내용을 등록한 경우</li>
                                        <li>나. “별” 또는 e-쿠폰을 부정 적립 또는 부정 사용하는 등 서비스를 부정한 방법 또는 목적으로 이용한 경우</li>
                                        <li>다. 회원이 사망한 경우</li>
                                        <li>라. 다른 회원의 서비스 이용을 방해하거나 그 정보를 도용하는 경우</li>
                                        <li>마. 서비스 홈페이지를 이용하여 법령, 본 약관 또는 공서양속에 반하는 행위를 하는 경우</li>
                                        <li>바. 당사 또는 다른 회원의 명예를 훼손하거나 모욕하는 경우</li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><span>제 8 조 (카드의 이용 및 관리)</span>
                            <ul>
                                <li>1. 회원이 회사 Starbucks Card 의 적립 “별”에 따른 혜택을 이용하고자 할 경우에는 반드시 Starbucks Card를 제시하는 것을 원칙으로 합니다. 단, 여기에서 "Starbucks Card를 제시한다"함은 Starbucks Card를 회사에 보여주는 행위, 단말기에 읽히는 행위 등 Starbucks Card를 이용하고자 하는 고객이 회사로부터 적법하게 인정된 회원임을 증명하는 행위를 말합니다.</li>
                                <li>2. 회원이 서비스를 이용하고자 Starbucks Card를 제시할 경우 회사는 회원에게 본인 확인을 위한 신분증 제시를 요청할 수 있습니다. 이 경우 회원은 회사의 요청을 준수하여야 정상적인 서비스를 제공받을 수 있습니다.</li>
                            </ul>
                        </li>
                        <li><span>제 9 조 (충전)</span>
                            <ul>
                                <li><span>1. Starbucks Card의 충전은 다음 각 호의 방법으로 가능합니다.</span>
                                    <ul>
                                        <li>가. 고객이 매장(일부 매장 제외)을 직접 방문하여 현금 또는 회사가 현금과 동일하게 인정하는 금전적 가치(신용카드 등)를 제공하는 방법으로 해당 가치를 전자적 장치(단말기 등)를 이용하여 Starbucks Card에 직접 저장하는 방법</li>
                                        <li>나. 회원이 회사와 약정한 절차에 따라 사전에 일정금액을 회사에 지급하고 회사는 지급 받은 금액에 해당하는 가치를 Starbucks Card에 관한 정보를 기준으로 회사의 시스템에 전자적 방법으로 저장한 후, 회원과 회사가 약정한 조건에 따라 별도의 절차 없이 회사가 지정한 전자적 장치 (단말기 등)를 통해 회사의 시스템에 저장된 가치를 Starbucks Card로 이전하여 기록하는 방법 (이하 “인터넷 결제를 통한 충전”이라고 합니다.)</li>
                                        <li>다. 기타 회사가 사전에 고지하고 고객이 해당 방법을 이용함으로써 동의 의사가 표시된 방법</li>
                                    </ul>
                                </li>
                                <li>2. Starbucks Card에 충전 할 수 있는 최소 최초충전 금액은 5천원이며, 1회 충전 시 1만원 이상의 1만원 단위로 충전할 수 있습니다.<br/>
                                    다만, 1장의 Starbucks Card에 저장된 총 금액은 55만원을 초과할 수 없습니다. 아울러 이와 같은 충전 금액 기준은 회사의 마케팅 정책에 따라 변경될 수 있습니다.</li>
                                <li>3. Starbucks Card에 충전된 금액에 대하여는 이자가 발생되지 않습니다.</li>
                                <li><span>4. 다음 각호에 해당되는 경우 회사는 고객의 충전을 제한할 수 있습니다.</span>
                                    <ul>
                                        <li>가. 회사가 아닌, 타 국가의 Starbucks Card를 소지한 경우</li>
                                        <li>나. 기타 충전이 불가능한 기술적, 제도적 사유가 발생한 경우</li>
                                    </ul>
                                </li>
                                <li>5. Starbucks Card에 저장된 금액을 다른 Starbucks Card에 저장된 금액과 합산할 수 없습니다. 단, 고객이 고장카드에 대한 교체신청을 하거나, 회원이 분실신청을 하는 불가피한 사유가 발생한 경우에만 회사가 정한 절차에 따라 제한적으로 가능합니다.</li>
                                <li>6. 회원은 제3자에게 Starbucks Card를 충전하여 선물하기 기능 등을 통해서 양도할 수 있습니다. 단, 이 때 제3자에게 양도한 카드는 거래가 없는 경우 당일에 한해서만 양도행위에 대한 취소가 가능합니다. 이와 관련된 구체적인 지침이나 정책은 회사의 마케팅 정책에 따라 달라질 수 있으며 사전에 홈페이지를 통하여 안내해 드립니다.</li>
                            </ul>
                        </li>
                        <li><span>제 9 조의 2 (자동 재충전)</span>
                            <p>마이 스타벅스 리워드(My Starbucks Rewards)로 회원등록이 되어 있는 Starbucks Card의 경우, 아래와 같은 방법으로 자동 재충전을 설정할 수 있습니다.</p>
                            <ul>
                                <li>1. 기준 하한 자동 재충전 : 회원이 지정한 카드의 최저 잔액 이하로 잔액이 하락하는 경우, 회원이 사전에 선택한 결제 수단으로 지정한 금액이 재충전 됩니다.</li>
                                <li>2. 월 정액 자동 재충전 : 회원이 지정한 특정 일자에 사전에 선택한 결제 수단으로 지정한 금액이 재충전 됩니다.</li>
                            </ul>
                       </li>
                       <li><span>제 9조의 3 (결제 확인 통지 · 안내 · 충전신청 변경 및 취소)</span>
                           <ul>
                            <li>1. 회사는 회원이 인터넷 결제를 통한 충전을 신청한 경우 결제와 동시에 팝업창 등을 통해 결제 확인을 통지하며, 회원의 선택에 따라 이메일로 결제 관련 정보를 안내해 드립니다. 회사의 확인통지가 회원에게 도달한 시점에 계약이 성립된 것으로 보고, 그 통지에는 회원의 구매신청에 대한 확인 및 판매가능여부, 구매신청의 정정 취소절차 등에 관한 정보 등을 포함하도록 합니다.</li>
                            <li>2. 회원은 의사표시의 불일치 등이 있는 경우에는 구매신청 변경 및 취소를 요청할 수 있고, 회사는 특별한 사정이 없는 한 그 요청에 따라 처리하여야 합니다. 다만 이미 대금이 지급된 경우에는 제10조 2 의 청약철회 등에 관한 규정에 따릅니다.</li>
                           </ul>
                       </li>
                       <li><span>제 10 조 (환급)</span>
                           <ul>
                            <li><span>1. 고객이 Starbucks Card에 충전된 잔액의 환급을 요청하는 때에는 회사는 Starbucks Card의 상태에 따라 다음 각호에 명시된 절차에 의거하여 환급 처리를 합니다.</span>
                                <ul>
                                    <li><span>가. 구매하거나 충전한 정상카드의 잔액은 현금으로 반환되지 않습니다. 단, 구매 또는 최종 충전 후 그 시점의 잔액을 기준으로 60% 이상을 사용한 후 40% 이하에 해당하는 잔액의 반환을 요구하는 경우 등록된 카드 회원은 홈페이지 또는 매장(일부 매장 제외)을 통해서 환급을 신청할 수 있고, 등록하지 않은 카드의 소지인은 매장에 환급을 신청할 수 있습니다.</span>
                                        <ul>
                                            <li>- 등록되지 않은 정상카드도 홈페이지에 등록한 후, 환불 접수가 가능합니다.</li>
                                            <li>- 홈페이지를 통해 등록된 정상카드에 대한 잔액 환급을 신청하면, 고객센터에서 확인 후 고객이 지정한 계좌로 신청일로부터 1주 이내에 잔액을 환급해 드립니다. 단, 고객이 본인의 환급 신청 계좌를 잘못 지정하는 경우에는 확인 절차 등으로 인해 환급이 다소 지연될 수 있습니다.</li>
                                            <li>- 매장을 통해 환급을 신청하는 경우 등록되지 않은 무기명 카드는 환급을 신청한 카드소지인에게 현금으로 환급해 드리지만, 마이 스타벅스 리워드 등록 회원은 반드시 본인이 직접 환급을 신청해야 하며 본인 확인 후 현금으로 환급해 드립니다. 이 경우 고객이 환불 금액을 수령할 때 한 서명은 향후 정상적으로 환불 금액을 수령하였다는 사실을 입증하는 자료로 사용됩니다.</li>
                                            <li>- 매장 중 백화점 및 쇼핑몰에 입점되어 있어 정책상 카드의 충전이 불가능한 매장에서는 환급도 불가능할 수 있습니다. 이 경우 해당 매장 직원의 안내에 따라 인접 매장을 이용하거나 홈페이지를 통해 환급 받으실 수 있습니다.</li>
                                        </ul>
                                    </li>
                                    <li><span>나. 분실 신고된 Starbucks Card는 매장에서 환급해 드리지 않으며, 홈페이지에서 본인이 직접 계정 로그인 후 환급을 신청하여야 합니다.</span>
                                        <ul>
                                            <li>- 회원은 홈페이지에서 분실 신고를 한 후 해지를 할 수 없습니다.</li>
                                            <li>- 분실 신고한 카드의 잔액은 홈페이지에 등록된 다른 카드로 이체할 수 있습니다.</li>
                                            <li>- Gold Level 회원에게 발급되는 골드카드의 분실 재발급의 경우 연 2회까지만 무상 발급되며, 3회 이상 재발급 신청은 불가합니다. 다만, 회원이 다시 Gold Level이 되는 경우에는 연2회까지 재발급 신청을 할 수 있습니다.</li>
                                        </ul>
                                    </li>
                                    <li>다. 정상카드에 대한 충전을 취소하고자 하는 경우에는 해당 거래의 영수증을 지참하여 충전일로부터 14일 내에 해당 매장에 충전 취소를 요청함으로써 충전방법에 따라 현금 또는 신용카드 취소 등의 형식으로 환급해 드립니다. 단, 충전일로부터 14일을 경과한 경우에는 전호의 절차에 따라 고객이 지정한 계좌로 잔액을 환급해 드립니다.</li>
                                    <li><span>라. 고장카드는 매장에 접수하시면 잔액 확인 등의 절차를 거쳐 고장카드의 잔액이 충전된 신규 Starbucks Card를 발급하여 드리며, 신규로 발급 받으신 후에는 고장카드를 사용하실 수 없습니다. 단, 고객이 고장카드의 잔액을 금전으로 받기 원하는 경우, 정상카드 환급 절차와 같이 홈페이지에서 카드를 등록한 후 신청하면 고객센터에서 확인하여 고객이 지정한 계좌로 1주 내에 잔액을 송금하여 드립니다.</span>
                                        <ul>
                                            <li>- 등록된 카드의 교환 처리 후, 신규로 교환 받은 카드는 홈페이지에 다시 등록을 한 후 마이 스타벅스 리워드 프로그램의 혜택을 받을 수 있습니다.</li>
                                            <li>- 골드카드를 고장카드 교환 받을 경우, 매장에 반납하셔야 합니다.</li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li>2. Starbucks Card의 발행 목적 또는 기술적 사유(시스템 점검, 단말기 고장, 통신회선 불량, 신규 카드 또는 단말기의 안정화 작업 등)로 일부 Starbucks Card는 환급이 제한될 수 있으며, 이 경우 회사는 별도의 환급 절차 및 방법을 매장에서 배포하는 안내장 또는 홈페이지 등을 이용하여 고객에게 고지합니다.</li>
                           </ul>
                       </li>
                       <li><span>제 10 조의 2 (청약철회 등)</span>
                        <ul>
                            <li>1. 인터넷 결제를 통한 충전을 청약한 회원은 청약 후 결제가 완료된 날로부터 7일 이내에는 그 청약의 철회를 할 수 있습니다.</li>
                            <li>2. 회사는 제1항의 청약철회를 수신한 날부터 3영업일 이내에 지급받은 대금을 환급합니다. 이 경우 그 환급을 지연하는 때에는 그 지연기간에 대하여 전자상거래 등에서의 소비자보호에 관한 법률 시행령이 정하는 지연이자율(연 100분의 24)을 곱하여 산정한 지연이자를 지급합니다.</li>
                            <li>3. 회사는 위 대금을 반환함에 있어서 회원이 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.</li>
                            <li>4. 회사의 시스템에 저장된 가치가 이미 Starbucks Card로 이전하여 기록된 경우에는 제10조의 규정에 의하여 환급합니다.</li>   
                        </ul>
                       </li>
                       <li><span>제 11 조 (“별” 적립 및 등급별 혜택 · e-프리퀀시 혜택)</span>
                        <ul>
                            <li><span>1. “별” 적립</span>
                                <ul>
                                    <li>상품을 구입한 회원은 회사가 정한 아래와 같은 적립 기준에 따라 “별”을 부여 받게 됩니다. Starbucks Card로 회사가 정한 기준에 따라 결제 시 유효한 구매 영수증 1개당 별 1개가 적립됩니다.</li>
                                    <li>가. 적립된 유효 별의 개수에 따라 회원의 등급이 나누어 지며, 등급별로 다른 혜택이 적용됩니다.</li>
                                    <li>나. Starbucks Card의 사용으로 인해 발행된 모든 쿠폰은 회사에서 발급 시 정해진 유효기간 내에서만 사용이 가능합니다.</li>
                                </ul>
                            </li>
                            <li><span>2. 회원 등급별 혜택 및 유효기간</span>
                                <ul>
                                    <li>적립된 별의 개수에 따라 등급이 나뉘며, 등급별로 다양한 혜택을 제공해드립니다. 각 상위 등급은 하위 등급의 혜택을 포함합니다. 단, 각 등급별 혜택은 회사의 마케팅 정책에 따라 달라질 수 있으며, 자세한 혜택은 홈페이지 또는 스타벅스카드 브로슈어에서 확인 가능합니다.</li>
                                </ul>
                            </li>
                            <li>3. e-프리퀀시의 기능 및 혜택 회사에서 프리퀀시 프로모션이 진행되는 기간 동안 회원이 마이 스타벅스 리워드에 등록된 Starbucks Card로 결제 하는 경우, 회원 가입 시 자동으로 발급된 e-프리퀀시 카드계정에 회사에서 정한 적립 기준에 따라 “e-스티커”가 적립됩니다. 아울러e-프리퀀시 카드의 구체적인 운영 방침이나 활용 방법 및 혜택은 회사의 마케팅 정책에 따라 변할 수 있으며, 이에 대해서는 별도의 방법으로 사전에 안내해 드립니다.</li>   
                        </ul>
                       </li>
                       <li><span>제 12 조 (“별” 유효기간 및 소멸)</span>
                        <ul>
                            <li>1. 별의 유효기간은 적립 일로부터 1년 (12개월) 이며, Gold Level의 무료 음료 증정을 위한 별 또한 Gold Level의 유효기간과 동일하게 1년이다.</li>
                            <li>2. 유효기간이 경과된 별은 적립 일 기준으로 12개월 후부터 일 단위 선입선출 방식에 의하여 자동으로 소멸되며, 유효기간 만료 이전에 1개월 단위로 E-mail, 홈페이지 등을 통해 통지하여 드리며, 홈페이지에서도 조회하실 수 있습니다.</li>
                            <li>3. Starbucks card로 결제 시 적립된 별은 해당 결제를 취소하실 경우 적립이 취소됩니다.</li>   
                        </ul>
                       </li>
                       <li><span>제 13 조 (고객의 의무)</span>
                        <ul>
                            <li>1. 고객은 이 약관에서 규정하는 사항과 이용안내 또는 공지사항 등을 통하여 회사가 제공하는 사항을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 안됩니다.</li>
                            <li>2. 회원은 회사가 제공한 별을 이용하여 영업 활동을 할 수 없습니다.</li>
                            <li>3. 회원은 적립한 별을 다른 회원에게 재판매 할 수 없으며, 위반 시에는 제공받았던 혜택을 반환하여야 합니다.</li>   
                        </ul>
                       </li>
                       <li><span>제 14 조 (회원 탈퇴와 별의 소멸 처리)</span>
                        <ul>
                            <li>1. 본 약관 제 7 조 제 1 항에 정해진 방법으로 회원 탈퇴 시 회원 탈퇴 요청일 현재까지 적립된 별은 자동으로 소멸되며, 재가입 시 소멸된 별은 복원되지 않습니다.</li>
                            <li>2. 본 약관 제 7 조 제 2 항에 따라 회원 자격이 상실된 경우, 자격 상실일 현재까지 적립된 별은 자동으로 소멸됩니다.</li>   
                        </ul>
                       </li>
                       <li><span>제 15 조 (거래지시의 철회)</span>
                        <ul>
                            <li>고객이 Starbucks Card로 서비스를 제공받거나 제품 또는 상품을 구매하고 Starbucks Card의 잔액이 차감되어 거래내역이 기록된 후에는 그 거래가 발생한 날의 7일 이내에 영수증 등 구매사실을 소명할 수 있는 자료를 첨부하여 환불을 요구하는 경우, 거래를 취소하거나, Starbucks Card 에 재충전 또는 고객의 요청에 따라 현금으로 환불해 드립니다. 또한 프로모션 기간 내 지급된 쿠폰, 또는 판촉물 등을 증정 받으신 경우 이를 반드시 함께 반환하셔야만 거래지시의 철회가 가능합니다.</li>   
                        </ul>
                       </li>
                    </ul>
				</div>
				<div class="policy-text" id="policyNo3" >
					<h2 class="text-green">제 3 장 거래내역 정보</h2>
                    <p>1. 회사는 고객이 Starbucks Card를 통해 서비스 이용 및 제품 또는 상품 구매 시 필요한 최소한의 거래내역 정보(카드 번호, 거래 일시, 거래 금액, 단말기 및 매장 정보 등)를 수집합니다.</p>
                    <p>2. 고객의 계속적인 Starbucks Card사용은 Starbucks Card를 통해 수집된 거래내역 정보가 이용대금 정산의 목적 및 회사의 마케팅 활용의 목적에 사용되는 것에 대하여 동의한 것으로 간주합니다.</p>
                    <ul>
                        <li><span>제 16 조 (거래내역의 수집)</span>
                            <ul>
                                <li>1. 회사는 고객이 Starbucks Card를 통해 서비스 이용 및 제품 또는 상품 구매 시 필요한 최소한의 거래내역 정보(카드 번호, 거래 일시, 거래 금액, 단말기 및 매장 정보 등)를 수집합니다.</li>
                                <li>2. 고객의 계속적인 Starbucks Card사용은 Starbucks Card를 통해 수집된 거래내역 정보가 이용대금 정산의 목적 및 회사의 마케팅 활용의 목적에 사용되는 것에 대하여 동의한 것으로 간주합니다.</li>
                            </ul>
                        </li>
                        <li><span>제 17 조 (거래내역의 제공)</span>
                            <ul>
                                <li></li>
                            </ul>
                        </li>
                        <li><span>제 18 조 (거래내역의 정정)</span>
                            <ul>
                                <li>1. 고객은 본인이 이용한 거래와 관련된 오류를 발견하는 경우 소명할 수 있는 자료를 갖추고 회사가 정한 절차를 거쳐, 해당 거래에 대한 정정을 요청할 수 있습니다.</li>
                                <li>2. 회사는 본 조 제1항에 의해 고객의 정정 요청을 받은 날로부터 2주 이내에 해당 거래내역을 검토하여 고객에게 그 결과를 통보하여 드립니다.</li>
                            </ul>
                        </li>
                    </ul>
				</div>
                <div class="policy-text" id="policyNo4" >
					<h2 class="text-green">제 4 장 개인정보 보호</h2>
                                       
                    <ul>
                        <li><span class="strong">제 19 조 (개인 정보 보호)</span> 
                            <ul>
                                <li>1. 회사는 고객의 정보 수집 시 정상적인 서비스를 위한 최소한의 정보를 수집하며, 고객의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 해당 고객의 동의를 받습니다.</li>
                                <li>2. 회사는 양질의 서비스를 제공하기 위해 여러 비즈니스 파트너와 제휴를 맺거나 국가 기관의 요구 등을 위해 개인정보를 위탁관리 하거나 개인정보를 제공할 수 있습니다. 그럴 경우 회사는 홈페이지를 통하여 해당 목적, 내용 및 업체 명을 밝혀 고객의 동의를 받습니다. 단, 고객의 소득공제 목적으로 국세청에 개인정보 및 Starbucks Card 사용내역을 제공하는 경우 등과 같이 고객의 요청에 의하는 경우는 예외로 합니다.</li>
                                <li><span>3. 고객이 제공한 개인정보는 고객의 동의 없이 제 3자에게 누설하거나 제공하지 않습니다. 다만, 다음 각 호에 해당하는 경우에는 예외로 합니다.</span>
                                    <ul>
                                        <li>가. 배송을 위해 배송담당 업체 등에게 배송에 필요한 최소한의 고객 정보를 알려주는 경우</li>
                                        <li>나. 통계 작성, 학술 연구 또는 시장 조사를 위해 특정 개인을 식별할 수 없는 형태로 제공하는 경우</li>
                                        <li>다. 관계 법령에 의하여 수사상의 목적으로 관계 기관으로부터 요구 받은 경우</li>
                                        <li>라. 서비스의 이용에 따른 거래상 발생하는 요금정산</li>
                                        <li>마. 서비스의 제공에 필요한 범위 내에서 제휴 회사와 공유해야 하는 경우</li>
                                        <li>바. 기타 관계 법령에 의한 경우</li>
                                    </ul>
                                </li>
                                <li>4. 고객은 자신의 개인정보처리와 관련하여 개인정보의 처리에 관한 정보를 제공받을 권리, 개인정보에 대하여 열람을 요구할 권리, 개인정보의 처리정지, 정정, 삭제 및 파기를 요구할 권리를 갖습니다.</li>
                                <li>5. 회사 또는 회사로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체없이 파기하여야 합니다.</li>
                            </ul>
                        </li>                        
                    </ul>
                </div>
                <div class="policy-text" id="policyNo5" >
					<h2 class="text-green">제 5 장 기타</h2>                    
                    <ul>
                        <li><span></span>
                            <ul>
                                <li></li>
                            </ul>
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