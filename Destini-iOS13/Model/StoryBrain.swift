//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct storyBrain {

    var storyNum = 0
    var score = 0
    var total = 0
    
    let stories = [
        Story(
            t: "What flower are you? First, pick a color: ",
            c1: "Blue", cd1: 2,
            c2: "Purple", cd2: 1
        ),
        Story(
            t: "Are you an extrovert or an introvert?",
            c1: "Extrovert", cd1: 2,
            c2: "Introvert", cd2: 3
        ),
        Story(
            t: "Do you prefer cats or dogs?",
            c1: "Dogs", cd1: 5,
            c2: "Cats", cd2: 4
        ),
        Story(
            t: "Are you a night or morning person?",
            c1: "Night", cd1: 5,
            c2: "Morning", cd2: 6
        ),
        Story(
            t: "Chocolate or vanilla?",
            c1: "Chocolate", cd1: 8,
            c2: "Vanilla", cd2: 7
        ),
        Story(
            t: "Netflix or Hulu?",
            c1: "Netflix", cd1: 8,
            c2: "Hulu", cd2: 9
        ),
        Story(
            t: "Coffee or Tea?",
            c1: "Coffee" , cd1: 11,
            c2: "Tea", cd2: 10
        ),
        Story(
            t: "Bike or Car?",
            c1: "Bike" , cd1: 11,
            c2: "Car", cd2: 12
        )
        
    ]
    
    func getStoryTitle()->String{
        print (storyNum)
        print (total)
        return stories[storyNum].title
    }
    
    func getChoice1()->String{
        return stories[storyNum].choice1
    }
    
    func getChoice2()->String{
        return stories[storyNum].choice2
    }
    
    func checkScore()->Bool {
        //let currentStory = stories[total]
        if total == 3 || total == 4 {
            return false
        } else {
            return true
        }
    }
    
    mutating func getResultStory()->Int{
       return score
    }
    
    mutating func reset () {
        storyNum = 0
        score = 0
        total = 0
    }
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNum]

        // if user chooses choice 1
        if userChoice == currentStory.choice1 {
            storyNum = currentStory.choice1Destination
            score += 1
        } else if userChoice == currentStory.choice2 {
            storyNum = currentStory.choice2Destination
        }
        
        total += 1
        
    }
}
