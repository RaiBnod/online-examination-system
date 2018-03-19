<g:each in="${questionList}" var="question">

              <li>Question:- ${question.questions}</li
              <li>option1:-${question.option1}
              <li>option2:-${question.option2}
              <li>option3:-${question.option3}
              <li>option4:-${question.option4}
              <li>RightAnswer:-${question.rightAnswer}</li>
              <li>weight:-${question.weight}</li>
    <li><g:form >
        <g:hiddenField name="id" value="${question.id}"/>
        <g:hiddenField name="setNumber" value="${questionSet.setNumber}"/>
        <g:submitToRemote url="[action: 'delete']" name="create" value="delete" update="question_list" />
    </g:form></li>
</g:each>
