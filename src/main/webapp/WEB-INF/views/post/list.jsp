<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>

<title>Home</title>
<script type="text/javascript" src="<c:url value='/js/post/list.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/css/post/list.css'/>">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mt-5 mb-5">
		<div class="row">
			<div class="col-8">
				<span class="subtitle">경험과 지식을 공유하면 빨리 치유할 수 있습니다!</span>
			</div>

			<div class="col-4 d-flex justify-content-end align-items-end">
				<a class="ml-3" href="<c:url value='/post/list'/>">전체</a>
				<a class="ml-3" href="<c:url value='/post/list/무좀'/>">무좀</a>
				<a class="ml-3" href="<c:url value='/post/list/여드름'/>">여드름</a>
				<a class="ml-3" href="<c:url value='/post/list/탈모'/>">탈모</a>
				<a class="ml-3" href="<c:url value='/post/list/변비'/>">변비</a>
				<a class="ml-3" href="<c:url value='/post/list/치질'/>">치질</a>
			</div>
		</div>
		<hr>
		<table class="table">
			<thead class="head">
				<tr>
					<th width="8%">글 번호</th>
					<th width="8%">질병</th>
					<th width="8%">주제</th>
					<th width="28%">제목</th>
					<th width="8%">작성자</th>
					<th width="8%">작성일</th>
					<th width="8%">조회수</th>
					<th width="10%">좋아요 수</th>
					<th width="14%">해결상황</th>
				</tr>
			</thead>
			<tbody class="body">
				<c:forEach var="post" items="${postList}">
					<tr>
						<td>${post.postId}</td>
						<td>${post.postDisease}</td>
						<td>${post.postSubject}</td>
						<td>
							<a href="<c:url value='/post/${post.postId}'/>">${post.postTitle}</a>
						</td>
						<td>${post.postUserName}</td>
						<td>
							<fmt:parseDate value="${post.postDateTime}" var="noticePostDate" pattern="yyyy-MM-dd" />
							<fmt:formatDate value="${noticePostDate}" pattern="MM.dd" />
						</td>
						<td>${post.postViews}</td>
						<td>${post.postLikes-post.postDisLikes}</td>
						<c:if test="${post.postSubject eq '질문'}">
							<c:if test="${post.postResponded == '1'}">
								<td>답변완료</td>
							</c:if>
							<c:if test="${post.postResponded == '0'}">
								<td>답변미완료</td>
							</c:if>
						</c:if>
						<c:if test="${post.postSubject ne '질문'}">
							<td>&nbsp;</td>
						</c:if>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="d-flex justify-content-end">
			<form action="<c:url value='/post/search'/>">
				<select name="category">
					<option value="POST_TITLE">제목</option>
					<option value="POST_CONTENT">내용</option>
					<option value="POST_USERNAME">글쓴이</option>
				</select>
				<input type="text" name="text">
				<input type="submit" value="검색">
			</form>
		</div>
		<div class="btn_wrap">
			<a class="btn_org" href="<c:url value='/post/insert'/>">
				<span class="txt_white">글쓰기</span>
			</a>
		</div>
	</div>
</body>
</html>
