<%--
  Created by IntelliJ IDEA.
  User: RaiBnod
  Date: 7/23/16
  Time: 10:21 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:javascript src="libs/jquery/jquery-1.11.3.min.js"/>
</head>

<body>

<P>Questions of set ${questionSet.setNumber} of type ${questionSet.setType} </P>
<div id="question_list">
    <g:render template="questions" model="[questionList:questionList,questionSet:questionSet]"/></div>
</body>

<div id="question_add">
    <g:render template="questionForm" model="[questionSet:questionSet]"/></div>
</div>


</html>