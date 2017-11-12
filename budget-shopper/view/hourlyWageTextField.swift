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
