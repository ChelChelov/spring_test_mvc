<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<body>

<h2>Dear Employee, you are WELCOME!!!</h2>
<br>
<br>

Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Your language(s):
<ul>

    <c:forEach var="lang" items="${employee.languages}">

        <li>${lang}</li>

    </c:forEach>

</ul>
<%--It's strange but it's works like: Your language(s):${employee.languages}--%>


<%--Here I can see the next page with parameters of the last Employee object.--%>
<%--Because of @ModelAttribute("employee") Employee emp, I can update these parameters.--%>
</body>

</html>
