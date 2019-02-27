//
//  ConversationNode.swift
//  My Darkest Dreams
//
//  Created by Elijah Williams on 2/9/18.
//  Copyright © 2018 Elijah Williams. All rights reserved.
//

import Foundation

class ConversationNode{
    // commit stuff
    let Reader = FileReader()
    var Data = Array<String>()
    var DataAtLine = Array<String>()
    var text = "Something" //used if the object does not contain choices
    var choiceText:Array<String> = ["Has","Gone","Horribly","Wrong"]
    var pointer = 1
    var image = "brokenimage.jpg"
    init(){
        Data = Reader.readDataFromFile(filename: "MyDarkestDreams")
        DataAtLine = Reader.readLineFromData(lineNum: 0)
        text = DataAtLine[1]
//        choiceText[0] = DataAtLine[2]
//        choiceText[1] = DataAtLine[6]
//        choiceText[2] = DataAtLine[10]
//        choiceText[3] = DataAtLine[14]
        image = DataAtLine[3]
    }
    
    
    var containsChoices = "false" //String that indicates whether or the the dialogue has choices to make, or whether or not the pointer is calculated  WILL BE CHANGED TO FALSE!!!!!!!
//the text for each choice
    var choiceValues:Array<Int> = [0,0,0,0]//point values for each choice
    var choiceEndingIndex:Array<Int> = [0,0,0,0] //ending index associated with each choice

//    var fileName:String = "scene0.txt"
    var Ending = 66
    
    func setContainsChoices(){
        DataAtLine = Reader.readLineFromData(lineNum: pointer-1)
        containsChoices = DataAtLine[0]
    }
    
    func setPointer(choice:Int){
        if containsChoices == "true" {
            if choice == 0 {
                pointer = Int(DataAtLine[5])!
            }else if choice == 1 {
                pointer = Int(DataAtLine[9])!
            }else if choice == 2 {
                pointer = Int(DataAtLine[13])!
            }else if choice == 3 {
                pointer = Int(DataAtLine[17])!
            }
        }else if containsChoices == "false"{
            pointer = Int(DataAtLine[2])!
        }else if containsChoices == "end"{
            pointer = Ending
        }
    }
    
    func constructNextBlockText(){
        DataAtLine = Reader.readLineFromData(lineNum: pointer-1)
        text = DataAtLine[1]
        
        let oldImage = image
        if DataAtLine.count == 4{
            image = DataAtLine[3]
        }else{
            image = oldImage
        }
    
    }

    func constructNextDialogue(){
        DataAtLine = Reader.readLineFromData(lineNum: pointer-1)
        
        text = DataAtLine[1]
        
        choiceText[0] = DataAtLine[2]
        choiceEndingIndex[0] = Int(DataAtLine[3])!
        choiceValues[0] = Int(DataAtLine[4])!
        
        choiceText[1] = DataAtLine[6]
        choiceEndingIndex[1] = Int(DataAtLine[7])!
        choiceValues[1] = Int(DataAtLine[8])!
        
        choiceText[2] = DataAtLine[10]
        choiceEndingIndex[2] = Int(DataAtLine[11])!
        choiceValues[2] = Int(DataAtLine[12])!
        
        choiceText[3] = DataAtLine[14]
        choiceEndingIndex[3] = Int(DataAtLine[15])!
        choiceValues[3] = Int(DataAtLine[16])!
        
        let oldImage = image
        if DataAtLine.count == 19 {
            image = DataAtLine[18]
        }else{
            image = oldImage
        }
        
    }
    
    func constructEnd(theEnding: Int){
        DataAtLine = Reader.readLineFromData(lineNum: pointer-1)
        text = DataAtLine[1]
        
        let oldImage = image
        if DataAtLine.count == 4{
            image = DataAtLine[3]
        }else{
            image = oldImage
        }
        
        image = DataAtLine[3]
        Ending = theEnding
        pointer = Ending
    }
    
}
