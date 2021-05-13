<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="regBean" class="chapter7.RegisterBean" scope="page"/>
<jsp:setProperty name="regBean" property="*" /><!-- 모든 setter를 실행하라. -->

<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 확인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<body bgcolor="#996600">
<table width=80%" align="center" border="0" cellspaving="0" cellpadding="5">
<tr>
<td align="center" valign="middle" bgcolor="#FFFFCC">

<table width="90%" border="1" cellspacing="0" cellpadding="2" align="center">
<form name="regForm" method="post" action="MemberInsert.jsp">
<tr align="center" bgcolor=#996600">
<td colspan="3"><font color="#FFFFFF"><b>
<jsp:getProperty property="mem_name" name="regBean"/>
회원님이 작성하신 내용입니다. 확인해 주세요</b></font></td>
</tr>
<tr>
<td width="24%">아이디</td>
<td width="41%"><jsp:getProperty property="mem_id" name="regBean"/></td>
</tr>
<tr>
<td>패스워드</td>
<td><jsp:getProperty property="mem_passwd" name="regBean"/></td>
</tr>
<tr>
<td>이름</td>
<td><jsp:getProperty property="mem_name" name="regBean"/></td>
</tr>
<tr>
<td>이메일</td>
<td><jsp:getProperty property="mem_email" name="regBean"/></td>
</tr>
<tr>
<td>전화전호</td>
<td><jsp:getProperty property="mem_phone" name="regBean"/></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="button" value="확인완료">
<!-- 아무런 기능이 없다 -->
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="다시쓰기" onClick="history.back()">
<!-- 이전페이지로 돌아가라. -->
</td>
</tr>
</form>
</table>
</td>
</tr>
</table>

</body>
</html>