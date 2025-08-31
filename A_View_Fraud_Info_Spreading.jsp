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
.style1 {font-size: 36px}
.style2 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {font-size: 24px; color: #000000; font-weight: bold; }
-->
            </style>
			
            <p align="center" class="style2">&nbsp;</p>
            <p align="center" class="style3">View Fraud Information Spreading !!! </p>
            <table width="623" border="0" align="center">
  <tr>
   <td width="19" height="32" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Id</b> </div></td>
   <td width="67" height="32" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Uploaded User</b> </div></td>
    <td width="40" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Post Name</b></div></td>
   <td width="101" height="32" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Post Image</b></div></td>
    <td width="33" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Post Uses</b> </div></td>
    <td width="78" bgcolor="#00FFFF"><div align="center" style="color:#0000FF"><b>Post Description</b></div></td>
    <td width="65" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><strong>Article Name</strong></div></td>
    <td width="61" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Post Category </b></div></td>
    <td width="33" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Post Score </b></div></td>
    <td width="62" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Post Date</b></div></td>
		  </tr>
<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",pos="Fraud";
	int j=0,k=0,v=0;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0;
	String ftype="Fraud";
	
	try
	{
			String sql3="select pname from posts";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   
			   int count=0;
			%>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {font-weight: bold}
.style5 {color: #FF0000}
.style6 {color: #FF0000; font-weight: bold; }
-->
</style>
       
				 
				  <%

				  String query="select * from posts where pname='"+s1+"' "; 
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
		s7=rs.getString(8);
		s8=rs.getString(7); // user
		v=rs.getInt(10);
		
					String decryptedDes= new String(Base64.decode(s3.getBytes()));
					String decryptedSpl= new String(Base64.decode(s4.getBytes()));
					
					count++;

			       String sql1="select * from filter where fcat='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((decryptedDes.toLowerCase().contains(t2)))
									{ 
							String sql11="update user set bstatus='Blocked' where username='"+s8+"' ";
							Statement stmt11 = connection.createStatement();
							stmt11.executeUpdate(sql11);
	
	
	
			                 count1++;
									 %>
							 <tr>
      <td><div align="center" style="color:#FF0000"><%=j%></div></td>
    <td><div align="center" style="color:#FF0000"><b><%=s8%></b></div></td>
	<td><div align="center" style="color:#FF0000"><b><%=s1%></b></div></td>
    <td><div align="center" class="style1">
      <input  name="image" type="image" src="images1.jsp?value=<%="post"%>&id=<%=i%>" width="100" height="100" alt="Submit">
      </input></div>	 </td>
    <td><div align="center" style="color:#FF0000"><%=s2%></div></td>
     <td bgcolor="#00FFFF"><div align="center" style="color:#0000FF"><%=decryptedDes%></div></td>
		  	   <td><div align="center" style="color:#FF0000"><b><%=decryptedSpl%></b></div></td>
			   <td><div align="center" style="color:#FF0000"><%=s5%></div></td>
			   <td><div align="center" style="color:#FF0000"><b><%=v%></b></div></td>
			   <td><div align="center" style="color:#FF0000"><%=s7%></div></td>
  </tr>
							  				
		    <%   					}

					      }
			      }
			        
			
				
				}
				
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
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
