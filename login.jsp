<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./css/login.css">
    <title>Login</title>
  </head>
  <body>
    <div class="center login">
        <img src="./img/P.png" class="img">
        <% String fail=request.getParameter("loginFail"); %>
        <% try{if(fail.equals("true") ){ %><div class="fail alert">Login Failed</div> <% }}catch(Exception e){} %>
        <% String succ=request.getParameter("Reg"); %>
        <% try{if(succ.equals("true") ){ %><div class="success alert">Registered Successfully! <br>GO ahead and login</div> <% }}catch(Exception e){} %>
        <form method="post" action="validate">
          <label for="id">Username: </label><br><input class="id" type="text" name="user_id" placeholder="Your name here... " value="" required>
          <br>
          <label for="id">Password: </label><br><input class="id" type="password" name="password" placeholder="*****" value="" required>
          <br>

          <input type="submit" class="btn center" name="submit" value="Login">
        </form>
        <a href="register"><font size="3">Don't have an account? Register Here!!</font></a>
    </div>
  </body>
</html>
