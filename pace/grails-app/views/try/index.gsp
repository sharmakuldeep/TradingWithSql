<%--
  Created by IntelliJ IDEA.
  User: pace
  Date: 1/8/14
  Time: 4:55 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
      <g:form controller="try" action="save">

          <g:textField name="id"/>
          <g:textField name="buysymbol"/>
          <g:textField name="sellsymbol"/>
          <g:textField name="instrument"/>
          <g:submitButton name="submit">submit</g:submitButton>
          </g:form>
</body>
</html>