<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 : 게시판 상세</title>
<style type="text/css">
	body{
		background-color: #e1ffff;
	}
	table tr td{
		border: 1px solid black;
		border-collapse: collapse;
		background-color: #b0dfe7;
	}
	.subjectClass{
		text-align: center;
		width: 100px;"
	}
	.textClass{
		background-color: #e1ffff;
	}
	#parent_div{
		margin-left: 490px;
		margin-right: 490px;
	}
	#boardListViewLink{
		text-align: right;
	}
	#wrongError{
		color:red;
		border:0px solid;
		background-color: #e1ffff;
	}
	textarea{
		 width: 750px;
		 height: 600px;
		 resize: none;
	}
	a{
		text-decoration: none;
	}
</style>
<script type="text/javascript">
	function updateBoardFnc(bno , mno, loginMno, boardPwd) {
		var pwdInputObj = document.getElementById("pwdInput");
		if (pwdInputObj.value == boardPwd) { // 비밀번호 비교
			if (mno == loginMno) { // 작성자 번호 비교
				location.href = "./update?updateBoardBno=" + bno;
			}else{
				alert("해당 게시판의 작성자가 아닙니다.");
			}
		}else{
			var wrongErrorObj 
			= document.getElementById("wrongError");
				wrongErrorObj.setAttribute("style", " display: block;");

		}
		
	}
	function disappearButtonFnc(buttonObj) {
		buttonObj.setAttribute("style", "display:none");
		
		
	}
</script>
</head>

	<div id="parent_div">
		<h3 style="text-align: center;">상세 게시글</h3>
		<div id="table_div">
			<table>
				<tr>
					<td id="boardListViewLink" colspan="2">
						<a href="./list">글 목록</a>
					</td>
				</tr>
				<tr>
					<td class="subjectClass" >이름</td>
					<td class="textClass" style="width: 870px;">
						<input  readonly="readonly" 
							value="${boardDto.user_name}">
					</td>
				</tr>
				<tr>
					<td class="subjectClass">제목</td>
					<td class="textClass">
						<input style="width: 700px;"
							 readonly="readonly" value="${boardDto.title}">
					</td>
				</tr>
				<tr>
					<td class="subjectClass">Email</td>
					<td class="textClass">
						<input style="width: 700px;" readonly="readonly"
							value="${boardDto.user_email}">
					</td>
				</tr>
				<tr style="height: 600px;">
					<td class="subjectClass">내용</td>
					<td class="textClass">
						<textarea readonly="readonly">${boardDto.contents}
						</textarea>
					</td>
				</tr>
				<tr>
					<td class="subjectClass">비밀번호</td>
					<td class="textClass">
						<input id="pwdInput" type="password" maxlength="4"
						style="width:100px; float:left;">
						<button id="wrongError" 
							style="display: none;"
							onclick="disappearButtonFnc(this);"
						 >비밀번호가 틀립니다.</button>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="padding-left: 350px;">
					<input type="button" 
						onclick="location ='./add'"  value="글쓰기">
					<input type="button" 
						onclick="updateBoardFnc(${boardDto.bno}
							, ${boardDto.mno}, ${sessionScope.member.mno}
							, ${boardDto.mod_pwd});"
						value="다시작성">
					<input type="button"
						onclick="location ='./list'" value="목록보기">
					</td>
				</tr>
			</table>
			
		</div>
	</div>

<body>

</body>
</html>