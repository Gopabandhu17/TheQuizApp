//
//  ViewController.swift
//  QuizAppUsingMVC
//
//  Created by Gopabandhu on 17/11/19.
//  Copyright © 2019 Gopabandhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var btnTrue: UIButton!
    @IBOutlet weak var btnFalse: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    
    @IBAction func btnTrueOrFalse(_ sender: UIButton) {
        
        let selectedAnswer = sender.currentTitle!
        if quizBrain.checkAnswer(userAnswer: selectedAnswer){
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.getNextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        
        lblQuestion.text = quizBrain.getQuestion()
        
        btnTrue.backgroundColor = UIColor.black
        btnFalse.backgroundColor = UIColor.black
    }
}

