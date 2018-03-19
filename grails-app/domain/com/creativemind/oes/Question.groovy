package com.creativemind.oes

class Question {
    String questions
    int weight
    String rightAnswer
    String option1
    String option2
    String option3
    String option4
    static belongsTo = [questionSet:QuestionSet]
    static constraints = {
        weight(default:1 ,nullable:false)
        questions(nullable: false)
        rightAnswer(nullable: false)
        option1(nullable: false)
        option2(nullable: false)
        option3(nullable: false)
        option4(nullable: false)
        questionSet(nullable: false)
    }
}
