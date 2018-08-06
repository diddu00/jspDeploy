<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Jsp</title>

<script src="/js/jquery-1.12.4.js"></script>
<link href="/bootstrap/css/bootstrap.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<script src="/bootstrap/js/bootstrap.js"></script>
<!-- Custom styles for this template -->
<link href="/css/dashboard.css" rel="stylesheet">
<link href="/css/blog.css" rel="stylesheet">
<link href="/common/common.css" rel="stylesheet">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
$(function(){
	$("#findAddr").click(function(){
		 new daum.Postcode({
		        oncomplete: function(data) {
		            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
		            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
		            $("#addr1Lable").text(data.address);
		            $("#add1Input").val(data.address);
					$("#zipcdLable").text(data.zonecode);
					$("#zipcdInput").val(data.zonecode);
					//상세주소 공백 초기화
					$("#add2").val("");
					
		            
		        }
	    	}).open();
		
	});
	   
	$("#updateBtn").click(function(){
		//학생 이름, 상세주소
		if($("#name").val().length<2){
			alert("학생 이름을 입력해주세요");
			$("#name").focus();
			return false;
		}
		
		if($("#add2").val().length<5){
			alert("상세 주소를 입력해주세요");
			$("#add2").focus();
			return false;
		}
		
		//여기까지 왔으면 validation 통과
		alert("수정이 완료되었습니다.");
		console.log($("#frm").serialize());
		//$("#frm").submit();
	});
});
</script>
</head>

<body>
	<%@include file="/common/top.jsp" %>
	<div class="container-fluid">
		<div class="row">

		<%@include file="/common/left.jsp" %>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">


				<form id="frm" class="form-horizontal" role="form" action="/studentUpdate" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label for="id" class="col-sm-2 control-label">프로필</label>
						<div class="col-sm-10">
							<img src="/pic?id=${studentVo.id}">
							<input type="file" name="pic">
						</div>
					</div>
					
					
					<div class="form-group">
						<label for="id" class="col-sm-2 control-label">학생 ID</label>
						<div class="col-sm-10">
							<input type="hidden" class="form-control" id="id" name="id"
								value = "${studentVo.id}">
							<label class="control-label">${studentVo.id}</label>
						</div>
					</div>

					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">학생 이름</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="name" name="name"
								value="${studentVo.name}"
								placeholder="학생이름">
						</div>
					</div>
					<div class="form-group">
						<label for="call_count" class="col-sm-2 control-label">호출 횟수</label>
						<div class="col-sm-10">
							<label class="control-label">${studentVo.call_count}</label>
						</div>
					</div>
					<div class="form-group">
						<label for="zipcd" class="col-sm-2 control-label">우편번호</label>
						<div class="col-sm-10">
							<input type="hidden" class="form-control" id="zipcdInput" name="zipcd"
								value = "${studentVo.zipcd}">
							<label id="zipcdLable" class="control-label">${studentVo.zipcd}</label>
							<button id="findAddr" type="button">우편번호찾기</button>
						</div>
					</div>
					<div class="form-group">
						<label for="add1" class="col-sm-2 control-label">주소</label>
						<div class="col-sm-10">
							<input type="hidden" class="form-control" id="add1Input" name="add1"
								value = "${studentVo.add1}">
							<label id="addr1Lable" class="control-label">${studentVo.add1}</label>
						</div>
					</div>
					<div class="form-group">
						<label for="add2" class="col-sm-2 control-label">상세주소</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="add2" name="add2"
								value="${studnetVo.add2}"
								placeholder="상세주소">
						</div>
					</div>
					
					<div class="form-group">
						<label for="pic" class="col-sm-2 control-label">파일이름</label>
						<div class="col-sm-10">
							<label class="control-label">${studentVo.pic}</label>
						</div>
					</div>
					<div class="form-group">
						<label for="picpath" class="col-sm-2 control-label">파일경로</label>
						<div class="col-sm-10">
							<label class="control-label">${studentVo.picpath}</label>
						</div>
					</div>
					<div class="form-group">
						<label for="reg_dt" class="col-sm-2 control-label">등록일시</label>
						<div class="col-sm-10">
							<label class="control-label">${studentVo.reg_dt}</label>
						</div>
					</div>
					

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button id="updateBtn" type="submit" class="btn btn-default">수정</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
