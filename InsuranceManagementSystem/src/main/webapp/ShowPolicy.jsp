<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="style.css" >
<style>


*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
nav{
  position: fixed;
  background: grey;
  width: 100%;
  padding: 10px 0px ;

}
nav .menu{
  max-width: 1250px;
  margin: auto;
  display: flex;
  align-items: center;
  justify-content: space-between;
  
}
.menu .logo a{
  text-decoration: none;
  color:white;
  font-size: 35px;
  font-weight: 600;
}



.menu ul li a{
  text-decoration: none;
  color:white;
  font-size: 18px;
  font-weight: 500;
  padding: 8px 15px;
  border-radius: 5px;
}
.menu ul li a:hover{
  background:black;
  color:white;
}
table {
  font-family: arial, sans-serif;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 7px;
}

th{
	color: black;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

.updt a{
  	text-decoration: none;
  	color:blue;
}

</style>
<meta http-equiv="Content-Type" content="ext/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <nav>
    <div class="menu">
      <div class="logo">
        <a href="NewFile.html">Insurance</a>
      </div>
      <ul>
      	<li><a href="AddPolicy.jsp">Add Policy</a></li>
      </ul>
    </div>
  </nav>
  <br/><br/><br/>
  <a href="contact.html"></a>
    
        <jsp:useBean id="beanDAO" class="com.infinite.IMS.PolicyDAO"/>
        <table border="5" class="fixed_header"  >
        <tr> 
        <th>Policy Id</th>
        <th>Policy Name</th>
        <th>Policy Type</th>
        <th>Premium Amount</th>
        <th>Pay Mode</th>
        <th>Term</th>
        <th>Installment Amount Per Pay Mode</th>
        <th>Matured Amount</th>
        <th>Update Policy</th>
        <th>Delete Policy</th>
        </tr>
        <c:forEach var="pol" items="${beanDAO.showPolicy()}">
        <tr>
        <td>${pol.policyId }</td>
        <td>${pol.policyName}</td>
        <td>${pol.policyType}</td> 
        <td>${pol.premiumAmount}</td> 
        <td>${pol.payMode}</td> 
        <td>${pol.term}</td> 
        <td>${pol.installmentAmountPerPayMode}</td> 
        <td>${pol.maturedAmount}</td> 
       <td class="updt">
        	<a href="UpdatePolicy.jsp?id=${pol.policyId}"><b>Update Policy</b></a>
        </td>
        <td class="updt">
        	<a href="DeletePolicy.jsp?id=${pol.policyId}"><b>Delete Policy</b></a>
        </td>
        </tr>        
        </c:forEach>
       
        </table>
        
    
</body>
</html>