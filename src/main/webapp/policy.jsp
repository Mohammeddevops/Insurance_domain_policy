<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<script>

function createPolicy(){
	alert("policy created successfully ");
	var form = document.getElementById("polcyForm");
	
	form.action="createpolicy";
	//alert (document.getElementById("polcyForm").action);
	form.method="POST";
	form.method.type="POST";
	//alert (document.getElementById("polcyForm").method);
	form.submit();
}

function updatePolicy(){
	var form = document.getElementById("polcyForm");
	form.action="updatepolicy";
	form.method="PUT";
	form.method.type="PUT";
	form.submit();
}

function deletePolicy(){
	var form = document.getElementById("polcyForm");
	form.action="deletepolicy";
	form.method="DELETE";
	form.method.type="DELETE";
	form.submit();
}
</script>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello World web application</title>

<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f0f0;
  }

  form {
    max-width: 500px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
  }

  table th, table td {
    padding: 8px 12px;
    text-align: left;
    border-bottom: 1px solid #ccc;
  }

  table th {
    background-color: #f0f0f0;
  }

  input[type="submit"],
  input[type="button"] {
    padding: 10px 20px;
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    font-size: 16px;
  }

  input[type="submit"]:hover,
  input[type="button"]:hover {
    background-color: #0056b3;
  }
  
   h1 {
    text-align: center;
    font-size: 36px;
    color: #007BFF; /* Change the color to your preference */
    margin-top: 20px;
  }
  
</style>

</head>
<body>
	<h1>Insurance Domain</h1>
   	<form action="addpolicy" id="polcyForm" type="POST">

	<br>
    	Enter your ID: <input type="text" name="id" size="20">
    <br>
    	Enter your name: <input type="text" name="name" size="20">
    <br>	
    	Enter your address: <input type="text" name="address" size="50">
    	
    <br>	
    	Enter your contact: <input type="text" name="contact" size="50">
    	
    	
    	  <table>
    <thead>
      <tr>
        <th>Policy ID</th>
        <th>Customer Name</th>
        <th>Customer Address</th>
        <th>Contact Number</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${policyList}" var="policy">
        <tr>
          <td>${policy.policyId}</td>
          <td>${policy.customerName}</td>
          <td>${policy.customerAddress}</td>
          <td>${policy.contactNumber}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
    	
    	
    	<input type="submit" value="Create Insurance"  onClick="createPolicy()"/>
    	<input type="button" value="Update Insurance"  onclick="updatePolicy()"/>
    	<input type="button" value="Delete Insurance"  onclick="deletePolicy()"/>
    	
	</form>
</body>
</html>
