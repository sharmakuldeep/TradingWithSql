<%--
  Created by IntelliJ IDEA.
  User: Digvijay
  Date: 9/7/14
  Time: 10:35 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>PACE</title>
    <g:javascript src="common.js"></g:javascript>
    %{--<script language="JavaScript" type="text/javascript">--}%
      %{--jQuery(document).ready(function(){--}%
          %{--$('#butterflyId').on('click', function(){--}%
          %{--//$("butterflyId").click(function(){--}%
              %{--alert("hi")--}%
          %{--})--}%
      %{--})--}%
    %{--</script>--}%

</head>
<body>
<g:form  name="strategyId" id="strategyId" controller="strategy" action="checkstrategy">
<table border="1" >
    %{--<tr><td><input type="button" id="butterflyId" value="Butterfly"/></td>--}%
        %{--<td><input type="button" id="syntheticId" value="Synthetic"/></td>--}%
        %{--<td><input type="button" id="calenderId" value="Calender"/></td>--}%
    %{--</tr>--}%
    %{--<tr><td><g:link action="checkstrategy" id="1">Butterfly</g:link></td>--}%
        %{--<td><g:link action="checkstrategy" id="2">Synthetic</g:link></td>--}%
        %{--<td><g:link action="checkstrategy" id="3">Calender</g:link></td>--}%
    %{--</tr>--}%
</table>
</g:form>
</body>
</html>