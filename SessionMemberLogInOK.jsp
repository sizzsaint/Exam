<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="IsMember" class="chapter10.MemberMgr"/>
    <!-- 빈 -->
    <%
    String memberId="";
    String memberPw="";
    if(request.getParameter("memberid") !=null)
    	memberId = request.getParameter("memberid");
    if(request.getParameter("memberpw") !=null)
    	memberPw = request.getParameter("memberpw");
    if(IsMember.PassCheck(memberId,memberPw)){
    	//참이면 결과페이지로이동시킨다
    	session.setAttribute("memID", memberId);
    	%>
    	<script>
    	alert("로그인 되었습니다.");
    	location.href="SessionLogInConfirm.jsp";
    	</script>
    	<%  }else{ %> 
    	<!-- 실패하면 경고 로그인폼으로 보냄 -->
    	<script>
    	alert("로그인 되지 않았습니다.");
    	location.href="SessionMemberLogIn.jsp"
    	</script>
    <% } %>
    
    