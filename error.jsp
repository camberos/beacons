<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<head>
	<meta charset="utf-8" />
	<title>500 Page Option 2</title>
</head>
<body>
	<div>
            <div class="span12 page-500">
                <div class=" number">
                    500
                </div>
                <div class=" details">
                    <h3>Oops!  Something went wrong.</h3>
                    <p>
                            We are fixing it!<br />
                            Please come back in a while.<br /><br />
                            Description <%=exception.getMessage()%> 
                    </p>
                </div>
            </div>
	</div>
</body>
</html>
