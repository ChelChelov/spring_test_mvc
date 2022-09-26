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
    Department <form:select path="department">
    <br><br>

<%--    <form:option value="Information Technology" label="IT"/>--%>
<%--    <form:option value="Human Resources" label="HR"/>--%>
<%--    <form:option value="Sales" label="Sales"/>--%>
<%--    It's a hardcode variant to write--%>

    <form:options items="${employee.departments}"/>
    </form:select>
    <br><br>
    Which car do you want?

<%--    BMW <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--    Audi <form:radiobutton path="carBrand" value="Audi"/>--%>
<%--    MB <form:radiobutton path="carBrand" value="Mercedes-Benz"/>--%>

    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
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

<%--"form: select" shows a dropdown list--%>
</body>

</html>