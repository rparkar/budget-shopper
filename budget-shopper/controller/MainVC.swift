//
//  ViewController.swift
//  budget-shopper
//
//  Created by Rehan Parkar on 2017-11-12.
//  Copyright © 2017 Rehan Parkar. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    //outlets
    @IBOutlet weak var wageTextField: hourlyWageTextField!
    @IBOutlet weak var priceTextField: hourlyWageTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //porgramatically creating button over the number pad and other start up design
        customView()
    }
    
    func customView(){
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calculateButton.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0.07571224123, alpha: 1)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        //to display the button when the textfield are clicked
        //the view to display when TF becomes first repsonder
        wageTextField.inputAccessoryView = calculateButton
        priceTextField.inputAccessoryView = calculateButton
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
    }
    
    //is called when calculateButton is created .. IBAction
    @objc func calculate(){
        
        // if both textfield are not nil and
        // if both textfields are casted to double then logic
        // endEditing hides the keyboard
        
        if let wageTxt = wageTextField.text, let priceTxt = priceTextField.text {
            
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(CalculateHours.getHours(forWage: wage, andPrice: price))"
                
            }
        }
        clearButton.isEnabled = true
        
    }
    
    @IBAction func clearButtonClicked(_ sender: Any) {
        
        hoursLabel.isHidden = true
        resultLabel.isHidden = true
        wageTextField.text = ""
        priceTextField.text =  ""
        clearButton.isEnabled = false
        
        
    }
    

}

