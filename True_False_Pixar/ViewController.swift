//
//  ViewController.swift
//  True_False_Pixar
//
//  Created by Eugene St on 7/21/18.
//  Copyright © 2018 Eugene St. All rights reserved....
//

import UIKit
import GameKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var questionField: UILabel!
    
    var game = Game()
    let buttons: [UIButton] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttons = [answerButton1, answerButton2, answerButton3, answerButton4]
        game.pickQuestion()
        displayQuestion()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayQuestion()
    {
        questionField.text = game.questionToDisplay.question
        playAgainButton.isHidden = true
        for button in buttons
        {
            button.isHidden = true
        }
        //assignButtonTitles2()
    }
    
    func assignButtonTitles()
    {
        game.randomizedAnswerChoices()
        
        for buttonIndex in 0..<game.questionToDisplay.answerChoices.count
        {
            buttons[buttonIndex].setTitle(game.questionToDisplay.answerChoices[buttonIndex], for: .normal)
        }
    }
    
    func assignButtonTitles2()
    {
        let newQuestion = game.questionToDisplay
        let numberOfChoices = newQuestion.answerChoices.count
        
        game.randomizedAnswerChoices()
        
        for buttonIndex in 0..<numberOfChoices
        {
            var consumedIndexes = game.consumedIndexes
            var randomIndex = consumedIndexes[0]
            buttons[buttonIndex].setTitle(newQuestion.answerChoices[randomIndex], for: .normal)
            game.consumedIndexes.remove(at: 0)
        }
    }
    
    
    
    
    
    
    
    
    
    
/*
     func assignButtonTitles()
    {
        let question = game.questionToDisplay
        //let numberOfChoices = question.answerChoices.count
        
        for button in buttons
        {
            let index = button.tag
            button.setTitle(question.answerChoices[index], for: .normal)
        }
        
    }
 */

    }


















