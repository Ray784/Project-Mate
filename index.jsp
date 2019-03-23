<!DOCTYPE html>
<html>
  <head>
    <title>PMate</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./css/nav.css">
    <link rel="stylesheet" href="css/foot.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>

    <!--navbar-->
    <div class="navbar">
      <a href="../Pmate-final" class="active">Home</a>
      <a href="homepage">Projects</a>
      
      <%try{ 
        String a = (String)session.getAttribute("userSession");%>
      <% if(a.equals("true")){%>
        <a href="myprojects">My Projects</a>
        <a href="project">Add New Project</a>
        <a class="right" href="logout">Logout  <i class="fa fa-sign-out"></i></a>
        <a class="right" href="edit-profile"><i class="fa fa-id-card"></i>  Edit Profile  </i></a> 
      <%}}catch(Exception e){%>
        <a class="right" href="login"><i class="fa fa-sign-in"></i>  Login</a>
      <% }%>
    </div>

    <!--content1-->
    <div class="content-main">
      <font size="9" color="white">
        How do we get the best ideas?<br>
        By teamwork and planning.<br>
        Find a team for your project <br>
        @<br>
        <img src="img/P.png" style="width:200px; height:60px;"><br>
      </font>
    </div>
      

    <br>
    <br>
    <br>

    <!--Content2-->
    <div class="content">
      <font size="9" color="black">
        <img src="img/c1.jpg" style="width:200px; height:200px;"><br>
        Manage Your Ideas<br>
        <font size="6">Coordinate early, stay aligned, and get work done.<br></font>
      </font>
    </div>
    <br>
    <br>
    <br>
    <!--Content3-->
    <div class="content">
      <font size="9" color="black">
        <img src="img/c2.jpg" style="width:200px; height:200px;"><br>
        A smarter way to work together<br>
        <font size="6">Plan, build, review, while tracking bugs and discussing ideas.</font>
      </font>
    </div>
    <br>
    <br>
    <br>
    <!--carousel-->
    <div class="container" id="carousel">
      <button class="but font" style="float: left;" onclick="prev()">&#10094;</button>
      <button class="but font" style="float: right;" onclick="next()">&#10095;</button>
    </div>
    <br>
    <br>
    <br>
    <!--Content3-->
    <div class="content">
      <font size="9" color="black">
        <img src="img/c3.jpg" style="width:300px; height:200px;"><br>
        Get the right support<br>
        <font size="6">Building software is as much about managing teams and <br>
          communities as it is about code. Whether you're on a team of two or <br>
          two thousand, we've got the support your people need.</font>
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

  <!--java script for carousel-->
    <script>
      var a=['img/1.jpg','img/2.jpg','img/3.jpg'];
      var i=1;
      function change()
      {
        if(i==(a.length-1))
          i=0;
        else
          i+=1;
        document.getElementById('carousel').style.backgroundImage="url('"+a[i]+"')";
      }
      function next()
      {
        change();
      }
      function prev()
      {
        if(i==(a.length-1))
          i=0;
        else
          i+=1;
        change();
      }
      setInterval(change,5000);
    </script>
  </body>
</html>
