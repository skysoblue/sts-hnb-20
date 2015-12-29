<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/magnific-popup.min.css" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-alpha1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/jquery.magnific-popup.min.js"></script>
	
<script src="${js}/popup.js"></script>
<script type='text/javascript'>
	$(function() {
		
	});
	var popup = {
			
		};
	var board = {
		init : function(themeNo,pageNo) {
			$.getJSON(context+'/article/list/'+themeNo+'/'+pageNo,function(data) {
			
				var table = "<div id='boardList'>"
				+"<h1 align=center style='color:white;margin-bottom:30px'>자유게시판</h1>"
				+"<TABLE id='tab_borderList'>"
				+"<TR ALIGN=CENTER><TD WIDTH=8%><B>번호</B></TD>"
				+"<TD WIDTH=30%><B>제 목</B></TD>"
				+"<TD WIDTH=60%><B>내 용</B></TD>"
				+"</TR>";
				
				table += "</TABLE></div>";
				table +='<div style="width:100px;margin:auto" ><a href="#test-popup" class="open-popup-link">글쓰기</a><div>';
				table += '<div id="test-popup"  class="white-popup mfp-hide" >팝업이다 !!</div>';
				$('.mainView').html(table);
			});	
		}
	
	};
</script>