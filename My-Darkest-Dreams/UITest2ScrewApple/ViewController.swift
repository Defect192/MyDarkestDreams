//
//  ViewController.swift
//  UITest2ScrewApple
//
//  Created by Justin Thomas on 2/4/18.
//  Copyright © 2018 Black Cat Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var bigFreakinText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bigFreakinText.isHidden=true
        bigFreakinText.isEnabled=false
        changeLabels()
        
        bigFreakinText.titleLabel?.numberOfLines = 0; // Dynamic number of lines
        bigFreakinText.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping;
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    static var theModel = Model()
    
    @IBOutlet var Photo: UIImageView!
    
    @IBOutlet var texty: UIButton!
    
    @IBOutlet var button0: UIButton!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    @IBAction func textPress() {
        ViewController.theModel.next(buttonNumber: 0)
        changeLabels()
    }
        
    func setToButtons(){

        bigFreakinText.isHidden=true
        bigFreakinText.isEnabled=false

        bigFreakinText.setAttributedTitle(NSAttributedString(string: ""), for: .normal)
        
        button0.isEnabled=true
        button1.isEnabled=true
        button2.isEnabled=true
        button3.isEnabled=true
        
        button0.isHidden=false
        button1.isHidden=false
        button2.isHidden=false
        button3.isHidden=false
        
        texty.isHidden=false
    
    }
    
    @IBAction func button0Press() {
        ViewController.theModel.next(buttonNumber: 0)
        ViewController.theModel.TallyPoints(ButtonNum: 0)
        changeLabels()
    }
    
    @IBAction func button1Press() {
        ViewController.theModel.next(buttonNumber: 1)
        ViewController.theModel.TallyPoints(ButtonNum: 1)
        changeLabels()
    }
    
    
    @IBAction func button2Press() {
        ViewController.theModel.next(buttonNumber: 2)
        ViewController.theModel.TallyPoints(ButtonNum: 2)
        changeLabels()
    }
    
    @IBAction func button3Press() {
        ViewController.theModel.next(buttonNumber: 3)
        ViewController.theModel.TallyPoints(ButtonNum: 3)
        changeLabels()
    }
    
    func changeLabels(){
        Photo.image = UIImage(named: ViewController.theModel.getImage())
        if ViewController.theModel.currentNode.containsChoices == "true" {
            setToButtons()
            
            button0.setTitle(ViewController.theModel.getChoiceText(buttonNumber: 0), for: UIControlState.normal)
            button1.setTitle(ViewController.theModel.getChoiceText(buttonNumber: 1), for: UIControlState.normal)
            button2.setTitle(ViewController.theModel.getChoiceText(buttonNumber: 2), for: UIControlState.normal)
            button3.setTitle(ViewController.theModel.getChoiceText(buttonNumber: 3), for: UIControlState.normal)
            
            texty.setTitle(ViewController.theModel.getText(), for: UIControlState.normal)
            
        }else{
            bigFreakinText.setAttributedTitle(NSAttributedString(string: ViewController.theModel.currentNode.text), for: .normal)
            
            bigFreakinText.isHidden=false
            bigFreakinText.isEnabled=true
            
            button0.isEnabled=false
            button1.isEnabled=false
            button2.isEnabled=false
            button3.isEnabled=false
            
            button0.isHidden=true
            button1.isHidden=true
            button2.isHidden=true
            button3.isHidden=true
            
            texty.isHidden=true;
            
            
            
            
            button0.setTitle("", for: UIControlState.normal)
            button1.setTitle("", for: UIControlState.normal)
            button2.setTitle("", for: UIControlState.normal)
            button3.setTitle("", for: UIControlState.normal)
            
            texty.setTitle("", for: UIControlState.normal)
            
        }
    

    }
    
    
}
