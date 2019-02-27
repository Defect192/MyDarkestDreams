//
//  File.swift
//  FileReader
//
//  Created by Emily Heaton on 2/8/18.
//  Copyright © 2018 Emily Heaton. All rights reserved.
//

import Foundation


class FileReader{
    
    func readDataFromFile(lineNum: Int) -> Array<String> {
        var BigArray = Array<String>();
        let bundle = Bundle.main
        if let path = bundle.path(forResource: "FileReaderTest", ofType: "txt"){
            do{
                BigArray = try String(contentsOfFile: path).components(separatedBy: "\n")
                
            }catch{
                print("could not load file :(")
            }
        }
    
        let ReturnArray = BigArray[lineNum].components(separatedBy: "*")
        return ReturnArray
    }
    
    ///This function was never used!!!
    func printData(data: Array<String>, index: Int) -> String {
        let word = data[index];
        return word
    }
    
    // viewtype * MainText * ChoiceText * AssoicatedEndingIndex * choice weight * pointer * 2ChoiceText * etc
    // viewtype: false * MainTex * null * null * null * etc

}
