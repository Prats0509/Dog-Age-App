//
//  ViewController.swift
//  Assignment_01
//
//  Created by Pratiksha Dutta on 2024-09-16.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dogAge: UITextField!
    
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outputLabel.alpha = 0;
        
    }
    
    @IBAction func CheckAgeButton(_ sender: UIButton) {
        self.view.endEditing(true)
        guard let dogAge = dogAge.text, let age = Int(dogAge) else{outputLabel.text="Please enter a valid age";
            outputLabel.alpha = 1
            return}
        let convertedAge = age * 7;
        outputLabel.alpha = 1;
        outputLabel.text = "If your \(age) years old dog were a human,he/she would have \(convertedAge) years old"
        
    }
    

}

