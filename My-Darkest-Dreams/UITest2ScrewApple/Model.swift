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
    
    var pointsArray:Array<Int> = [0,0,0] //indicates the point totals
    let TheEndings = [104,105,106]
    let currentNode = ConversationNode()
    
    func next(buttonNumber: Int){
        currentNode.setPointer(choice:buttonNumber)
        currentNode.setContainsChoices()
        if currentNode.containsChoices == "true"{
            currentNode.constructNextDialogue()
        }else if currentNode.containsChoices == "false" {
            currentNode.constructNextBlockText()
        }else if currentNode.containsChoices == "end" {
            let CalcEndIndex = pointsArray.index(of: pointsArray.max()!)!
            let CalcEnd = TheEndings[CalcEndIndex]
            currentNode.constructEnd(theEnding: CalcEnd)
        }
    }
    
    func getText() -> String{
        return currentNode.text;
    }
    
    func getImage() -> String{
        return currentNode.image
    }
    
    func getChoiceText(buttonNumber: Int) -> String{
        return currentNode.choiceText[buttonNumber]
    }
    
    func TallyPoints(ButtonNum: Int){
        let EndingIndex = currentNode.choiceEndingIndex[ButtonNum]
        let Points = currentNode.choiceValues[ButtonNum]
        pointsArray[EndingIndex] += Points
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
