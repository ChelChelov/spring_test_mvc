<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>

<h2>Dear Employee please enter your Details</h2>

<br>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>

    <input type="submit" value="OK">

</form:form>
<%--This page shows me empty fields with Name, Surname and salary.--%>
<%--It's empty because I create a new Employee object with noArgsConstructor and without fields.--%>
<%--Then I fill the fields on this page.--%>
<%--It's meant that I set these parameters.--%>
<%--In controller, I use "model.addAttribute" to do it.--%>
<%--modelAttribute must be equals: modelAttribute="employee" and the same in controller model.addAttribute("employee", new Employee());--%>
<%--And the next action will be the page "showDetails"--%>
</body>

</html>