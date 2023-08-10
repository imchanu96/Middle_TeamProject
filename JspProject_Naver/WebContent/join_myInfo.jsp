<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>네이버 : 회원가입</title>
	
	<style type="text/css">
		hr {
		    background: #d6d6d6;
		    height: 1px;
		    border: 0;
		}
		input {
			height: 40px;
			margin: 5px 0px;
			border: none;
		}
		input[type=radio] {
			width: 1px;
			height: 1px;
		}
		
		input[type="radio"]:checked + label {
			border: 1px solid green;
		}
		
		.boxList {
			width: 400px;
			margin: 10px;
			border-radius: 6px;
	    	border: 1px solid #d6d6d6;
		}
		.infoRaw {
			height: 50px;
		}
		.radioBtn {
			opacity: 0;
		}
		#smallLabel{
			width: 100px;
			height: 20px;
		}
		#naverDomain {
			float: right;
			color: #767678;
		}
		#accountInfo {
			
		}
		#personalInfo {
			
		}
		#agreement {
			
		}
		#genderSelect, #nationalitySelect {
			width: 100px;
		}
		#genderSelect {
			width: 180px;
			float: left;
		}
		#nationalitySelect {
			width: 180px;
			float: right;
		}
		#button {
			margin-left: 10px; 
		}
	</style>
	
   	<script type="text/javascript">

   	
	</script>	
</head>

<body>

	<div class="inner" style="width: 500px; margin: 0px auto">
		<div class="header">
				<a href="http://www.naver.com">
					<img src="./images/naverLogo.PNG">
				</a>
		</div>
		<!-- header 종료 -->
		
		<div id="accountInfo" class="boxList">
			<div id="idInput" class="infoRaw">
				<input type="text" placeholder="아이디">
				<div id="naverDomain">@naver.com</div>
			</div>
			<hr>
			<div id="pwdInput" class="infoRaw">
				<input type="text" placeholder="비밀번호">
			</div>
			<hr>
			<div id="emailInput" class="infoRaw">
				<input type="text" placeholder="[선택] 비밀번호 분실 시 확인용 이메일">
			</div>
		</div>
		
		<div id="personalInfo" class="boxList">
			<div id="nameInput" class="infoRaw">
				<input type="text" placeholder="이름">
			</div>
			<hr>
			<div id="birthDayInput" class="infoRaw">
				<input type="text" placeholder="생년월일 8자리">
			</div>
			<hr>
			<div id="telecomInput" class="infoRaw">
				<select>
					<option value="" selected disabled hidden>통신사 선택</option>
					<option>SKT</option>
					<option>KT</option>
					<option>LG U+</option>
					<option>SKT 알뜰폰</option>
					<option>KT 알뜰폰</option>
					<option>LG U+ 알뜰폰</option>
				</select>
			</div>
			<hr>
			<div id="genderNationalitySelect" class="infoRaw">
				<div id="genderSelect" style="width: 40%; border: 1px solid #c6c6c6;">
					<input type="radio" id="male" class="radioBtn" name="gender">
					<label for="male" style="width: 49%; border-right: 1px solid #c6c6c6;">남자</label>
					<input type="radio" id="female" class="radioBtn" name="gender">
					<label for="female" style="width: 49%; border-right: 1px solid #c6c6c6;">여자</label>
				</div>
				<div id="nationalitySelect" style="width: 40%; border: 1px solid #c6c6c6;">
					<input type="radio" id="korean" class="radioBtn" name="nationality">
					<label for="korean" style="width: 49%; border-right: 1px solid #c6c6c6;">내국인</label>
					<input type="radio" id="foreigner" class="radioBtn" name="nationality">
					<label for="foreigner" style="width: 49%;">외국인</label>
				</div>
			</div>
			<hr>
			<div id="phoneNumInput" class="infoRaw">
				<input type="text" placeholder="휴대전화번호">
			</div>
		</div>
		
		<div id="agreement" class="boxList" style="height: 50px;">
			<input type="checkbox" id="agreeAll">
			<label for="agreeAll">[필수] 인증 약관 전체동의</label>
		</div>
		
		<div id="button">
			<input type="button" value="인증요청"
				style="width: 400px; height: 70px;
						background-color: #09AA5C; color: #FFFFFF;
				 		border: none; border-radius: 6px;">
		</div>
		
	</div>
	
	

</body>


</html>