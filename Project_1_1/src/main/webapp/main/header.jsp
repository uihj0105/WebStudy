<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
			<header id="header">
				<div class="inner">
					<a href="../main/main.do" class="logo">
						<img src="../images/lib_logo2.png" alt="로고 이미지">
					</a>
					<nav id="nav">
					<c:if test="${sessionScope.email==null }">
						<a href="../user/login.do">로그인</a>
						<a href="../user/userjoin.do">회원가입</a>	
					</c:if>	
						
					<c:if test="${sessionScope.email!=null }">
					  <a href="../user/logout.do">로그아웃</a>
					</c:if>
					</ul>
    				  <a href="../user/mypage.jsp">마이페이지</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>
			<!-- Banner -->
			<section id="banner">
			<h1>서 울 도 서 관</h1>
				<p>서울도서관에 오신 것을 환영합니다.</p>
				<!-- searchBar include -->
				<jsp:include page="../etc/searchBar/searchBar.jsp"></jsp:include>
			</section>
			<!-- menuBar include -->
			<jsp:include page="../etc/menuBar/menuBar.jsp"></jsp:include>
</body>
</html>