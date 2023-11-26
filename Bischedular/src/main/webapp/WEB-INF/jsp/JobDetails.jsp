<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <style>
        ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
}

li {
  float: left;
}

li a {
  display: block;
  padding: 8px;
  background-color: black;
  color:white;
}.active {
  background-color: #04AA6D;
}
         input{
             border-radius: 5px;
             height:40px;

            }
            #div1{
                background-color: #0c5664;
                color: white;
                width:100%;
                height:40px;
            }
            #div2{
                background-color:#d0e0e3;
               
                width:100%;
            }
            #rc{
                width:170px;
                border-radius: 5px;
                height:30px;
            }
            #rc1{
                width:270px;
                border-radius: 5px;
                height:30px;
            }
            #b1{
                width:90px;
            }
            #rightdiv{
                float: right;
                background-color:#ffffff;
                width: 56%;
                height:100%;
                border-style: double;
            }
            #leftdiv{
                float:left;
                background-color: #0c5664;
                height:100%;
                border-style: double;
            }
            #outerdiv{
                background-color:#45818e;
            }
            #menu{
                background-color:#403c3c;
                color: white;
                width:100%;
                height: 40px;
            }

    </style>
</head>
<body>
    <div id="outerdiv">
<div id="leftdiv">
    <div id="div1">
        Job Details
    </div>
   <div id="div2">
    <form action="/reqSaveJobDetails" method="post">
        <table width=100% cellpadding="5">  
            <tr><td>Job name:</td> </tr>
            <tr><td><input type="text" name="jobname"></td></tr>
     <tr><td>Description: </td></tr>
     <tr><td colspan="3"> <textarea rows="10" cols="65" name="description"></textarea> </td></tr>
     <tr><td>Recurrence :</td> <td>Start Date:</td><td>End Date:</td></tr>
        <tr><td> <select id="rc" name="recurrance_id" >
         <option>Daily</option>
         <option>Weekly</option>
         <option>Monthly</option>
         <option>Yearly</option>
         
     </select></td>

      <td><input type="Date" name="startdate"></td> 
      <td><input type="Date" name="enddate"></td></tr> 
     <tr><td>Duration :</td> <td>Tasks:</td> </tr>
        <tr><td>
        <input type="text" name="duration" ></td> <td colspan="2"> 
      <select id="rc1" name="task_name">
         <option>De-Duplication</option>
         <option>Trim</option>
         <option>Date Formatter</option>
         <option>Currency Formatter</option>
         
     </select></td></tr>
     <tr><td><input type="submit" value="Save" id="b1"></td> <td>
     <input type="submit" value="Delete" id="b1" ></td></tr>
    </table>
</form>
${msg}
</div>
</div>
<div id="rightdiv">
<div id="menu">
    <ul>
        <li><a href="/getAllUsers">View All Users</a></li>
        <p1>       </p1>
        <li><a href="/getAllJobs">View All Jobs</a> </li>
        <p1>       </p1>
        <li><a href="/getEmployeeByNameForm">Seach Employee</a></li>
        
        
      </ul>

</div>

<c:if test="${not empty emplist}">
<table border="2" cellpadding="8" cellspacing="5" width="100%">
    <tr><td>Id</td><td>Created at</td> <td>Full Name</td> <td>Username</td><td>Password</td><td colspan="2">Action</td></tr>
    <c:forEach var="emp" items="${emplist}">
       <tr><td>${emp.getId()}</td> <td>${emp.getCreated_at()}</td><td>${emp.getName()} </td>
        <td> ${emp.getUsername()} </td> <td> ${emp.getPassword()} </td> <td><a href="/reqDelete?value=${emp.getId()}">Delete</a></td><td><a href="reqUpdateform?value=${emp.getId()}">Update</a></td> </tr>
       
    </c:forEach>
</table>
</c:if>
<c:if test="${not empty jobs}">
<table border="2" cellpadding="8" cellspacing="5" width="100%">
    <tr><td>Id</td><td>Created at</td> <td>Job Name</td> <td>Description</td><td>Startdate</td> <td>Enddate</td><td>Task Name</td></tr>
    <c:forEach var="job" items="${jobs}">
       <tr><td>${job.getId()}</td> <td>${job.getCreated_at()}</td><td>${job.getJobname()} </td>
        <td> ${job.getDescription()} </td> <td> ${job.getStartdate()} </td><td> ${job.getEnddate()} </td> <td>${job.getTask_name()}</td></tr>
       
    </c:forEach>
</table>
</c:if>

<c:if test="${not empty emp}">
    <form action="/reqUpdate" method="post">
        Id: <input type="text" name="id" value=${emp.getId()}><br>
Name : <input type="text" value=${emp.getName()} name="name"><br>
Username : <input type="text" value=${emp.getUsername()}  name="username"><br>
Password : <input type="password" value=${emp.getPassword()} name="password"><br>
<input type="submit" value="Update"> 
</form>
</c:if>

<c:if test="${not empty msg}">

   <form action="/getEmployeeByName" >
       <input type="text" name="name"> <input type=submit value="Search">
   </form>
</c:if>

<c:if test="${not empty emp1}">

  <table border="2" cellpadding="8" cellspacing="5" width="100%">
      <tr><td>Name</td> <td>User Name</td> <td>Password</td></tr>
      <tr>
          <td>${emp1.getName()}</td><td>${emp1.getUsername()}</td><td>${emp1.getPassword()}</td>
      </tr>
  </table>
</c:if>

</div>
</div>
</body>
</html>