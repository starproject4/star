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
		table{
			width: 90%;
			margin: 10px auto;
		}
		table tr th{
			text-align: center;
			padding-bottom: 10px;
		}
		table tr td{
			text-align: center;
			font-size: 12px;
			color: #333;
			padding-bottom: 5px;
		}
		#page{
			width: 200px;
			margin: 10px auto;
			text-align: center;
		}		
		#page a{
			font-size: 12px; 
			color: #666;
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
			<h1>공지사항</h1>
				<table>
					<tr class="row">
						<th class="col-xs-1">v</th>
						<th class="col-xs-2">NO</th>
						<th class="col-xs-5">제목</th>
						<th class="col-xs-2">날짜</th>
						<th class="col-xs-2">조회수</th>
						<th class="hidden">고유번호</th>
					</tr>
					<c:forEach items="${alist }" var="bean" varStatus="a" begin="${abegin }" end="${abegin+9 }">
						<tr class="row">
							<td class="col-xs-1"><input type="checkbox" name="delchk" value="${bean.no }"/></td><!-- 추가 -->
							<td class="col-xs-2">${size-a.index}</td>
							<td class="col-xs-5"><a href="/star/notice/detail?idx=${bean.no }&cnt=${bean.count}">${bean.title }</a></td>
							<td class="col-xs-2">${bean.nalja }</td>
							<td class="col-xs-2">${bean.count }</td>			
							<td class="hidden">${bean.no }</td>			
						</tr>
					</c:forEach>
				</table>
				<p id="page"></p>
				<p class="star-btn button">
					<button class="btn btn-success" type="button" id="insert">글쓰기</button>
					<button class="btn btn-default" type="button" id="delete">삭제</button>
				</p>
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
	    	 if("${session}"!="MANAGER"){
	    	 alert("${session}");
	    		 $(".star-btn").remove();
	    	 }
	    
	    var size=${asize};
	    	 for(var i=0; i<size; i++){ //페이지 넘버링
	    		 if(i==0){
	                 $("#page").html("<a href='#'>1</a>");
	             }else{
	                 $("#page>a:last-child").after("<a href='#'>"+(i+1)+"</a>");
	             }
	    	 }
	    	 
	    	 $("#page>a").click(function(){
	    		 location.href="/star/notice?no="+$(this).text();
	         });
	    	 
	    	 $("#insert").click(function() {
	 			location.href = "/star/notice/add";
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
		 			location.href = "/star/notice/delete?no=" + no;	 					 					
	 				}
	 			}
	 		});
	     });
    </script>
</body>
</html>