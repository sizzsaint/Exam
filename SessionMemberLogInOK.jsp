<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="IsMember" class="chapter10.MemberMgr"/>
    <!-- �� -->
    <%
    String memberId="";
    String memberPw="";
    if(request.getParameter("memberid") !=null)
    	memberId = request.getParameter("memberid");
    if(request.getParameter("memberpw") !=null)
    	memberPw = request.getParameter("memberpw");
    if(IsMember.PassCheck(memberId,memberPw)){
    	//���̸� ������������̵���Ų��
    	session.setAttribute("memID", memberId);
    	%>
    	<script>
    	alert("�α��� �Ǿ����ϴ�.");
    	location.href="SessionLogInConfirm.jsp";
    	</script>
    	<%  }else{ %> 
    	<!-- �����ϸ� ��� �α��������� ���� -->
    	<script>
    	alert("�α��� ���� �ʾҽ��ϴ�.");
    	location.href="SessionMemberLogIn.jsp"
    	</script>
    <% } %>
    
    