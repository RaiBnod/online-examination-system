<table border="1">
    <tr>
        <th>Set Number</th>
        <th>Set Type</th>
        <th>Action</th>
           </tr>
    <g:each in="${questionSetList}" var="questionSet">
        <tr>
            <th>${questionSet.setNumber}</th>
            <th>${questionSet.setType}</th>
            <g:if test="${"admin".equalsIgnoreCase((String)session.getAttribute("role"))}">
                <th><g:form >
                <g:hiddenField name="setNumber" value="${questionSet.setNumber}"/>
                <g:submitToRemote url="[action: 'delete']" name="create" value="delete" update="setList" />
            </g:form></th>
            <th><g:link controller="question" action="index" params="[setNumber:questionSet.setNumber]">Questions</g:link> </th>
           </g:if>
            <th><g:link action="test" params="[setNumber:questionSet.setNumber]">GiveTest</g:link> </th>
        </tr>
    </g:each>

</table>