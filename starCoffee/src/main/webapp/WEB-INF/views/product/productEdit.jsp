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
		table{
			width: 90%;
			margin: 0 auto;
		}
		table td{
			vertical-align: middle;
			text-align: left;
			padding: 5px 0;
		}
		#nutrition td input{
			width: 50px;
		}
		table td.td-label{
			width: 80px;
			text-align: center;
			vertical-align: middle;
		}
		table tr:first-child td input,table tr td textarea{
			width: 100%;
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
			<form action="/star/product/update" method="post" enctype="multipart/form-data" >
				<input type="hidden" name="no" value="${bean.no }" />
				<table class="col-sm-12">
					<tr>
						<td class="td-label">
							<label for="title">제품명</label>
						</td>
						<td colspan="11">
							<input type="text" name="title" id="title" value="${bean.title }"/>
						</td>
					</tr>
					<tr>
						<td class="td-label">
							<label for="content">설명</label>
						</td>
						<td colspan="11">
							<textarea rows="15" name="content" id="content"/>${bean.content }</textarea>
						</td>
					</tr>
					<tr>
						<td class="td-label">
							<label for="chkbox">제품분류</label>
						</td>
						<td colspan="5">
							<input type="radio" id="chkbox1" name="category" value="컵"/>컵
							<input type="radio" id="chkbox2" name="category" value="카드"/>카드
							<input type="radio" id="chkbox3" name="category" value="악세사리"/>악세사리
						</td>
					</tr>
					<tr>
						<td class="td-label">
							<label for="파일첨부">파일첨부</label>
						</td>
						<td colspan="5">
							<input type="file" name="file" id="file" />
							<input type="hidden" name="originalfilename" id="file" value="${bean.originalfilename }" />
							<input type="hidden" name="newfilename" id="file" value="${bean.newfilename }" />
						</td>
					</tr>
				</table>
				<div class="star-btn col-sm-12">
					<input class="btn btn-success" type="submit" id="insert" value="등록" onclick="return sbmbtn();"/>
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
    			//location.href = "/star/product";
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