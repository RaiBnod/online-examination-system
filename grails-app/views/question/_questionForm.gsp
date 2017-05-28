<g:form >
    <g:hiddenField name="setNumber" value="${questionSet?.setNumber}"/>
    <g:hiddenField name="id" value="${question?.id}"/>
    <label>Question</label>
    <g:textField name="questions" value="${question?.questions}"/>
    <label>Option1</label>
    <g:textField name="option1" value="${question?.option1}"/>
    <label>Option2</label>
    <g:textField name="option2" value="${question?.option2}"/>
    <label>Option3</label>
    <g:textField name="option3" value="${question?.option3}"/>
    <label>Option4</label>
    <g:textField name="option4" value="${question?.option4}"/>
    <label>wright Answer</label>
    <g:textField name="rightAnswer" value="${question?.rightAnswer}"/>
    <label>Weight</label>
    <g:textField name="weight" value="${question?.weight}"/>
    <g:submitToRemote url="[action: 'add']" name="addQuestion" value="AddQu" update="question_list"/>
</g:form>