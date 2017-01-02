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
	<style type="text/css">
		form>div{
			width: 90%;
			margin: 10px auto;
		}
        label{
            display: inline-block;
            width: 80px;
            text-align: right;
            vertical-align: middle;
        }
        input{
            display: inline-block;
        }
        #nutrition input, #nutrition label{
            margin-bottom: 10px;
        }
		/* 작은 기기들 (태블릿, 768px 이상) */
    @media (min-width: 768px) {      
        
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
			<h1>메뉴 등록</h1>
			<form action="/star/menu/insert" method="post" enctype="multipart/form-data" >
                <div class="row">
                    <label class="col-sm-2 col-xs-3" for="title">제품명</label>
                    <input class="col-sm-10 col-xs-9" type="text" name="title" id="title">
                </div>
                <div class="row" id="nutrition">
                    <label class="col-sm-2 col-xs-3" for="kcal">칼로리</label>
                    <input class="col-sm-2 col-xs-3" type="text" name="kcal" id="kcal" />
                    <label class="col-sm-2 col-xs-3" for="sodium">나트륨</label>
                    <input class="col-sm-2 col-xs-3" type="text" name="sodium" id="sodium" />
                    <label class="col-sm-2 col-xs-3" class="nutrition-label col-sm-2" for="fat">지방</label>
                    <input class="col-sm-2 col-xs-3" type="text" name="fat" id="fat">                     
                    <label class="col-sm-2 col-xs-3" for="saccharide">당분</label>
                    <input class="col-sm-2 col-xs-3" type="text" name="saccharide" id="saccharide">
                    <label class="col-sm-2 col-xs-3" for="protein">단백질</label>
                    <input class="col-sm-2 col-xs-3" type="text" name="protein" id="protein">
                    <label class="col-sm-2 col-xs-3" for="caffeine">카페인</label>
                    <input class="col-sm-2 col-xs-3" type="text" name="caffeine" id="caffeine">
                </div>
                <div class="row">
                    <label class="col-sm-2 col-xs-3" for="content">설명</label>
                    <textarea class="col-sm-10 col-xs-9" rows="15" name="content" id="content"></textarea>
                </div>
                <div class="row">
                    <label class="col-sm-2 col-xs-3" for="chkbox">제품분류</label>
                    <input type="radio" id="chkbox" name="category" value="커피"/>커피
                    <input type="radio" name="category" value="음료"/>음료
                    <input type="radio" name="category" value="푸드"/>푸드
                </div>
                <div class="row">
                    <label class="col-sm-2 col-xs-3" for="파일첨부">파일첨부</label>
                    <input type="file" name="file" id="file" />
                </div>
				<div class="star-btn button col-sm-12">
                    <input class="btn btn-success" type="submit"  onclick="return sbmbtn();" id="insert" value="등록"/>
                    <input class="btn btn-default" type="button" id="back" value="취소"/>
				</div>
			</form>
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
    <script>
    	$(function(){
    		//$("#insert").click(function() {
    		//	location.href = "/star/menu/list";
    		//});
    		$("#back").click(function() {
    		//	location.href = "/star/menu/list";
				window.history.back();
    		});
    		
    	});	
		
		function sbmbtn(){
			var title = document.getElementById("title").value;
			var kcal = document.getElementById("kcal").value;
			var sodium = document.getElementById("sodium").value;
			var fat = document.getElementById("fat").value;
			var sacchride = document.getElementById("saccharide").value;
			var protein = document.getElementById("protein").value;
			var caffeine = document.getElementById("caffeine").value;
			var content = document.getElementById("content").value;
			if(title == '' || content == ''){
				alert("내용을 입력하세요");				
				return false;
			}else{
				return true;
			}
		}
    </script>
</body>
</html>