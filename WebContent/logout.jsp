<html>
	<body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
		<% session.invalidate(); %>
		<jsp:forward page="login.jsp"/>
	</body>
<html>