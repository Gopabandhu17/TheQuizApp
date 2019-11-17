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
        QuizQusAndAns(q: "A slug's blood is green.", a: "True"),
    QuizQusAndAns(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
    QuizQusAndAns(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
    QuizQusAndAns(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
    QuizQusAndAns(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
    QuizQusAndAns(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
    QuizQusAndAns(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
    QuizQusAndAns(q: "Google was originally called 'Backrub'.", a: "True"),
    QuizQusAndAns(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
    QuizQusAndAns(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
    QuizQusAndAns(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
    QuizQusAndAns(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var currentQuestionNumber = 0
    
    func getQuestion() -> String{
        
        return quiz[currentQuestionNumber].question
    }
    
    mutating func getNextQuestion(){
        
        if currentQuestionNumber < quiz.count-1{
            
            currentQuestionNumber += 1
        }else{
            
            currentQuestionNumber = 0
        }
    }
    
    func checkAnswer(userAnswer: String) -> Bool{
        
        if userAnswer == quiz[currentQuestionNumber].answer{
            return true
        }else{
            return false
        }
    }
}
