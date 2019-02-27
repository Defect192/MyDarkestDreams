//
//  Model.swift
//  My Darkest Dreams
//
//  Created by Elijah Williams on 2/4/18.
//  Copyright © 2018 Elijah Williams. All rights reserved.
//

import Foundation
import ImageIO
import CoreImage

class Model{
    var currentScene:Int = 0 //indicates the current scene using an int between 0 and 4
    var pointsArray:Array<Int> = [0,0,0,0,0] //indicates the point totals for the planned five scenes
    let currentNode = ConversationNode()
    
    
    /*
    nextNode:
    -takes an int that represents which choice the user has selected
    -transitions to the next dialogue associated with that button and assigns points
    -if the current dialogue doesn't have any choices, it disregards the int and transitions to the next dialogue
    -if the current dialogue doesn't point to another, it transitions to the next scene
    */
    func next(buttonNumber: Int){
        if currentNode.conatainsChoices{
            pointsArray[currentScene] += currentNode.choiceValues![buttonNumber]
            currentNode.constructNextDialogue(choice: buttonNumber)
        }else{
            if currentNode.constructNextDialogue(choice: 0){
                
            }else{
                nextScene()
            }
        }
    }
    
    /*
     nextScene:
     - adds one to the scene counter and constructs a new currentNode that's meant to be the first of the next scene
    */
    func nextScene(){
        currentScene += 1
        currentNode.constructNextScene(newFileName: "scene" + String(currentScene + 1) + ".txt")
    }
    
    func getAssets() -> Array<Any>{
        return [currentNode.backGround, currentNode.conatainsChoices, currentNode.text, currentNode.choiceText ?? ["n/a","n/a","n/a","n/a"]]
    }
    
    func getText() -> String{
        return currentNode.text;
    }
    
    func getBackground() -> String{
        return currentNode.backGround
    }
    
    func getChoices() -> Array<String>{
        return currentNode.choiceText!
    }
    
    func getChoice1() -> String{
        return currentNode.choiceText![0]
    }
    
    func getChoice2() -> String{
        return currentNode.choiceText![1]
    }
    
    func getChoice3() -> String{
        return currentNode.choiceText![2]
    }
    
    func getChoice4() -> String{
        return currentNode.choiceText![3]
    }
    
    func saveGame(){
        /*
        Save the:
        currentScene
        pointsArray
        currentNode
        */
    }
}
