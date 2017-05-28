package com.creativemind.oes

class Results {

    int totalMarks
    int markObtains
    Date examDate
    static belongsTo = [user:User,questionSet:QuestionSet]

    static constraints = {
        totalMarks(nullable:false)
        markObtains(nullable:false)
        examDate(nullable:false)
        user(nullable:false)
        questionSet(nullable:false)
    }
}
