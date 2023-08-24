<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>User Dropdown Page</title>
</head>
<body>

<h1>User Dropdown Page</h1>

<form action="saveTreatment" method="post">
    <select name="selectedUserId">
        <c:forEach items="${users}" var="user">
            <option value="${user.id}">${user.name}</option>
        </c:forEach>
    </select>
    
</form>

</body>
</html>


<!-- input type="text" name="treatment" placeholder="Enter treatment">
    <input type="submit" value="Save Treatment"> -->