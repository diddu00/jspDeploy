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

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
	<!-- 
		1.사용자가 로그인 화면을 접속한다 (localhost:8180/login/login.jsp)
		2.사용자가 아이디, 비밀번호를 입력후 singin 버튼을 클릭
		 	->signin 버튼이 속한 form 태그의 action 속성에 설정된 url로 요청
		3.LoginServlet 파라미터 (userId, password)를 확인후 고정된 값을 비교
		  같을 경우 response객체의 writer 객체를 이요하여 화면에  - "접속 성공"
		  틀릴 경우 response객체의 writer 객체를 이요하여 화면에  - "접속 실패"
		  메시지를 출력
		  
	 -->
    <div class="container">
      <form class="form-signin" action="/sumCalculation" method="post">
        <h2 class="form-signin-heading">Please input StartNum, EndNum</h2>
        <label for="inputStart" class="sr-only">Input Start</label>
        <input type="text" name="start" class="form-control" placeholder="Start Num" required autofocus>
        
        <label for="inputEnd" class="sr-only">Input End</label>
        <input type="text" name="end" class="form-control" placeholder="End Num" required>
        
        <div class="checkbox">
          <!-- 
          	<label>
            	<input type="checkbox" value="remember-me"> Remember me
          	</label>
           -->
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
