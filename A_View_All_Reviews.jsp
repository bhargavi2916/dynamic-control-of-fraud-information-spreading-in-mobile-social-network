<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style1">Dynamic Control of Fraud Information Spreading
in Mobile Social Networks</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li><a href="U_Login.jsp"><span>Mobile User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big>Dynamic Control of Fraud Information Spreading
in Mobile Social Networks</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big>Dynamic Control of Fraud Information Spreading
in Mobile Social Networks</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big>Dynamic Control of Fraud Information Spreading
in Mobile Social Networks</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
			<%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
			<%@ page import="org.bouncycastle.util.encoders.Base64"%>
			<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 24px;
}
-->
            </style>
			
			
            
            <p>&nbsp;</p>
            <p align="center" class="style1">View All Users Reviews !!! </p>
            <table width="623" border="1" align="center">
  <tr>
   <td width="19" height="32" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Id</b> </div></td>
   <td width="67" height="32" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Post Name</b> </div></td>
    <td width="40" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Post Uploader</b></div></td>
   <td width="101" height="32" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Review</b></div></td>
    <td width="33" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Review By</b> </div></td>
    <td width="78" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Review Date</b></div></td>
		  </tr>

<%
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="";
	int i=0,j=0,k=0,v=0;

      	try 
	{
          		
      	   String query="select * from reviews"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		s5=rs.getString(6);
		
		%>



  <tr>
      <td height="52"><div align="center" style="color:#FF0000"><%=i%></div></td>
     <td><div align="center" style="color:#FF0000"><b><%=s1%></b></div></td>
	 <td><div align="center" style="color:#FF0000"><b><%=s2%></b></div></td>
     <td><div align="center" style="color:#FF0000"><%=s3%></div></td>
     <td><div align="center" style="color:#FF0000"><%=s4%></div></td>
     <td><div align="center" style="color:#FF0000"><b><%=s5%></b></div></td>
  </tr>

<%
	   }
	  
           
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
			<p>&nbsp;</p>
			<p align="center"><a href="A_Main.jsp">Back</a></p>
			 <p>&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
          </form>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="A_Main.jsp">Admin Home</a></li>
            <li><a href="A_Login.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
