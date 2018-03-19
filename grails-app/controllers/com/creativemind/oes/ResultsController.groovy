package com.creativemind.oes

class ResultsController {
    def resultsService
    def index() {}


    def result(){
       Results result= resultsService.calculateResult(params)
        render(view:"userResult" ,model: [result:result])
    }
}
