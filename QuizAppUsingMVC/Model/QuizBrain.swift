//
//  QuizBrain.swift
//  QuizAppUsingMVC
//
//  Created by Gopabandhu on 17/11/19.
//  Copyright © 2019 Gopabandhu. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        QuizQusAndAns(q: "1. A slug's blood is green.", a: "True"),
    QuizQusAndAns(q: "2. Approximately one quarter of human bones are in the feet.", a: "True"),
    QuizQusAndAns(q: "3. The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
    QuizQusAndAns(q: "4. In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
    QuizQusAndAns(q: "5. In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
    QuizQusAndAns(q: "6. It is illegal to pee in the Ocean in Portugal.", a: "True"),
    QuizQusAndAns(q: "7. You can lead a cow down stairs but not up stairs.", a: "False"),
    QuizQusAndAns(q: "8. Google was originally called 'Backrub'.", a: "True"),
    QuizQusAndAns(q: "9. Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
    QuizQusAndAns(q: "10. The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
    QuizQusAndAns(q: "11. No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
    QuizQusAndAns(q: "12. Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var currentQuestionNumber = 0
    var score = 0
    
    func getQuestion() -> String{
        
        return quiz[currentQuestionNumber].question
    }
    
    mutating func getNextQuestion(){
        
        if currentQuestionNumber < quiz.count-1{
            
            currentQuestionNumber += 1
        }else{
            
            currentQuestionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool{
        
        if userAnswer == quiz[currentQuestionNumber].answer{
            score += 1
            return true
        }else{
            return false
        }
    }
    
    func showProgress() -> Float{
        
        return Float(currentQuestionNumber + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int{
        
        return score
    }
}
