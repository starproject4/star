<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
<!-- 부트스트랩 -->
    <link href="/star/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/star/resources/css/star.css" rel="stylesheet">
	<style type="text/css">
	body {
		  padding-top: 200px;
		}
</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$('#idCK').on('click',function(){
		if ($("#id").val() != "") {
			$.ajax({
				url:"/star/members/idck",
				type: 'post',
				data: {id:$('#id').val()},
				success: function(data){
					if($.trim(data)==0){
						alert("사용 가능합니다.");
						$("#hid").val("1");
					}else{
						alert("사용 불가능합니다.");
						$("#hid").val("0");
						$("#id").val("");
					}
				}
			});
		 }else{
			 alert("아이디를 입력하세요.");
			 $("#id").focus();
		 }
	});
	
	$('form').on('submit',function(){
		var b = $("#birth1").val()+"/"+$("#birth2").val()+"/"+$("#birth3").val();
		var p = $("#phone1").val()+"-"+$("#phone2").val()+"-"+$("#phone3").val();
		$("#birth").val(b);
		$("#phone").val(p);
			
		if ($("#id").val() == "") {
		    alert("아이디를 꼭 입력하세요!");
		    $("#id").focus();
		    return false;
		 } else if($("#hid").val() == "0"){
			alert("아이디 중복검사 하세요!");
			return false;
			$("#id").focus(); 
		}else if ($("#pw").val() == "") {
		    alert("비밀번호를 꼭 입력하세요!");
		    $("#pw").focus();
		    return false;
		} else if ($('#pw').val().length <= 5){
			alert("비밀번호는 6자리 이상 작성하세요!");
			$("#pw").val("");
		    $("#pw").focus();
		    return false;
		}else if (!isNaN($("#pw").val())){
			alert("비밀번호를 영문자/숫자 조합으로 하세요!");
			$("#pw").val("");
		    $("#pw").focus();
		    return false;
		}else if ($("#pw").val() != $("#pw2").val()) {
		    alert("비밀번호와 비밀번호 확인이 일치하지않습니다!");
		    $("#pw2").val("");
		    $("#pw2").focus();
		    return false;
		}else if ($("#name").val() == ""){
			alert("이름을 꼭 입력하세요!");
		    $("#name").focus();
		    return false;
		}else if ($("#birth1").val().length != 4 || !$.isNumeric($("#birth1").val())){
			alert("생년월일의 '년도'를 4자리의 숫자로 입력하세요!");
			$("#birth1").val("");
		    $("#birth1").focus();
		    return false; 
		}else if ($("#birth2").val().length != 2 || !$.isNumeric($("#birth2").val())){
			alert("생년월일의 '월'을 2자리의 숫자로 입력하세요!");
			$("#birth2").val("");
		    $("#birth2").focus();
		    return false; 
		}else if ($("#birth3").val().length != 2 || !$.isNumeric($("#birth3").val())){
			alert("생년월일의 '일'을 2자리의 숫자로 입력하세요!");
			$("#birth3").val("");
		    $("#birth3").focus();
		    return false; 
		}else if ($("#phone1").val().length != 3 || !$.isNumeric($("#phone1").val())){
			alert("전화번호를 3자리의 숫자로 입력하세요!");
			$("#phone1").val("");
		    $("#phone1").focus();
		    return false;
		}else if ($("#phone2").val().length != 4 || !$.isNumeric($("#phone2").val())){
			alert("전화번호를 4자리의 숫자로 입력하세요!");
			$("#phone2").val("");
		    $("#phone2").focus();
		    return false;
		}else if ($("#phone3").val().length != 4 || !$.isNumeric($("#phone3").val())){
			alert("전화번호를 4자리의 숫자로 입력하세요!");
			$("#phone3").val("");
		    $("#phone3").focus();
		    return false;
		}else if ($("#addr").val() == ""){
			alert("주소를 꼭 입력하세요!");
		    $("#addr").focus();
		    return false;
		}else if ($("#email").val() == ""){
			alert("이메일을 꼭 입력하세요!");
		    $("#email").focus();
		    return false;
		}else if ($("#email").val() != ""){
			var str = $("#email").val();
			var n = str.indexOf("@");
			if(n==-1){
				alert("이메일 형식이 잘못되었습니다!");
			    $("#email").focus();
			    return false;
			}else{
				alert("정상적으로 가입완료");					
			}
		}else{
			alert("정상적으로 가입완료");
		}
			
	});	
$('#postbtn').on('click',function(){
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수
                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }
                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('addr').value = fullAddr;
            }
        }).open();
	});
});
</script>
</head>
<body>
    <!-- header link -->
    <%@ include file="/resources/templates/header.jsp" %>
 

    <div class="container">
      <div class="starter-template">
       <form class="form-horizontal" action="/star/members/userInsert" method="post">
       
		  <div class="form-group">
		    <label for="id" class="col-sm-2 control-label">아이디</label>
		    <div class="col-sm-7">
		      <input type="text" class="form-control" id="id" name="id" placeholder="영문,숫자 조합"/>
		      <input type="hidden" id="hid" name="hid" value="0"/>
		    </div>
		    <div class="col-sm-3">
		      <button type="button" class="btn btn-default" id="idCK">중복확인</button>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="pw" class="col-sm-2 control-label">비밀번호</label>
		    <div class="col-sm-8">
		      <input type="password" class="form-control" id="pw" name="pw" placeholder="6자 이상"/>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="pw2" class="col-sm-2 control-label">비밀번호 확인</label>
		    <div class="col-sm-8">
		      <input type="password" class="form-control" id="pw2" name="pw2" placeholder="위의 비밀번호와 동일하게 작성"/>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="name" class="col-sm-2 control-label">이름</label>
		    <div class="col-sm-8">
		      <input type="text" class="form-control" id="name" name="name" placeholder="실명"/>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="birth" class="col-sm-2 control-label">생년월일</label>
		    <div class="col-sm-2">
		       <input type="text" class="form-control" id="birth1" placeholder="년도"/>
		    </div>
		    <div class="col-sm-2">
		       <input type="text" class="form-control" id="birth2" placeholder="월"/>
		    </div>
		    <div class="col-sm-2">
		       <input type="text" class="form-control" id="birth3" placeholder="일"/>
		    </div>
		    <input type="hidden" class="form-control" id="birth" name="birth"/>
		    <!-- <div class="col-sm-8">
		      <td colspan="2" class="form-control">
		      <input type="tel" class="form-control" id="phone" name="phone" placeholder="010">
		        <input type="text" id="birth1" name="birth"1 size="2" maxlength="4" placeholder="1900"/>&nbsp;/
				<input type="text" id="birth2" name="birth2" size="3" maxlength="2" placeholder="01"/>&nbsp;/
				<input type="text" id="birth3" name="birth3" size="3" maxlength="2" placeholder="01"/>
		      </td>
		    </div> -->
		  </div>
		  
		  <div class="form-group">
		    <label for="phone" class="col-sm-2 control-label">전화번호</label>
		     <div class="col-sm-2">
		       <input type="text" class="form-control" id="phone1" name="phone1" size="2" maxlength="3" placeholder="010"/>
		    </div>
		    <div class="col-sm-2">
		       <input type="text" class="form-control" id="phone2" name="phone2" size="3" maxlength="4" placeholder="1234"/>
		    </div>
		    <div class="col-sm-2">
		       <input type="text" class="form-control" id="phone3" name="phone3" size="3" maxlength="4" placeholder="5678"/>
		    </div>
		    <input type="hidden" class="form-control" id="phone" name="phone"/>
		    <!-- <div class="col-sm-8">
		      <td colspan="2" class="form-control">
		        <input type="text" id="phone1" name="phone1" size="2" maxlength="3" placeholder="010"/>&nbsp;-
				<input type="text" id="phone2" name="phone2" size="3" maxlength="4" placeholder="1234"/>&nbsp;-
				<input type="text" id="phone3" name="phone3" size="3" maxlength="4" placeholder="5678"/>
		      </td>
		    </div> -->
		  </div>
		  
		  <div class="form-group">
		    <label for="addr" class="col-sm-2 control-label">주소</label>
		    <div class="col-sm-3">
		    	<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" />
		    </div>
		    <div class="col-sm-3">
				<input type="button" class="btn btn-default" id="postbtn" value="우편번호 찾기" />
		    </div>
		  </div>
				
		  <div class="form-group">
		    <label for="addr" class="col-sm-2 control-label">상세주소</label>
		    <div class="col-sm-8">
				<input type="text" class="form-control" id="addr" name="addr" placeholder="주소" />
		    </div>
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="email" class="col-sm-2 control-label">이메일</label>
		    <div class="col-sm-8">
		      <input type="text" class="form-control" id="email" name="email" placeholder="abc@mail.com"/>
		    </div>
		  </div>
		  
		  
		  <div class="form-group">
		    <div class="col-sm-offset-5 col-sm-5">	
		      <button type="submit" class="btn btn-success">회원가입</button>
		      <button type="reset" class="btn btn-default">취소</button>
		    </div>
		  </div>
		</form>
		
      </div>

    </div><!-- /.container -->
    
    
 	<!-- footer link -->
   <jsp:include page="/resources/templates/footer.jsp"></jsp:include>
   
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="/star/resources/js/bootstrap.min.js"></script>
    <script src="/star/resources/js/star.js"></script>
    <script></script>
</body>
</html>