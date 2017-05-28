package com.creativemind.oes

import grails.transaction.Transactional

@Transactional
class QuestionService {

    def save(def params) {
        Question question=new Question()
        if(params.id)
            question=Question.findById(Integer.valueOf((String)params.id))
        question.questions=params.questions
        question.option1=params.option1
        question.option2=params.option2
        question.option3=params.option3
        question.option4=params.option4
        question.rightAnswer=params.rightAnswer
        question.weight=Integer.valueOf((String)params.weight)
        question.questionSet=QuestionSet.findBySetNumber(Integer.valueOf((String)params.setNumber))
        if(question.save(flush: true))
            return true
        else
           return false
    }
}
