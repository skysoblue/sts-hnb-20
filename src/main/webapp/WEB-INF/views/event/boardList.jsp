<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<LINK REL="stylesheet" type="text/css" href="${css}/board.css"/>	
<div id="boardList">

<h1 align=center style='color:white;margin-bottom:50px'>회원목록</h1>
<TABLE id="tab_borderList">
	
	<TR ALIGN=CENTER>
		<TD WIDTH=10%><B>번호</B></TD>
		<TD WIDTH=20%><B>아이디</B></TD>
		<TD WIDTH=20%><B>회원명</B></TD>
		<TD WIDTH=30%><B>이메일</B></TD>
		<TD WIDTH=18%><B>가입일</B></TD>
	</TR>
	<c:forEach var="member" items="${memberList}" varStatus="status">
	<TR>
		<TD WIDTH=10% ALIGN=CENTER>1</TD>
		<TD WIDTH=20% ALIGN=CENTER>${member.id}</TD>
		<TD WIDTH=20% ALIGN=CENTER><A HREF="BoardContent.jsp">${member.name}</A></TD>
		<TD WIDTH=30% ALIGN=LEFT>${member.email}</TD>
		<TD WIDTH=18% ALIGN=CENTER>${member.regdate}</TD>
	</TR>
	</c:forEach>
</TABLE>

<FORM NAME="BoardSearch" METHOD=POST action="BoardList.jsp">

<TABLE id="pagenation">

	<TR>
		<TD ALIGN=LEFT WIDTH=100>
			<IMG SRC="${img}/btn_new.gif" onClick="javascript:location.replace('BoardWrite.jsp')"; STYLE=CURSOR:HAND>
		</TD>
		<TD WIDTH=320 ALIGN=CENTER>
			<IMG SRC="${img}/btn_bf_block.gif">&nbsp;
			<IMG SRC="${img}/btn_bf_page.gif">&nbsp;    	
			1&nbsp;&nbsp;2&nbsp;&nbsp;3&nbsp;&nbsp;4&nbsp;&nbsp;5&nbsp;&nbsp;6&nbsp;&nbsp;7&nbsp;&nbsp;8&nbsp;&nbsp;9&nbsp;&nbsp;10&nbsp;
			<IMG SRC="${img}/btn_nxt_page.gif">&nbsp; 
			<IMG SRC="${img}/btn_nxt_block.gif">    	    		     
		</TD>
		<TD WIDTH=200 ALIGN=RIGHT>
			<SELECT NAME="column" SIZE=1>
				<OPTION VALUE="" SELECTED>선택</OPTION>
				<OPTION VALUE="UsrSubject">제목</OPTION>
				<OPTION VALUE="UsrContent">내용</OPTION>
			</SELECT> 
			<INPUT TYPE=TEXT NAME="key" SIZE=10 MAXLENGTH=20> 
			<IMG SRC="${img}/btn_search.gif" ALIGN=absmiddle STYLE=CURSOR:HAND>
		</TD>    
	</TR>
	
</TABLE>

</FORM>
</div>	
