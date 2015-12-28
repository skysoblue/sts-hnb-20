<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<title>한빛포트폴리오</title>
	<link rel="stylesheet" href="${css}/common.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/magnific-popup.min.css" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-alpha1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/jquery.magnific-popup.min.js"></script>
	<style>
.white-popup {
  position: relative;
  background: #FFF;
  padding: 20px;
  width: auto;
  max-width: 500px;
  margin: 20px auto;
}
</style>
</head>
<body>
	<div id="wrap">
	<div><a id="popup" href="#test-popup">팝업</a></div>
		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>
		<div id="test-popup" class="white-popup mfp-hide">
</div>
		<div id="content">
			<section class="sectionClass">
				<div class="mainView">
					<tiles:insertAttribute name="content" />
				</div>
			</section>
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
		
	</div>
<script src="${js}/global.js"></script>  
<script src="${js}/member.js"></script>  
<script src="${js}/movie.js"></script>  
<script src="${js}/ticket.js"></script>  
<script src="${js}/admin.js"></script>  
<script src="${js}/bom.js"></script>  
<script src="${js}/jquery.js"></script>
<script src="${js}/bootstrap.js"></script>
<script src="${js}/bootstrap.min.js"></script>
</body>
</html>

