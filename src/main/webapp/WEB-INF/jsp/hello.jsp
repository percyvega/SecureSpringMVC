<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
  <head>
    <title>greeting!</title>
  </head>
  <body bgcolor="#b8860b">
    <h1>${greeting}</h1> from <sec:authentication property="principal.username"/>
  </body>
</html>
