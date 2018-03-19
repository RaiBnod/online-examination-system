<%--
  Created by IntelliJ IDEA.
  User: RaiBnod
  Date: 7/24/16
  Time: 10:20 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<table>
    <tr>
        <td>SetNumber</td>
        <td>SetType</td>
        <td>TotalMarks</td>
        <td>MarkObtains</td>
    </tr>

    <tr>
        <td>${result.questionSet.setNumber}</td>
        <td>${result.questionSet.setType}</td>
        <td>${result.totalMarks}</td>
        <td>${result.markObtains}</td>
    </tr>
</table>

<g:link controller="questionSet" action="index">Go to Other QuestionSets</g:link>

</body>
</html>