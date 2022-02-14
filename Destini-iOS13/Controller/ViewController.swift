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
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.tag)
        
        updateUI()
    }
    
    func updateUI() {
        let story = storyBrain.getStory()
        
        storyLabel.text = story.title
        choiceButton1.setTitle(story.choice1, for: .normal)
        choiceButton2.setTitle(story.choice2, for: .normal)
    }
}

