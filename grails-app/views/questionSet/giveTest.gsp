<%--
  Created by IntelliJ IDEA.
  User: RaiBnod
  Date: 7/24/16
  Time: 7:08 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
<asset:javascript src="libs/jquery/jquery-1.11.3.min.js"/>
</head>
<g:if test="${questionList.size() == 0}">
    NO question please add some
</g:if>
<g:else>
    <g:form action="result" controller="results">
        <g:each in="${questionList}" var="question">
            <li>Question:- ${question?.questions}</li>
            <g:radioGroup labels="${[question?.option1, question?.option2, question?.option3, question?.option4]}"
                          values="${[question?.option1, question?.option2, question?.option3, question?.option4]}"
                          name="${question?.id}answer">
                ${it.radio} ${it.label}
            </g:radioGroup>
            <g:hiddenField name="${question.id}Id" value="${question.id}"/>
        </g:each>
        <g:hiddenField name="totalSize" value="${questionList.size()}"/>
        <g:hiddenField name="setNumber" value="${questionSet?.setNumber}"/>
        <g:submitButton name="sub" value="SUBMIT"/>
    </g:form>
</g:else>
</body>
</html>