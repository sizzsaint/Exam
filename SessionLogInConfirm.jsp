<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String memberId = (String)session.getAttribute("memID");
if(memberId == null){
%>
<script>
alert("�α��� ���� �ʾҽ��ϴ�.");
location.href="SessionMemberLogIn.jsp";
</script>
<!-- ����üũ -->

<%} %>
<html>
<head>
<meta charset="EUC-KR">
<title>Simple LogIn</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#996600" topmargin="center">
<tr border="#FFFF99" topmargin="100">
<table width="75%" border="1" align="center">
<tr bordercolor="#FFFF99">
<td height="190" colspan="7">
<table width="50%" border="1" align="center" cellspacing="0" cellpadding="0">
<tr bordercolor="#FFFFF66">
<td colspan="2"><div align="center">Log On Page</div></td>
</tr>
<tr>
<td><div align="center">
<strong><%=memberId %></strong>
���� �α��� �ϼ̽��ϴ�.
</div></td>
<td><div align="center">
<a href="SessionLogOut.jsp"><strong>LogOut</strong></a>
</div></td>
</tr>
</table>
</td>
</tr>
</table>

</body>
</html>