<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, chapter9.*"%>
    
    <%
    DBConnectionMgr pool = DBConnectionMgr.getInstance();
    
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    String id = "",
    		passwd ="",
    name="",
    mem_num1="",
    mem_num2="",
    e_mail="",
    phone="",
    zipcode="",
    address="",
    job="";
    int counter =0;
    try{
    	
    	conn = pool.getConnection();
    	//conn = DriverManager.getConnection("jdbc:mysql://localhost:3306:/����","����","��ȣ");
    	stmt = conn.createStatement();
    	re = stmt.executeQuery("SELECT * FROM MEMBER");
    	
    	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP���� �����ͺ��̽� ����</title>
<link href ="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js>
</script>
</head>
<body bgcolo="#FFFFCC">

<h2> JSP ��ũ��Ʋ������ Connection Pool�� �̿��� �����ͺ��̽� ���� �����Դϴ�...</h2>

<br>
<br>
<h3>ȸ������</h3>
<table bordercolor ="#0000ff" border="1">
<tr>
<td><strong>ID</strong></td>
<td><strong>PASSWD</strong></td>
<td><strong>MAME</strong></td>
<td><strong>MEM_NUM1</strong></td>
<td><strong>MEM_NUM2</strong></td>
<td><strong>E_MAIL</strong></td>
<td><strong>PHONE</strong></td>
<td><strong>ZIPCODE/ADDRESS</strong></td>
<td><strong>JOP</strong></td>
</tr>
<%
if(rs!=null)
	
	while(rs.next()){
		id = rs.getString("id");
		passwd =rs.getString("passwd");
		name = rs.getString("name");
		mem_num1 = rs.getString("mem_num1");
		mem_num2 = rs.getString("mem_num2");
		e_mail = rs.getString("e_mail");
		phone = rs.getString("phone");
		zipcode = rs.getString("zipcode");
		address = rs.getString("address");
		job = rs.getString("job");
%>
<tr>
<td><%= id %></td>
<td><%= passwd %></td>
<td><%= name %></td>
<td><%= mem_num1 %></td>
<td><%= mem_num2 %></td>
<td><%= e_mail %></td>
<td><%= phone %></td>
<td><%= zipcode %>/<%= address %></td>
<td><%= job %></td>
<%
counter++;
}//end while

}//end if
%>

</tr>
</table>
<br>
<br>
total record : <%= counter %>
<%
}catch(SQLException sqlException){
System.out.println("sql exception");
}catch(Exception exception){
System.out.println("exception");
}finally{
if(rs != null)
try{ rs.close();}
catch(SQLException ex){}
if( stmt != null)
try { ts.close();}
catch(SQLException ex){}
if(conn != null)
try{ pool.freeConnection(conn);}
catch(Exception ex){}
}
%>


</body>
</html>