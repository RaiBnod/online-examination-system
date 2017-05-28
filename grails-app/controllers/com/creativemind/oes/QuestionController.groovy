package com.creativemind.oes

class QuestionController {
    def questionService
    def index() {
        QuestionSet questionSet=QuestionSet.findBySetNumber(Integer.valueOf((String)(params.setNumber)))
        def questionList=Question.findAllByQuestionSet(questionSet)
        render(view: 'questionView', model: [questionList: questionList,questionSet:questionSet])
    }

    def add() {
        println params
        if(questionService.save(params))
            flash.message="save successful"
        else
            flash.message="save unsuccessful"
         QuestionSet questionSet=QuestionSet.findBySetNumber(Integer.valueOf((String)params.setNumber))
        def questionList=Question.findAllByQuestionSet(questionSet)
        render(template: 'questions', model: [questionList: questionList,questionSet:questionSet])
    }

    def delete() {
        Question question=Question.findById(Integer.valueOf((String)params.id))
        if(question.delete(flush: true))
            flash.message="delete successful"
        else
            flash.message="can not delete"
        QuestionSet questionSet=QuestionSet.findBySetNumber(Integer.valueOf((String)params.setNumber))
        def questionList=Question.findAllByQuestionSet(questionSet)
        render(template: 'questions', model: [questionList: questionList,questionSet:questionSet])
    }
}
