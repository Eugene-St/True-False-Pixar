//
//  QuestionsStructure.swift
//  True_False_Pixar
//
//  Created by Eugene St on 7/22/18.
//  Copyright © 2018 Eugene St. All rights reserved.
//

import Foundation
import UIKit

struct QuestionsModel
{
    var question: String
    var answerChoices: [String]
    var correctAnswer: String
    
    init(question: String, answerChoices: [String], correctAnswer: String)
    {
        self.answerChoices = answerChoices
        self.correctAnswer = correctAnswer
        self.question = question
    }
}
