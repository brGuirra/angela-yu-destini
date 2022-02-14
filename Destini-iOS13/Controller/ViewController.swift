//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger", choice1: " Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(storyIndex: 0)
    }

    
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.tag == 0 {
            updateUI(storyIndex: 1)
        } else {
            updateUI(storyIndex: 2)
        }
    }
    
    func updateUI(storyIndex: Int) {
        storyLabel.text = stories[storyIndex].title
        choiceButton1.setTitle(stories[storyIndex].choice1, for: .normal)
        choiceButton2.setTitle(stories[storyIndex].choice2, for: .normal)
    }
}

