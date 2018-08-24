//
//  Game.swift
//  True_False_Pixar
//
//  Created by Eugene St on 7/22/18.
//  Copyright © 2018 Eugene St. All rights reserved.
//

import Foundation
import UIKit
import GameKit

struct Game
{
    
    var questionsPerRound = 0
    
    var questionsAsked = 0
    
    var correctQuestions = 0
    
    var questions = [QuestionsModel]()
    
    var questionToDisplay: QuestionsModel
    
    var correctAnswer = ""
    
    var selectedIndex = 0
    
    var consumedIndexes: [Int] = []
    
    let question1 = QuestionsModel(question: "Four stories about a honey-loving bear and his friends", answerChoices: ["Dumbo", "Bolt", "Oliver and Company", "The many adventures of Winnie the Pooh"], correctAnswer: "The many adventures of Winnie the Pooh")
    
    let question2 = QuestionsModel(question: "A wooden puppet needs to be brave, truthful and unselfish to become human", answerChoices: ["Brave", "Peter Pan", "Saludos Amigos", "Pinocchio"], correctAnswer: "Pinocchio")
    
    let question3 = QuestionsModel(question: "Two creatures try to return a young girl back to her parellel world", answerChoices: ["The Rescuers Down Under", "Monsters, Inc.", "A Bug's Life", "The Incredibles"], correctAnswer: "Monsters, Inc.")
    
    let question4 = QuestionsModel(question: "A girl has several adventures after following a rabbit into a rabbit hole", answerChoices: ["Pocahontas", "The Little Marmaid", "Alice in Worderland", "Cinderella"], correctAnswer: "Alice in Worderland")
    
    let question5 = QuestionsModel(question: "A mean and wealthy woman goes a long way to get a fur coat", answerChoices: ["The Emperor's New Groove", "Show WHite and the Sever Dwarfs", "One Hundred and One Dalmatians", "Beauty and the Beast"], correctAnswer: "One Hundred and One Dalmatians")
    
    let question6 = QuestionsModel(question: "A man raised by gorillas falls in love with the daughter of an English explorer", answerChoices: ["Beauty and the Beast", "Tarzan", "The Jungle Book", "Peter Pan"], correctAnswer: "Tarzan")
    
    let question7 = QuestionsModel(question: "The arrival of a new birthday present leads to jealousy and adventures while moving to a new house", answerChoices: ["Toy Story", "Finding Nemo", "The Aristocats", "The Many Adventures of Winnie the Pooh"], correctAnswer: "Toy Story")
    
    let question8 = QuestionsModel(question: "A leader is killed by his brother and is later challenged by the leader's son", answerChoices: ["The Sword in the Stone", "The Lion King", "The Jungle Book", "Frozen"], correctAnswer: "The Lion King")
    
    let question9 = QuestionsModel(question: "A TV show dog thinks he has super powers and tries to find the girl that plays his owner", answerChoices: ["Wreck-it Ralph", "Finding Nemo", "Up", "Bolt"], correctAnswer: "Bolt")
    
    let question10 = QuestionsModel(question: "A teenage princess is tricked to touch an enchanted spinning wheel", answerChoices: ["Sleeping Beauty", "Cinderella", "Snow White and the Seven Dwarfs", "Tangled"], correctAnswer: "Sleeping Beauty")
    
    init()
    {
        questions = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]
        questionsPerRound = questions.count
        questionToDisplay = question1
    }
    
    mutating func pickQuestion()
    {
        selectedIndex = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        correctAnswer = questions[selectedIndex].correctAnswer
        questionToDisplay = questions[selectedIndex]
    }

    mutating func randomizedAnswerChoices()
    {
        let numberOfChoices = questionToDisplay.answerChoices.count
        
        while consumedIndexes.count < numberOfChoices
        {
            let index = GKRandomSource.sharedRandom().nextInt(upperBound: numberOfChoices)
            
            if !consumedIndexes.contains(index)
            {
                consumedIndexes.append(index)
            }
        }
    }
}





















