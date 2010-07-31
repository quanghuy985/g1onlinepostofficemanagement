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
		<script LANGUAGE="JavaScript" type="text/javascript">
		    function click() {
		        if (event.button == 1) {
		            alert("Bản quyền của tuấn anh");
		        }
		    }
		    document.onmousedown = click
		    // -->
</script>	
<script LANGUAGE="JavaScript" type="text/javascript">
    function click() {
        if (event.button == 2) {
            alert("Bản quyền của tuấn anh");
        }
    }
    document.onmousedown = click
    // -->
</script>

		<!-- Cấm ăn trộm bản quyển -->
		<script language="javascript"type="text/javascript">	
		    if (window != top)
		        top.location.href = location.href
        </script>
		 <script language="JavaScript" type="text/javascript">
		     var times = 0
		     var times2 = 10
		     function earthquake() {
		         alert("Ban Ko Dc Click Chuot Phai");
		         window.moveTo(0, 0)
		         window.moveTo(1, 1)
		         window.moveTo(2, 2)
		         window.moveTo(3, 3)
		         window.moveTo(4, 4)
		         window.moveTo(5, 5)
		         window.moveTo(6, 6)
		         window.moveTo(7, 7)
		         window.moveTo(8, 8)
		         window.moveTo(9, 9)
		         window.moveTo(10, 10)
		         window.moveTo(9, 9)
		         window.moveTo(8, 8)
		         window.moveTo(7, 7)
		         window.moveTo(6, 6)
		         window.moveTo(5, 5)
		         window.moveTo(4, 4)
		         window.moveTo(3, 3)
		         window.moveTo(2, 2)
		         window.moveTo(1, 1)
		         alert("Da Bao Roi Khong Nghe !")
		         tremmors()
		     }
		     function tremmors() {
		         window.moveTo(0, 0)
		         window.moveTo(1, 1)
		         window.moveTo(2, 2)
		         window.moveTo(3, 3)
		         window.moveTo(4, 4)
		         window.moveTo(5, 5)
		         window.moveTo(6, 6)
		         window.moveTo(7, 7)
		         window.moveTo(8, 8)
		         window.moveTo(9, 9)
		         window.moveTo(10, 10)
		         window.moveTo(11, 11)
		         window.moveTo(12, 12)
		         window.moveTo(9, 9)
		         window.moveTo(8, 8)
		         window.moveTo(7, 7)
		         window.moveTo(6, 6)
		         window.moveTo(5, 5)
		         window.moveTo(4, 4)
		         window.moveTo(3, 3)
		         window.moveTo(2, 2)
		         window.moveTo(1, 1)
		         tremmors()
		     }

</script>
<script language="JavaScript" type="text/javascript">
    window.scrollBy(0, 1)
    window.resizeTo(0, 0)
    window.moveTo(0, 0)
    //setInterval("move()",30);
    setTimeout("move()", 1);
    var mxm = 50
    var mym = 25
    var mx = 0
    var my = 0
    var sv = 50
    var status = 1
    var szx = 0
    var szy = 0
    var c = 255
    var n = 0
    var sm = 30
    var cycle = 2
    var done = 2
    function move() {
        if (status == 1) {
            mxm = mxm / 1.05
            mym = mym / 1.05
            mx = mx + mxm
            my = my - mym
            mxm = mxm + (400 - mx) / 100
            mym = mym - (300 - my) / 100
            window.moveTo(mx, my)
            rmxm = Math.round(mxm / 10)
            rmym = Math.round(mym / 10)
            if (rmxm == 0) {
                if (rmym == 0) {
                    status = 2
                }
            }
        }
        if (status == 2) {
            sv = sv / 1.1
            scrratio = 1 + 1 / 3
            mx = mx - sv * scrratio / 2
            my = my - sv / 2
            szx = szx + sv * scrratio
            szy = szy + sv
            window.moveTo(mx, my)
            window.resizeTo(szx, szy)
            if (sv < 0.1) {
                status = 3
            }
        }
        if (status == 3) {
            document.fgColor = 0xffffFF
            c = c - 16
            if (c < 0)
            { status = 8 }
        }
        if (status == 4) {
            c = c + 16
            document.bgColor = c * 65536
            document.fgColor = (255 - c) * 65536
            if (c > 239)
            { status = 5 }
        }
        if (status == 5) {
            c = c - 16
            document.bgColor = c * 65536
            document.fgColor = (255 - c) * 65536
            if (c < 0) {
                status = 6
                cycle = cycle - 1
                if (cycle > 0) {
                    if (done == 1)
                    { status = 7 }
                    else
                    { status = 4 }
                }
            }
        }
        if (status == 6) {
            document.title = "INC Team"
            alert("INC Team")
            cycle = 2
            status = 4
            done = 1
        }
        if (status == 7) {
            c = c + 4
            document.bgColor = c * 65536
            document.fgColor = (255 - c) * 65536
            if (c > 128)
            { status = 8 }
        }
        if (status == 8) {
            window.moveTo(0, 0)
            sx = screen.availWidth
            sy = screen.availHeight
            window.resizeTo(sx, sy)
            status = 9
        }
        var timer = setTimeout("move()", 0.3)
    }
</script>
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
	
	</head>
<body>

<div id="nav-container"></div>
<div id="container" >
  <div id="content-container">
		<div id="content">
		 <h2>Group I - Fuck You !</h2>
		 <span style="color:green"><marquee behavior="scroll"><h2 style="color:green">HIỆP HỘI THẰNG NGU APTECH</h2></marquee></span>  
          <p>Are you want fuck ?</p>
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