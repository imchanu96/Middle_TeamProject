<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>
		네이버 : 비밀번호 찾기
	</title>
	<style type="text/css">
		input:focus {
			outline-color: rgb(3, 199, 90);			
		}
		#naverId {
			margin-top: 4px; 
 			margin-right: 18px;
			padding-left: 50px;
			margin-left: -15px;
			width: 420px;
			height: 60px;
			background-image: url('../images/loginById.PNG');
			background-repeat: no-repeat;
			background-size: 20px;
			background-position: left;
			border-style: 1px solid;
			border-color: gray;
			border-radius: 5px;	
			}
		#next{
			font-size:20px;
			
			text-align:center;
			margin-top: 4px; 
 			margin-right: 18px;
			width: 400px;
			height: 50px;
			border:none;
			background-color: rgb(3, 199, 90);		
		}
		#remember{
			padding-right: 10px;
		}
		.inheader{
			margin-left: 130px;
		}
	</style>
	
	<script type="text/javascript">
	
	</script>
	<a class="inheader">
		<img src="../images/naverLogo.PNG"
	 	width="168" height="50" alt="로고" class="logo">
	 </a>
	 <br>
	 <br>
	 <br>
	 <div style="font-weight: bold; margin-left: 30px; font-size: 18px;">
	 비밀번호를 찾고자하는 아이디를 입력해주세요.
	 </div>
</head>
<body style="margin-left: 740px; margin-top: 100px;">
	<br>
	<br>
	<br>
	<div class="panel">
	<form method="post" action="/FindPwd">
		<input placeholder="네이버 아이디 또는 단체 아이디" id="naverId" name="naverId">
	</form>
	<div>
		<a onclick="location.href='./findNaverPwd.jsp'" id="next" name="next">다음</a>
			
		</div>
		<div id="atag">
			<div style="float: left;" id="remember">아이디가 기억나지 않는다면?
			</div>
			<a>아이디 찾기</a>
		</div>
	</div>
	
	<div>NAVER | 회원정보 고객센터</div>
</body>

</html>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>
		네이버 : 비밀번호 찾기
	</title>
	<style type="text/css">
		input:focus {
			outline-color: rgb(3, 199, 90);			
		}
		#naverId {
			margin-top: 4px; 
 			margin-right: 18px;
			padding-left: 50px;
			width: 400px;
			height: 50px;
			background-image: url('../images/loginById.PNG');
			background-repeat: no-repeat;
			background-size: 20px;
			background-position: left;
			border-style: 1px solid;
			border-radius: 5px;
			border-color: gray;		
			}
		#next{
			font-size:20px;
			
			text-align:center;
			margin-top: 4px; 
 			margin-right: 18px;
			width: 455px;
			height: 50px;
			border:none;
			border-radius: 5px;
			background-color: rgb(3, 199, 90);		
		}
		#remember{
			padding-right: 10px;
		}
		
	</style>
	
	<script type="text/javascript">
	
	</script>
	<a href="./loginForm" style="margin-left: 850px;" class="inheader">
		<img style="margin-top: 100px;" src="../images/naverLogo.PNG"
	 	width="168" height="50" alt="로고" class="logo">
	 </a>
	 <br>
	 <br>
	 <br>
	 <div style="margin-left: 750px;">비밀번호를 찾고자하는 아이디를 입력해주세요.</div>
</head>
<body>
	<br>
	<br>
	<br>
	<div style="margin-left: 700px;" class="panel">
	<form method="post" action="/FindPwd">
		<input placeholder="네이버 아이디 또는 단체 아이디" id="naverId" name="naverId">
	</form>
	<div>
		<button onclick="location.href='./findNaverPwd.jsp'" 
			id="next" name="next">다음</button>
			 
		</div>
		<div id="atag">
			<div style="float: left; margin-left: 60px;" id="remember">아이디가 기억나지 않는다면?
			</div>
			<a>아이디 찾기</a>
		</div>
	</div>
	
	<div style="margin-left: 830px; margin-top: 50px;">NAVER | 회원정보 고객센터</div>
</body>

</html>
>>>>>>> branch 'main' of https://github.com/imchanu96/Middle_TeamProject.git
