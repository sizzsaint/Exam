<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="regBean" class="chapter7.RegisterBean" scope="page"/>
<jsp:setProperty name="regBean" property="*" /><!-- ��� setter�� �����϶�. -->

<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ Ȯ��</title>
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
ȸ������ �ۼ��Ͻ� �����Դϴ�. Ȯ���� �ּ���</b></font></td>
</tr>
<tr>
<td width="24%">���̵�</td>
<td width="41%"><jsp:getProperty property="mem_id" name="regBean"/></td>
</tr>
<tr>
<td>�н�����</td>
<td><jsp:getProperty property="mem_passwd" name="regBean"/></td>
</tr>
<tr>
<td>�̸�</td>
<td><jsp:getProperty property="mem_name" name="regBean"/></td>
</tr>
<tr>
<td>�̸���</td>
<td><jsp:getProperty property="mem_email" name="regBean"/></td>
</tr>
<tr>
<td>��ȭ��ȣ</td>
<td><jsp:getProperty property="mem_phone" name="regBean"/></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="button" value="Ȯ�οϷ�">
<!-- �ƹ��� ����� ���� -->
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="�ٽþ���" onClick="history.back()">
<!-- ������������ ���ư���. -->
</td>
</tr>
</form>
</table>
</td>
</tr>
</table>

</body>
</html>