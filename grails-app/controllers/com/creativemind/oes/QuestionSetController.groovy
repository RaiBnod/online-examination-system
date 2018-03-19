package com.creativemind.oes

class QuestionSetController {

    def index() {
        def questionSetList = QuestionSet.list()
        render(view: "questionSet", model: [questionSetList: questionSetList])
    }

    def add() {
        int setNumber = Integer.valueOf((String) params.setNumber)
        if (QuestionSet.findBySetNumber(setNumber))
            flash.message = "SetNumber already exists"
        else {
            QuestionSet questionSet = new QuestionSet();
            questionSet.setNumber = setNumber
            questionSet.setType = params.setType
            if (questionSet.save(flush: true))
                flash.message = "Save successful"
            else
                flash.message = "Error in saving"
        }

        def questionSetList = QuestionSet.list()
        render(template: "setView", model: [questionSetList: questionSetList])
    }

    def delete() {
        int setNumber = Integer.valueOf((String) params.setNumber)
        println("this is setNumber" + setNumber)
        QuestionSet questionSet = QuestionSet.findBySetNumber(setNumber)
        if (questionSet.delete(flush: true))
            flash.message = "delete  successful"
        else
            flash.message = "error in delete"
        def questionSetList = QuestionSet.list()
        render(template: "setView", model: [questionSetList: questionSetList])
    }

    def test() {
        QuestionSet questionSet = QuestionSet.findBySetNumber(Integer.valueOf((String) params.setNumber))
        def questionList = Question.findAllByQuestionSet(questionSet)
        render(view: "giveTest", model: [questionList: questionList, questionSet: questionSet])
    }
}
