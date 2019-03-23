<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/login.css">
    <title>Register</title>
  </head>
  <body>
    <div class=" center login" style="margin-top: 1.9%; width: 30%;">
      <img src="img/P.png" class="img">
        <% String fail=request.getParameter("Added"); %>
        <% try{if(fail.equals("true") ){ %><div class="success alert">Project added succesfully</div> <% }}catch(Exception e){} %>
        <form method="post" action="addproject">
          <label for="id">Title </label><br><input class="id" type="text" id="title" name="title" placeholder="Project title here... "  required>
          <br>
          <label for="id">Brief: </label><br><textarea class="id" rows="4" id="desp" name="desp" placeholder="Brief description here... " required></textarea>
          <br>
          <label for="id">Who can Apply: </label><br><textarea rows="4" class="id" id="hca" name="hca" placeholder="Criteria here... "  required></textarea>
          <br>
          <input type="submit" class="btn center" name="submit" value="Add Project">

        </form>
        <a href="homepage"><font size="3">Done with your work here!! Return to homepage!!</font></a>
    </div>
  </body>
</html>

