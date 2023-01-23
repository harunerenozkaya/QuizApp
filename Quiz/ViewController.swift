//
//  ViewController.swift
//  Quiz
//
//  Created by Harun on 23.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel : UILabel!
    @IBOutlet var answerLabel : UILabel!
    
    let questions: [String] = ["What is 7+7?","What is the capital of Turkey?","Who is Harun Eren Ozkaya?"]
    let answers: [String] = ["14","Ankara","iOS Developer"]
    var currentQuestionIndex : Int = 0
    
    @IBAction func showNextQuestion(_sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let currentQuestion : String = questions[currentQuestionIndex]
        questionLabel.text = currentQuestion
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_sender: UIButton){
        let currentAnswer : String = answers[currentQuestionIndex]
        answerLabel.text = currentAnswer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}

