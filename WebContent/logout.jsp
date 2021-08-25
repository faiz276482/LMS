<html>
<head>
<script>
    history.forward();
</script>
</head>
	<body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
		<% session.invalidate(); %>
		<jsp:forward page="index.jsp"/>
	</body>
<html>