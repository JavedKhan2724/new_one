<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
	<link rel="stylesheet" href="style.css" >
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<style>
</style>
</head>
<body>
	<jsp:useBean id="dao" class="com.infinite.IMS.PolicyDAO" />
		</form>
				<c:if test="${param.premiumAmount!= null}">
				<jsp:useBean id="policy" class="com.infinite.IMS.Policy" />
 				<jsp:setProperty property="*" name="policy"/>
				<c:out value="${dao.addPolicy(policy)}" />
				<c:redirect url="ShowPolicy.jsp"></c:redirect>
			</c:if>	
			<section style="">
  <div class="mask d-flex align-items-center h-10 gradient-custom-3" >
    <div class="container ">
      <div class="row d-flex justify-content-center align-items-center ">
        <div class="col-xl-5" ">
          <div class="card" style="border-radius: 10px; height: 600px; background-color: grey">
            <div class="card-body p-5">
              

              <form method="get" action="AddPolicy.jsp">
				<h2 class="text-uppercase text-center mb-5"><b>Add Policy Here</b></h2>
                <div class="form-outline mb-2">
                <label class="form-label" for="form3Example1cg">Policy Name</label>
                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="policyName" />
                </div>
                
                               <div class="form-outline mb-2">
                <label class="form-label" for="form3Example1cg">Policy Type</label>
                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="policyType" />
                </div>
                                <div class="form-outline mb-2">
                <label class="form-label" for="form3Example1cg">Premium Amount</label>
                  <input type="number" id="form3Example1cg" class="form-control form-control-lg" name="premiumAmount" />
                </div>
                                <div class="form-outline mb-2">
                <label class="form-label" for="form3Example1cg">Pay Mode</label>
                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="payMode" />
                </div>
                                <div class="form-outline mb-2">
                <label class="" for="form3Example1cg">Term</label>
                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="term" />
                </div>



                <div class="d-flex justify-content-center">
                  <button type="submit" value="Add policy"
                    class="btn btn-success gradient-custom-4 text-body">Add Policy</button>
                </div>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>