<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
			<!--<meta http-equiv="Content-Type" content="text/html; charset=utf-8">-->
			
		<title>Đẹp không mấy con chó ghẻ  :))</title>
		<!-- Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="css/styles.css"  />
		<link rel="stylesheet" type="text/css" media="print" href="css/print.css"  />
		<link rel="stylesheet" type="text/css" media="handheld" href="css/handheld.css"  />
		<link rel="stylesheet" type="text/css" media="screen" href="css/header/small.css" />
        <script src="js/jquery-1.4.2.js" type="text/javascript"></script>
 <script language="javascript" type="text/javascript">
     var msg = " Đẹp Không mấy thằng ranh con ! ";
     var pos = 0;
     var spacer = " ... ";
     var time_length = 500;
     function ScrollTitle() {
         document.title = msg.substring(pos, msg.length) + spacer + msg.substring(0, pos);
         pos++;
         if (pos > msg.length) pos = 0;
         window.setTimeout("ScrollTitle()", time_length);
     }
     ScrollTitle();
</script>
	<script>
           $(document).ready(function(){
           
              $("#Clcik").click(function(){
                   $("#loading").show();
                  $("#content").load("Default2.aspx");
                   return false;
               });
               
            });
      </script>
<style>

       #loading {
               display: none;
            }
</style>
	</head>
<body>

<div id="nav-container">
<a id="Clcik">Click Here </a>
</div>
<div id="container" >
  <div id="content-container">
		<div id="content">
		<div id="loading">
              <img src="lightbox/images/loader.gif" width="40" height="42">
          </div>
    </div>
		<div id="sidebar"></div>
		<div class="clearer"></div>
  </div>
	<div class="content-bottom"></div>
</div>

<div id="footer">
  <p>Copyright &copy; 2010 , Group I - C0807I - FPT - Aptech .</p>
    <p>Visitors : <%=Application["count_visit"].ToString()%> <img src="images/User.png" /></p>
 </div>



</body>
</html>