<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<LINK REL='stylesheet' type='text/css' href='${css}/board.css'/>	
<script src="${js}/aa.js"></script>
	
	<style>
	#btn_pop {padding:20px}
#popup {
  position: relative;
  background: #FFF;
  padding: 40px;
  width: auto;
  max-width: 400px;
  margin: 20px auto;
  text-align: center;
}
	</style>
<div id="loginForm" class="white-popup-block mfp-hide" 
style='width:300px; height : 500px; background-color: white; margin : 0 auto;'>
	
	<%-- <jsp:include page="${context}/article/write"></jsp:include> --%>

</div>
<div class="dropdown-menu" role="menu">
            <a href="#loginForm" id="aaa" >팝업</a>
          </div>
<div class="clear"></div> 
<div class="modal fade" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <p>One fine body&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>

<script type='text/javascript'>
	$(function() {
		board.init();
	});
	var pop = {
			up : function() {
				$('#aaa').magnificPopup({
					type : 'inline',
					preloader : false,
					focus : '#username',
					modal : true,
					closeContentPos : true,
					fixedContentPos: true,
			        alignTop: false, /* 최상단위치 */
					showCloseBtn: true
				});
				$(document).on('click','.popupClose',function(e){
					e.preventDefault();
					$.magnificPopup.close();
				});
			}
	}
	var board = {
		init : function(pageNo) {
			$.getJSON(context+'/article/list/'+pageNo,function(data) {
				var table = "<div id='boardList'><h1 align=center style='color:white;margin-bottom:30px'>자유게시판</h1>"
				+"<TABLE id='tab_borderList'>"
				+"<TR ALIGN=CENTER><TD WIDTH=10%><B>번호</B></TD>"
				+"<TD WIDTH=40%><B>제 목</B></TD>"
				+"<TD WIDTH=20%><B>작성자</B></TD>"
				+"<TD WIDTH=20%><B>작성일</B></TD>"
				+"<TD WIDTH=8%><B>참조</B></TD></TR>"
				
				/* 
				+"<c:forEach var='member' items='${memberList}' varStatus='status'><TR>"
				+"<TD WIDTH=10% ALIGN=CENTER>${status.index+1}</TD>"
				+"<TD WIDTH=20% ALIGN=CENTER>${member.id}</TD>"
				+"<TD WIDTH=20% ALIGN=CENTER><A HREF='BoardContent.jsp'>${member.name}</A></TD>"
				+"<TD WIDTH=30% ALIGN=LEFT>${member.email}</TD>"
				+"<TD WIDTH=18% ALIGN=CENTER>${member.regdate}</TD></TR></c:forEach>" */
				+"</TABLE></div>"
				+'<div style="width:100px;margin:auto"><a href="'+context+'/article/write">글쓰기</a><div>';
				$('.mainView').html(table);
			});	
		}
	
	};
</script>