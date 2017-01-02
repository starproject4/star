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
	<style>
		form p{
			width: 90%;	
			margin: 0 auto 10px;	
		}
		form p label{
			min-width: 80px;
			width: 10%;
			vertical-align: middle;
			text-align: right;
			margin-right: 20px;
		}
		form p input, form p textarea{
			width: 70%;
		}
		form p textarea{
			padding: 3px;
		}
		form p input{
			text-indent: 3px;
						
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
			<form action="/star/notice/insert">
				<p>
					<label for="title">title</label>
					<input type="text" name="title" id="title">
				</p>
				<p>
					<label for="content">content</label>
					<textarea rows="20" cols="80" name="content" id="content"></textarea>
				</p>
				<p class="star-btn button">
					<button class="btn btn-success" type="submit" onclick="return sbmbtn();">입력</button>
					<button class="btn btn-default" type="button" id="cancel">취소</button>
				</p>
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
    <script type="text/javascript">
		$(document).ready(function(){
			$("#cancel").click(function(){
				window.history.back();
			});

		});
		function sbmbtn(){
			var title = document.getElementById("title").value;
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