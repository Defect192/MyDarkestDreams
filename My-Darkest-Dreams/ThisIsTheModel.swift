//
//  ThisIsTheModel.swift
//  UITest2ScrewApple
//
//  Created by Justin Thomas on 2/4/18.
//  Copyright © 2018 Black Cat Productions. All rights reserved.
//

import Foundation

public class TheModel{

    var button1Text:String="Yay"
    var button2Text:String="Good"
    var button3Text:String="Why?"
    var button4Text:String="[Punch screen]"
    
    var someText:String="Something changed."
    
    func changeText(numbar:Int) -> String{
        if numbar==1 {
            return button1Text
        }
        if numbar==2 {
            return button2Text
        }
        if numbar==3 {
            return button3Text
        }
        if numbar==4 {
            return button4Text
        }
        return ""
    }
    
    func changeTextyText() -> String{
        return someText
    }

}
