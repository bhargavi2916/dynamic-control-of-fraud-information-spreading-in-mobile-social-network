<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User</title>
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
.style2 {font-size: 24px}
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
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>Mobile User</span></a></li>
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
        <p>&nbsp;</p>

            <%
			String pname=request.getParameter("pname");
			String id=request.getParameter("id");
			
			String upname=request.getParameter("upname");
			%>
            <style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
-->
            </style>
            
            
			
			<form name="s" action="U_Review1.jsp?pname=<%=pname%>&id=<%=id%>&upname=<%=upname%>" method="post"  onSubmit="return valid()"  ons target="_top">
    
	<p>&nbsp;</p>
	<p align="center" class="style2">Feed Your Review Here !!! </p>
	<table width="600" border="0" align="center"  cellpadding="0" cellspacing="0"  >
					<tr><td></td><td></td>
					  <td   width="200" height="45" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="right" class="style9 style4 style2"  style="margin-left:20px;">Write Review </div></td>

						<td  width="100" height="45" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left">
					  <div align="left" style="margin-left:20px;"><textarea name="rew" rows="3" cols="23"></textarea></div></td>
					
					  <td height="45" colspan="2" align="center" bgcolor="#FF0000" id="learn_more"  style="color:#003399;"><span style="font-size: 18px">
				      <input type="submit" value="Submit Review" style="width:100px; height:35px; background-color:#D64F14; color:#FFFFFF;"/>
				      </span></td>
					</tr>
          </table>


	 <p align="center"><a href="U_Main.jsp">Back</a></p>
			</form>
				</div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">User Home</a></li>
            <li><a href="U_Login.jsp">Logout</a></li>
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

				