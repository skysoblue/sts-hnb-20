<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="context" value="<%=request.getContextPath()%>"></c:set>
<c:set var="js" value="${context}/resources/js"></c:set>
<c:set var="css" value="${context}/resources/css"></c:set>
<c:set var="img" value="${context}/resources/images"></c:set>
<script>
var context = '${context}';
var img = '${img}';
var js = '${js}';
var css = '${css}';
</script>

<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/magnific-popup.min.css" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-alpha1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/jquery.magnific-popup.min.js"></script>
	<style type="text/css">
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
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<!-- Like so: -->
<a href="#test-popup" id="btn_popup">Show inline popup</a>
<div id="test-popup"  class="white-popup mfp-hide" >팝업이다 !!</div>
<!-- Or like so: 
<a href="/popup" data-mfp-src="/popup" id="btn_popup">팝업띄우기</a>
-->
</body>
</html>
<script>
$(function() {
	popup.open($('#btn_popup'));
	popup.close($('#close'));
});
var popup = {
	open : function(btn) {
		
		$(btn).magnificPopup({
			  type:'inline',
			  midClick: true,
			  preloader:false,
			  modal:true,
			  closeContentPos:true,
			  fixedContentPos:true,
			  alignTop:false, /*최상단위치인데 가운데 위치시키려면..*/
			  showCloseBtn:true
			  
			});
	},
	close : function(btn) {
		$(btn).click(function(e) {
			e.preventDefault();
			$.magnificPopup.close();
		});
	}
};
</script>