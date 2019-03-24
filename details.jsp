<html>
	<head>
		<title>PMate</title>
		<link rel="stylesheet" href="css/index.css">
		<link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/foot.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
       .panel{
         border-radius: 2px;
         color: black;
         background-color: whitesmoke;
         width: 60%;
         padding: 20px;
         display: block;
         margin: auto;
       }
    </style>
  </head>
	<body>
		<!--navbar-->
		<div class="navbar">
        <a href="../Pmate-final">Home</a>
        <a href="homepage">Projects</a>
        <%try{ 
         String a = (String)session.getAttribute("userSession");
         String name = (String)session.getAttribute("userId");%>
        <% if(a.equals("true")){%>
          <a href="myprojects">My Projects</a>
          <a href="project">Add New Project</a>
          <a href="#!" class="active">Details</a>
          <a class="right" href="logout">Logout  <i class="fa fa-sign-out"></i></a>
          <a class="right" href="edit-profile"><i class="fa fa-id-card"></i>  Edit Profile  </i></a>
        <%}}catch(Exception e){response.sendRedirect("login");}%>
      </div>
      <br>
      <br>
      <br>
      <!--Content3-->
      <div class="content">
        <font size="9" color="black">
            <img src="img/na.jpg" style="width:200px; height:200px;"><br>
            Page Currently Unavailable<br>
            <font size="6">The current page is still under construction.<br>We shall notify once we are online.</font>
        </font>
      </div>
      <br>
      <br>
      <br>
		<!--footer-->
		<div class="foot">
            <div style="float:left; padding: 35px;">
                <img src="img/P.png" style="width:200px; height:60px;"><br>
                <font color="white" size="3" face="georgia" style="padding: 10px;">Our product allows you to find <br>a team mate to work with your project.</font>
                <br>
                <font color="white">&copyProjectMate@2019</font>
            </div>
            <div style="float: left; padding: 35px;">
                <font size="4" color="white" face="georgia">
                    <b>Feel free to send queries:</b>

                    <br>
                    ----------------------------------------------------<br>
                <form method="post">
                    Your email: &nbsp&nbsp<br>
                    <input type="email" class="fid" name="email" style="width: 80%; height: 10px; padding:15px;">
                    <br>
                    Query:<br>
                    <textarea name="query" rows="5" class="fid" style="width:80%; height: 110px; padding: 10px;"> </textarea>
                    <input type="submit" name="send" value="Send" class="fbtn" >
                </form>
                </font>
            </div>
            <div style="float:left; padding: 35px;">
                <font color="white" size="4" face="georgia">
                <b>Contact Us:</b><br>
                ----------------------------------------------------<br>
                C.S.E Dept.<br>
                JNTUH CEH,<br>
                Kukatpally,<br>
                Hyderabad.<br>
                ----------------------------------------------------<br>
                <b>Suggestions: </b>
                <form method="post">
                <textarea name="sugg" rows="5" class="fid" style="width:80%; height: 70px; padding: 10px;"></textarea>
                    <input type="submit" name="send" value="Suggest" class="fbtn" >
                </form>
            </font>
            </div>
        </div>
	</body>
</html>
