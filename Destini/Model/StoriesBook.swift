//
//  StoriesBook.swift
//  Destini
//
//  Created by Reza Dehnavi on 4/14/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

public class StoriesBook {
    
    var list = [Story]()
    
    init() {
        // Our strings
        let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
        let answer1a = "I\'ll hop in. Thanks for the help!"
        let answer1b = "Better ask him if he\'s a murderer first."
        list.append(Story(story: story1, answerA: answer1a, answerB: answer1b))
        
        let story2 = "He nods slowly, unphased by the question."
        let answer2a = "At least he\'s honest. I\'ll climb in."
        let answer2b = "Wait, I know how to change a tire."
        list.append(Story(story: story2, answerA: answer2a, answerB: answer2b))
        
        let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
        let answer3a = "I love Elton John! Hand him the cassette tape."
        let answer3b = "It\'s him or me! You take the knife and stab him."
        list.append(Story(story: story3, answerA: answer3a, answerB: answer3b))
        
        let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
        list.append(Story(story: story4, answerA: "", answerB: ""))
        
        let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
        list.append(Story(story: story5, answerA: "", answerB: ""))
        
        let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
        list.append(Story(story: story6, answerA: "", answerB: ""))
        
    }
    
}
