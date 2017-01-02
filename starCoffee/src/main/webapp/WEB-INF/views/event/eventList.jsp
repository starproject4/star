<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>starbucks</title>

<!-- 부트스트랩 -->
<link href="/star/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/star/resources/css/star.css" rel="stylesheet">
<style type="text/css">
	.m_event{
		border: 1px solid #ccc;
		border-radius: 3px;
		height: 100%;
		padding: 20px 30px 20px 30px;
		margin-bottom: 40px;
	}
	h1{
		margin-bottom{
			20px;
		}
	}
	
	.s_title {
		width: 100%;
		height : 50px;
		line-height: 50px;
		background-color: #eeeeef;
		text-indent: 10px;
		font-weight: 700;
		text-align: left;	
		outline: 1px solid red;	
	}
	
	.s_event{
		margin-bottom: 50px;
		position: relative;
		text-align: center;		
		/*outline:1px solid pink;*/
		float: left;
	}
	/*
	#st1 .s_event:first-child, #st2 .s_event:first-child, #st3 .s_event:first-child{
		margin-left: -15px;
		outline: 1px solid red;
	}*/
	
	.s_event input[type="checkbox"]{
		position: absolute;
		left: 25px; 
		top : 5px;
	}
	.s_event a{
		width: 100%;
		height: 100%;
	}
	.s_event img{
		width: 100%;
		height: auto;
	}
	
	.s_event span{
		color: #aaa;
		display: inline-block;
	}
	
	.button{
		text-align: right;
		margin-bottom: 30px; 
	}
</style>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="/star/resources/js/bootstrap.min.js"></script>
<script src="/star/resources/js/star.js"></script>
<script>
	$(document).ready(function() {
		if("${session}"!="MANAGER"){
	    	//alert("${session}");
	    	$(".star-btn").remove();
	    }

		$("#insert").click(function() {
			location.href = "/star/event/write";
		});
		
		$("#delete").click(function() {
 			var chk = $("input[name='delchk']:checked").size();
 			if(chk==0){
 				alert("삭제하실 페이지를 선택하세요");
 				return false;
 			}else{
 				if(confirm("삭제하시겠습니까?")){
	 			var no = [];
	 			for (var i = 0; i < chk; i++) {
	 				no[i] = $("input[name='delchk']:checked").eq(i).val();
	 			}
	 			location.href = "/star/event/delete?no=" + no;	 					 					
 				}
 			}
 		});

	});
</script>

</head>
<body>
	<!-- header link -->
	<%@ include file="/resources/templates/header.jsp"%>

	<!-- 여기부터 본문 -->
	<div class="container content">
		<!-- 여기부터 입력합니다 -->
		<div class="row">
			<h1>EVENT</h1>
				<div class="col-sm-12 col-xs-12">
					<c:forEach items="${alist}" var="bean">
					<div class="col-sm-4 col-xs-6 s_event con">				
						<input type="checkbox" name="delchk" value="${bean.no }"/>			
						<a href="/star/event/detail?no=${bean.no }">
							<img src="/star/resources/imgs/upload/${bean.newfilename }">
							<span class="text-center">${bean.title }</span>
						</a>		
					</div>
					</c:forEach>	
				</div>
				<div class="button star-btn col-sm-12">
					<input class="btn btn-success" type="button" id="insert" value="등록"> 
					<input class="btn btn-default" type="button" id="delete" value="삭제">
				</div>
			<!-- 여기까지 입력합니다. -->
		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->
	<!-- 여기까지 본문 -->




	<!-- footer link -->
	<jsp:include page="/resources/templates/footer.jsp"></jsp:include>


</body>
</html>