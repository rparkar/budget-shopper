//
//  hourlyWageTextField.swift
//  budget-shopper
//
//  Created by Rehan Parkar on 2017-11-12.
//  Copyright © 2017 Rehan Parkar. All rights reserved.
//
//custom class to make the text field look the way we want it ot look


import UIKit

//IBDesignable allows us to see the custom view in the story board

@IBDesignable

class hourlyWageTextField: UITextField {
    
    //adding a custom label inside the text field
    //
    override func draw(_ rect: CGRect) {
        
        //remeber to use GCFLoat cos all values are in CGFloat
        let labelSize: CGFloat = 30
        let currencyIconLabel = UILabel(frame: CGRect(x: 5, y: ((frame.size.height / 2 ) - labelSize / 2) , width: labelSize, height: labelSize))
        
        currencyIconLabel.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 0.9511659021)
        currencyIconLabel.textColor = #colorLiteral(red: 0.9835792184, green: 1, blue: 0.9820356965, alpha: 1)
        currencyIconLabel.textAlignment = .center
        currencyIconLabel.layer.cornerRadius = 5
        currencyIconLabel.clipsToBounds = true //so corners are rounded and doesnt bleed out
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current // this value is by default
        
        //display the currency symbol
        currencyIconLabel.text = formatter.currencySymbol
        
        //add the label into the textfield View
        addSubview(currencyIconLabel)
        
        
    }
    
    //this runs the code needed to be seen live in the storyboard
    override func prepareForInterfaceBuilder() {
        customView()
        
    }
    
    //when textfield comes up from UI file then this is run
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customView()
    }
    
    func customView() {
        
        
        //using color literal
        //BG color white + opacity to 30
        backgroundColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 0.3)
        //text color
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        //rounded corners of text field
        layer.cornerRadius = 5
        clipsToBounds = true
        
        // allignment of text to center of TF
        textAlignment = .center
        
        //placeholder customization
        
        if let placeH = placeholder {
            
            let place = NSAttributedString(string: placeH, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }
        
    }

}
