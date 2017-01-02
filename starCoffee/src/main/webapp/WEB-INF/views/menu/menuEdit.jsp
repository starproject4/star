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
        }
        input{
            display: inline-block;
        }
        #nutrition input, #nutrition label{
            margin-bottom: 10px;
        }
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
			<form action="/star/menu/update" method="post" enctype="multipart/form-data" >
				<input type="hidden" name="no" value="${bean.no }" />
                <div class="row">
                    <label class="col-sm-2 col-xs-3" for="title">제품명</label>
                    <input class="col-sm-10 col-xs-9" type="text" name="title" id="title" value="${bean.title }"/>
                </div>
                <div class="row" id="nutrition">
                    <label class="col-sm-2 col-xs-3" for="kcal">칼로리</label>
                    <input class="col-sm-2 col-xs-3" type="text" name="kcal" id="kcal"  value="${bean.kcal }" />
                    <label class="col-sm-2 col-xs-3" for="sodium">나트륨</label>
                    <input class="col-sm-2 col-xs-3" type="text" name="sodium" id="sodium" value="${bean.sodium }" />
                    <label class="col-sm-2 col-xs-3" class="nutrition-label col-sm-2" for="fat">지방</label>
                    <input class="col-sm-2 col-xs-3" type="text" name="fat" id="fat" value="${bean.fat }"/>
                    <label class="col-sm-2 col-xs-3" for="saccharide">당분</label>
                    <input class="col-sm-2 col-xs-3" type="text" name="saccharide" id="saccharide" value="${bean.saccharide }"/>
                    <label class="col-sm-2 col-xs-3" for="protein">단백질</label>
                    <input class="col-sm-2 col-xs-3" type="text" name="protein" id="protein" value="${bean.protein }"/>
                    <label class="col-sm-2 col-xs-3" for="caffeine">카페인</label>
                    <input class="col-sm-2 col-xs-3" type="text" name="caffeine" id="caffeine" value="${bean.caffeine }"/>
                </div>
                <div class="row">
                    <label class="col-sm-2 col-xs-3" for="content">설명</label>
                    <textarea class="col-sm-10 col-xs-9" rows="15" name="content" id="content">${bean.content }</textarea>
                </div>
                <div class="row">
                    <label class="col-sm-2 col-xs-3" for="chkbox">제품분류</label>
                    <input type="radio" id="chkbox1" name="category" value="커피"/>커피
                    <input type="radio" id="chkbox2" name="category" value="음료"/>음료
                    <input type="radio" id="chkbox3" name="category" value="푸드"/>푸드
                </div>
                <div class="row">
                    <label class="col-sm-2 col-xs-3" for="파일첨부">파일첨부</label>
                    <input type="file" name="file" id="file" />
                    <input type="hidden" name="originalfilename" id="file" value="${bean.originalfilename }" />
                    <input type="hidden" name="newfilename" id="file" value="${bean.newfilename }" />
                </div>
				<div class="star-btn button col-sm-12">
                    <input class="btn btn-success" type="submit" id="insert" value="등록"/>
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
    		var cata = "${bean.category}";
    		if(cata=="커피"){
    			$("#chkbox1").attr("checked", "checked");
    			//alert("1");
    		}else if(cata=="음료"){
    			$("#chkbox2").attr("checked", "checked");    			
    			//alert("2");
    		}else{
    			$("#chkbox3").attr("checked", "checked");
    			//alert("3");
    		}
    		
    		$("#back").click(function() {
    			location.href = "/star/menu";
    		});
    		
    	});	    
    </script>
</body>
</html>