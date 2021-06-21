<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>

<script type="text/javascript">
function go_login(f){
	
		f.action	=	"/MyController?cmd=login_ok";
		f.submit();
}
</script>
</head>
<body>
	<%@ include file="top.jsp"%>
	
	<div style=" border: 4px solid lightgray; align-content:center; width: 30% ; 	margin-right: auto;
	margin-left: auto;">
		<h2 >Login</h2>
		<br>
		<p>아이디	<input type="text" name="id" required> </p>
		<p>비밀번호 <input type="password" name="pwd"  required></p>
		<p><input type= "button" onclick="go_login(this.form)" value="로그인"></input>&nbsp<button>회원가입</button>
		</p>
	</div>

</body>
</html>