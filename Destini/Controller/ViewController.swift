//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    var appState: Int = 0
    let stories = StoriesBook().list
    // TODO Step 5: Initialise instance variables here
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIByAppState(index: appState)
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        // TODO Step 4: Write an IF-Statement to update the views
        if appState == 0 {
            appState += sender.tag
        }
        
        else if appState == 1 && sender.tag == 2 {
            appState = 2
        }
        
        else if appState == 1 && sender.tag == 1 {
            appState = 3
        }
        
        else if appState == 2 && sender.tag == 2 {
            appState = 5
        }
        
        else if appState == 2 && sender.tag == 1 {
            appState = 4
        }
        
        // TODO Step 6: Modify the IF-Statement to complete the story
        updateUIByAppState(index: appState)
        
    }
    
    func getStoryByAppIndex(index:Int) -> Story {
        return stories[index]
    }
    
    func updateUIByAppState(index:Int) {
        
        let story = getStoryByAppIndex(index: index)
        storyTextView.text = story.story
        if story.answer1 == "" || story.answer2 == "" {
            topButton.isHidden = true
            bottomButton.isHidden = true
        } else {
            bottomButton.setTitle(story.answer1, for: .normal)
            topButton.setTitle(story.answer2, for: .normal)
        }
    }
    
}

