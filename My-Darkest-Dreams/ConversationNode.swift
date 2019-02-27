//
//  ConversationNode.swift
//  My Darkest Dreams
//
//  Created by Elijah Williams on 2/9/18.
//  Copyright © 2018 Elijah Williams. All rights reserved.
//

import Foundation

class ConversationNode{
    var conatainsChoices = false //boolean that indicates whether or the the dialogue has choices to make
    var text = "Tap the bottom of the screen to start" //used if the object does not contain choices
    var choiceText:Array<String>?//the text for each choice
    var choiceValues:Array<Int>?//point values for each choice
    var choicePointers:Array<Int>?//points to the dialogues correspinding with the choice using whatever you want (ex: lineOnFile, index in an array of dialogues, etc.)
    var backGround = "background.png"
    var fileName:String = "scene0.txt"
    var currentLine = 1
    var nextLine: Int?
    
    /*
     constructNextScene:
     -takes in a String that represents a file name
     -Finds and reads the file to determine the object's variable values
     */
    func constructNextScene(newFileName:String){
        //read a new file
        //do stuff
    }
    
    /*
     constructNextDialogue:
     -takes an int which represents the choice the user has made
     -makes the next dialogue based on the pointer of the choice made
     -returns true if it did
     -returns false if there isn't a
     */
    func constructNextDialogue(choice:Int) -> Bool{
        //read from current file
        //do stuff
        return false
    }
}
