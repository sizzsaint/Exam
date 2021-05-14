<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, chapter9.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP에서 데이터베이스 연동</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
<h2>Bean과 커넥션 풀을 사용한<br>
데이터베이스 연동 예제입니다...</h2>
<br>
<br>
<h3>회원정보</h3>
<table bordercolor="#0000ff" border="1">
<tr>
<td><strong>ID</strong></td>
<td><strong>PASSWD</strong></td>
<td><strong>NAME</strong></td>
<td><strong>MEM_NUM1</strong></td>
<td><strong>MEM_NUM2</strong></td>
<td><strong>E_MAIL</strong></td>
<td><strong>PHONE</strong></td>
<td><strong>ZIPCODE/ADDRESS</strong></td>
<td><strong>JOB</strong></td>
</tr>
<jsp:useBean id="memMgr" class="chapter9.MemberMgrPool" scope="page"/>
<%
Vector vlist = memMgr.getMemberList();
int counter = vlist.size();
for(int i=0; i<vlist.size(); i++){ //뷰로직
	RegisterBean regBean = (RegisterBean) vlist.elementAt(i);
%>
<tr>
<td><%=regBean.getMem_id() %></td>
<td><%=regBean.getMem_passwd() %></td>
<td><%=regBean.getMem_name() %></td>
<td><%=regBean.getMem_num1() %></td>
<td><%=regBean.getMem_num2() %></td>
<td><%=regBean.getMem_email() %></td>
<td><%=regBean.getMem_phone() %></td>
<td><%=regBean.getMem_zipcode() %>/<%=regBean.getMem_address() %></td>
<td><%=regBean.getMem_job() %></td>
<%
}
%>
</tr>
</table>
<br>
<br>
total records : <%= counter %>
</body>
</html>