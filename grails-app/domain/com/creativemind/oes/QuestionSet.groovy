package com.creativemind.oes


class QuestionSet {
     int setNumber
     String setType
      static hasMany = [questions:Question,results:Results]
    static constraints = {
        setNumber(nullable:false)
        setType(nullable:false)
    }


}
