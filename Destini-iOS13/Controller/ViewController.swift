//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrainV = storyBrain()
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrainV.nextStory(userChoice: sender.currentTitle!)
        
        if storyBrainV.checkScore(){
            updateUI()
        } else {
            let score1 = storyBrainV.getResultStory()
            if score1 > 2 {
                storyLabel.text = "You're a Rose!"
                choice1Button.setTitle("Play again!", for: .normal)
                choice2Button.setTitle("Let's go again!", for: .normal)
                
            } else {
                storyLabel.text = "You're a Sunflower!"
                choice1Button.setTitle("Play again!", for: .normal)
                choice2Button.setTitle("Let's go again!", for: .normal)
            }
            storyBrainV.reset()
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    func updateUI() {
        storyLabel.text = storyBrainV.getStoryTitle()
        choice1Button.setTitle(storyBrainV.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrainV.getChoice2(), for: .normal)
        
    }
    
    

}

