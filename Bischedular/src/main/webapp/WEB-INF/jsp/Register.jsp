<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<body>
    <html>
        <head>
           <style>
              fieldset {
               background-color: #d0e0e3;
               max-width: 300px;
                }
     
   
           </style>
        </head>
     <body>
        <center>
        <form action="/reqUserRegistration" method="post"><fieldset>
         <h2>Registration Form</h2>
           <table>
        <tr><td>Full Name : </td><td><input type="text" name="name" placeholder="Full Name"></td>   </tr><tr></tr>
        <tr><td>Username : </td><td><input type="email" name="username" placeholder="Ex: nagul@gmail.com"></td>   </tr><tr></tr>
       
        <tr><td>Password</td><td><input type="password" name="password" placeholder="Password"></td>   </tr><tr></tr>
        <tr><td><input type=submit value="Register"></td></tr>
        </table>
     </form></fieldset>
            <a href="/reqLoginForm">${msg}</a>

     </center>
     </body>
     
     </html>
</body>
</html>