//
//  ViewController.swift
//  True_False_Pixar
//
//  Created by Eugene St on 7/21/18.
//  Copyright © 2018 Eugene St. All rights reserved.
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
    @IBOutlet weak var correctIncorrectField: UILabel!
    @IBOutlet weak var crossImage: UIImageView!
    @IBOutlet weak var tickImage: UIImageView!
    
    var game = Game()
    var buttons: [UIButton] = []
    
    
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
        correctIncorrectField.isHidden = true
        tickImage.isHidden = true
        crossImage.isHidden = true
        assignButtonTitles()
    }
    
    func assignButtonTitles()
    {
        let numberOfChoices = game.questionToDisplay.answerChoices.count
        game.randomizedAnswerChoices()
        
        for buttonIndex in 0..<numberOfChoices
        {
            var consumedIndexes = game.consumedIndexes
            let randomIndex = consumedIndexes[0]
            buttons[buttonIndex].setTitle(game.questionToDisplay.answerChoices[randomIndex], for: .normal)
        }
    }

}




















