<html>
   <head>
      <style>
         fieldset {
             background-color:#d0e0e3;
             max-width: 300px;
           }

     </style>
   </head>
<body>
   <center>
       <h1>Welcome to BI Scheduler</h1>
      <h5> BI Scheduler is an intuitive tool to schedule recurring jobs. </h5> <br>
   <form action="/reqLogin" method="post"><fieldset>
     <h2>Login To Your Account</h2>
      <table>
   <tr><td>Username</td><td><input type="text" name="username" placeholder="Email address"></td>   </tr><tr></tr>
   <tr><td>Password</td><td><input type="password" name="password" placeholder="Password"></td>   </tr><tr></tr>
   <tr><td><input type=submit value="Login"></td><td><a href="/reqRegForm">New User?</a></td>   </tr>
   </table>
</form></fieldset>
${msg}
</center>


</body>

</html>