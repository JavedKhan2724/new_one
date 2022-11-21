<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>


*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
nav{
  position: fixed;
  background: black;
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
  background:white;
  color: black;
}
table {
  font-family: arial, sans-serif;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

th{
	color: black;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<meta http-equiv="Content-Type" content="ext/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:out value="${sessionScope.user}" />
    <jsp:useBean id="beanDAO" class="com.infinite.IMS.BookingDAO"/>
     
        <table border="2">
        <tr> 
        <th>Booking Id</th>
        <th>Customer Id</th>
        <th>Policy Id</th>
        <th>Pay Mode</th>
        <th>Booking Date</th>
        <th>Expiry Date</th>
        <th>Status</th>    
        </tr>
        <c:forEach var="bok" items="${beanDAO.showBooking()}">
        <tr>
        <td>${bok.bookingId }</td>
        <td>${bok.customerId}</td>
        <td>${bok.policyID}</td> 
        <td>${bok.payMode}</td> 
        <td>${bok.bookingDate}</td> 
        <td>${bok.expiryDate}</td> 
        <td>${bok.status}</td>      
        </tr>        
        </c:forEach>  
        </table>
            
   
</body>
</html>