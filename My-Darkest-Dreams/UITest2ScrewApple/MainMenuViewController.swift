//
//  MainMenuViewController.swift
//  My Darkest Dreams
//
//  Created by Justin Thomas on 4/11/18.
//  Copyright © 2018 Black Cat Productions. All rights reserved.
//

import Foundation
import UIKit

class MainMenuViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Music maybe?
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playGame(_ sender: Any) {
        performSegue(withIdentifier: "PlayGame", sender: nil);
    }
    
}
