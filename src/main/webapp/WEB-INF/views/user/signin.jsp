<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="shortcut icon" href="http://localhost:8088/myapp/images/home/ico.png">
<link rel="icon" href="http://localhost:8088/myapp/images/home/ico.png">
<title>야관문 : 로그인</title>
<script type="text/javascript" src="<c:url value='/js/user/signin.js'/>"></script> 
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />	
	<div class="container"  >
		<form class="form-group font-nanum" method="post" action="<c:url value='/user/signin/'/>">
			<div class="form-group">
				<div class="row">
					<div class="col-6 offset-3">
						<label for="username">아이디</label>
						<input class="form-control " id="username" type="text" name="userName" required />
						<span id="username-explain" class="explain">&nbsp;</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-6 offset-3">
						<label for="password" class="">비밀번호</label>
						<input class="form-control" id="password" type="password" name="userPass" required />
					</div>
				</div>
			</div>
			<div align="center">
				<c:if test="${msg=='loginfail'}">
					<p class="font-weight-bold font-nanum" style="color: red;">로그인에 실패했습니다</p>
				</c:if>
				<input class="btn btn-outline-info" type="submit" value="로그인" />
			</div>
		</form>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />
</body>
</html>
