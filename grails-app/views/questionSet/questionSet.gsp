<%--
  Created by IntelliJ IDEA.
  User: RaiBnod
  Date: 7/23/16
  Time: 7:06 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:javascript src="libs/jquery/jquery-1.11.3.min.js"/>
</head>

<body>

<p>${flash.message}</p>

<div id="setList">
    <g:render template="setView" model="[questionSetList: questionSetList]"/>
</div>
<g:if test="${"admin".equalsIgnoreCase((String) session.getAttribute("role"))}">
    <div id="questionSet_add">
        <g:form>
            <label>SetNum</label>
            <g:textField name="setNumber"/>
            <label>Set Type</label>
            <g:textField name="setType"/>
            <g:submitToRemote url="[action: 'add']" name="addQuestion" value="AddQu" update="setList"/>
        </g:form>
    </div>
    <g:form controller="user" action="index">
        <g:submitButton name="subm" value="ViewUser"/>
    </g:form>
</g:if>
</body>
</html>