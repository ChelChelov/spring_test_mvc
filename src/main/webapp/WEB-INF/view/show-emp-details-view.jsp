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

<%--Here I can see the next page with parameters of the last Employee object.--%>
<%--Because of @ModelAttribute("employee") Employee emp, I can update these parameters.--%>
</body>

</html>
