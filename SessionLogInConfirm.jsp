<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String memberId = (String)session.getAttribute("memID");
if(memberId == null){
%>
<script>
alert("로그인 되지 않았습니다.");
location.href="SessionMemberLogIn.jsp";
</script>
<!-- 세션체크 -->

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
님이 로그인 하셨습니다.
</div></td>
<td><div align="center">
<a href="SessionLogOut.jsp"><strong>LOGOUT</strong></a>
</div></td>
</tr>
</table>
</td>
</tr>
</table>

</body>
</html>
