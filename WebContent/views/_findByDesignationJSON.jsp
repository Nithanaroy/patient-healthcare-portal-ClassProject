<%@ page contentType="applicaiton/json"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
[
<c:forEach items="${employees}" var="employee">
{
	"id": "${employee.employee_Id}",
	"name": "${employee.name}",
	"designation": "${employee.designation}",
	"salary": "${employee.salary}"
},
</c:forEach>
{
	"id": "0",
	"name": "name",
	"designation": "deg",
	"salary": "200"
}
]

