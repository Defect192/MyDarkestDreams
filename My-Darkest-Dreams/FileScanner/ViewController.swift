//
//  ViewController.swift
//  FileScanner
//
//  Created by Emily Heaton on 2/9/18.
//  Copyright © 2018 Emily Heaton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let FR = FileReader()
    var pointer = 0;
    var data = Array<String>();
    var options = "true" //We start with a big block of text (set to false)
    let endpointer = [68,69,70,71]
    var endtally = [0,0,0,0];
    var CalcEnd = 66
    
    @IBOutlet var Dialog: UILabel!
    @IBOutlet weak var ButtonOne: UIButton!
    @IBOutlet weak var ButtonTwo: UIButton!
    @IBOutlet weak var ButtonThree: UIButton!
    @IBOutlet weak var ButtonFour: UIButton!
    
    
    
    @IBAction func SetTextOne(_ sender: UIButton) {
        
        if options == "true"{
            
            pointer = Int(data[5])!-1
            endtally[Int(data[3])!] += Int(data[4])!
            
        }else if options == "false"{
            
            pointer = Int(data[2])!-1
            
        }else if options == "end"{
            
            CalcEnd = endtally.index(of: endtally.max()!)! //CalcEnd aka Calculated Ending
            pointer = endpointer[CalcEnd]-1
        }
        updateUI()
    }
    
    @IBAction func SetTextTwo(_ sender: UIButton) {
        
        if options == "true"{
            
            pointer = Int(data[9])!-1
            endtally[Int(data[7])!] += Int(data[8])!
            
        }else if options == "false"{
            
            pointer = Int(data[2])!-1
            
        }else if options == "end"{
            
            CalcEnd = endtally.index(of: endtally.max()!)!
            pointer = endpointer[CalcEnd]-1
        }
        updateUI()
    }
    
    @IBAction func SetTextThree(_ sender: UIButton) {
        if options == "true"{
            
            pointer = Int(data[13])!-1
            endtally[Int(data[11])!] += Int(data[12])!
            
        }else if options == "false"{
            
            pointer = Int(data[2])!-1
            
        }else if options == "end"{
            
            CalcEnd = endtally.index(of: endtally.max()!)!
            pointer = endpointer[CalcEnd]-1
        }
        updateUI()
    }
    
    @IBAction func SetTextFour(_ sender: UIButton) {
        if options == "true"{
            
            pointer = Int(data[17])!-1
            endtally[Int(data[15])!] += Int(data[16])!
            
        }else if options == "false"{
            
            pointer = Int(data[2])!-1
            
        }else if options == "end"{
            
            CalcEnd = endtally.index(of: endtally.max()!)!
            pointer = endpointer[CalcEnd]-1
        }
        updateUI()
    }
    
    func TallyCheck(){
        if pointer == 0{
            endtally[0] = 0
            endtally[1] = 0
            endtally[2] = 0
            endtally[3] = 0
        }
    }
    
    func updateUI(){
        data = FR.readDataFromFile(lineNum: pointer);
        options = data[0]
        TallyCheck()
        
        if options == "true" || options == "end"{
            
            Dialog.text = data[1]
            ButtonOne.setTitle(data[2], for: UIControlState.normal)
            ButtonTwo.setTitle(data[6], for: UIControlState.normal)
            ButtonThree.setTitle(data[10], for: UIControlState.normal)
            ButtonFour.setTitle(data[14], for: UIControlState.normal)
            
            
        }else if options == "false"{
            
            Dialog.text = data[1]
            ButtonOne.setTitle("blank", for: UIControlState.normal)
            ButtonTwo.setTitle("blank", for: UIControlState.normal)
            ButtonThree.setTitle("blank", for: UIControlState.normal)
            ButtonFour.setTitle("blank", for: UIControlState.normal)
        }
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        updateUI()
    }

}

