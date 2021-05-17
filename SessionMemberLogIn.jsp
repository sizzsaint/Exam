<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%
String memberId = (String)session.getAttribute("memID");
if(memberId !=null){
%>
<script>
alert("로그인 되었습니다.");
location.href = "SessionLogInConfirm.jsp";
</script>
<!--로그인여부 확인 --결과페이지로 보냄 -->

<%} %>
<html>
<head>
<meta charset="EUC-KR">
<title>Simple LogIn</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#996600" topmargin="100">
<table width="75%" border="1" align="center">
<tr border="#FFFF99">
<td height="190" colspan="7">

<!-- 로그인페이지로보냄 -->
<form method="post" action="SessionMemberLogInOK.jsp">
<table whidth="50%" border="1" align="center" cellspacing="0" cellpadding="0">
<tr bordercolor="#FFFF66">
<td colspan="2"><div align="center">Log in</div></td>
</tr>
<tr>
<td witdh="47%"><div align="center">ID</div></td>
<td witdh="53%"><div align="center">
<input type="text" name="memberid">
</div></td>
</tr>
<tr>
<td><div align="center">Password</div></td>
<td><div align="center">
<input type="text" name="memberpw">
</div></td>
</tr>
<tr>
<td colspan="2"><div align="center">
<input type="submit" value="login">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="reset">
</div></td>
</tr>
</table>
</form></td>
</tr>
</table>

</body>
</html>