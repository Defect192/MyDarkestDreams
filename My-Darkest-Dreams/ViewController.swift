//
//  ViewController.swift
//  UITest2ScrewApple
//
//  Created by Justin Thomas on 2/4/18.
//  Copyright © 2018 Black Cat Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var theModel = TheModel()

    @IBOutlet var doggyImage: UIImageView!
    
    @IBOutlet var texty: UILabel!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    
    
    @IBAction func button1Press() {
        let alert = UIAlertController(title: "O Hai Mark!", message: "Hey Johnny, what's up?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "I have a problem with Lisa", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        changeLabels()
        doggyImage.image = UIImage(named: "maxresdefault.jpg")
    }

    @IBAction func button2Press() {
        let alert = UIAlertController(title: "Action Occured!", message: "Action 2 occured", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Gotcha", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        changeLabels()
    }
    

    @IBAction func button3Press() {
        let alert = UIAlertController(title: "Action Occured!", message: "Action 3 occured", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Gotcha", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        changeLabels()
    }
    
    @IBAction func button4Press() {
        let alert = UIAlertController(title: "Action Occured!", message: "Action 4 occured", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Gotcha", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        changeLabels()
    }
    
    
    func changeLabels(){
        button1.setTitle(theModel.changeText(numbar: 1), for: UIControlState.normal)
        button2.setTitle(theModel.changeText(numbar: 2), for: UIControlState.normal)
        button3.setTitle(theModel.changeText(numbar: 3), for: UIControlState.normal)
        button4.setTitle(theModel.changeText(numbar: 4), for: UIControlState.normal)
        
        texty.text=theModel.changeTextyText();
        
        //doggyImage.image=nil
    }
    
    
}

