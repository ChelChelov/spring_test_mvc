<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>

<h2>Dear Employee please enter your Details</h2>

<br>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>

    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>

    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>

    Department <form:select path="department">
    <br><br>
    <form:options items="${employee.departments}"/>
    </form:select>
    <br><br>

    Which car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>

    Foreign Language(s)
    <form:checkboxes path="languages" items="${employee.mapLanguages}"/>
    <br><br>

    Phone number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>

    Email <form:input path="email"/>
    <form:errors path="email"/>
    <br><br>

    <input type="submit" value="OK">

</form:form>

</body>

</html>



<%--This page shows me empty fields with Name, Surname and salary.--%>
<%--It's empty because I create a new Employee object with noArgsConstructor and without fields.--%>
<%--Then I fill the fields on this page.--%>
<%--It's meant that I set these parameters.--%>
<%--In controller, I use "model.addAttribute" to do it.--%>
<%--modelAttribute must be equals: modelAttribute="employee" and the same in controller model.addAttribute("employee", new Employee());--%>
<%--And the next action will be the page "showDetails"--%>
<%--"form: select" shows a dropdown list--%>




<%--    <form:option value="Information Technology" label="IT"/>--%>
<%--    <form:option value="Human Resources" label="HR"/>--%>
<%--    <form:option value="Sales" label="Sales"/>--%>
<%--    It's a hardcode variant to write--%>

<%--    BMW <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--    Audi <form:radiobutton path="carBrand" value="Audi"/>--%>
<%--    MB <form:radiobutton path="carBrand" value="Mercedes-Benz"/>--%>

<%--    EN <form:checkbox path="languages" value="English"/>--%>
<%--    FR <form:checkbox path="languages" value="French"/>--%>
<%--    DE <form:checkbox path="languages" value="Deutsch"/>--%>