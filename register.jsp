<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/login.css">
    <title>Register</title>
  </head>
  <body>
    <div class=" center login" style="margin-top: 1.9%;">
      <img src="img/P.png" class="img">
        <% String fail=request.getParameter("user_exists"); %>
        <% try{if(fail.equals("true") ){ %><div class="fail alert">User_id already exists</div> <% }}catch(Exception e){} %>
        <form method="post" onsubmit="return check()" action="adduser">
          <label for="id">Userid: </label><br><input class="id" type="text" id="user_id" name="user_id" placeholder="Your user_id here... "  required><div style="margin-bottom:-14px; font-size:10px; color:blue">User id can have letters numbers and characters</div>
          <br>
          <label for="id">Name: </label><br><input class="id" type="text" id="name" name="name" placeholder="Your name here... " required>
          <br>
          <label for="id">Email: </label><br><input class="id" type="email" id="email" name="email" placeholder="Your email here... "  required>
          <br>
          <label for="id">Password: </label><br><input class="id" type="password" id="password" name="password" placeholder="*****" onkeyup="validate()"  required>
          <br>
          <label for="id">Confirm Password: </label><br><input class="id" type="password" id="cpassword" name="cpassword" placeholder="*****" onkeyup="validate()" required>
          <div id="error" style="font-size: 10px; margin-bottom: -14px;"></div>
          <br>
          <label for="id">Date Of Birth </label><br><input class="id" type="date" name="dob" required>
          <br>
          <input type="submit" class="btn center" name="submit" value="Register">
        </form>
        <a href="login"><font size="3">Already have an account? Login Here!!</font></a>
    </div>
    <script>
      var error=0;
      var err=document.getElementById('error');
      var pwd=document.getElementById('password');
      var pwdc=document.getElementById('cpassword');
        function validate()
        {
          if(pwd.value!=pwdc.value)
          {
            err.style.color="red";
            err.innerHTML='Passwords do not match';
            error=1;
          }
          else if(pwd.value==pwdc.value && pwd.value=='' )
          {
            err.innerHTML='';
            error=0;
          }
          else
          {
            err.style.color="green";
            err.innerHTML='Passwords match';
            error=0;
          }
        }
        function check()
        {
          if(error==1)
            return false;
          else
            return true;
        }
    </script>
  </body>
</html>

