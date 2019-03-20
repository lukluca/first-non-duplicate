//
//  ViewController.swift
//  FirstNotDuplicate
//
//  Created by Tagliabue, L. on 20/03/2019.
//  Copyright © 2019 Tagliabue, Luca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var firstNonDuplicateButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTextField()
        self.setupButton()
        
    }

    private func setupTextField() {
        let borderColor =  UIColor(red: 70/255, green: 92/255, blue: 166/255, alpha: 1)
        inputTextField.layer.borderColor = borderColor.cgColor
        inputTextField.layer.borderWidth = 2.5
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 1))
        inputTextField.leftView = paddingView
        inputTextField.leftViewMode = .always
    }
    
    private func setupButton() {
        firstNonDuplicateButton.layer.cornerRadius = 10
    }

}

