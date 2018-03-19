package com.creativemind.oes

import grails.transaction.Transactional
import org.springframework.web.context.request.RequestContextHolder

@Transactional
class ResultsService {

    def serviceMethod() {
    }
    def calculateResult(def params){
        def session = RequestContextHolder.currentRequestAttributes().getSession()
        QuestionSet questionSet=QuestionSet.findBySetNumber(params.setNumber)
        def questionList=Question.findAllByQuestionSet(questionSet)
        int totalMark=0;
        int markObtains=0
        Date examDate=new Date()
        for(Question question:questionList) {
            String id = String.valueOf(question.id)
            String userAnswer = (String) params.(id + "answer")
            if (question.rightAnswer.equalsIgnoreCase(userAnswer))
                markObtains = markObtains + question.weight
            totalMark = totalMark + question.weight
        }
       User user=User.findByUserName((String)session.getAttribute("userName"))
        Results result =new Results()
        result.questionSet=questionSet
        result.user=user
        result.totalMarks=totalMark
        result.markObtains=markObtains
        result.examDate=examDate
        result.save(flush: true)
        return result
    }


}
