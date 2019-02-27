//
//  File.swift
//  FileReader
//
//  Created by Emily Heaton on 2/8/18.
//  Copyright © 2018 Emily Heaton. All rights reserved.
//

import Foundation


class FileReader{
    
   var Data = Array<String>()
   var LineData = Array<String>()
    
    func readDataFromFile(filename: String) -> Array<String> {
        let bundle = Bundle.main
        if let path = bundle.path(forResource: filename, ofType: "txt"){
            do{
                Data = try String(contentsOfFile: path).components(separatedBy: "\n")
                
            }catch{
                print("could not load file :(")
            }
        }
        
        return Data
//        let ReturnArray = Data[lineNum].components(separatedBy: "*")
//        return ReturnArray
    }
    
    func readLineFromData(lineNum: Int) -> Array<String> {
        LineData = Data[lineNum].components(separatedBy: "*")
        return LineData
    }
    
    ///This function was never used!!!
    func printData(data: Array<String>, index: Int) -> String {
        let word = data[index];
        return word
    }
    
    // viewtype * MainText * ChoiceText * AssoicatedEndingIndex * choice weight * pointer * 2ChoiceText * etc
    // viewtype: false * MainTex * null * null * null * etc

}
